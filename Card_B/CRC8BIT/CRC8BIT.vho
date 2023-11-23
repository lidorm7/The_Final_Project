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

-- DATE "08/15/2023 18:05:36"

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

ENTITY 	CRC8BIT IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	nrzl_in : IN std_logic;
	main_clk : IN std_logic;
	crc8bit_out : OUT std_logic
	);
END CRC8BIT;

-- Design Ports Information
-- crc8bit_out	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- main_clk	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nrzl_in	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CRC8BIT IS
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
SIGNAL ww_nrzl_in : std_logic;
SIGNAL ww_main_clk : std_logic;
SIGNAL ww_crc8bit_out : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \crc8bit_out~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \main_clk~input_o\ : std_logic;
SIGNAL \sig_cut_main_clk~feeder_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_cut_main_clk~q\ : std_logic;
SIGNAL \sig_cut_main_clk_not~feeder_combout\ : std_logic;
SIGNAL \sig_cut_main_clk_not~q\ : std_logic;
SIGNAL \nrzl_in~input_o\ : std_logic;
SIGNAL \sig_main_clk_f~0_combout\ : std_logic;
SIGNAL \sig_sf_reg[2]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[3]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[6]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[7]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[8]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[10]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[11]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[12]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[14]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[15]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[18]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[19]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[20]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[21]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[22]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[24]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[25]~feeder_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \sig_sf_reg[28]~feeder_combout\ : std_logic;
SIGNAL \sig_sf_reg[29]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \sig_main_clk_r~combout\ : std_logic;
SIGNAL \state_crc.s3~q\ : std_logic;
SIGNAL \state_crc.s4~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state_crc.s0~q\ : std_logic;
SIGNAL \crc8bit_operation:cnt[7]~0_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[5]~q\ : std_logic;
SIGNAL \cnt~4_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[6]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \cnt~5_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[7]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[3]~q\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \cnt~3_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state_crc.s1~q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state_crc.s2~q\ : std_logic;
SIGNAL \crc8bit_out~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \crc8bit_out~1_combout\ : std_logic;
SIGNAL \crc8bit_out~reg0_q\ : std_logic;
SIGNAL crc_reg8bit : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_sf_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_crc8bit_out~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_nrzl_in <= nrzl_in;
ww_main_clk <= main_clk;
crc8bit_out <= ww_crc8bit_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\ALT_INV_crc8bit_out~reg0_q\ <= NOT \crc8bit_out~reg0_q\;
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

-- Location: IOOBUF_X69_Y54_N2
\crc8bit_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_crc8bit_out~reg0_q\,
	devoe => ww_devoe,
	o => \crc8bit_out~output_o\);

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

-- Location: IOIBUF_X74_Y54_N1
\main_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_main_clk,
	o => \main_clk~input_o\);

-- Location: LCCOMB_X46_Y27_N24
\sig_cut_main_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cut_main_clk~feeder_combout\ = \main_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_clk~input_o\,
	combout => \sig_cut_main_clk~feeder_combout\);

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

-- Location: FF_X46_Y27_N25
sig_cut_main_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cut_main_clk~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut_main_clk~q\);

-- Location: LCCOMB_X46_Y27_N20
\sig_cut_main_clk_not~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cut_main_clk_not~feeder_combout\ = \sig_cut_main_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_cut_main_clk~q\,
	combout => \sig_cut_main_clk_not~feeder_combout\);

-- Location: FF_X46_Y27_N21
sig_cut_main_clk_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cut_main_clk_not~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut_main_clk_not~q\);

-- Location: IOIBUF_X69_Y54_N15
\nrzl_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nrzl_in,
	o => \nrzl_in~input_o\);

-- Location: LCCOMB_X46_Y27_N28
\sig_main_clk_f~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main_clk_f~0_combout\ = (\sig_cut_main_clk_not~q\ & !\sig_cut_main_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_cut_main_clk_not~q\,
	datad => \sig_cut_main_clk~q\,
	combout => \sig_main_clk_f~0_combout\);

-- Location: FF_X49_Y28_N7
\sig_sf_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \nrzl_in~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(0));

-- Location: FF_X49_Y28_N27
\sig_sf_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(0),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(1));

-- Location: LCCOMB_X49_Y28_N2
\sig_sf_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[2]~feeder_combout\ = sig_sf_reg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(1),
	combout => \sig_sf_reg[2]~feeder_combout\);

-- Location: FF_X49_Y28_N3
\sig_sf_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(2));

-- Location: LCCOMB_X49_Y28_N22
\sig_sf_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[3]~feeder_combout\ = sig_sf_reg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(2),
	combout => \sig_sf_reg[3]~feeder_combout\);

-- Location: FF_X49_Y28_N23
\sig_sf_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[3]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(3));

-- Location: FF_X49_Y28_N21
\sig_sf_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(3),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(4));

-- Location: FF_X49_Y28_N1
\sig_sf_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(4),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(5));

-- Location: LCCOMB_X49_Y28_N4
\sig_sf_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[6]~feeder_combout\ = sig_sf_reg(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(5),
	combout => \sig_sf_reg[6]~feeder_combout\);

-- Location: FF_X49_Y28_N5
\sig_sf_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[6]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(6));

-- Location: LCCOMB_X49_Y28_N12
\sig_sf_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[7]~feeder_combout\ = sig_sf_reg(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(6),
	combout => \sig_sf_reg[7]~feeder_combout\);

-- Location: FF_X49_Y28_N13
\sig_sf_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[7]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(7));

-- Location: LCCOMB_X49_Y28_N14
\sig_sf_reg[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[8]~feeder_combout\ = sig_sf_reg(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(7),
	combout => \sig_sf_reg[8]~feeder_combout\);

-- Location: FF_X49_Y28_N15
\sig_sf_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[8]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(8));

-- Location: FF_X49_Y28_N9
\sig_sf_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(8),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(9));

-- Location: LCCOMB_X49_Y28_N10
\sig_sf_reg[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[10]~feeder_combout\ = sig_sf_reg(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(9),
	combout => \sig_sf_reg[10]~feeder_combout\);

-- Location: FF_X49_Y28_N11
\sig_sf_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[10]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(10));

-- Location: LCCOMB_X49_Y28_N18
\sig_sf_reg[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[11]~feeder_combout\ = sig_sf_reg(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(10),
	combout => \sig_sf_reg[11]~feeder_combout\);

-- Location: FF_X49_Y28_N19
\sig_sf_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[11]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(11));

-- Location: LCCOMB_X49_Y28_N16
\sig_sf_reg[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[12]~feeder_combout\ = sig_sf_reg(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(11),
	combout => \sig_sf_reg[12]~feeder_combout\);

-- Location: FF_X49_Y28_N17
\sig_sf_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[12]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(12));

-- Location: FF_X49_Y28_N29
\sig_sf_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(12),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(13));

-- Location: LCCOMB_X49_Y28_N24
\sig_sf_reg[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[14]~feeder_combout\ = sig_sf_reg(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(13),
	combout => \sig_sf_reg[14]~feeder_combout\);

-- Location: FF_X49_Y28_N25
\sig_sf_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[14]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(14));

-- Location: LCCOMB_X47_Y28_N8
\sig_sf_reg[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[15]~feeder_combout\ = sig_sf_reg(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(14),
	combout => \sig_sf_reg[15]~feeder_combout\);

-- Location: FF_X47_Y28_N9
\sig_sf_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[15]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(15));

-- Location: FF_X47_Y28_N23
\sig_sf_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(15),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(16));

-- Location: FF_X47_Y28_N11
\sig_sf_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(16),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(17));

-- Location: LCCOMB_X47_Y28_N28
\sig_sf_reg[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[18]~feeder_combout\ = sig_sf_reg(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(17),
	combout => \sig_sf_reg[18]~feeder_combout\);

-- Location: FF_X47_Y28_N29
\sig_sf_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[18]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(18));

-- Location: LCCOMB_X47_Y28_N24
\sig_sf_reg[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[19]~feeder_combout\ = sig_sf_reg(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(18),
	combout => \sig_sf_reg[19]~feeder_combout\);

-- Location: FF_X47_Y28_N25
\sig_sf_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[19]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(19));

-- Location: LCCOMB_X46_Y28_N6
\sig_sf_reg[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[20]~feeder_combout\ = sig_sf_reg(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(19),
	combout => \sig_sf_reg[20]~feeder_combout\);

-- Location: FF_X46_Y28_N7
\sig_sf_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[20]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(20));

-- Location: LCCOMB_X46_Y28_N18
\sig_sf_reg[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[21]~feeder_combout\ = sig_sf_reg(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(20),
	combout => \sig_sf_reg[21]~feeder_combout\);

-- Location: FF_X46_Y28_N19
\sig_sf_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[21]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(21));

-- Location: LCCOMB_X46_Y28_N28
\sig_sf_reg[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[22]~feeder_combout\ = sig_sf_reg(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(21),
	combout => \sig_sf_reg[22]~feeder_combout\);

-- Location: FF_X46_Y28_N29
\sig_sf_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[22]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(22));

-- Location: FF_X46_Y28_N15
\sig_sf_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(22),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(23));

-- Location: LCCOMB_X46_Y28_N12
\sig_sf_reg[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[24]~feeder_combout\ = sig_sf_reg(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(23),
	combout => \sig_sf_reg[24]~feeder_combout\);

-- Location: FF_X46_Y28_N13
\sig_sf_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[24]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(24));

-- Location: LCCOMB_X46_Y28_N22
\sig_sf_reg[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[25]~feeder_combout\ = sig_sf_reg(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(24),
	combout => \sig_sf_reg[25]~feeder_combout\);

-- Location: FF_X46_Y28_N23
\sig_sf_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[25]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(25));

-- Location: FF_X46_Y28_N11
\sig_sf_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(25),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(26));

-- Location: FF_X46_Y28_N25
\sig_sf_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(26),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(27));

-- Location: LCCOMB_X46_Y28_N10
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!sig_sf_reg(25) & (!sig_sf_reg(27) & (!sig_sf_reg(26) & !sig_sf_reg(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(25),
	datab => sig_sf_reg(27),
	datac => sig_sf_reg(26),
	datad => sig_sf_reg(24),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X46_Y28_N8
\sig_sf_reg[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[28]~feeder_combout\ = sig_sf_reg(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(27),
	combout => \sig_sf_reg[28]~feeder_combout\);

-- Location: FF_X46_Y28_N9
\sig_sf_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[28]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(28));

-- Location: LCCOMB_X46_Y28_N26
\sig_sf_reg[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[29]~feeder_combout\ = sig_sf_reg(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(28),
	combout => \sig_sf_reg[29]~feeder_combout\);

-- Location: FF_X46_Y28_N27
\sig_sf_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[29]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(29));

-- Location: FF_X46_Y28_N17
\sig_sf_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(29),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(30));

-- Location: FF_X46_Y28_N21
\sig_sf_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(30),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(31));

-- Location: LCCOMB_X46_Y28_N20
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!sig_sf_reg(29) & (sig_sf_reg(30) & (sig_sf_reg(31) & !sig_sf_reg(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(29),
	datab => sig_sf_reg(30),
	datac => sig_sf_reg(31),
	datad => sig_sf_reg(28),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X46_Y28_N14
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!sig_sf_reg(20) & (sig_sf_reg(22) & (sig_sf_reg(23) & !sig_sf_reg(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(20),
	datab => sig_sf_reg(22),
	datac => sig_sf_reg(23),
	datad => sig_sf_reg(21),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X47_Y28_N22
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (sig_sf_reg(17) & (!sig_sf_reg(18) & (!sig_sf_reg(16) & sig_sf_reg(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(17),
	datab => sig_sf_reg(18),
	datac => sig_sf_reg(16),
	datad => sig_sf_reg(19),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X46_Y28_N30
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X49_Y28_N6
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (sig_sf_reg(3) & (!sig_sf_reg(2) & (sig_sf_reg(0) & sig_sf_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(3),
	datab => sig_sf_reg(2),
	datac => sig_sf_reg(0),
	datad => sig_sf_reg(1),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X49_Y28_N20
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!sig_sf_reg(6) & (sig_sf_reg(5) & (!sig_sf_reg(4) & sig_sf_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(6),
	datab => sig_sf_reg(5),
	datac => sig_sf_reg(4),
	datad => sig_sf_reg(7),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X49_Y28_N8
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (sig_sf_reg(10) & (!sig_sf_reg(8) & (sig_sf_reg(9) & sig_sf_reg(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(10),
	datab => sig_sf_reg(8),
	datac => sig_sf_reg(9),
	datad => sig_sf_reg(11),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X49_Y28_N28
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (sig_sf_reg(15) & (sig_sf_reg(12) & (sig_sf_reg(13) & sig_sf_reg(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(15),
	datab => sig_sf_reg(12),
	datac => sig_sf_reg(13),
	datad => sig_sf_reg(14),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X49_Y28_N30
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~7_combout\ & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X46_Y27_N6
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X46_Y27_N4
sig_main_clk_r : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main_clk_r~combout\ = (!\sig_cut_main_clk_not~q\ & \sig_cut_main_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_cut_main_clk_not~q\,
	datad => \sig_cut_main_clk~q\,
	combout => \sig_main_clk_r~combout\);

-- Location: FF_X46_Y27_N23
\state_crc.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_crc.s2~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_crc.s3~q\);

-- Location: FF_X46_Y27_N31
\state_crc.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_crc.s3~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_crc.s4~q\);

-- Location: LCCOMB_X46_Y27_N16
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state_crc.s4~q\ & ((\state_crc.s0~q\) # ((\Equal0~4_combout\ & \Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~9_combout\,
	datac => \state_crc.s0~q\,
	datad => \state_crc.s4~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X46_Y27_N17
\state_crc.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_crc.s0~q\);

-- Location: LCCOMB_X46_Y27_N2
\crc8bit_operation:cnt[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc8bit_operation:cnt[7]~0_combout\ = (!\sig_cut_main_clk_not~q\ & (\sig_cut_main_clk~q\ & (\resetn~input_o\ & \state_crc.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut_main_clk_not~q\,
	datab => \sig_cut_main_clk~q\,
	datac => \resetn~input_o\,
	datad => \state_crc.s1~q\,
	combout => \crc8bit_operation:cnt[7]~0_combout\);

-- Location: FF_X45_Y27_N19
\crc8bit_operation:cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[5]~q\);

-- Location: LCCOMB_X45_Y27_N28
\cnt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~4_combout\ = (\Add0~12_combout\ & (((!\Equal1~0_combout\) # (!\Add0~14_combout\)) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Equal1~0_combout\,
	combout => \cnt~4_combout\);

-- Location: FF_X45_Y27_N29
\crc8bit_operation:cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt~4_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[6]~q\);

-- Location: LCCOMB_X45_Y27_N18
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\crc8bit_operation:cnt[5]~q\ & (!\Add0~9\)) # (!\crc8bit_operation:cnt[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\crc8bit_operation:cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc8bit_operation:cnt[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X45_Y27_N20
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\crc8bit_operation:cnt[6]~q\ & (\Add0~11\ $ (GND))) # (!\crc8bit_operation:cnt[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\crc8bit_operation:cnt[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc8bit_operation:cnt[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X45_Y27_N6
\cnt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~5_combout\ = (\Add0~14_combout\ & (((!\Equal1~0_combout\) # (!\Add0~12_combout\)) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Equal1~0_combout\,
	combout => \cnt~5_combout\);

-- Location: FF_X45_Y27_N7
\crc8bit_operation:cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt~5_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[7]~q\);

-- Location: LCCOMB_X45_Y27_N22
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (\crc8bit_operation:cnt[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \crc8bit_operation:cnt[7]~q\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X45_Y27_N8
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \crc8bit_operation:cnt[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\crc8bit_operation:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc8bit_operation:cnt[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X45_Y27_N9
\crc8bit_operation:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[0]~q\);

-- Location: LCCOMB_X45_Y27_N10
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\crc8bit_operation:cnt[1]~q\ & (!\Add0~1\)) # (!\crc8bit_operation:cnt[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\crc8bit_operation:cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \crc8bit_operation:cnt[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X45_Y27_N11
\crc8bit_operation:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[1]~q\);

-- Location: LCCOMB_X45_Y27_N12
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\crc8bit_operation:cnt[2]~q\ & (\Add0~3\ $ (GND))) # (!\crc8bit_operation:cnt[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\crc8bit_operation:cnt[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \crc8bit_operation:cnt[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X45_Y27_N13
\crc8bit_operation:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[2]~q\);

-- Location: LCCOMB_X45_Y27_N14
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\crc8bit_operation:cnt[3]~q\ & (!\Add0~5\)) # (!\crc8bit_operation:cnt[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\crc8bit_operation:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc8bit_operation:cnt[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X45_Y27_N16
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\crc8bit_operation:cnt[4]~q\ & (\Add0~7\ $ (GND))) # (!\crc8bit_operation:cnt[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\crc8bit_operation:cnt[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \crc8bit_operation:cnt[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X45_Y27_N4
\cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = ((\Add0~10_combout\) # (!\Equal1~0_combout\)) # (!\Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \Add0~10_combout\,
	datad => \Equal1~0_combout\,
	combout => \cnt~0_combout\);

-- Location: LCCOMB_X45_Y27_N24
\cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = (\Add0~6_combout\ & (((\cnt~0_combout\) # (!\Add0~12_combout\)) # (!\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \cnt~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~12_combout\,
	combout => \cnt~1_combout\);

-- Location: FF_X45_Y27_N25
\crc8bit_operation:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt~1_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[3]~q\);

-- Location: LCCOMB_X46_Y27_N18
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Add0~6_combout\ & (!\Add0~0_combout\ & (!\Add0~4_combout\ & !\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~2_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X45_Y27_N30
\cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = (\Add0~10_combout\) # (!\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \Equal1~0_combout\,
	combout => \cnt~2_combout\);

-- Location: LCCOMB_X45_Y27_N26
\cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~3_combout\ = (\Add0~8_combout\ & ((\cnt~2_combout\) # ((!\Add0~14_combout\) # (!\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt~2_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~8_combout\,
	combout => \cnt~3_combout\);

-- Location: FF_X45_Y27_N27
\crc8bit_operation:cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt~3_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[4]~q\);

-- Location: LCCOMB_X44_Y27_N8
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\Add0~10_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => \Add0~8_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X45_Y27_N2
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal1~2_combout\ & (\Add0~12_combout\ & (\Add0~14_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X46_Y27_N0
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Equal0~10_combout\ & (((\state_crc.s1~q\ & !\Equal1~3_combout\)) # (!\state_crc.s0~q\))) # (!\Equal0~10_combout\ & (((\state_crc.s1~q\ & !\Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \state_crc.s0~q\,
	datac => \state_crc.s1~q\,
	datad => \Equal1~3_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X46_Y27_N1
\state_crc.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_crc.s1~q\);

-- Location: LCCOMB_X45_Y27_N0
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Add0~10_combout\ & (\Add0~12_combout\ & (\Add0~14_combout\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~8_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X46_Y27_N26
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state_crc.s1~q\ & (\Equal1~1_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_crc.s1~q\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X46_Y27_N27
\state_crc.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_crc.s2~q\);

-- Location: LCCOMB_X46_Y27_N22
\crc8bit_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc8bit_out~0_combout\ = (!\sig_cut_main_clk_not~q\ & (\sig_cut_main_clk~q\ & \state_crc.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut_main_clk_not~q\,
	datab => \sig_cut_main_clk~q\,
	datac => \state_crc.s2~q\,
	combout => \crc8bit_out~0_combout\);

-- Location: LCCOMB_X47_Y27_N12
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state_crc.s1~q\ & (crc_reg8bit(2))) # (!\state_crc.s1~q\ & (((!\state_crc.s3~q\ & crc_reg8bit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => crc_reg8bit(2),
	datab => \state_crc.s3~q\,
	datac => crc_reg8bit(3),
	datad => \state_crc.s1~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X47_Y27_N13
\crc_reg8bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(3));

-- Location: LCCOMB_X47_Y27_N0
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state_crc.s1~q\ & (((crc_reg8bit(3))))) # (!\state_crc.s1~q\ & (!\state_crc.s3~q\ & (crc_reg8bit(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s1~q\,
	datab => \state_crc.s3~q\,
	datac => crc_reg8bit(4),
	datad => crc_reg8bit(3),
	combout => \Selector8~0_combout\);

-- Location: FF_X47_Y27_N1
\crc_reg8bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(4));

-- Location: LCCOMB_X47_Y27_N30
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state_crc.s1~q\ & (((crc_reg8bit(4))))) # (!\state_crc.s1~q\ & (!\state_crc.s3~q\ & (crc_reg8bit(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s1~q\,
	datab => \state_crc.s3~q\,
	datac => crc_reg8bit(5),
	datad => crc_reg8bit(4),
	combout => \Selector7~0_combout\);

-- Location: FF_X47_Y27_N31
\crc_reg8bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(5));

-- Location: LCCOMB_X47_Y27_N20
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state_crc.s1~q\ & (((crc_reg8bit(5))))) # (!\state_crc.s1~q\ & (!\state_crc.s3~q\ & (crc_reg8bit(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s1~q\,
	datab => \state_crc.s3~q\,
	datac => crc_reg8bit(6),
	datad => crc_reg8bit(5),
	combout => \Selector6~0_combout\);

-- Location: FF_X47_Y27_N21
\crc_reg8bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(6));

-- Location: LCCOMB_X47_Y27_N10
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state_crc.s1~q\ & (((crc_reg8bit(6))))) # (!\state_crc.s1~q\ & (!\state_crc.s3~q\ & (crc_reg8bit(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s1~q\,
	datab => \state_crc.s3~q\,
	datac => crc_reg8bit(7),
	datad => crc_reg8bit(6),
	combout => \Selector5~0_combout\);

-- Location: FF_X47_Y27_N11
\crc_reg8bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(7));

-- Location: LCCOMB_X47_Y27_N2
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state_crc.s1~q\ & (crc_reg8bit(7) $ (\nrzl_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => crc_reg8bit(7),
	datac => \nrzl_in~input_o\,
	datad => \state_crc.s1~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X47_Y27_N26
\Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector12~0_combout\) # ((!\state_crc.s1~q\ & (!\state_crc.s3~q\ & crc_reg8bit(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s1~q\,
	datab => \state_crc.s3~q\,
	datac => crc_reg8bit(0),
	datad => \Selector12~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X47_Y27_N27
\crc_reg8bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector12~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(0));

-- Location: LCCOMB_X47_Y27_N8
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state_crc.s1~q\ & (crc_reg8bit(7) $ (\nrzl_in~input_o\ $ (crc_reg8bit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => crc_reg8bit(7),
	datab => \nrzl_in~input_o\,
	datac => crc_reg8bit(0),
	datad => \state_crc.s1~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X47_Y27_N16
\Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector11~0_combout\) # ((!\state_crc.s1~q\ & (crc_reg8bit(1) & !\state_crc.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s1~q\,
	datab => \Selector11~0_combout\,
	datac => crc_reg8bit(1),
	datad => \state_crc.s3~q\,
	combout => \Selector11~1_combout\);

-- Location: FF_X47_Y27_N17
\crc_reg8bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector11~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(1));

-- Location: LCCOMB_X47_Y27_N6
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state_crc.s1~q\ & (crc_reg8bit(7) $ (crc_reg8bit(1) $ (\nrzl_in~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => crc_reg8bit(7),
	datab => crc_reg8bit(1),
	datac => \nrzl_in~input_o\,
	datad => \state_crc.s1~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X47_Y27_N22
\Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\) # ((!\state_crc.s1~q\ & (!\state_crc.s3~q\ & crc_reg8bit(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s1~q\,
	datab => \state_crc.s3~q\,
	datac => crc_reg8bit(2),
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X47_Y27_N23
\crc_reg8bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(2));

-- Location: LCCOMB_X47_Y27_N28
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!crc_reg8bit(2) & (!crc_reg8bit(1) & (!crc_reg8bit(0) & !crc_reg8bit(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => crc_reg8bit(2),
	datab => crc_reg8bit(1),
	datac => crc_reg8bit(0),
	datad => crc_reg8bit(3),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X47_Y27_N18
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!crc_reg8bit(7) & (!crc_reg8bit(6) & (!crc_reg8bit(5) & !crc_reg8bit(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => crc_reg8bit(7),
	datab => crc_reg8bit(6),
	datac => crc_reg8bit(5),
	datad => crc_reg8bit(4),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X47_Y27_N24
\crc8bit_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc8bit_out~1_combout\ = (\crc8bit_out~0_combout\ & (\Equal2~1_combout\ & ((\Equal2~0_combout\)))) # (!\crc8bit_out~0_combout\ & (((\crc8bit_out~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc8bit_out~0_combout\,
	datab => \Equal2~1_combout\,
	datac => \crc8bit_out~reg0_q\,
	datad => \Equal2~0_combout\,
	combout => \crc8bit_out~1_combout\);

-- Location: FF_X47_Y27_N25
\crc8bit_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc8bit_out~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_out~reg0_q\);

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

ww_crc8bit_out <= \crc8bit_out~output_o\;
END structure;


