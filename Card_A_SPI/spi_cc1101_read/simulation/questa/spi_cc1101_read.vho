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

-- DATE "06/29/2024 17:27:50"

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

ENTITY 	spi_cc1101_read IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	start_state_machine : IN std_logic;
	cs : BUFFER std_logic;
	mosi : BUFFER std_logic;
	spi_clock : BUFFER std_logic
	);
END spi_cc1101_read;

-- Design Ports Information
-- cs	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mosi	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- spi_clock	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sysclk	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start_state_machine	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF spi_cc1101_read IS
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
SIGNAL \sig_cc1101_rd_adr[0]~8_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \sig_spi_state_cntr[0]~6_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[1]~9\ : std_logic;
SIGNAL \sig_spi_state_cntr[2]~10_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~5_combout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \start_state_machine~input_o\ : std_logic;
SIGNAL \sig_raw_cntr[0]~3_combout\ : std_logic;
SIGNAL \sig_raw_cntr[1]~2_combout\ : std_logic;
SIGNAL \sig_raw_cntr[2]~1_combout\ : std_logic;
SIGNAL \sig_raw_cntr[3]~0_combout\ : std_logic;
SIGNAL \sig_spi_raw_clock~q\ : std_logic;
SIGNAL \sig_CLK_A_q~feeder_combout\ : std_logic;
SIGNAL \sig_CLK_A_q~q\ : std_logic;
SIGNAL \sig_CLK_A_q_not~feeder_combout\ : std_logic;
SIGNAL \sig_CLK_A_q_not~q\ : std_logic;
SIGNAL \sig_CLK_A_r~combout\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \state~27_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \state.s6~feeder_combout\ : std_logic;
SIGNAL \state.s6~q\ : std_logic;
SIGNAL \state~28_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~17_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~18_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[2]~11\ : std_logic;
SIGNAL \sig_spi_state_cntr[3]~12_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[3]~13\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~14_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \state.s4~q\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state~31_combout\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~16_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[0]~7\ : std_logic;
SIGNAL \sig_spi_state_cntr[1]~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \state.s7~q\ : std_logic;
SIGNAL \state.s8~feeder_combout\ : std_logic;
SIGNAL \state.s8~q\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[7]~10_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[0]~9\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[1]~11_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[1]~12\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[2]~13_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[2]~14\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[3]~15_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[3]~16\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[4]~17_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[4]~18\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[5]~19_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[5]~20\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[6]~21_combout\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[6]~22\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[7]~23_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \state~29_combout\ : std_logic;
SIGNAL \state~30_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \sig_cs~q\ : std_logic;
SIGNAL \sig_mosi~0_combout\ : std_logic;
SIGNAL \sig_tx_reg[7]~0_combout\ : std_logic;
SIGNAL \sig_tx_reg[0]~1_combout\ : std_logic;
SIGNAL \sig_tx_reg[0]~2_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \sig_mosi~1_combout\ : std_logic;
SIGNAL \sig_mosi~q\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \sig_cs_stop~q\ : std_logic;
SIGNAL \sig_spi_clock~0_combout\ : std_logic;
SIGNAL \sig_spi_clock~q\ : std_logic;
SIGNAL \sig_spi_clock_1~0_combout\ : std_logic;
SIGNAL \sig_spi_clock_1~q\ : std_logic;
SIGNAL \sig_spi_clock_2~0_combout\ : std_logic;
SIGNAL \sig_spi_clock_2~q\ : std_logic;
SIGNAL \sig_spi_clk_dly[1]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[2]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[3]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[4]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[6]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[7]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[8]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[9]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[10]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[11]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[14]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[16]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[17]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[18]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[20]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_out~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_out~q\ : std_logic;
SIGNAL sig_cc1101_rd_adr : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_spi_state_cntr : std_logic_vector(4 DOWNTO 0);
SIGNAL sig_tx_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_spi_clk_dly : std_logic_vector(31 DOWNTO 0);
SIGNAL sig_raw_cntr : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.s8~q\ : std_logic;
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
\ALT_INV_state.s8~q\ <= NOT \state.s8~q\;
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
	i => \sig_spi_clk_out~q\,
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

-- Location: LCCOMB_X40_Y4_N24
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

-- Location: LCCOMB_X29_Y3_N10
\sig_spi_state_cntr[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[0]~6_combout\ = sig_spi_state_cntr(0) $ (VCC)
-- \sig_spi_state_cntr[0]~7\ = CARRY(sig_spi_state_cntr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(0),
	datad => VCC,
	combout => \sig_spi_state_cntr[0]~6_combout\,
	cout => \sig_spi_state_cntr[0]~7\);

-- Location: LCCOMB_X29_Y3_N12
\sig_spi_state_cntr[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[1]~8_combout\ = (sig_spi_state_cntr(1) & (!\sig_spi_state_cntr[0]~7\)) # (!sig_spi_state_cntr(1) & ((\sig_spi_state_cntr[0]~7\) # (GND)))
-- \sig_spi_state_cntr[1]~9\ = CARRY((!\sig_spi_state_cntr[0]~7\) # (!sig_spi_state_cntr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(1),
	datad => VCC,
	cin => \sig_spi_state_cntr[0]~7\,
	combout => \sig_spi_state_cntr[1]~8_combout\,
	cout => \sig_spi_state_cntr[1]~9\);

-- Location: LCCOMB_X29_Y3_N14
\sig_spi_state_cntr[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[2]~10_combout\ = (sig_spi_state_cntr(2) & (\sig_spi_state_cntr[1]~9\ $ (GND))) # (!sig_spi_state_cntr(2) & (!\sig_spi_state_cntr[1]~9\ & VCC))
-- \sig_spi_state_cntr[2]~11\ = CARRY((sig_spi_state_cntr(2) & !\sig_spi_state_cntr[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_spi_state_cntr(2),
	datad => VCC,
	cin => \sig_spi_state_cntr[1]~9\,
	combout => \sig_spi_state_cntr[2]~10_combout\,
	cout => \sig_spi_state_cntr[2]~11\);

-- Location: LCCOMB_X32_Y3_N8
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (((!sig_cc1101_rd_adr(2)) # (!sig_cc1101_rd_adr(0))) # (!sig_cc1101_rd_adr(1))) # (!sig_cc1101_rd_adr(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(3),
	datab => sig_cc1101_rd_adr(1),
	datac => sig_cc1101_rd_adr(0),
	datad => sig_cc1101_rd_adr(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X32_Y3_N12
\sig_spi_state_cntr[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~5_combout\ = (\Equal1~1_combout\) # ((\Equal1~0_combout\) # (!\state.s8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \state.s8~q\,
	combout => \sig_spi_state_cntr[4]~5_combout\);

-- Location: LCCOMB_X34_Y3_N20
\state~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (\Equal0~0_combout\ & (sig_spi_state_cntr(4) & ((\state.s4~q\) # (\state.s7~q\)))) # (!\Equal0~0_combout\ & (((\state.s4~q\) # (\state.s7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => sig_spi_state_cntr(4),
	datac => \state.s4~q\,
	datad => \state.s7~q\,
	combout => \state~25_combout\);

-- Location: IOIBUF_X36_Y0_N8
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

-- Location: LCCOMB_X32_Y4_N24
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

-- Location: FF_X32_Y4_N25
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

-- Location: LCCOMB_X32_Y4_N22
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

-- Location: FF_X32_Y4_N23
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

-- Location: LCCOMB_X32_Y4_N4
\sig_raw_cntr[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_raw_cntr[2]~1_combout\ = sig_raw_cntr(2) $ (((sig_raw_cntr(1) & sig_raw_cntr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_raw_cntr(1),
	datac => sig_raw_cntr(2),
	datad => sig_raw_cntr(0),
	combout => \sig_raw_cntr[2]~1_combout\);

-- Location: FF_X32_Y4_N5
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

-- Location: LCCOMB_X32_Y4_N26
\sig_raw_cntr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_raw_cntr[3]~0_combout\ = sig_raw_cntr(3) $ (((sig_raw_cntr(1) & (sig_raw_cntr(2) & sig_raw_cntr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_raw_cntr(1),
	datab => sig_raw_cntr(2),
	datac => sig_raw_cntr(3),
	datad => sig_raw_cntr(0),
	combout => \sig_raw_cntr[3]~0_combout\);

-- Location: FF_X32_Y4_N27
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

-- Location: FF_X32_Y4_N17
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

-- Location: LCCOMB_X34_Y4_N10
\sig_CLK_A_q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_CLK_A_q~feeder_combout\ = \sig_spi_raw_clock~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_spi_raw_clock~q\,
	combout => \sig_CLK_A_q~feeder_combout\);

-- Location: FF_X34_Y4_N11
sig_CLK_A_q : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_CLK_A_q~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_CLK_A_q~q\);

-- Location: LCCOMB_X34_Y4_N12
\sig_CLK_A_q_not~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_CLK_A_q_not~feeder_combout\ = \sig_CLK_A_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_CLK_A_q~q\,
	combout => \sig_CLK_A_q_not~feeder_combout\);

-- Location: FF_X34_Y4_N13
sig_CLK_A_q_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_CLK_A_q_not~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_CLK_A_q_not~q\);

-- Location: LCCOMB_X34_Y4_N30
sig_CLK_A_r : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_CLK_A_r~combout\ = (!\sig_CLK_A_q_not~q\ & \sig_CLK_A_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_q_not~q\,
	datad => \sig_CLK_A_q~q\,
	combout => \sig_CLK_A_r~combout\);

-- Location: LCCOMB_X32_Y3_N0
\state~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~26_combout\ = ((\start_state_machine~input_o\ & (\state.s1~q\)) # (!\start_state_machine~input_o\ & ((!\state.s0~q\)))) # (!\sig_CLK_A_r~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \start_state_machine~input_o\,
	datac => \sig_CLK_A_r~combout\,
	datad => \state.s0~q\,
	combout => \state~26_combout\);

-- Location: LCCOMB_X32_Y3_N2
\state~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~27_combout\ = (!\state~26_combout\ & (((!\state.s0~q\ & \start_state_machine~input_o\)) # (!\state~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~25_combout\,
	datab => \state.s0~q\,
	datac => \start_state_machine~input_o\,
	datad => \state~26_combout\,
	combout => \state~27_combout\);

-- Location: FF_X32_Y3_N13
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[4]~5_combout\,
	clrn => \resetn~input_o\,
	ena => \state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LCCOMB_X34_Y3_N26
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\start_state_machine~input_o\ & ((\state.s1~q\) # (!\state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \start_state_machine~input_o\,
	datac => \state.s1~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X34_Y3_N27
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X34_Y3_N24
\state.s6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.s6~feeder_combout\ = \state.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s5~q\,
	combout => \state.s6~feeder_combout\);

-- Location: FF_X34_Y3_N25
\state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state.s6~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s6~q\);

-- Location: LCCOMB_X34_Y3_N30
\state~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~28_combout\ = (!\state.s3~q\ & (!\state.s2~q\ & !\state.s6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datac => \state.s2~q\,
	datad => \state.s6~q\,
	combout => \state~28_combout\);

-- Location: LCCOMB_X35_Y3_N10
\sig_spi_state_cntr[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~17_combout\ = (!\sig_CLK_A_q_not~q\ & (\sig_CLK_A_q~q\ & ((\start_state_machine~input_o\) # (\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_state_machine~input_o\,
	datab => \sig_CLK_A_q_not~q\,
	datac => \state.s0~q\,
	datad => \sig_CLK_A_q~q\,
	combout => \sig_spi_state_cntr[4]~17_combout\);

-- Location: LCCOMB_X35_Y3_N12
\sig_spi_state_cntr[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~18_combout\ = (!\state.s1~q\ & (\state~28_combout\ & (\sig_spi_state_cntr[4]~5_combout\ & \sig_spi_state_cntr[4]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \state~28_combout\,
	datac => \sig_spi_state_cntr[4]~5_combout\,
	datad => \sig_spi_state_cntr[4]~17_combout\,
	combout => \sig_spi_state_cntr[4]~18_combout\);

-- Location: FF_X29_Y3_N15
\sig_spi_state_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[2]~10_combout\,
	clrn => \resetn~input_o\,
	sclr => \sig_spi_state_cntr[4]~16_combout\,
	ena => \sig_spi_state_cntr[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(2));

-- Location: LCCOMB_X29_Y3_N16
\sig_spi_state_cntr[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[3]~12_combout\ = (sig_spi_state_cntr(3) & (!\sig_spi_state_cntr[2]~11\)) # (!sig_spi_state_cntr(3) & ((\sig_spi_state_cntr[2]~11\) # (GND)))
-- \sig_spi_state_cntr[3]~13\ = CARRY((!\sig_spi_state_cntr[2]~11\) # (!sig_spi_state_cntr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_spi_state_cntr(3),
	datad => VCC,
	cin => \sig_spi_state_cntr[2]~11\,
	combout => \sig_spi_state_cntr[3]~12_combout\,
	cout => \sig_spi_state_cntr[3]~13\);

-- Location: FF_X29_Y3_N17
\sig_spi_state_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[3]~12_combout\,
	clrn => \resetn~input_o\,
	sclr => \sig_spi_state_cntr[4]~16_combout\,
	ena => \sig_spi_state_cntr[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(3));

-- Location: LCCOMB_X29_Y3_N18
\sig_spi_state_cntr[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~14_combout\ = \sig_spi_state_cntr[3]~13\ $ (!sig_spi_state_cntr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_state_cntr(4),
	cin => \sig_spi_state_cntr[3]~13\,
	combout => \sig_spi_state_cntr[4]~14_combout\);

-- Location: FF_X29_Y3_N19
\sig_spi_state_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[4]~14_combout\,
	clrn => \resetn~input_o\,
	sclr => \sig_spi_state_cntr[4]~16_combout\,
	ena => \sig_spi_state_cntr[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(4));

-- Location: LCCOMB_X34_Y3_N22
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.s3~q\) # ((\state.s4~q\ & ((sig_spi_state_cntr(4)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => sig_spi_state_cntr(4),
	datac => \state.s4~q\,
	datad => \state.s3~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X34_Y3_N23
\state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s4~q\);

-- Location: LCCOMB_X35_Y3_N24
\state~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (\state.s1~q\ & ((\start_state_machine~input_o\))) # (!\state.s1~q\ & (!\state.s0~q\ & !\start_state_machine~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datac => \state.s0~q\,
	datad => \start_state_machine~input_o\,
	combout => \state~24_combout\);

-- Location: LCCOMB_X35_Y3_N22
\state~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~31_combout\ = (!\sig_CLK_A_q_not~q\ & (\sig_CLK_A_q~q\ & (!\state~25_combout\ & !\state~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_q_not~q\,
	datab => \sig_CLK_A_q~q\,
	datac => \state~25_combout\,
	datad => \state~24_combout\,
	combout => \state~31_combout\);

-- Location: FF_X34_Y3_N19
\state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state.s4~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s5~q\);

-- Location: LCCOMB_X34_Y3_N28
\sig_spi_state_cntr[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~16_combout\ = (\state.s5~q\) # ((\state.s8~q\) # (!\state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s5~q\,
	datac => \state.s0~q\,
	datad => \state.s8~q\,
	combout => \sig_spi_state_cntr[4]~16_combout\);

-- Location: FF_X29_Y3_N11
\sig_spi_state_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[0]~6_combout\,
	clrn => \resetn~input_o\,
	sclr => \sig_spi_state_cntr[4]~16_combout\,
	ena => \sig_spi_state_cntr[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(0));

-- Location: FF_X29_Y3_N13
\sig_spi_state_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[1]~8_combout\,
	clrn => \resetn~input_o\,
	sclr => \sig_spi_state_cntr[4]~16_combout\,
	ena => \sig_spi_state_cntr[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(1));

-- Location: LCCOMB_X29_Y3_N8
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (sig_spi_state_cntr(1) & (!sig_spi_state_cntr(3) & (sig_spi_state_cntr(2) & sig_spi_state_cntr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(1),
	datab => sig_spi_state_cntr(3),
	datac => sig_spi_state_cntr(2),
	datad => sig_spi_state_cntr(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X34_Y3_N16
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state.s6~q\) # ((\state.s7~q\ & ((sig_spi_state_cntr(4)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => sig_spi_state_cntr(4),
	datac => \state.s7~q\,
	datad => \state.s6~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X34_Y3_N17
\state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s7~q\);

-- Location: LCCOMB_X34_Y3_N10
\state.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.s8~feeder_combout\ = \state.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s7~q\,
	combout => \state.s8~feeder_combout\);

-- Location: FF_X34_Y3_N11
\state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state.s8~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s8~q\);

-- Location: LCCOMB_X34_Y3_N6
\sig_cc1101_rd_adr[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[7]~10_combout\ = (\sig_CLK_A_r~combout\ & ((\state.s0~q\ & ((\state.s8~q\))) # (!\state.s0~q\ & (\start_state_machine~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \start_state_machine~input_o\,
	datac => \sig_CLK_A_r~combout\,
	datad => \state.s8~q\,
	combout => \sig_cc1101_rd_adr[7]~10_combout\);

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
	sload => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_rd_adr[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(0));

-- Location: LCCOMB_X32_Y3_N16
\sig_cc1101_rd_adr[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[1]~11_combout\ = (sig_cc1101_rd_adr(1) & (!\sig_cc1101_rd_adr[0]~9\)) # (!sig_cc1101_rd_adr(1) & ((\sig_cc1101_rd_adr[0]~9\) # (GND)))
-- \sig_cc1101_rd_adr[1]~12\ = CARRY((!\sig_cc1101_rd_adr[0]~9\) # (!sig_cc1101_rd_adr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(1),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[0]~9\,
	combout => \sig_cc1101_rd_adr[1]~11_combout\,
	cout => \sig_cc1101_rd_adr[1]~12\);

-- Location: FF_X32_Y3_N17
\sig_cc1101_rd_adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[1]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_rd_adr[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(1));

-- Location: LCCOMB_X32_Y3_N18
\sig_cc1101_rd_adr[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[2]~13_combout\ = (sig_cc1101_rd_adr(2) & (\sig_cc1101_rd_adr[1]~12\ $ (GND))) # (!sig_cc1101_rd_adr(2) & (!\sig_cc1101_rd_adr[1]~12\ & VCC))
-- \sig_cc1101_rd_adr[2]~14\ = CARRY((sig_cc1101_rd_adr(2) & !\sig_cc1101_rd_adr[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(2),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[1]~12\,
	combout => \sig_cc1101_rd_adr[2]~13_combout\,
	cout => \sig_cc1101_rd_adr[2]~14\);

-- Location: FF_X32_Y3_N19
\sig_cc1101_rd_adr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[2]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_rd_adr[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(2));

-- Location: LCCOMB_X32_Y3_N20
\sig_cc1101_rd_adr[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[3]~15_combout\ = (sig_cc1101_rd_adr(3) & (!\sig_cc1101_rd_adr[2]~14\)) # (!sig_cc1101_rd_adr(3) & ((\sig_cc1101_rd_adr[2]~14\) # (GND)))
-- \sig_cc1101_rd_adr[3]~16\ = CARRY((!\sig_cc1101_rd_adr[2]~14\) # (!sig_cc1101_rd_adr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(3),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[2]~14\,
	combout => \sig_cc1101_rd_adr[3]~15_combout\,
	cout => \sig_cc1101_rd_adr[3]~16\);

-- Location: FF_X32_Y3_N21
\sig_cc1101_rd_adr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[3]~15_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_rd_adr[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(3));

-- Location: LCCOMB_X32_Y3_N22
\sig_cc1101_rd_adr[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[4]~17_combout\ = (sig_cc1101_rd_adr(4) & (\sig_cc1101_rd_adr[3]~16\ $ (GND))) # (!sig_cc1101_rd_adr(4) & (!\sig_cc1101_rd_adr[3]~16\ & VCC))
-- \sig_cc1101_rd_adr[4]~18\ = CARRY((sig_cc1101_rd_adr(4) & !\sig_cc1101_rd_adr[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(4),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[3]~16\,
	combout => \sig_cc1101_rd_adr[4]~17_combout\,
	cout => \sig_cc1101_rd_adr[4]~18\);

-- Location: FF_X32_Y3_N23
\sig_cc1101_rd_adr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[4]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_rd_adr[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(4));

-- Location: LCCOMB_X32_Y3_N24
\sig_cc1101_rd_adr[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[5]~19_combout\ = (sig_cc1101_rd_adr(5) & (!\sig_cc1101_rd_adr[4]~18\)) # (!sig_cc1101_rd_adr(5) & ((\sig_cc1101_rd_adr[4]~18\) # (GND)))
-- \sig_cc1101_rd_adr[5]~20\ = CARRY((!\sig_cc1101_rd_adr[4]~18\) # (!sig_cc1101_rd_adr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(5),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[4]~18\,
	combout => \sig_cc1101_rd_adr[5]~19_combout\,
	cout => \sig_cc1101_rd_adr[5]~20\);

-- Location: FF_X32_Y3_N25
\sig_cc1101_rd_adr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[5]~19_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_rd_adr[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(5));

-- Location: LCCOMB_X32_Y3_N26
\sig_cc1101_rd_adr[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[6]~21_combout\ = (sig_cc1101_rd_adr(6) & (\sig_cc1101_rd_adr[5]~20\ $ (GND))) # (!sig_cc1101_rd_adr(6) & (!\sig_cc1101_rd_adr[5]~20\ & VCC))
-- \sig_cc1101_rd_adr[6]~22\ = CARRY((sig_cc1101_rd_adr(6) & !\sig_cc1101_rd_adr[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(6),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[5]~20\,
	combout => \sig_cc1101_rd_adr[6]~21_combout\,
	cout => \sig_cc1101_rd_adr[6]~22\);

-- Location: FF_X32_Y3_N27
\sig_cc1101_rd_adr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[6]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_rd_adr[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(6));

-- Location: LCCOMB_X32_Y3_N28
\sig_cc1101_rd_adr[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[7]~23_combout\ = \sig_cc1101_rd_adr[6]~22\ $ (sig_cc1101_rd_adr(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_cc1101_rd_adr(7),
	cin => \sig_cc1101_rd_adr[6]~22\,
	combout => \sig_cc1101_rd_adr[7]~23_combout\);

-- Location: FF_X32_Y3_N29
\sig_cc1101_rd_adr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_rd_adr[7]~23_combout\,
	asdata => VCC,
	clrn => \resetn~input_o\,
	sload => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_rd_adr[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_rd_adr(7));

-- Location: LCCOMB_X32_Y3_N10
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (sig_cc1101_rd_adr(6)) # (((!sig_cc1101_rd_adr(5)) # (!sig_cc1101_rd_adr(4))) # (!sig_cc1101_rd_adr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(6),
	datab => sig_cc1101_rd_adr(7),
	datac => sig_cc1101_rd_adr(4),
	datad => sig_cc1101_rd_adr(5),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X34_Y3_N18
\state~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~29_combout\ = (\state~28_combout\ & (\state.s1~q\ & (!\state.s5~q\ & !\state.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~28_combout\,
	datab => \state.s1~q\,
	datac => \state.s5~q\,
	datad => \state.s8~q\,
	combout => \state~29_combout\);

-- Location: LCCOMB_X32_Y3_N30
\state~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~30_combout\ = (\state~29_combout\) # ((\state.s8~q\ & ((\Equal1~1_combout\) # (\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \state.s8~q\,
	datac => \Equal1~0_combout\,
	datad => \state~29_combout\,
	combout => \state~30_combout\);

-- Location: FF_X32_Y3_N31
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state~30_combout\,
	clrn => \resetn~input_o\,
	ena => \state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: FF_X34_Y3_N13
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state.s2~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: LCCOMB_X34_Y3_N8
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\sig_spi_state_cntr[4]~5_combout\ & ((\sig_cs~q\) # ((\state.s3~q\ & !\state.s8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datab => \sig_spi_state_cntr[4]~5_combout\,
	datac => \sig_cs~q\,
	datad => \state.s8~q\,
	combout => \Selector30~0_combout\);

-- Location: FF_X34_Y3_N9
sig_cs : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cs~q\);

-- Location: LCCOMB_X34_Y4_N18
\sig_mosi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_mosi~0_combout\ = (\state.s4~q\ & (\resetn~input_o\ & (!\sig_CLK_A_q_not~q\ & \sig_CLK_A_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~q\,
	datab => \resetn~input_o\,
	datac => \sig_CLK_A_q_not~q\,
	datad => \sig_CLK_A_q~q\,
	combout => \sig_mosi~0_combout\);

-- Location: LCCOMB_X34_Y4_N22
\sig_tx_reg[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[7]~0_combout\ = (\resetn~input_o\ & (\sig_CLK_A_r~combout\ & ((\state.s2~q\) # (\state.s4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \sig_CLK_A_r~combout\,
	datac => \state.s2~q\,
	datad => \state.s4~q\,
	combout => \sig_tx_reg[7]~0_combout\);

-- Location: LCCOMB_X34_Y4_N28
\sig_tx_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[0]~1_combout\ = (!\sig_CLK_A_q_not~q\ & (\resetn~input_o\ & (\state.s2~q\ & \sig_CLK_A_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_q_not~q\,
	datab => \resetn~input_o\,
	datac => \state.s2~q\,
	datad => \sig_CLK_A_q~q\,
	combout => \sig_tx_reg[0]~1_combout\);

-- Location: LCCOMB_X34_Y4_N2
\sig_tx_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[0]~2_combout\ = (\sig_tx_reg[7]~0_combout\ & (sig_cc1101_rd_adr(0) & ((\sig_tx_reg[0]~1_combout\)))) # (!\sig_tx_reg[7]~0_combout\ & ((sig_tx_reg(0)) # ((sig_cc1101_rd_adr(0) & \sig_tx_reg[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_tx_reg[7]~0_combout\,
	datab => sig_cc1101_rd_adr(0),
	datac => sig_tx_reg(0),
	datad => \sig_tx_reg[0]~1_combout\,
	combout => \sig_tx_reg[0]~2_combout\);

-- Location: FF_X34_Y4_N3
\sig_tx_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_tx_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(0));

-- Location: LCCOMB_X34_Y4_N16
\Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\state.s4~q\ & ((sig_tx_reg(0)))) # (!\state.s4~q\ & (sig_cc1101_rd_adr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(1),
	datab => sig_tx_reg(0),
	datad => \state.s4~q\,
	combout => \Selector28~0_combout\);

-- Location: FF_X34_Y4_N17
\sig_tx_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(1));

-- Location: LCCOMB_X34_Y4_N14
\Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\state.s4~q\ & ((sig_tx_reg(1)))) # (!\state.s4~q\ & (sig_cc1101_rd_adr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~q\,
	datac => sig_cc1101_rd_adr(2),
	datad => sig_tx_reg(1),
	combout => \Selector27~0_combout\);

-- Location: FF_X34_Y4_N15
\sig_tx_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(2));

-- Location: LCCOMB_X34_Y4_N20
\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\state.s4~q\ & (sig_tx_reg(2))) # (!\state.s4~q\ & ((sig_cc1101_rd_adr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~q\,
	datab => sig_tx_reg(2),
	datac => sig_cc1101_rd_adr(3),
	combout => \Selector26~0_combout\);

-- Location: FF_X34_Y4_N21
\sig_tx_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(3));

-- Location: LCCOMB_X34_Y4_N26
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\state.s4~q\ & ((sig_tx_reg(3)))) # (!\state.s4~q\ & (sig_cc1101_rd_adr(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(4),
	datab => sig_tx_reg(3),
	datad => \state.s4~q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X34_Y4_N27
\sig_tx_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(4));

-- Location: LCCOMB_X34_Y4_N0
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\state.s4~q\ & ((sig_tx_reg(4)))) # (!\state.s4~q\ & (sig_cc1101_rd_adr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~q\,
	datab => sig_cc1101_rd_adr(5),
	datac => sig_tx_reg(4),
	combout => \Selector24~0_combout\);

-- Location: FF_X34_Y4_N1
\sig_tx_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(5));

-- Location: LCCOMB_X34_Y4_N4
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.s4~q\ & ((sig_tx_reg(5)))) # (!\state.s4~q\ & (sig_cc1101_rd_adr(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(6),
	datab => sig_tx_reg(5),
	datad => \state.s4~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X34_Y4_N5
\sig_tx_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(6));

-- Location: LCCOMB_X34_Y4_N24
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state.s4~q\ & (sig_tx_reg(6))) # (!\state.s4~q\ & ((sig_cc1101_rd_adr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~q\,
	datab => sig_tx_reg(6),
	datac => sig_cc1101_rd_adr(7),
	combout => \Selector22~0_combout\);

-- Location: FF_X34_Y4_N25
\sig_tx_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(7));

-- Location: LCCOMB_X34_Y4_N8
\sig_mosi~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_mosi~1_combout\ = (\sig_mosi~0_combout\ & ((sig_tx_reg(7)))) # (!\sig_mosi~0_combout\ & (\sig_mosi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_mosi~0_combout\,
	datac => \sig_mosi~q\,
	datad => sig_tx_reg(7),
	combout => \sig_mosi~1_combout\);

-- Location: FF_X34_Y4_N9
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

-- Location: LCCOMB_X34_Y3_N4
\Selector31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\state.s7~q\) # ((\state.s4~q\) # ((!\state.s3~q\ & !\state.s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datab => \state.s7~q\,
	datac => \state.s4~q\,
	datad => \state.s6~q\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X34_Y3_N2
\Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\Equal0~0_combout\ & (!sig_spi_state_cntr(4) & ((\state.s4~q\) # (\state.s7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => sig_spi_state_cntr(4),
	datac => \state.s4~q\,
	datad => \state.s7~q\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X34_Y3_N0
\Selector31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (!\Selector31~0_combout\ & ((\sig_cs_stop~q\) # (!\Selector31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector31~1_combout\,
	datac => \sig_cs_stop~q\,
	datad => \Selector31~0_combout\,
	combout => \Selector31~2_combout\);

-- Location: FF_X34_Y3_N1
sig_cs_stop : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector31~2_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cs_stop~q\);

-- Location: LCCOMB_X32_Y4_N20
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

-- Location: FF_X32_Y4_N21
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

-- Location: LCCOMB_X32_Y4_N10
\sig_spi_clock_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock_1~0_combout\ = (\sig_spi_clock~q\ & \sig_cs_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_spi_clock~q\,
	datad => \sig_cs_stop~q\,
	combout => \sig_spi_clock_1~0_combout\);

-- Location: FF_X32_Y4_N11
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

-- Location: LCCOMB_X32_Y4_N8
\sig_spi_clock_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock_2~0_combout\ = (\sig_spi_clock_1~q\ & \sig_cs_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_spi_clock_1~q\,
	datad => \sig_cs_stop~q\,
	combout => \sig_spi_clock_2~0_combout\);

-- Location: FF_X32_Y4_N9
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

-- Location: FF_X32_Y4_N7
\sig_spi_clk_dly[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_spi_clock_2~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(0));

-- Location: LCCOMB_X32_Y4_N12
\sig_spi_clk_dly[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[1]~feeder_combout\ = sig_spi_clk_dly(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(0),
	combout => \sig_spi_clk_dly[1]~feeder_combout\);

-- Location: FF_X32_Y4_N13
\sig_spi_clk_dly[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[1]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(1));

-- Location: LCCOMB_X32_Y4_N2
\sig_spi_clk_dly[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[2]~feeder_combout\ = sig_spi_clk_dly(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(1),
	combout => \sig_spi_clk_dly[2]~feeder_combout\);

-- Location: FF_X32_Y4_N3
\sig_spi_clk_dly[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[2]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(2));

-- Location: LCCOMB_X32_Y4_N0
\sig_spi_clk_dly[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[3]~feeder_combout\ = sig_spi_clk_dly(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(2),
	combout => \sig_spi_clk_dly[3]~feeder_combout\);

-- Location: FF_X32_Y4_N1
\sig_spi_clk_dly[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[3]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(3));

-- Location: LCCOMB_X32_Y4_N30
\sig_spi_clk_dly[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[4]~feeder_combout\ = sig_spi_clk_dly(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(3),
	combout => \sig_spi_clk_dly[4]~feeder_combout\);

-- Location: FF_X32_Y4_N31
\sig_spi_clk_dly[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[4]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(4));

-- Location: FF_X32_Y4_N29
\sig_spi_clk_dly[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_spi_clk_dly(4),
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(5));

-- Location: LCCOMB_X32_Y4_N18
\sig_spi_clk_dly[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[6]~feeder_combout\ = sig_spi_clk_dly(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(5),
	combout => \sig_spi_clk_dly[6]~feeder_combout\);

-- Location: FF_X32_Y4_N19
\sig_spi_clk_dly[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[6]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(6));

-- Location: LCCOMB_X34_Y2_N20
\sig_spi_clk_dly[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[7]~feeder_combout\ = sig_spi_clk_dly(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(6),
	combout => \sig_spi_clk_dly[7]~feeder_combout\);

-- Location: FF_X34_Y2_N21
\sig_spi_clk_dly[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[7]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(7));

-- Location: LCCOMB_X34_Y2_N2
\sig_spi_clk_dly[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[8]~feeder_combout\ = sig_spi_clk_dly(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(7),
	combout => \sig_spi_clk_dly[8]~feeder_combout\);

-- Location: FF_X34_Y2_N3
\sig_spi_clk_dly[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[8]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(8));

-- Location: LCCOMB_X34_Y2_N16
\sig_spi_clk_dly[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[9]~feeder_combout\ = sig_spi_clk_dly(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(8),
	combout => \sig_spi_clk_dly[9]~feeder_combout\);

-- Location: FF_X34_Y2_N17
\sig_spi_clk_dly[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[9]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(9));

-- Location: LCCOMB_X34_Y2_N6
\sig_spi_clk_dly[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[10]~feeder_combout\ = sig_spi_clk_dly(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(9),
	combout => \sig_spi_clk_dly[10]~feeder_combout\);

-- Location: FF_X34_Y2_N7
\sig_spi_clk_dly[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[10]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(10));

-- Location: LCCOMB_X34_Y2_N4
\sig_spi_clk_dly[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[11]~feeder_combout\ = sig_spi_clk_dly(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(10),
	combout => \sig_spi_clk_dly[11]~feeder_combout\);

-- Location: FF_X34_Y2_N5
\sig_spi_clk_dly[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[11]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(11));

-- Location: FF_X34_Y2_N27
\sig_spi_clk_dly[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_spi_clk_dly(11),
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(12));

-- Location: FF_X34_Y2_N1
\sig_spi_clk_dly[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_spi_clk_dly(12),
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(13));

-- Location: LCCOMB_X34_Y2_N22
\sig_spi_clk_dly[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[14]~feeder_combout\ = sig_spi_clk_dly(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(13),
	combout => \sig_spi_clk_dly[14]~feeder_combout\);

-- Location: FF_X34_Y2_N23
\sig_spi_clk_dly[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[14]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(14));

-- Location: FF_X34_Y2_N13
\sig_spi_clk_dly[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_spi_clk_dly(14),
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(15));

-- Location: LCCOMB_X34_Y2_N10
\sig_spi_clk_dly[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[16]~feeder_combout\ = sig_spi_clk_dly(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(15),
	combout => \sig_spi_clk_dly[16]~feeder_combout\);

-- Location: FF_X34_Y2_N11
\sig_spi_clk_dly[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[16]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(16));

-- Location: LCCOMB_X34_Y2_N24
\sig_spi_clk_dly[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[17]~feeder_combout\ = sig_spi_clk_dly(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(16),
	combout => \sig_spi_clk_dly[17]~feeder_combout\);

-- Location: FF_X34_Y2_N25
\sig_spi_clk_dly[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[17]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(17));

-- Location: LCCOMB_X34_Y2_N30
\sig_spi_clk_dly[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[18]~feeder_combout\ = sig_spi_clk_dly(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(17),
	combout => \sig_spi_clk_dly[18]~feeder_combout\);

-- Location: FF_X34_Y2_N31
\sig_spi_clk_dly[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[18]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(18));

-- Location: FF_X34_Y2_N29
\sig_spi_clk_dly[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_spi_clk_dly(18),
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(19));

-- Location: LCCOMB_X34_Y2_N18
\sig_spi_clk_dly[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[20]~feeder_combout\ = sig_spi_clk_dly(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(19),
	combout => \sig_spi_clk_dly[20]~feeder_combout\);

-- Location: FF_X34_Y2_N19
\sig_spi_clk_dly[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[20]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(20));

-- Location: LCCOMB_X34_Y2_N8
\sig_spi_clk_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_out~feeder_combout\ = sig_spi_clk_dly(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(20),
	combout => \sig_spi_clk_out~feeder_combout\);

-- Location: FF_X34_Y2_N9
sig_spi_clk_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_out~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_clk_out~q\);

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


