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

-- DATE "04/03/2024 16:05:50"

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

ENTITY 	spi_cc1101_read_new_hw IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	start_state_machine : IN std_logic;
	cs : BUFFER std_logic;
	mosi : BUFFER std_logic;
	spi_clock : BUFFER std_logic
	);
END spi_cc1101_read_new_hw;

-- Design Ports Information
-- cs	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mosi	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- spi_clock	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sysclk	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start_state_machine	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF spi_cc1101_read_new_hw IS
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
SIGNAL ww_start_state_machine : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_spi_clock : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \cs~output_o\ : std_logic;
SIGNAL \mosi~output_o\ : std_logic;
SIGNAL \spi_clock~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_spi_state_cntr[0]~5_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[0]~8_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \sig_raw_cntr[0]~3_combout\ : std_logic;
SIGNAL \sig_raw_cntr[1]~2_combout\ : std_logic;
SIGNAL \sig_raw_cntr[2]~1_combout\ : std_logic;
SIGNAL \sig_raw_cntr[3]~0_combout\ : std_logic;
SIGNAL \sig_spi_raw_clock~q\ : std_logic;
SIGNAL \sig_CLK_A_q~q\ : std_logic;
SIGNAL \sig_CLK_A_q_not~q\ : std_logic;
SIGNAL \sig_CLK_A_r~combout\ : std_logic;
SIGNAL \start_state_machine~input_o\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[6]~21\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[7]~22_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[5]~25_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[7]~24_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[0]~9\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[1]~10_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[1]~11\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[2]~12_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[2]~13\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[3]~14_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[3]~15\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[4]~16_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[4]~17\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[5]~18_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[5]~19\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[6]~20_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \state.s3~feeder_combout\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~15_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~16_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[0]~6\ : std_logic;
SIGNAL \sig_spi_state_cntr[1]~7_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[1]~8\ : std_logic;
SIGNAL \sig_spi_state_cntr[2]~9_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[2]~10\ : std_logic;
SIGNAL \sig_spi_state_cntr[3]~11_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[3]~12\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~13_combout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state.s7~q\ : std_logic;
SIGNAL \state.s8~q\ : std_logic;
SIGNAL \state.s9~q\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \sig_cs~q\ : std_logic;
SIGNAL \sig_mosi~0_combout\ : std_logic;
SIGNAL \sig_tx_reg[7]~0_combout\ : std_logic;
SIGNAL \sig_tx_reg[7]~1_combout\ : std_logic;
SIGNAL \sig_tx_reg[0]~2_combout\ : std_logic;
SIGNAL \sig_tx_reg[0]~3_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \sig_mosi~1_combout\ : std_logic;
SIGNAL \sig_mosi~q\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \sig_cs_stop~q\ : std_logic;
SIGNAL \sig_spi_clock~0_combout\ : std_logic;
SIGNAL \sig_spi_clock~q\ : std_logic;
SIGNAL \sig_spi_clock_1~0_combout\ : std_logic;
SIGNAL \sig_spi_clock_1~q\ : std_logic;
SIGNAL \sig_spi_clock_2~0_combout\ : std_logic;
SIGNAL \sig_spi_clock_2~q\ : std_logic;
SIGNAL \sig_spi_clock_3~0_combout\ : std_logic;
SIGNAL \sig_spi_clock_3~q\ : std_logic;
SIGNAL \sig_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[4]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[8]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[9]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[11]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[12]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[13]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[14]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[15]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[16]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[17]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[19]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clock_3_out~q\ : std_logic;
SIGNAL sig_cc1101_rd_adr : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_spi_state_cntr : std_logic_vector(4 DOWNTO 0);
SIGNAL sig_tx_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_shift_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL sig_raw_cntr : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.s5~q\ : std_logic;
SIGNAL \ALT_INV_state.s9~q\ : std_logic;
SIGNAL \ALT_INV_sig_cs~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_start_state_machine <= start_state_machine;
cs <= ww_cs;
mosi <= ww_mosi;
spi_clock <= ww_spi_clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\ALT_INV_state.s5~q\ <= NOT \state.s5~q\;
\ALT_INV_state.s9~q\ <= NOT \state.s9~q\;
\ALT_INV_sig_cs~q\ <= NOT \sig_cs~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y0_N16
\cs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sig_cs~q\,
	devoe => ww_devoe,
	o => \cs~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\mosi~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_mosi~q\,
	devoe => ww_devoe,
	o => \mosi~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\spi_clock~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_spi_clock_3_out~q\,
	devoe => ww_devoe,
	o => \spi_clock~output_o\);

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X35_Y3_N10
\sig_spi_state_cntr[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[0]~5_combout\ = sig_spi_state_cntr(0) $ (VCC)
-- \sig_spi_state_cntr[0]~6\ = CARRY(sig_spi_state_cntr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(0),
	datad => VCC,
	combout => \sig_spi_state_cntr[0]~5_combout\,
	cout => \sig_spi_state_cntr[0]~6\);

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

-- Location: LCCOMB_X35_Y3_N26
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!sig_spi_state_cntr(0) & (sig_spi_state_cntr(3) & (sig_spi_state_cntr(2) & sig_spi_state_cntr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(0),
	datab => sig_spi_state_cntr(3),
	datac => sig_spi_state_cntr(2),
	datad => sig_spi_state_cntr(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y3_N14
\sig_cc1101_rd_adr[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[0]~8_combout\ = sig_cc1101_rd_adr(0) $ (VCC)
-- \sig_cc1101_rd_adr[0]~9\ = CARRY(sig_cc1101_rd_adr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(0),
	datad => VCC,
	combout => \sig_cc1101_rd_adr[0]~8_combout\,
	cout => \sig_cc1101_rd_adr[0]~9\);

-- Location: LCCOMB_X32_Y3_N2
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X34_Y3_N2
\sig_raw_cntr[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_raw_cntr[0]~3_combout\ = !sig_raw_cntr(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_raw_cntr(0),
	combout => \sig_raw_cntr[0]~3_combout\);

-- Location: FF_X34_Y3_N3
\sig_raw_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_raw_cntr[0]~3_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_raw_cntr(0));

-- Location: LCCOMB_X34_Y3_N6
\sig_raw_cntr[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_raw_cntr[1]~2_combout\ = sig_raw_cntr(1) $ (sig_raw_cntr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_raw_cntr(1),
	datad => sig_raw_cntr(0),
	combout => \sig_raw_cntr[1]~2_combout\);

-- Location: FF_X34_Y3_N7
\sig_raw_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_raw_cntr[1]~2_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_raw_cntr(1));

-- Location: LCCOMB_X34_Y3_N16
\sig_raw_cntr[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_raw_cntr[2]~1_combout\ = sig_raw_cntr(2) $ (((sig_raw_cntr(0) & sig_raw_cntr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_raw_cntr(0),
	datac => sig_raw_cntr(2),
	datad => sig_raw_cntr(1),
	combout => \sig_raw_cntr[2]~1_combout\);

-- Location: FF_X34_Y3_N17
\sig_raw_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_raw_cntr[2]~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_raw_cntr(2));

-- Location: LCCOMB_X34_Y3_N24
\sig_raw_cntr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_raw_cntr[3]~0_combout\ = sig_raw_cntr(3) $ (((sig_raw_cntr(2) & (sig_raw_cntr(0) & sig_raw_cntr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_raw_cntr(2),
	datab => sig_raw_cntr(0),
	datac => sig_raw_cntr(3),
	datad => sig_raw_cntr(1),
	combout => \sig_raw_cntr[3]~0_combout\);

-- Location: FF_X34_Y3_N25
\sig_raw_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_raw_cntr[3]~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_raw_cntr(3));

-- Location: FF_X34_Y3_N1
sig_spi_raw_clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_raw_cntr(3),
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_raw_clock~q\);

-- Location: FF_X34_Y3_N19
sig_CLK_A_q : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_spi_raw_clock~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_CLK_A_q~q\);

-- Location: FF_X31_Y3_N3
sig_CLK_A_q_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_CLK_A_q~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_CLK_A_q_not~q\);

-- Location: LCCOMB_X34_Y3_N12
sig_CLK_A_r : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_CLK_A_r~combout\ = (!\sig_CLK_A_q_not~q\ & \sig_CLK_A_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_CLK_A_q_not~q\,
	datad => \sig_CLK_A_q~q\,
	combout => \sig_CLK_A_r~combout\);

-- Location: IOIBUF_X31_Y0_N8
\start_state_machine~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_state_machine,
	o => \start_state_machine~input_o\);

-- Location: LCCOMB_X32_Y3_N26
\sig_cc1101_rd_adr[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[6]~20_combout\ = (sig_cc1101_rd_adr(6) & (\sig_cc1101_rd_adr[5]~19\ $ (GND))) # (!sig_cc1101_rd_adr(6) & (!\sig_cc1101_rd_adr[5]~19\ & VCC))
-- \sig_cc1101_rd_adr[6]~21\ = CARRY((sig_cc1101_rd_adr(6) & !\sig_cc1101_rd_adr[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(6),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[5]~19\,
	combout => \sig_cc1101_rd_adr[6]~20_combout\,
	cout => \sig_cc1101_rd_adr[6]~21\);

-- Location: LCCOMB_X32_Y3_N28
\sig_cc1101_rd_adr[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[7]~22_combout\ = \sig_cc1101_rd_adr[6]~21\ $ (sig_cc1101_rd_adr(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_cc1101_rd_adr(7),
	cin => \sig_cc1101_rd_adr[6]~21\,
	combout => \sig_cc1101_rd_adr[7]~22_combout\);

-- Location: FF_X32_Y3_N29
\sig_cc1101_rd_adr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[7]~22_combout\,
	asdata => VCC,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s9~q\,
	ena => \sig_cc1101_rd_adr[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(7));

-- Location: LCCOMB_X31_Y3_N22
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (sig_cc1101_rd_adr(7) & (sig_cc1101_rd_adr(2) & (sig_cc1101_rd_adr(0) & sig_cc1101_rd_adr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(7),
	datab => sig_cc1101_rd_adr(2),
	datac => sig_cc1101_rd_adr(0),
	datad => sig_cc1101_rd_adr(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X34_Y3_N30
\sig_cc1101_rd_adr[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[5]~25_combout\ = (\start_state_machine~input_o\) # (\state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start_state_machine~input_o\,
	datad => \state.s0~q\,
	combout => \sig_cc1101_rd_adr[5]~25_combout\);

-- Location: LCCOMB_X34_Y3_N28
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\sig_cc1101_rd_adr[5]~25_combout\ & (((!\Equal1~1_combout\) # (!\Equal1~0_combout\)) # (!\state.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s9~q\,
	datab => \Equal1~0_combout\,
	datac => \sig_cc1101_rd_adr[5]~25_combout\,
	datad => \Equal1~1_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X34_Y3_N29
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LCCOMB_X34_Y3_N20
\sig_cc1101_rd_adr[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[7]~24_combout\ = (\sig_CLK_A_r~combout\ & ((\state.s0~q\ & ((\state.s9~q\))) # (!\state.s0~q\ & (\start_state_machine~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_r~combout\,
	datab => \start_state_machine~input_o\,
	datac => \state.s9~q\,
	datad => \state.s0~q\,
	combout => \sig_cc1101_rd_adr[7]~24_combout\);

-- Location: FF_X32_Y3_N15
\sig_cc1101_rd_adr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[0]~8_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s9~q\,
	ena => \sig_cc1101_rd_adr[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(0));

-- Location: LCCOMB_X32_Y3_N16
\sig_cc1101_rd_adr[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[1]~10_combout\ = (sig_cc1101_rd_adr(1) & (!\sig_cc1101_rd_adr[0]~9\)) # (!sig_cc1101_rd_adr(1) & ((\sig_cc1101_rd_adr[0]~9\) # (GND)))
-- \sig_cc1101_rd_adr[1]~11\ = CARRY((!\sig_cc1101_rd_adr[0]~9\) # (!sig_cc1101_rd_adr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(1),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[0]~9\,
	combout => \sig_cc1101_rd_adr[1]~10_combout\,
	cout => \sig_cc1101_rd_adr[1]~11\);

-- Location: FF_X32_Y3_N17
\sig_cc1101_rd_adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[1]~10_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s9~q\,
	ena => \sig_cc1101_rd_adr[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(1));

-- Location: LCCOMB_X32_Y3_N18
\sig_cc1101_rd_adr[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[2]~12_combout\ = (sig_cc1101_rd_adr(2) & (\sig_cc1101_rd_adr[1]~11\ $ (GND))) # (!sig_cc1101_rd_adr(2) & (!\sig_cc1101_rd_adr[1]~11\ & VCC))
-- \sig_cc1101_rd_adr[2]~13\ = CARRY((sig_cc1101_rd_adr(2) & !\sig_cc1101_rd_adr[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(2),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[1]~11\,
	combout => \sig_cc1101_rd_adr[2]~12_combout\,
	cout => \sig_cc1101_rd_adr[2]~13\);

-- Location: FF_X32_Y3_N19
\sig_cc1101_rd_adr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[2]~12_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s9~q\,
	ena => \sig_cc1101_rd_adr[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(2));

-- Location: LCCOMB_X32_Y3_N20
\sig_cc1101_rd_adr[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[3]~14_combout\ = (sig_cc1101_rd_adr(3) & (!\sig_cc1101_rd_adr[2]~13\)) # (!sig_cc1101_rd_adr(3) & ((\sig_cc1101_rd_adr[2]~13\) # (GND)))
-- \sig_cc1101_rd_adr[3]~15\ = CARRY((!\sig_cc1101_rd_adr[2]~13\) # (!sig_cc1101_rd_adr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(3),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[2]~13\,
	combout => \sig_cc1101_rd_adr[3]~14_combout\,
	cout => \sig_cc1101_rd_adr[3]~15\);

-- Location: FF_X32_Y3_N21
\sig_cc1101_rd_adr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[3]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s9~q\,
	ena => \sig_cc1101_rd_adr[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(3));

-- Location: LCCOMB_X32_Y3_N22
\sig_cc1101_rd_adr[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[4]~16_combout\ = (sig_cc1101_rd_adr(4) & (\sig_cc1101_rd_adr[3]~15\ $ (GND))) # (!sig_cc1101_rd_adr(4) & (!\sig_cc1101_rd_adr[3]~15\ & VCC))
-- \sig_cc1101_rd_adr[4]~17\ = CARRY((sig_cc1101_rd_adr(4) & !\sig_cc1101_rd_adr[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(4),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[3]~15\,
	combout => \sig_cc1101_rd_adr[4]~16_combout\,
	cout => \sig_cc1101_rd_adr[4]~17\);

-- Location: FF_X32_Y3_N23
\sig_cc1101_rd_adr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[4]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s9~q\,
	ena => \sig_cc1101_rd_adr[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(4));

-- Location: LCCOMB_X32_Y3_N24
\sig_cc1101_rd_adr[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[5]~18_combout\ = (sig_cc1101_rd_adr(5) & (!\sig_cc1101_rd_adr[4]~17\)) # (!sig_cc1101_rd_adr(5) & ((\sig_cc1101_rd_adr[4]~17\) # (GND)))
-- \sig_cc1101_rd_adr[5]~19\ = CARRY((!\sig_cc1101_rd_adr[4]~17\) # (!sig_cc1101_rd_adr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(5),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[4]~17\,
	combout => \sig_cc1101_rd_adr[5]~18_combout\,
	cout => \sig_cc1101_rd_adr[5]~19\);

-- Location: FF_X32_Y3_N25
\sig_cc1101_rd_adr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[5]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s9~q\,
	ena => \sig_cc1101_rd_adr[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(5));

-- Location: FF_X32_Y3_N27
\sig_cc1101_rd_adr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[6]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s9~q\,
	ena => \sig_cc1101_rd_adr[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(6));

-- Location: LCCOMB_X32_Y3_N0
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!sig_cc1101_rd_adr(6) & (sig_cc1101_rd_adr(3) & (sig_cc1101_rd_adr(4) & sig_cc1101_rd_adr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(6),
	datab => sig_cc1101_rd_adr(3),
	datac => sig_cc1101_rd_adr(4),
	datad => sig_cc1101_rd_adr(5),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X34_Y3_N10
\state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (\start_state_machine~input_o\ & ((\state.s1~q\) # (!\state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start_state_machine~input_o\,
	datac => \state.s1~q\,
	datad => \state.s0~q\,
	combout => \state~18_combout\);

-- Location: FF_X34_Y3_N11
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state~18_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X34_Y3_N18
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\start_state_machine~input_o\ & \state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start_state_machine~input_o\,
	datad => \state.s1~q\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X34_Y3_N4
\Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\Selector14~0_combout\) # ((\state.s9~q\ & ((!\Equal1~0_combout\) # (!\Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Selector14~0_combout\,
	datac => \state.s9~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: FF_X34_Y3_N5
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector14~1_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LCCOMB_X34_Y3_N14
\state.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.s3~feeder_combout\ = \state.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s2~q\,
	combout => \state.s3~feeder_combout\);

-- Location: FF_X34_Y3_N15
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state.s3~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: LCCOMB_X35_Y3_N24
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.s3~q\) # ((\state.s5~q\ & ((sig_spi_state_cntr(4)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => sig_spi_state_cntr(4),
	datac => \state.s5~q\,
	datad => \state.s3~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X35_Y3_N25
\state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s5~q\);

-- Location: LCCOMB_X34_Y3_N8
\sig_spi_state_cntr[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~15_combout\ = (!\state.s1~q\ & (!\state.s3~q\ & (!\state.s8~q\ & !\state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \state.s3~q\,
	datac => \state.s8~q\,
	datad => \state.s2~q\,
	combout => \sig_spi_state_cntr[4]~15_combout\);

-- Location: LCCOMB_X34_Y3_N26
\sig_spi_state_cntr[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~16_combout\ = (\sig_cc1101_rd_adr[5]~25_combout\ & (\sig_spi_state_cntr[4]~15_combout\ & (!\state.s9~q\ & \sig_CLK_A_r~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cc1101_rd_adr[5]~25_combout\,
	datab => \sig_spi_state_cntr[4]~15_combout\,
	datac => \state.s9~q\,
	datad => \sig_CLK_A_r~combout\,
	combout => \sig_spi_state_cntr[4]~16_combout\);

-- Location: FF_X35_Y3_N11
\sig_spi_state_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[0]~5_combout\,
	clrn => \resetn~input_o\,
	sclr => \ALT_INV_state.s5~q\,
	ena => \sig_spi_state_cntr[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(0));

-- Location: LCCOMB_X35_Y3_N12
\sig_spi_state_cntr[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[1]~7_combout\ = (sig_spi_state_cntr(1) & (!\sig_spi_state_cntr[0]~6\)) # (!sig_spi_state_cntr(1) & ((\sig_spi_state_cntr[0]~6\) # (GND)))
-- \sig_spi_state_cntr[1]~8\ = CARRY((!\sig_spi_state_cntr[0]~6\) # (!sig_spi_state_cntr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(1),
	datad => VCC,
	cin => \sig_spi_state_cntr[0]~6\,
	combout => \sig_spi_state_cntr[1]~7_combout\,
	cout => \sig_spi_state_cntr[1]~8\);

-- Location: FF_X35_Y3_N13
\sig_spi_state_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[1]~7_combout\,
	clrn => \resetn~input_o\,
	sclr => \ALT_INV_state.s5~q\,
	ena => \sig_spi_state_cntr[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(1));

-- Location: LCCOMB_X35_Y3_N14
\sig_spi_state_cntr[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[2]~9_combout\ = (sig_spi_state_cntr(2) & (\sig_spi_state_cntr[1]~8\ $ (GND))) # (!sig_spi_state_cntr(2) & (!\sig_spi_state_cntr[1]~8\ & VCC))
-- \sig_spi_state_cntr[2]~10\ = CARRY((sig_spi_state_cntr(2) & !\sig_spi_state_cntr[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_spi_state_cntr(2),
	datad => VCC,
	cin => \sig_spi_state_cntr[1]~8\,
	combout => \sig_spi_state_cntr[2]~9_combout\,
	cout => \sig_spi_state_cntr[2]~10\);

-- Location: FF_X35_Y3_N15
\sig_spi_state_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[2]~9_combout\,
	clrn => \resetn~input_o\,
	sclr => \ALT_INV_state.s5~q\,
	ena => \sig_spi_state_cntr[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(2));

-- Location: LCCOMB_X35_Y3_N16
\sig_spi_state_cntr[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[3]~11_combout\ = (sig_spi_state_cntr(3) & (!\sig_spi_state_cntr[2]~10\)) # (!sig_spi_state_cntr(3) & ((\sig_spi_state_cntr[2]~10\) # (GND)))
-- \sig_spi_state_cntr[3]~12\ = CARRY((!\sig_spi_state_cntr[2]~10\) # (!sig_spi_state_cntr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_spi_state_cntr(3),
	datad => VCC,
	cin => \sig_spi_state_cntr[2]~10\,
	combout => \sig_spi_state_cntr[3]~11_combout\,
	cout => \sig_spi_state_cntr[3]~12\);

-- Location: FF_X35_Y3_N17
\sig_spi_state_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[3]~11_combout\,
	clrn => \resetn~input_o\,
	sclr => \ALT_INV_state.s5~q\,
	ena => \sig_spi_state_cntr[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(3));

-- Location: LCCOMB_X35_Y3_N18
\sig_spi_state_cntr[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~13_combout\ = \sig_spi_state_cntr[3]~12\ $ (!sig_spi_state_cntr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_state_cntr(4),
	cin => \sig_spi_state_cntr[3]~12\,
	combout => \sig_spi_state_cntr[4]~13_combout\);

-- Location: FF_X35_Y3_N19
\sig_spi_state_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[4]~13_combout\,
	clrn => \resetn~input_o\,
	sclr => \ALT_INV_state.s5~q\,
	ena => \sig_spi_state_cntr[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(4));

-- Location: LCCOMB_X35_Y3_N20
\state~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (!sig_spi_state_cntr(4) & (\Equal0~0_combout\ & \state.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_spi_state_cntr(4),
	datac => \Equal0~0_combout\,
	datad => \state.s5~q\,
	combout => \state~17_combout\);

-- Location: FF_X35_Y3_N21
\state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state~17_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s7~q\);

-- Location: FF_X34_Y3_N9
\state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state.s7~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s8~q\);

-- Location: FF_X34_Y3_N27
\state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state.s8~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s9~q\);

-- Location: LCCOMB_X34_Y3_N22
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\state.s9~q\ & ((\state.s3~q\) # (\sig_cs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s9~q\,
	datab => \state.s3~q\,
	datac => \sig_cs~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X34_Y3_N23
sig_cs : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cs~q\);

-- Location: LCCOMB_X31_Y3_N30
\sig_mosi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_mosi~0_combout\ = (\sig_CLK_A_q~q\ & (!\sig_CLK_A_q_not~q\ & (\resetn~input_o\ & \state.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_q~q\,
	datab => \sig_CLK_A_q_not~q\,
	datac => \resetn~input_o\,
	datad => \state.s5~q\,
	combout => \sig_mosi~0_combout\);

-- Location: LCCOMB_X31_Y3_N10
\sig_tx_reg[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[7]~0_combout\ = (\sig_CLK_A_q~q\ & \resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_q~q\,
	datac => \resetn~input_o\,
	combout => \sig_tx_reg[7]~0_combout\);

-- Location: LCCOMB_X31_Y3_N12
\sig_tx_reg[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[7]~1_combout\ = (\sig_tx_reg[7]~0_combout\ & (!\sig_CLK_A_q_not~q\ & ((\state.s2~q\) # (\state.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_tx_reg[7]~0_combout\,
	datab => \sig_CLK_A_q_not~q\,
	datac => \state.s2~q\,
	datad => \state.s5~q\,
	combout => \sig_tx_reg[7]~1_combout\);

-- Location: LCCOMB_X31_Y3_N28
\sig_tx_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[0]~2_combout\ = (\sig_CLK_A_q~q\ & (\resetn~input_o\ & (\state.s2~q\ & !\sig_CLK_A_q_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_q~q\,
	datab => \resetn~input_o\,
	datac => \state.s2~q\,
	datad => \sig_CLK_A_q_not~q\,
	combout => \sig_tx_reg[0]~2_combout\);

-- Location: LCCOMB_X31_Y3_N26
\sig_tx_reg[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[0]~3_combout\ = (\sig_tx_reg[7]~1_combout\ & (sig_cc1101_rd_adr(0) & ((\sig_tx_reg[0]~2_combout\)))) # (!\sig_tx_reg[7]~1_combout\ & ((sig_tx_reg(0)) # ((sig_cc1101_rd_adr(0) & \sig_tx_reg[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_tx_reg[7]~1_combout\,
	datab => sig_cc1101_rd_adr(0),
	datac => sig_tx_reg(0),
	datad => \sig_tx_reg[0]~2_combout\,
	combout => \sig_tx_reg[0]~3_combout\);

-- Location: FF_X31_Y3_N27
\sig_tx_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_tx_reg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(0));

-- Location: LCCOMB_X31_Y3_N24
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state.s5~q\ & ((sig_tx_reg(0)))) # (!\state.s5~q\ & (sig_cc1101_rd_adr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(1),
	datac => sig_tx_reg(0),
	datad => \state.s5~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X31_Y3_N25
\sig_tx_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \sig_tx_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(1));

-- Location: LCCOMB_X31_Y3_N6
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state.s5~q\ & ((sig_tx_reg(1)))) # (!\state.s5~q\ & (sig_cc1101_rd_adr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(2),
	datac => sig_tx_reg(1),
	datad => \state.s5~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X31_Y3_N7
\sig_tx_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	ena => \sig_tx_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(2));

-- Location: LCCOMB_X31_Y3_N4
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state.s5~q\ & (sig_tx_reg(2))) # (!\state.s5~q\ & ((sig_cc1101_rd_adr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_tx_reg(2),
	datac => sig_cc1101_rd_adr(3),
	datad => \state.s5~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X31_Y3_N5
\sig_tx_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \sig_tx_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(3));

-- Location: LCCOMB_X31_Y3_N18
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.s5~q\ & ((sig_tx_reg(3)))) # (!\state.s5~q\ & (sig_cc1101_rd_adr(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(4),
	datac => sig_tx_reg(3),
	datad => \state.s5~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X31_Y3_N19
\sig_tx_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \sig_tx_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(4));

-- Location: LCCOMB_X31_Y3_N8
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.s5~q\ & (sig_tx_reg(4))) # (!\state.s5~q\ & ((sig_cc1101_rd_adr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_tx_reg(4),
	datac => sig_cc1101_rd_adr(5),
	datad => \state.s5~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X31_Y3_N9
\sig_tx_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \sig_tx_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(5));

-- Location: LCCOMB_X31_Y3_N16
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.s5~q\ & ((sig_tx_reg(5)))) # (!\state.s5~q\ & (sig_cc1101_rd_adr(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(6),
	datac => sig_tx_reg(5),
	datad => \state.s5~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X31_Y3_N17
\sig_tx_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \sig_tx_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(6));

-- Location: LCCOMB_X31_Y3_N20
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.s5~q\ & ((sig_tx_reg(6)))) # (!\state.s5~q\ & (sig_cc1101_rd_adr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(7),
	datac => sig_tx_reg(6),
	datad => \state.s5~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X31_Y3_N21
\sig_tx_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \sig_tx_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(7));

-- Location: LCCOMB_X31_Y3_N0
\sig_mosi~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_mosi~1_combout\ = (\sig_mosi~0_combout\ & ((sig_tx_reg(7)))) # (!\sig_mosi~0_combout\ & (\sig_mosi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_mosi~0_combout\,
	datac => \sig_mosi~q\,
	datad => sig_tx_reg(7),
	combout => \sig_mosi~1_combout\);

-- Location: FF_X31_Y3_N1
sig_mosi : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_mosi~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_mosi~q\);

-- Location: LCCOMB_X35_Y3_N22
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\state.s7~q\ & ((\state.s3~q\) # (\sig_cs_stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datac => \sig_cs_stop~q\,
	datad => \state.s7~q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X35_Y3_N23
sig_cs_stop : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cs_stop~q\);

-- Location: LCCOMB_X35_Y4_N6
\sig_spi_clock~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock~0_combout\ = (\sig_spi_raw_clock~q\ & \sig_cs_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_spi_raw_clock~q\,
	datad => \sig_cs_stop~q\,
	combout => \sig_spi_clock~0_combout\);

-- Location: FF_X35_Y4_N7
sig_spi_clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clock~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_clock~q\);

-- Location: LCCOMB_X35_Y4_N12
\sig_spi_clock_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock_1~0_combout\ = (\sig_cs_stop~q\ & \sig_spi_clock~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cs_stop~q\,
	datad => \sig_spi_clock~q\,
	combout => \sig_spi_clock_1~0_combout\);

-- Location: FF_X35_Y4_N13
sig_spi_clock_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clock_1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_clock_1~q\);

-- Location: LCCOMB_X35_Y4_N10
\sig_spi_clock_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock_2~0_combout\ = (\sig_cs_stop~q\ & \sig_spi_clock_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cs_stop~q\,
	datad => \sig_spi_clock_1~q\,
	combout => \sig_spi_clock_2~0_combout\);

-- Location: FF_X35_Y4_N11
sig_spi_clock_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clock_2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_clock_2~q\);

-- Location: LCCOMB_X35_Y4_N16
\sig_spi_clock_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock_3~0_combout\ = (\sig_cs_stop~q\ & \sig_spi_clock_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cs_stop~q\,
	datad => \sig_spi_clock_2~q\,
	combout => \sig_spi_clock_3~0_combout\);

-- Location: FF_X35_Y4_N17
sig_spi_clock_3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clock_3~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_clock_3~q\);

-- Location: LCCOMB_X35_Y4_N22
\sig_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[0]~feeder_combout\ = \sig_spi_clock_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_spi_clock_3~q\,
	combout => \sig_shift_reg[0]~feeder_combout\);

-- Location: FF_X35_Y4_N23
\sig_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[0]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(0));

-- Location: FF_X35_Y4_N29
\sig_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_shift_reg(0),
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(1));

-- Location: LCCOMB_X35_Y4_N18
\sig_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[2]~feeder_combout\ = sig_shift_reg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(1),
	combout => \sig_shift_reg[2]~feeder_combout\);

-- Location: FF_X35_Y4_N19
\sig_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[2]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(2));

-- Location: LCCOMB_X35_Y4_N24
\sig_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[3]~feeder_combout\ = sig_shift_reg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(2),
	combout => \sig_shift_reg[3]~feeder_combout\);

-- Location: FF_X35_Y4_N25
\sig_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[3]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(3));

-- Location: LCCOMB_X35_Y4_N14
\sig_shift_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[4]~feeder_combout\ = sig_shift_reg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(3),
	combout => \sig_shift_reg[4]~feeder_combout\);

-- Location: FF_X35_Y4_N15
\sig_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[4]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(4));

-- Location: FF_X35_Y4_N21
\sig_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_shift_reg(4),
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(5));

-- Location: LCCOMB_X35_Y4_N26
\sig_shift_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[6]~feeder_combout\ = sig_shift_reg(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(5),
	combout => \sig_shift_reg[6]~feeder_combout\);

-- Location: FF_X35_Y4_N27
\sig_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[6]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(6));

-- Location: FF_X35_Y4_N1
\sig_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_shift_reg(6),
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(7));

-- Location: LCCOMB_X31_Y4_N0
\sig_shift_reg[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[8]~feeder_combout\ = sig_shift_reg(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(7),
	combout => \sig_shift_reg[8]~feeder_combout\);

-- Location: FF_X31_Y4_N1
\sig_shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[8]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(8));

-- Location: LCCOMB_X31_Y4_N30
\sig_shift_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[9]~feeder_combout\ = sig_shift_reg(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(8),
	combout => \sig_shift_reg[9]~feeder_combout\);

-- Location: FF_X31_Y4_N31
\sig_shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[9]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(9));

-- Location: FF_X31_Y4_N21
\sig_shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_shift_reg(9),
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(10));

-- Location: LCCOMB_X31_Y4_N10
\sig_shift_reg[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[11]~feeder_combout\ = sig_shift_reg(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(10),
	combout => \sig_shift_reg[11]~feeder_combout\);

-- Location: FF_X31_Y4_N11
\sig_shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[11]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(11));

-- Location: LCCOMB_X31_Y4_N16
\sig_shift_reg[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[12]~feeder_combout\ = sig_shift_reg(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(11),
	combout => \sig_shift_reg[12]~feeder_combout\);

-- Location: FF_X31_Y4_N17
\sig_shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[12]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(12));

-- Location: LCCOMB_X31_Y4_N6
\sig_shift_reg[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[13]~feeder_combout\ = sig_shift_reg(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(12),
	combout => \sig_shift_reg[13]~feeder_combout\);

-- Location: FF_X31_Y4_N7
\sig_shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[13]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(13));

-- Location: LCCOMB_X31_Y4_N28
\sig_shift_reg[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[14]~feeder_combout\ = sig_shift_reg(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(13),
	combout => \sig_shift_reg[14]~feeder_combout\);

-- Location: FF_X31_Y4_N29
\sig_shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[14]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(14));

-- Location: LCCOMB_X31_Y4_N18
\sig_shift_reg[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[15]~feeder_combout\ = sig_shift_reg(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(14),
	combout => \sig_shift_reg[15]~feeder_combout\);

-- Location: FF_X31_Y4_N19
\sig_shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[15]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(15));

-- Location: LCCOMB_X31_Y4_N24
\sig_shift_reg[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[16]~feeder_combout\ = sig_shift_reg(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(15),
	combout => \sig_shift_reg[16]~feeder_combout\);

-- Location: FF_X31_Y4_N25
\sig_shift_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[16]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(16));

-- Location: LCCOMB_X31_Y4_N22
\sig_shift_reg[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[17]~feeder_combout\ = sig_shift_reg(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(16),
	combout => \sig_shift_reg[17]~feeder_combout\);

-- Location: FF_X31_Y4_N23
\sig_shift_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[17]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(17));

-- Location: FF_X31_Y4_N13
\sig_shift_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_shift_reg(17),
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(18));

-- Location: LCCOMB_X31_Y4_N26
\sig_shift_reg[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[19]~feeder_combout\ = sig_shift_reg(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(18),
	combout => \sig_shift_reg[19]~feeder_combout\);

-- Location: FF_X31_Y4_N27
\sig_shift_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[19]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(19));

-- Location: FF_X31_Y4_N9
sig_spi_clock_3_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_shift_reg(19),
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_clock_3_out~q\);

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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_cs <= \cs~output_o\;

ww_mosi <= \mosi~output_o\;

ww_spi_clock <= \spi_clock~output_o\;
END structure;


