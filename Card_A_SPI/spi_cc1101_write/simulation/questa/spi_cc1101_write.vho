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

-- DATE "07/04/2024 14:31:13"

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

ENTITY 	spi_cc1101_write IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	start_state_machine : IN std_logic;
	q_data_in : IN std_logic_vector(7 DOWNTO 0);
	ROM_address : OUT std_logic_vector(5 DOWNTO 0);
	start_read_cc1101 : OUT std_logic;
	wr_rd_toggle : OUT std_logic;
	cs : OUT std_logic;
	mosi : OUT std_logic;
	spi_clock : OUT std_logic
	);
END spi_cc1101_write;

-- Design Ports Information
-- ROM_address[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_address[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_address[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_address[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_address[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_address[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_read_cc1101	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_rd_toggle	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_clock	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_state_machine	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_in[7]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_in[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_in[5]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_in[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_in[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_in[2]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_in[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_in[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF spi_cc1101_write IS
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
SIGNAL ww_q_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ROM_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_start_read_cc1101 : std_logic;
SIGNAL ww_wr_rd_toggle : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_spi_clock : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ROM_address[0]~output_o\ : std_logic;
SIGNAL \ROM_address[1]~output_o\ : std_logic;
SIGNAL \ROM_address[2]~output_o\ : std_logic;
SIGNAL \ROM_address[3]~output_o\ : std_logic;
SIGNAL \ROM_address[4]~output_o\ : std_logic;
SIGNAL \ROM_address[5]~output_o\ : std_logic;
SIGNAL \start_read_cc1101~output_o\ : std_logic;
SIGNAL \wr_rd_toggle~output_o\ : std_logic;
SIGNAL \cs~output_o\ : std_logic;
SIGNAL \mosi~output_o\ : std_logic;
SIGNAL \spi_clock~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_ROM_address[0]~8_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_spi_state_cntr[0]~5_combout\ : std_logic;
SIGNAL \sig_raw_cntr[0]~3_combout\ : std_logic;
SIGNAL \sig_raw_cntr[1]~2_combout\ : std_logic;
SIGNAL \sig_raw_cntr[2]~1_combout\ : std_logic;
SIGNAL \sig_raw_cntr[3]~0_combout\ : std_logic;
SIGNAL \sig_spi_raw_clock~feeder_combout\ : std_logic;
SIGNAL \sig_spi_raw_clock~q\ : std_logic;
SIGNAL \sig_CLK_A_q~q\ : std_logic;
SIGNAL \sig_CLK_A_q_not~q\ : std_logic;
SIGNAL \sig_CLK_A_r~combout\ : std_logic;
SIGNAL \state.s6~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \state.s7~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[0]~10_combout\ : std_logic;
SIGNAL \start_state_machine~input_o\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[7]~26_combout\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[0]~11\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[1]~12_combout\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[1]~13\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[2]~14_combout\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[2]~15\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[3]~16_combout\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[3]~17\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[4]~18_combout\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[4]~19\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[5]~20_combout\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[5]~21\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[6]~22_combout\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[6]~23\ : std_logic;
SIGNAL \sig_cc1101_wr_adr[7]~24_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \sig_mosi~0_combout\ : std_logic;
SIGNAL \sig_ROM_address[1]~10_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \state~28_combout\ : std_logic;
SIGNAL \state~29_combout\ : std_logic;
SIGNAL \state.s9~q\ : std_logic;
SIGNAL \state.s10~feeder_combout\ : std_logic;
SIGNAL \state.s10~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \state~27_combout\ : std_logic;
SIGNAL \state.s8~q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~7_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~8_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[0]~6\ : std_logic;
SIGNAL \sig_spi_state_cntr[1]~9_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[1]~10\ : std_logic;
SIGNAL \sig_spi_state_cntr[2]~11_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[2]~12\ : std_logic;
SIGNAL \sig_spi_state_cntr[3]~13_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[3]~14\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~15_combout\ : std_logic;
SIGNAL \state~30_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \state.s4~q\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \sig_ROM_address[0]~21_combout\ : std_logic;
SIGNAL \sig_ROM_address[0]~9\ : std_logic;
SIGNAL \sig_ROM_address[1]~11_combout\ : std_logic;
SIGNAL \sig_ROM_address[1]~12\ : std_logic;
SIGNAL \sig_ROM_address[2]~13_combout\ : std_logic;
SIGNAL \sig_ROM_address[2]~14\ : std_logic;
SIGNAL \sig_ROM_address[3]~15_combout\ : std_logic;
SIGNAL \sig_ROM_address[3]~16\ : std_logic;
SIGNAL \sig_ROM_address[4]~17_combout\ : std_logic;
SIGNAL \sig_ROM_address[4]~18\ : std_logic;
SIGNAL \sig_ROM_address[5]~19_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \sig_start_read_cc1101~q\ : std_logic;
SIGNAL \wr_rd_toggle~0_combout\ : std_logic;
SIGNAL \wr_rd_toggle~1_combout\ : std_logic;
SIGNAL \wr_rd_toggle~2_combout\ : std_logic;
SIGNAL \wr_rd_toggle~reg0_q\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \sig_cs~q\ : std_logic;
SIGNAL \q_data_in[7]~input_o\ : std_logic;
SIGNAL \q_data_in[6]~input_o\ : std_logic;
SIGNAL \q_data_in[4]~input_o\ : std_logic;
SIGNAL \q_data_in[2]~input_o\ : std_logic;
SIGNAL \q_data_in[0]~input_o\ : std_logic;
SIGNAL \sig_tx_reg[0]~1_combout\ : std_logic;
SIGNAL \sig_tx_reg[15]~0_combout\ : std_logic;
SIGNAL \sig_tx_reg[0]~2_combout\ : std_logic;
SIGNAL \q_data_in[1]~input_o\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \q_data_in[3]~input_o\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \q_data_in[5]~input_o\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \sig_mosi~1_combout\ : std_logic;
SIGNAL \sig_mosi~q\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
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
SIGNAL \sig_spi_clk_dly[10]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[12]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[13]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[14]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[16]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[18]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[19]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_dly[20]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_out~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clk_out~q\ : std_logic;
SIGNAL sig_ROM_address : std_logic_vector(5 DOWNTO 0);
SIGNAL sig_cc1101_wr_adr : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_spi_state_cntr : std_logic_vector(4 DOWNTO 0);
SIGNAL sig_tx_reg : std_logic_vector(15 DOWNTO 0);
SIGNAL sig_spi_clk_dly : std_logic_vector(31 DOWNTO 0);
SIGNAL sig_raw_cntr : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.s8~q\ : std_logic;
SIGNAL \ALT_INV_state.s5~q\ : std_logic;
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
ww_q_data_in <= q_data_in;
ROM_address <= ww_ROM_address;
start_read_cc1101 <= ww_start_read_cc1101;
wr_rd_toggle <= ww_wr_rd_toggle;
cs <= ww_cs;
mosi <= ww_mosi;
spi_clock <= ww_spi_clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\ALT_INV_state.s8~q\ <= NOT \state.s8~q\;
\ALT_INV_state.s5~q\ <= NOT \state.s5~q\;
\ALT_INV_sig_cs~q\ <= NOT \sig_cs~q\;
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

-- Location: IOOBUF_X66_Y54_N30
\ROM_address[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ROM_address(0),
	devoe => ww_devoe,
	o => \ROM_address[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\ROM_address[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ROM_address(1),
	devoe => ww_devoe,
	o => \ROM_address[1]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\ROM_address[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ROM_address(2),
	devoe => ww_devoe,
	o => \ROM_address[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\ROM_address[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ROM_address(3),
	devoe => ww_devoe,
	o => \ROM_address[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\ROM_address[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ROM_address(4),
	devoe => ww_devoe,
	o => \ROM_address[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\ROM_address[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ROM_address(5),
	devoe => ww_devoe,
	o => \ROM_address[5]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\start_read_cc1101~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_start_read_cc1101~q\,
	devoe => ww_devoe,
	o => \start_read_cc1101~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\wr_rd_toggle~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wr_rd_toggle~reg0_q\,
	devoe => ww_devoe,
	o => \wr_rd_toggle~output_o\);

-- Location: IOOBUF_X78_Y40_N9
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

-- Location: IOOBUF_X78_Y42_N2
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

-- Location: IOOBUF_X69_Y54_N16
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

-- Location: LCCOMB_X67_Y50_N10
\sig_ROM_address[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ROM_address[0]~8_combout\ = sig_ROM_address(0) $ (VCC)
-- \sig_ROM_address[0]~9\ = CARRY(sig_ROM_address(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_ROM_address(0),
	datad => VCC,
	combout => \sig_ROM_address[0]~8_combout\,
	cout => \sig_ROM_address[0]~9\);

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

-- Location: LCCOMB_X72_Y42_N6
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

-- Location: LCCOMB_X71_Y42_N18
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

-- Location: FF_X71_Y42_N19
\sig_raw_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_raw_cntr[0]~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_raw_cntr(0));

-- Location: LCCOMB_X71_Y42_N16
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

-- Location: FF_X71_Y42_N17
\sig_raw_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_raw_cntr[1]~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_raw_cntr(1));

-- Location: LCCOMB_X71_Y42_N6
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

-- Location: FF_X71_Y42_N7
\sig_raw_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_raw_cntr[2]~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_raw_cntr(2));

-- Location: LCCOMB_X71_Y42_N4
\sig_raw_cntr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_raw_cntr[3]~0_combout\ = sig_raw_cntr(3) $ (((sig_raw_cntr(2) & (sig_raw_cntr(1) & sig_raw_cntr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_raw_cntr(2),
	datab => sig_raw_cntr(1),
	datac => sig_raw_cntr(3),
	datad => sig_raw_cntr(0),
	combout => \sig_raw_cntr[3]~0_combout\);

-- Location: FF_X71_Y42_N5
\sig_raw_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_raw_cntr[3]~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_raw_cntr(3));

-- Location: LCCOMB_X71_Y42_N30
\sig_spi_raw_clock~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_raw_clock~feeder_combout\ = sig_raw_cntr(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_raw_cntr(3),
	combout => \sig_spi_raw_clock~feeder_combout\);

-- Location: FF_X71_Y42_N31
sig_spi_raw_clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_raw_clock~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_raw_clock~q\);

-- Location: FF_X71_Y42_N3
sig_CLK_A_q : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_spi_raw_clock~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_CLK_A_q~q\);

-- Location: FF_X71_Y42_N25
sig_CLK_A_q_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_CLK_A_q~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_CLK_A_q_not~q\);

-- Location: LCCOMB_X71_Y42_N24
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

-- Location: FF_X72_Y41_N11
\state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state.s5~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s6~q\);

-- Location: LCCOMB_X72_Y42_N16
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!sig_spi_state_cntr(3) & (sig_spi_state_cntr(0) & (sig_spi_state_cntr(1) & sig_spi_state_cntr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(3),
	datab => sig_spi_state_cntr(0),
	datac => sig_spi_state_cntr(1),
	datad => sig_spi_state_cntr(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X72_Y41_N22
\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\state.s6~q\) # ((\state.s7~q\ & ((sig_spi_state_cntr(4)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s6~q\,
	datab => \Equal0~0_combout\,
	datac => \state.s7~q\,
	datad => sig_spi_state_cntr(4),
	combout => \Selector26~0_combout\);

-- Location: FF_X72_Y41_N23
\state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s7~q\);

-- Location: LCCOMB_X72_Y41_N12
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & !sig_spi_state_cntr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~0_combout\,
	datad => sig_spi_state_cntr(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X71_Y41_N0
\sig_cc1101_wr_adr[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_wr_adr[0]~10_combout\ = sig_cc1101_wr_adr(0) $ (VCC)
-- \sig_cc1101_wr_adr[0]~11\ = CARRY(sig_cc1101_wr_adr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_wr_adr(0),
	datad => VCC,
	combout => \sig_cc1101_wr_adr[0]~10_combout\,
	cout => \sig_cc1101_wr_adr[0]~11\);

-- Location: IOIBUF_X78_Y42_N22
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

-- Location: LCCOMB_X71_Y41_N22
\sig_cc1101_wr_adr[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_wr_adr[7]~26_combout\ = (\sig_CLK_A_r~combout\ & ((\state.s0~q\ & (\state.s8~q\)) # (!\state.s0~q\ & ((\start_state_machine~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \state.s8~q\,
	datac => \sig_CLK_A_r~combout\,
	datad => \start_state_machine~input_o\,
	combout => \sig_cc1101_wr_adr[7]~26_combout\);

-- Location: FF_X71_Y41_N1
\sig_cc1101_wr_adr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_wr_adr[0]~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_wr_adr[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_wr_adr(0));

-- Location: LCCOMB_X71_Y41_N2
\sig_cc1101_wr_adr[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_wr_adr[1]~12_combout\ = (sig_cc1101_wr_adr(1) & (!\sig_cc1101_wr_adr[0]~11\)) # (!sig_cc1101_wr_adr(1) & ((\sig_cc1101_wr_adr[0]~11\) # (GND)))
-- \sig_cc1101_wr_adr[1]~13\ = CARRY((!\sig_cc1101_wr_adr[0]~11\) # (!sig_cc1101_wr_adr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_wr_adr(1),
	datad => VCC,
	cin => \sig_cc1101_wr_adr[0]~11\,
	combout => \sig_cc1101_wr_adr[1]~12_combout\,
	cout => \sig_cc1101_wr_adr[1]~13\);

-- Location: FF_X71_Y41_N3
\sig_cc1101_wr_adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_wr_adr[1]~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_wr_adr[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_wr_adr(1));

-- Location: LCCOMB_X71_Y41_N4
\sig_cc1101_wr_adr[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_wr_adr[2]~14_combout\ = (sig_cc1101_wr_adr(2) & (\sig_cc1101_wr_adr[1]~13\ $ (GND))) # (!sig_cc1101_wr_adr(2) & (!\sig_cc1101_wr_adr[1]~13\ & VCC))
-- \sig_cc1101_wr_adr[2]~15\ = CARRY((sig_cc1101_wr_adr(2) & !\sig_cc1101_wr_adr[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_wr_adr(2),
	datad => VCC,
	cin => \sig_cc1101_wr_adr[1]~13\,
	combout => \sig_cc1101_wr_adr[2]~14_combout\,
	cout => \sig_cc1101_wr_adr[2]~15\);

-- Location: FF_X71_Y41_N5
\sig_cc1101_wr_adr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_wr_adr[2]~14_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_wr_adr[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_wr_adr(2));

-- Location: LCCOMB_X71_Y41_N6
\sig_cc1101_wr_adr[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_wr_adr[3]~16_combout\ = (sig_cc1101_wr_adr(3) & (!\sig_cc1101_wr_adr[2]~15\)) # (!sig_cc1101_wr_adr(3) & ((\sig_cc1101_wr_adr[2]~15\) # (GND)))
-- \sig_cc1101_wr_adr[3]~17\ = CARRY((!\sig_cc1101_wr_adr[2]~15\) # (!sig_cc1101_wr_adr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_wr_adr(3),
	datad => VCC,
	cin => \sig_cc1101_wr_adr[2]~15\,
	combout => \sig_cc1101_wr_adr[3]~16_combout\,
	cout => \sig_cc1101_wr_adr[3]~17\);

-- Location: FF_X71_Y41_N7
\sig_cc1101_wr_adr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_wr_adr[3]~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_wr_adr[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_wr_adr(3));

-- Location: LCCOMB_X71_Y41_N8
\sig_cc1101_wr_adr[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_wr_adr[4]~18_combout\ = (sig_cc1101_wr_adr(4) & (\sig_cc1101_wr_adr[3]~17\ $ (GND))) # (!sig_cc1101_wr_adr(4) & (!\sig_cc1101_wr_adr[3]~17\ & VCC))
-- \sig_cc1101_wr_adr[4]~19\ = CARRY((sig_cc1101_wr_adr(4) & !\sig_cc1101_wr_adr[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_wr_adr(4),
	datad => VCC,
	cin => \sig_cc1101_wr_adr[3]~17\,
	combout => \sig_cc1101_wr_adr[4]~18_combout\,
	cout => \sig_cc1101_wr_adr[4]~19\);

-- Location: FF_X71_Y41_N9
\sig_cc1101_wr_adr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_wr_adr[4]~18_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_wr_adr[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_wr_adr(4));

-- Location: LCCOMB_X71_Y41_N10
\sig_cc1101_wr_adr[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_wr_adr[5]~20_combout\ = (sig_cc1101_wr_adr(5) & (!\sig_cc1101_wr_adr[4]~19\)) # (!sig_cc1101_wr_adr(5) & ((\sig_cc1101_wr_adr[4]~19\) # (GND)))
-- \sig_cc1101_wr_adr[5]~21\ = CARRY((!\sig_cc1101_wr_adr[4]~19\) # (!sig_cc1101_wr_adr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_wr_adr(5),
	datad => VCC,
	cin => \sig_cc1101_wr_adr[4]~19\,
	combout => \sig_cc1101_wr_adr[5]~20_combout\,
	cout => \sig_cc1101_wr_adr[5]~21\);

-- Location: FF_X71_Y41_N11
\sig_cc1101_wr_adr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_wr_adr[5]~20_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_wr_adr[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_wr_adr(5));

-- Location: LCCOMB_X71_Y41_N12
\sig_cc1101_wr_adr[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_wr_adr[6]~22_combout\ = (sig_cc1101_wr_adr(6) & (\sig_cc1101_wr_adr[5]~21\ $ (GND))) # (!sig_cc1101_wr_adr(6) & (!\sig_cc1101_wr_adr[5]~21\ & VCC))
-- \sig_cc1101_wr_adr[6]~23\ = CARRY((sig_cc1101_wr_adr(6) & !\sig_cc1101_wr_adr[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_wr_adr(6),
	datad => VCC,
	cin => \sig_cc1101_wr_adr[5]~21\,
	combout => \sig_cc1101_wr_adr[6]~22_combout\,
	cout => \sig_cc1101_wr_adr[6]~23\);

-- Location: FF_X71_Y41_N13
\sig_cc1101_wr_adr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_wr_adr[6]~22_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_wr_adr[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_wr_adr(6));

-- Location: LCCOMB_X71_Y41_N14
\sig_cc1101_wr_adr[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_wr_adr[7]~24_combout\ = sig_cc1101_wr_adr(7) $ (\sig_cc1101_wr_adr[6]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_wr_adr(7),
	cin => \sig_cc1101_wr_adr[6]~23\,
	combout => \sig_cc1101_wr_adr[7]~24_combout\);

-- Location: FF_X71_Y41_N15
\sig_cc1101_wr_adr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cc1101_wr_adr[7]~24_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s8~q\,
	ena => \sig_cc1101_wr_adr[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cc1101_wr_adr(7));

-- Location: LCCOMB_X71_Y41_N20
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (sig_cc1101_wr_adr(5) & (!sig_cc1101_wr_adr(7) & (!sig_cc1101_wr_adr(4) & !sig_cc1101_wr_adr(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_wr_adr(5),
	datab => sig_cc1101_wr_adr(7),
	datac => sig_cc1101_wr_adr(4),
	datad => sig_cc1101_wr_adr(6),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X71_Y41_N26
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (sig_cc1101_wr_adr(3) & (sig_cc1101_wr_adr(1) & (sig_cc1101_wr_adr(2) & sig_cc1101_wr_adr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_wr_adr(3),
	datab => sig_cc1101_wr_adr(1),
	datac => sig_cc1101_wr_adr(2),
	datad => sig_cc1101_wr_adr(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X71_Y41_N30
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & \state.s8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \state.s8~q\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X72_Y41_N8
\sig_mosi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_mosi~0_combout\ = (!\state.s7~q\ & !\state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s7~q\,
	datac => \state.s4~q\,
	combout => \sig_mosi~0_combout\);

-- Location: LCCOMB_X71_Y41_N24
\sig_ROM_address[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ROM_address[1]~10_combout\ = (!\state.s0~q\ & \start_state_machine~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s0~q\,
	datad => \start_state_machine~input_o\,
	combout => \sig_ROM_address[1]~10_combout\);

-- Location: LCCOMB_X72_Y41_N24
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\start_state_machine~input_o\ & ((\state.s1~q\) # (!\state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datac => \state.s1~q\,
	datad => \start_state_machine~input_o\,
	combout => \Selector20~0_combout\);

-- Location: FF_X72_Y41_N25
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X71_Y41_N18
\state~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~28_combout\ = ((\start_state_machine~input_o\ & ((\state.s1~q\))) # (!\start_state_machine~input_o\ & (!\state.s0~q\))) # (!\sig_CLK_A_r~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \state.s1~q\,
	datac => \sig_CLK_A_r~combout\,
	datad => \start_state_machine~input_o\,
	combout => \state~28_combout\);

-- Location: LCCOMB_X71_Y41_N28
\state~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~29_combout\ = (!\state~28_combout\ & ((\sig_mosi~0_combout\) # ((\sig_ROM_address[1]~10_combout\) # (\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_mosi~0_combout\,
	datab => \sig_ROM_address[1]~10_combout\,
	datac => \Equal0~1_combout\,
	datad => \state~28_combout\,
	combout => \state~29_combout\);

-- Location: FF_X71_Y41_N31
\state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s9~q\);

-- Location: LCCOMB_X72_Y41_N28
\state.s10~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.s10~feeder_combout\ = \state.s9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s9~q\,
	combout => \state.s10~feeder_combout\);

-- Location: FF_X72_Y41_N29
\state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state.s10~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s10~q\);

-- Location: LCCOMB_X72_Y41_N26
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\state.s10~q\ & ((\state.s0~q\) # (\start_state_machine~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s10~q\,
	datac => \state.s0~q\,
	datad => \start_state_machine~input_o\,
	combout => \Selector19~0_combout\);

-- Location: FF_X72_Y41_N27
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LCCOMB_X72_Y41_N18
\state~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~26_combout\ = (\state.s1~q\ & ((\start_state_machine~input_o\))) # (!\state.s1~q\ & (!\state.s0~q\ & !\start_state_machine~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \state.s1~q\,
	datad => \start_state_machine~input_o\,
	combout => \state~26_combout\);

-- Location: LCCOMB_X72_Y41_N30
\state~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~27_combout\ = (!\state~26_combout\ & (\sig_CLK_A_r~combout\ & ((\Equal0~1_combout\) # (\sig_mosi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \state~26_combout\,
	datac => \sig_CLK_A_r~combout\,
	datad => \sig_mosi~0_combout\,
	combout => \state~27_combout\);

-- Location: FF_X72_Y41_N19
\state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state.s7~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s8~q\);

-- Location: LCCOMB_X72_Y41_N2
\WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\state.s8~q\) # ((\state.s5~q\) # (!\state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s8~q\,
	datac => \state.s0~q\,
	datad => \state.s5~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X71_Y42_N2
\sig_spi_state_cntr[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~7_combout\ = (!\sig_CLK_A_q_not~q\ & (\sig_CLK_A_q~q\ & ((\state.s0~q\) # (\start_state_machine~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_q_not~q\,
	datab => \state.s0~q\,
	datac => \sig_CLK_A_q~q\,
	datad => \start_state_machine~input_o\,
	combout => \sig_spi_state_cntr[4]~7_combout\);

-- Location: LCCOMB_X72_Y42_N26
\sig_spi_state_cntr[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~8_combout\ = (\sig_spi_state_cntr[4]~7_combout\ & (!\Selector30~0_combout\ & ((\WideOr1~0_combout\) # (!\sig_mosi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_spi_state_cntr[4]~7_combout\,
	datab => \WideOr1~0_combout\,
	datac => \Selector30~0_combout\,
	datad => \sig_mosi~0_combout\,
	combout => \sig_spi_state_cntr[4]~8_combout\);

-- Location: FF_X72_Y42_N7
\sig_spi_state_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[0]~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \WideOr1~0_combout\,
	ena => \sig_spi_state_cntr[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(0));

-- Location: LCCOMB_X72_Y42_N8
\sig_spi_state_cntr[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[1]~9_combout\ = (sig_spi_state_cntr(1) & (!\sig_spi_state_cntr[0]~6\)) # (!sig_spi_state_cntr(1) & ((\sig_spi_state_cntr[0]~6\) # (GND)))
-- \sig_spi_state_cntr[1]~10\ = CARRY((!\sig_spi_state_cntr[0]~6\) # (!sig_spi_state_cntr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_spi_state_cntr(1),
	datad => VCC,
	cin => \sig_spi_state_cntr[0]~6\,
	combout => \sig_spi_state_cntr[1]~9_combout\,
	cout => \sig_spi_state_cntr[1]~10\);

-- Location: FF_X72_Y42_N9
\sig_spi_state_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[1]~9_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \WideOr1~0_combout\,
	ena => \sig_spi_state_cntr[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(1));

-- Location: LCCOMB_X72_Y42_N10
\sig_spi_state_cntr[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[2]~11_combout\ = (sig_spi_state_cntr(2) & (\sig_spi_state_cntr[1]~10\ $ (GND))) # (!sig_spi_state_cntr(2) & (!\sig_spi_state_cntr[1]~10\ & VCC))
-- \sig_spi_state_cntr[2]~12\ = CARRY((sig_spi_state_cntr(2) & !\sig_spi_state_cntr[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(2),
	datad => VCC,
	cin => \sig_spi_state_cntr[1]~10\,
	combout => \sig_spi_state_cntr[2]~11_combout\,
	cout => \sig_spi_state_cntr[2]~12\);

-- Location: FF_X72_Y42_N11
\sig_spi_state_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[2]~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \WideOr1~0_combout\,
	ena => \sig_spi_state_cntr[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(2));

-- Location: LCCOMB_X72_Y42_N12
\sig_spi_state_cntr[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[3]~13_combout\ = (sig_spi_state_cntr(3) & (!\sig_spi_state_cntr[2]~12\)) # (!sig_spi_state_cntr(3) & ((\sig_spi_state_cntr[2]~12\) # (GND)))
-- \sig_spi_state_cntr[3]~14\ = CARRY((!\sig_spi_state_cntr[2]~12\) # (!sig_spi_state_cntr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(3),
	datad => VCC,
	cin => \sig_spi_state_cntr[2]~12\,
	combout => \sig_spi_state_cntr[3]~13_combout\,
	cout => \sig_spi_state_cntr[3]~14\);

-- Location: FF_X72_Y42_N13
\sig_spi_state_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[3]~13_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \WideOr1~0_combout\,
	ena => \sig_spi_state_cntr[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(3));

-- Location: LCCOMB_X72_Y42_N14
\sig_spi_state_cntr[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~15_combout\ = sig_spi_state_cntr(4) $ (!\sig_spi_state_cntr[3]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_spi_state_cntr(4),
	cin => \sig_spi_state_cntr[3]~14\,
	combout => \sig_spi_state_cntr[4]~15_combout\);

-- Location: FF_X72_Y42_N15
\sig_spi_state_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[4]~15_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \WideOr1~0_combout\,
	ena => \sig_spi_state_cntr[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(4));

-- Location: LCCOMB_X71_Y41_N16
\state~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~30_combout\ = (\state.s8~q\ & (((!\Equal1~0_combout\)) # (!\Equal1~1_combout\))) # (!\state.s8~q\ & (((\state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \state.s1~q\,
	datac => \Equal1~0_combout\,
	datad => \state.s8~q\,
	combout => \state~30_combout\);

-- Location: FF_X71_Y41_N17
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state~30_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: FF_X72_Y41_N21
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state.s2~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: LCCOMB_X72_Y41_N4
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.s3~q\) # ((\state.s4~q\ & ((sig_spi_state_cntr(4)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(4),
	datab => \Equal0~0_combout\,
	datac => \state.s4~q\,
	datad => \state.s3~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X72_Y41_N5
\state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s4~q\);

-- Location: FF_X72_Y41_N9
\state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state.s4~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s5~q\);

-- Location: LCCOMB_X71_Y42_N0
\sig_ROM_address[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ROM_address[0]~21_combout\ = (\sig_CLK_A_r~combout\ & ((\state.s0~q\ & (\state.s5~q\)) # (!\state.s0~q\ & ((\start_state_machine~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_r~combout\,
	datab => \state.s0~q\,
	datac => \state.s5~q\,
	datad => \start_state_machine~input_o\,
	combout => \sig_ROM_address[0]~21_combout\);

-- Location: FF_X67_Y50_N11
\sig_ROM_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_ROM_address[0]~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s5~q\,
	ena => \sig_ROM_address[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ROM_address(0));

-- Location: LCCOMB_X67_Y50_N12
\sig_ROM_address[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ROM_address[1]~11_combout\ = (sig_ROM_address(1) & (!\sig_ROM_address[0]~9\)) # (!sig_ROM_address(1) & ((\sig_ROM_address[0]~9\) # (GND)))
-- \sig_ROM_address[1]~12\ = CARRY((!\sig_ROM_address[0]~9\) # (!sig_ROM_address(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_ROM_address(1),
	datad => VCC,
	cin => \sig_ROM_address[0]~9\,
	combout => \sig_ROM_address[1]~11_combout\,
	cout => \sig_ROM_address[1]~12\);

-- Location: FF_X67_Y50_N13
\sig_ROM_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_ROM_address[1]~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s5~q\,
	ena => \sig_ROM_address[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ROM_address(1));

-- Location: LCCOMB_X67_Y50_N14
\sig_ROM_address[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ROM_address[2]~13_combout\ = (sig_ROM_address(2) & (\sig_ROM_address[1]~12\ $ (GND))) # (!sig_ROM_address(2) & (!\sig_ROM_address[1]~12\ & VCC))
-- \sig_ROM_address[2]~14\ = CARRY((sig_ROM_address(2) & !\sig_ROM_address[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_ROM_address(2),
	datad => VCC,
	cin => \sig_ROM_address[1]~12\,
	combout => \sig_ROM_address[2]~13_combout\,
	cout => \sig_ROM_address[2]~14\);

-- Location: FF_X67_Y50_N15
\sig_ROM_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_ROM_address[2]~13_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s5~q\,
	ena => \sig_ROM_address[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ROM_address(2));

-- Location: LCCOMB_X67_Y50_N16
\sig_ROM_address[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ROM_address[3]~15_combout\ = (sig_ROM_address(3) & (!\sig_ROM_address[2]~14\)) # (!sig_ROM_address(3) & ((\sig_ROM_address[2]~14\) # (GND)))
-- \sig_ROM_address[3]~16\ = CARRY((!\sig_ROM_address[2]~14\) # (!sig_ROM_address(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_ROM_address(3),
	datad => VCC,
	cin => \sig_ROM_address[2]~14\,
	combout => \sig_ROM_address[3]~15_combout\,
	cout => \sig_ROM_address[3]~16\);

-- Location: FF_X67_Y50_N17
\sig_ROM_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_ROM_address[3]~15_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s5~q\,
	ena => \sig_ROM_address[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ROM_address(3));

-- Location: LCCOMB_X67_Y50_N18
\sig_ROM_address[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ROM_address[4]~17_combout\ = (sig_ROM_address(4) & (\sig_ROM_address[3]~16\ $ (GND))) # (!sig_ROM_address(4) & (!\sig_ROM_address[3]~16\ & VCC))
-- \sig_ROM_address[4]~18\ = CARRY((sig_ROM_address(4) & !\sig_ROM_address[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_ROM_address(4),
	datad => VCC,
	cin => \sig_ROM_address[3]~16\,
	combout => \sig_ROM_address[4]~17_combout\,
	cout => \sig_ROM_address[4]~18\);

-- Location: FF_X67_Y50_N19
\sig_ROM_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_ROM_address[4]~17_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s5~q\,
	ena => \sig_ROM_address[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ROM_address(4));

-- Location: LCCOMB_X67_Y50_N20
\sig_ROM_address[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ROM_address[5]~19_combout\ = \sig_ROM_address[4]~18\ $ (sig_ROM_address(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_ROM_address(5),
	cin => \sig_ROM_address[4]~18\,
	combout => \sig_ROM_address[5]~19_combout\);

-- Location: FF_X67_Y50_N21
\sig_ROM_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_ROM_address[5]~19_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \ALT_INV_state.s5~q\,
	ena => \sig_ROM_address[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ROM_address(5));

-- Location: LCCOMB_X72_Y41_N6
\Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\Selector30~0_combout\) # ((\sig_start_read_cc1101~q\ & ((\state.s8~q\) # (!\state.s10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s10~q\,
	datab => \state.s8~q\,
	datac => \sig_start_read_cc1101~q\,
	datad => \Selector30~0_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X72_Y41_N7
sig_start_read_cc1101 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector49~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_start_read_cc1101~q\);

-- Location: LCCOMB_X71_Y42_N22
\wr_rd_toggle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wr_rd_toggle~0_combout\ = (\wr_rd_toggle~reg0_q\ & (((!\sig_CLK_A_r~combout\) # (!\resetn~input_o\)) # (!\sig_ROM_address[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_rd_toggle~reg0_q\,
	datab => \sig_ROM_address[1]~10_combout\,
	datac => \resetn~input_o\,
	datad => \sig_CLK_A_r~combout\,
	combout => \wr_rd_toggle~0_combout\);

-- Location: LCCOMB_X71_Y42_N12
\wr_rd_toggle~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wr_rd_toggle~1_combout\ = (!\sig_CLK_A_q_not~q\ & (\sig_CLK_A_q~q\ & \resetn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_q_not~q\,
	datab => \sig_CLK_A_q~q\,
	datac => \resetn~input_o\,
	combout => \wr_rd_toggle~1_combout\);

-- Location: LCCOMB_X71_Y42_N28
\wr_rd_toggle~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wr_rd_toggle~2_combout\ = (\wr_rd_toggle~0_combout\) # ((\Selector30~0_combout\ & (\wr_rd_toggle~1_combout\ & \state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_rd_toggle~0_combout\,
	datab => \Selector30~0_combout\,
	datac => \wr_rd_toggle~1_combout\,
	datad => \state.s0~q\,
	combout => \wr_rd_toggle~2_combout\);

-- Location: FF_X71_Y42_N29
\wr_rd_toggle~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \wr_rd_toggle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wr_rd_toggle~reg0_q\);

-- Location: LCCOMB_X72_Y41_N16
\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (!\Selector30~0_combout\ & ((\sig_cs~q\) # ((!\state.s8~q\ & \state.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s8~q\,
	datab => \state.s3~q\,
	datac => \sig_cs~q\,
	datad => \Selector30~0_combout\,
	combout => \Selector47~0_combout\);

-- Location: FF_X72_Y41_N17
sig_cs : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector47~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cs~q\);

-- Location: IOIBUF_X78_Y41_N8
\q_data_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_in(7),
	o => \q_data_in[7]~input_o\);

-- Location: IOIBUF_X78_Y41_N15
\q_data_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_in(6),
	o => \q_data_in[6]~input_o\);

-- Location: IOIBUF_X78_Y40_N15
\q_data_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_in(4),
	o => \q_data_in[4]~input_o\);

-- Location: IOIBUF_X78_Y40_N1
\q_data_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_in(2),
	o => \q_data_in[2]~input_o\);

-- Location: IOIBUF_X78_Y42_N15
\q_data_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_in(0),
	o => \q_data_in[0]~input_o\);

-- Location: LCCOMB_X71_Y42_N20
\sig_tx_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[0]~1_combout\ = (!\sig_CLK_A_q_not~q\ & (\sig_CLK_A_q~q\ & (\resetn~input_o\ & \q_data_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_q_not~q\,
	datab => \sig_CLK_A_q~q\,
	datac => \resetn~input_o\,
	datad => \q_data_in[0]~input_o\,
	combout => \sig_tx_reg[0]~1_combout\);

-- Location: LCCOMB_X71_Y42_N8
\sig_tx_reg[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[15]~0_combout\ = (\resetn~input_o\ & (\sig_CLK_A_r~combout\ & ((\state.s2~q\) # (!\sig_mosi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_mosi~0_combout\,
	datab => \state.s2~q\,
	datac => \resetn~input_o\,
	datad => \sig_CLK_A_r~combout\,
	combout => \sig_tx_reg[15]~0_combout\);

-- Location: LCCOMB_X74_Y41_N30
\sig_tx_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[0]~2_combout\ = (\sig_tx_reg[0]~1_combout\ & ((\state.s2~q\) # ((sig_tx_reg(0) & !\sig_tx_reg[15]~0_combout\)))) # (!\sig_tx_reg[0]~1_combout\ & (((sig_tx_reg(0) & !\sig_tx_reg[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_tx_reg[0]~1_combout\,
	datab => \state.s2~q\,
	datac => sig_tx_reg(0),
	datad => \sig_tx_reg[15]~0_combout\,
	combout => \sig_tx_reg[0]~2_combout\);

-- Location: FF_X74_Y41_N31
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

-- Location: IOIBUF_X78_Y41_N1
\q_data_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_in(1),
	o => \q_data_in[1]~input_o\);

-- Location: LCCOMB_X74_Y41_N20
\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\state.s4~q\ & (sig_tx_reg(0))) # (!\state.s4~q\ & ((\state.s7~q\ & (sig_tx_reg(0))) # (!\state.s7~q\ & ((\q_data_in[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_tx_reg(0),
	datab => \q_data_in[1]~input_o\,
	datac => \state.s4~q\,
	datad => \state.s7~q\,
	combout => \Selector45~0_combout\);

-- Location: FF_X74_Y41_N21
\sig_tx_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector45~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(1));

-- Location: LCCOMB_X74_Y41_N26
\Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\state.s4~q\ & (((sig_tx_reg(1))))) # (!\state.s4~q\ & ((\state.s7~q\ & ((sig_tx_reg(1)))) # (!\state.s7~q\ & (\q_data_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_data_in[2]~input_o\,
	datab => sig_tx_reg(1),
	datac => \state.s4~q\,
	datad => \state.s7~q\,
	combout => \Selector44~0_combout\);

-- Location: FF_X74_Y41_N27
\sig_tx_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(2));

-- Location: IOIBUF_X78_Y40_N22
\q_data_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_in(3),
	o => \q_data_in[3]~input_o\);

-- Location: LCCOMB_X74_Y41_N16
\Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\state.s4~q\ & (sig_tx_reg(2))) # (!\state.s4~q\ & ((\state.s7~q\ & (sig_tx_reg(2))) # (!\state.s7~q\ & ((\q_data_in[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_tx_reg(2),
	datab => \q_data_in[3]~input_o\,
	datac => \state.s4~q\,
	datad => \state.s7~q\,
	combout => \Selector43~0_combout\);

-- Location: FF_X74_Y41_N17
\sig_tx_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector43~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(3));

-- Location: LCCOMB_X74_Y41_N22
\Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\state.s4~q\ & (((sig_tx_reg(3))))) # (!\state.s4~q\ & ((\state.s7~q\ & ((sig_tx_reg(3)))) # (!\state.s7~q\ & (\q_data_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_data_in[4]~input_o\,
	datab => sig_tx_reg(3),
	datac => \state.s4~q\,
	datad => \state.s7~q\,
	combout => \Selector42~0_combout\);

-- Location: FF_X74_Y41_N23
\sig_tx_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(4));

-- Location: IOIBUF_X78_Y41_N23
\q_data_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_in(5),
	o => \q_data_in[5]~input_o\);

-- Location: LCCOMB_X74_Y41_N28
\Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\state.s4~q\ & (sig_tx_reg(4))) # (!\state.s4~q\ & ((\state.s7~q\ & (sig_tx_reg(4))) # (!\state.s7~q\ & ((\q_data_in[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_tx_reg(4),
	datab => \q_data_in[5]~input_o\,
	datac => \state.s4~q\,
	datad => \state.s7~q\,
	combout => \Selector41~0_combout\);

-- Location: FF_X74_Y41_N29
\sig_tx_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector41~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(5));

-- Location: LCCOMB_X74_Y41_N18
\Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\state.s4~q\ & (((sig_tx_reg(5))))) # (!\state.s4~q\ & ((\state.s7~q\ & ((sig_tx_reg(5)))) # (!\state.s7~q\ & (\q_data_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_data_in[6]~input_o\,
	datab => sig_tx_reg(5),
	datac => \state.s4~q\,
	datad => \state.s7~q\,
	combout => \Selector40~0_combout\);

-- Location: FF_X74_Y41_N19
\sig_tx_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector40~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(6));

-- Location: LCCOMB_X74_Y41_N8
\Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\state.s4~q\ & (((sig_tx_reg(6))))) # (!\state.s4~q\ & ((\state.s7~q\ & ((sig_tx_reg(6)))) # (!\state.s7~q\ & (\q_data_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_data_in[7]~input_o\,
	datab => sig_tx_reg(6),
	datac => \state.s4~q\,
	datad => \state.s7~q\,
	combout => \Selector39~0_combout\);

-- Location: FF_X74_Y41_N9
\sig_tx_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector39~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(7));

-- Location: LCCOMB_X74_Y41_N14
\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\state.s4~q\ & (((sig_tx_reg(7))))) # (!\state.s4~q\ & ((\state.s7~q\ & ((sig_tx_reg(7)))) # (!\state.s7~q\ & (sig_cc1101_wr_adr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_wr_adr(0),
	datab => \state.s4~q\,
	datac => sig_tx_reg(7),
	datad => \state.s7~q\,
	combout => \Selector38~0_combout\);

-- Location: FF_X74_Y41_N15
\sig_tx_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector38~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(8));

-- Location: LCCOMB_X74_Y41_N4
\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\state.s4~q\ & (((sig_tx_reg(8))))) # (!\state.s4~q\ & ((\state.s7~q\ & ((sig_tx_reg(8)))) # (!\state.s7~q\ & (sig_cc1101_wr_adr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~q\,
	datab => sig_cc1101_wr_adr(1),
	datac => sig_tx_reg(8),
	datad => \state.s7~q\,
	combout => \Selector37~0_combout\);

-- Location: FF_X74_Y41_N5
\sig_tx_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(9));

-- Location: LCCOMB_X74_Y41_N2
\Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\state.s4~q\ & (((sig_tx_reg(9))))) # (!\state.s4~q\ & ((\state.s7~q\ & ((sig_tx_reg(9)))) # (!\state.s7~q\ & (sig_cc1101_wr_adr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~q\,
	datab => sig_cc1101_wr_adr(2),
	datac => sig_tx_reg(9),
	datad => \state.s7~q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X74_Y41_N3
\sig_tx_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector36~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(10));

-- Location: LCCOMB_X74_Y41_N24
\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\state.s7~q\ & (((sig_tx_reg(10))))) # (!\state.s7~q\ & ((\state.s4~q\ & ((sig_tx_reg(10)))) # (!\state.s4~q\ & (sig_cc1101_wr_adr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s7~q\,
	datab => \state.s4~q\,
	datac => sig_cc1101_wr_adr(3),
	datad => sig_tx_reg(10),
	combout => \Selector35~0_combout\);

-- Location: FF_X74_Y41_N25
\sig_tx_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(11));

-- Location: LCCOMB_X74_Y41_N6
\Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state.s7~q\ & (((sig_tx_reg(11))))) # (!\state.s7~q\ & ((\state.s4~q\ & ((sig_tx_reg(11)))) # (!\state.s4~q\ & (sig_cc1101_wr_adr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s7~q\,
	datab => \state.s4~q\,
	datac => sig_cc1101_wr_adr(4),
	datad => sig_tx_reg(11),
	combout => \Selector34~0_combout\);

-- Location: FF_X74_Y41_N7
\sig_tx_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(12));

-- Location: LCCOMB_X74_Y41_N12
\Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\state.s7~q\ & (((sig_tx_reg(12))))) # (!\state.s7~q\ & ((\state.s4~q\ & ((sig_tx_reg(12)))) # (!\state.s4~q\ & (sig_cc1101_wr_adr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s7~q\,
	datab => \state.s4~q\,
	datac => sig_cc1101_wr_adr(5),
	datad => sig_tx_reg(12),
	combout => \Selector33~0_combout\);

-- Location: FF_X74_Y41_N13
\sig_tx_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(13));

-- Location: LCCOMB_X74_Y41_N10
\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\state.s7~q\ & (((sig_tx_reg(13))))) # (!\state.s7~q\ & ((\state.s4~q\ & ((sig_tx_reg(13)))) # (!\state.s4~q\ & (sig_cc1101_wr_adr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s7~q\,
	datab => sig_cc1101_wr_adr(6),
	datac => \state.s4~q\,
	datad => sig_tx_reg(13),
	combout => \Selector32~0_combout\);

-- Location: FF_X74_Y41_N11
\sig_tx_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(14));

-- Location: LCCOMB_X74_Y41_N0
\Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\state.s7~q\ & (((sig_tx_reg(14))))) # (!\state.s7~q\ & ((\state.s4~q\ & ((sig_tx_reg(14)))) # (!\state.s4~q\ & (sig_cc1101_wr_adr(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_wr_adr(7),
	datab => \state.s7~q\,
	datac => \state.s4~q\,
	datad => sig_tx_reg(14),
	combout => \Selector31~0_combout\);

-- Location: FF_X74_Y41_N1
\sig_tx_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	ena => \sig_tx_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(15));

-- Location: LCCOMB_X74_Y42_N24
\sig_mosi~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_mosi~1_combout\ = (\wr_rd_toggle~1_combout\ & ((\sig_mosi~0_combout\ & (\sig_mosi~q\)) # (!\sig_mosi~0_combout\ & ((sig_tx_reg(15)))))) # (!\wr_rd_toggle~1_combout\ & (((\sig_mosi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_rd_toggle~1_combout\,
	datab => \sig_mosi~0_combout\,
	datac => \sig_mosi~q\,
	datad => sig_tx_reg(15),
	combout => \sig_mosi~1_combout\);

-- Location: FF_X74_Y42_N25
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

-- Location: LCCOMB_X72_Y41_N10
\Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\state.s7~q\) # ((\state.s4~q\) # ((!\state.s6~q\ & !\state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s7~q\,
	datab => \state.s4~q\,
	datac => \state.s6~q\,
	datad => \state.s3~q\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X72_Y41_N0
\Selector48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (\Equal0~1_combout\ & (\sig_mosi~0_combout\ & ((\sig_cs_stop~q\) # (!\Selector48~0_combout\)))) # (!\Equal0~1_combout\ & (((\sig_cs_stop~q\) # (!\Selector48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \sig_mosi~0_combout\,
	datac => \sig_cs_stop~q\,
	datad => \Selector48~0_combout\,
	combout => \Selector48~1_combout\);

-- Location: FF_X72_Y41_N1
sig_cs_stop : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector48~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cs_stop~q\);

-- Location: LCCOMB_X71_Y42_N10
\sig_spi_clock~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock~0_combout\ = (\sig_spi_raw_clock~q\ & \sig_cs_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_spi_raw_clock~q\,
	datad => \sig_cs_stop~q\,
	combout => \sig_spi_clock~0_combout\);

-- Location: FF_X71_Y42_N11
sig_spi_clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clock~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_clock~q\);

-- Location: LCCOMB_X71_Y42_N26
\sig_spi_clock_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock_1~0_combout\ = (\sig_spi_clock~q\ & \sig_cs_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_spi_clock~q\,
	datad => \sig_cs_stop~q\,
	combout => \sig_spi_clock_1~0_combout\);

-- Location: FF_X71_Y42_N27
sig_spi_clock_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clock_1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_clock_1~q\);

-- Location: LCCOMB_X71_Y42_N14
\sig_spi_clock_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock_2~0_combout\ = (\sig_spi_clock_1~q\ & \sig_cs_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_spi_clock_1~q\,
	datad => \sig_cs_stop~q\,
	combout => \sig_spi_clock_2~0_combout\);

-- Location: FF_X71_Y42_N15
sig_spi_clock_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clock_2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_clock_2~q\);

-- Location: FF_X71_Y50_N7
\sig_spi_clk_dly[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_spi_clock_2~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(0));

-- Location: LCCOMB_X71_Y50_N28
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

-- Location: FF_X71_Y50_N29
\sig_spi_clk_dly[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[1]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(1));

-- Location: LCCOMB_X71_Y50_N18
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

-- Location: FF_X71_Y50_N19
\sig_spi_clk_dly[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(2));

-- Location: LCCOMB_X71_Y50_N16
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

-- Location: FF_X71_Y50_N17
\sig_spi_clk_dly[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[3]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(3));

-- Location: LCCOMB_X71_Y50_N22
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

-- Location: FF_X71_Y50_N23
\sig_spi_clk_dly[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[4]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(4));

-- Location: FF_X71_Y50_N21
\sig_spi_clk_dly[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_spi_clk_dly(4),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(5));

-- Location: LCCOMB_X71_Y50_N10
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

-- Location: FF_X71_Y50_N11
\sig_spi_clk_dly[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[6]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(6));

-- Location: LCCOMB_X71_Y50_N8
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

-- Location: FF_X71_Y50_N9
\sig_spi_clk_dly[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[7]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(7));

-- Location: FF_X71_Y50_N15
\sig_spi_clk_dly[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_spi_clk_dly(7),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(8));

-- Location: FF_X71_Y50_N13
\sig_spi_clk_dly[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_spi_clk_dly(8),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(9));

-- Location: LCCOMB_X71_Y50_N26
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

-- Location: FF_X71_Y50_N27
\sig_spi_clk_dly[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[10]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(10));

-- Location: FF_X71_Y50_N25
\sig_spi_clk_dly[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_spi_clk_dly(10),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(11));

-- Location: LCCOMB_X70_Y50_N18
\sig_spi_clk_dly[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[12]~feeder_combout\ = sig_spi_clk_dly(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(11),
	combout => \sig_spi_clk_dly[12]~feeder_combout\);

-- Location: FF_X70_Y50_N19
\sig_spi_clk_dly[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[12]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(12));

-- Location: LCCOMB_X70_Y50_N24
\sig_spi_clk_dly[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[13]~feeder_combout\ = sig_spi_clk_dly(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(12),
	combout => \sig_spi_clk_dly[13]~feeder_combout\);

-- Location: FF_X70_Y50_N25
\sig_spi_clk_dly[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[13]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(13));

-- Location: LCCOMB_X70_Y50_N22
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

-- Location: FF_X70_Y50_N23
\sig_spi_clk_dly[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[14]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(14));

-- Location: FF_X70_Y50_N21
\sig_spi_clk_dly[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_spi_clk_dly(14),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(15));

-- Location: LCCOMB_X70_Y50_N26
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

-- Location: FF_X70_Y50_N27
\sig_spi_clk_dly[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[16]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(16));

-- Location: FF_X70_Y50_N1
\sig_spi_clk_dly[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_spi_clk_dly(16),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(17));

-- Location: LCCOMB_X70_Y50_N6
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

-- Location: FF_X70_Y50_N7
\sig_spi_clk_dly[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[18]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(18));

-- Location: LCCOMB_X70_Y50_N12
\sig_spi_clk_dly[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clk_dly[19]~feeder_combout\ = sig_spi_clk_dly(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_spi_clk_dly(18),
	combout => \sig_spi_clk_dly[19]~feeder_combout\);

-- Location: FF_X70_Y50_N13
\sig_spi_clk_dly[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[19]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(19));

-- Location: LCCOMB_X70_Y50_N10
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

-- Location: FF_X70_Y50_N11
\sig_spi_clk_dly[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_dly[20]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_clk_dly(20));

-- Location: LCCOMB_X70_Y50_N8
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

-- Location: FF_X70_Y50_N9
sig_spi_clk_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clk_out~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
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

ww_ROM_address(0) <= \ROM_address[0]~output_o\;

ww_ROM_address(1) <= \ROM_address[1]~output_o\;

ww_ROM_address(2) <= \ROM_address[2]~output_o\;

ww_ROM_address(3) <= \ROM_address[3]~output_o\;

ww_ROM_address(4) <= \ROM_address[4]~output_o\;

ww_ROM_address(5) <= \ROM_address[5]~output_o\;

ww_start_read_cc1101 <= \start_read_cc1101~output_o\;

ww_wr_rd_toggle <= \wr_rd_toggle~output_o\;

ww_cs <= \cs~output_o\;

ww_mosi <= \mosi~output_o\;

ww_spi_clock <= \spi_clock~output_o\;
END structure;


