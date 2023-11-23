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

-- DATE "09/19/2023 15:25:37"

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

ENTITY 	BiPhase_tx IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	q_data_ram : IN std_logic_vector(7 DOWNTO 0);
	BiPhase_tx_out : BUFFER std_logic;
	start_strobe_tx : BUFFER std_logic;
	read_address : BUFFER std_logic_vector(5 DOWNTO 0);
	rd : BUFFER std_logic;
	toggle : BUFFER std_logic
	);
END BiPhase_tx;

-- Design Ports Information
-- BiPhase_tx_out	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_strobe_tx	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_ram[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_ram[6]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_ram[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_ram[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_ram[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_ram[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_ram[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_ram[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BiPhase_tx IS
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
SIGNAL ww_q_data_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BiPhase_tx_out : std_logic;
SIGNAL ww_start_strobe_tx : std_logic;
SIGNAL ww_read_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_rd : std_logic;
SIGNAL ww_toggle : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \BiPhase_tx_out~output_o\ : std_logic;
SIGNAL \start_strobe_tx~output_o\ : std_logic;
SIGNAL \read_address[0]~output_o\ : std_logic;
SIGNAL \read_address[1]~output_o\ : std_logic;
SIGNAL \read_address[2]~output_o\ : std_logic;
SIGNAL \read_address[3]~output_o\ : std_logic;
SIGNAL \read_address[4]~output_o\ : std_logic;
SIGNAL \read_address[5]~output_o\ : std_logic;
SIGNAL \rd~output_o\ : std_logic;
SIGNAL \toggle~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_main[0]~39_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_main[1]~13_combout\ : std_logic;
SIGNAL \sig_main[1]~14\ : std_logic;
SIGNAL \sig_main[2]~15_combout\ : std_logic;
SIGNAL \sig_main[2]~16\ : std_logic;
SIGNAL \sig_main[3]~17_combout\ : std_logic;
SIGNAL \sig_main[3]~18\ : std_logic;
SIGNAL \sig_main[4]~19_combout\ : std_logic;
SIGNAL \sig_main[4]~20\ : std_logic;
SIGNAL \sig_main[5]~21_combout\ : std_logic;
SIGNAL \sig_main[5]~22\ : std_logic;
SIGNAL \sig_main[6]~23_combout\ : std_logic;
SIGNAL \sig_main[6]~24\ : std_logic;
SIGNAL \sig_main[7]~25_combout\ : std_logic;
SIGNAL \sig_main[7]~26\ : std_logic;
SIGNAL \sig_main[8]~27_combout\ : std_logic;
SIGNAL \sig_main[8]~28\ : std_logic;
SIGNAL \sig_main[9]~29_combout\ : std_logic;
SIGNAL \sig_main[9]~30\ : std_logic;
SIGNAL \sig_main[10]~31_combout\ : std_logic;
SIGNAL \sig_main[10]~32\ : std_logic;
SIGNAL \sig_main[11]~33_combout\ : std_logic;
SIGNAL \sig_main[11]~34\ : std_logic;
SIGNAL \sig_main[12]~35_combout\ : std_logic;
SIGNAL \sig_main[12]~36\ : std_logic;
SIGNAL \sig_main[13]~37_combout\ : std_logic;
SIGNAL \sig_cut~q\ : std_logic;
SIGNAL \state_bi.s3~feeder_combout\ : std_logic;
SIGNAL \sig_cut_not~q\ : std_logic;
SIGNAL \sig_main_rising_edge~combout\ : std_logic;
SIGNAL \state_bi.s3~q\ : std_logic;
SIGNAL \state_bi.s4~q\ : std_logic;
SIGNAL \state_bi.s5~feeder_combout\ : std_logic;
SIGNAL \state_bi.s5~q\ : std_logic;
SIGNAL \state_bi.s6~feeder_combout\ : std_logic;
SIGNAL \state_bi.s6~q\ : std_logic;
SIGNAL \state_bi.s7~feeder_combout\ : std_logic;
SIGNAL \state_bi.s7~q\ : std_logic;
SIGNAL \state_bi.s0~0_combout\ : std_logic;
SIGNAL \state_bi.s0~q\ : std_logic;
SIGNAL \state_bi.s1~0_combout\ : std_logic;
SIGNAL \state_bi.s1~q\ : std_logic;
SIGNAL \state_bi.s2~feeder_combout\ : std_logic;
SIGNAL \state_bi.s2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \sig_read~q\ : std_logic;
SIGNAL \q_data_ram[7]~input_o\ : std_logic;
SIGNAL \q_data_ram[6]~input_o\ : std_logic;
SIGNAL \q_data_ram[5]~input_o\ : std_logic;
SIGNAL \q_data_ram[2]~input_o\ : std_logic;
SIGNAL \q_data_ram[0]~input_o\ : std_logic;
SIGNAL \sig_shift_data~7_combout\ : std_logic;
SIGNAL \q_data_ram[1]~input_o\ : std_logic;
SIGNAL \sig_shift_data~6_combout\ : std_logic;
SIGNAL \sig_shift_data~5_combout\ : std_logic;
SIGNAL \q_data_ram[3]~input_o\ : std_logic;
SIGNAL \sig_shift_data~4_combout\ : std_logic;
SIGNAL \q_data_ram[4]~input_o\ : std_logic;
SIGNAL \sig_shift_data~3_combout\ : std_logic;
SIGNAL \sig_shift_data~2_combout\ : std_logic;
SIGNAL \sig_shift_data~1_combout\ : std_logic;
SIGNAL \sig_shift_data~0_combout\ : std_logic;
SIGNAL \sig_BiPhase_tx_out~0_combout\ : std_logic;
SIGNAL \sig_BiPhase_tx_out~q\ : std_logic;
SIGNAL \state_mini.s4a~q\ : std_logic;
SIGNAL \state_mini.s5a~q\ : std_logic;
SIGNAL \sig_inc~0_combout\ : std_logic;
SIGNAL \sig_inc~1_combout\ : std_logic;
SIGNAL \sig_inc~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state_mini.s0a~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state_mini.s1a~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state_mini.s2a~q\ : std_logic;
SIGNAL \state_mini.s3a~feeder_combout\ : std_logic;
SIGNAL \state_mini.s3a~q\ : std_logic;
SIGNAL \sig_read_address_cnt[0]~12_combout\ : std_logic;
SIGNAL \sig_read_address_cnt[1]~4_combout\ : std_logic;
SIGNAL \sig_read_address_cnt[1]~5\ : std_logic;
SIGNAL \sig_read_address_cnt[2]~6_combout\ : std_logic;
SIGNAL \sig_read_address_cnt[2]~7\ : std_logic;
SIGNAL \sig_read_address_cnt[3]~8_combout\ : std_logic;
SIGNAL \start_strobe_tx~0_combout\ : std_logic;
SIGNAL \sig_read_address_cnt[3]~9\ : std_logic;
SIGNAL \sig_read_address_cnt[4]~10_combout\ : std_logic;
SIGNAL \start_strobe_tx~1_combout\ : std_logic;
SIGNAL \start_strobe_tx~2_combout\ : std_logic;
SIGNAL \start_strobe_tx~reg0_q\ : std_logic;
SIGNAL \sig_read_address[0]~feeder_combout\ : std_logic;
SIGNAL \sig_read_address[0]~0_combout\ : std_logic;
SIGNAL \sig_read_address[1]~feeder_combout\ : std_logic;
SIGNAL \sig_read_address[2]~feeder_combout\ : std_logic;
SIGNAL \sig_read_address[3]~feeder_combout\ : std_logic;
SIGNAL \sig_read_address[4]~feeder_combout\ : std_logic;
SIGNAL \sig_toggle~0_combout\ : std_logic;
SIGNAL \sig_toggle~1_combout\ : std_logic;
SIGNAL \sig_toggle~q\ : std_logic;
SIGNAL \sig_cut_rd~feeder_combout\ : std_logic;
SIGNAL \sig_cut_rd~q\ : std_logic;
SIGNAL \sig_cut_rd_not~q\ : std_logic;
SIGNAL \sig_rd_rising_edge~0_combout\ : std_logic;
SIGNAL sig_read_address_cnt : std_logic_vector(4 DOWNTO 0);
SIGNAL sig_main : std_logic_vector(13 DOWNTO 0);
SIGNAL sig_read_address : std_logic_vector(5 DOWNTO 0);
SIGNAL sig_shift_data : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_q_data_ram <= q_data_ram;
BiPhase_tx_out <= ww_BiPhase_tx_out;
start_strobe_tx <= ww_start_strobe_tx;
read_address <= ww_read_address;
rd <= ww_rd;
toggle <= ww_toggle;
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

-- Location: LCCOMB_X44_Y51_N16
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

-- Location: IOOBUF_X49_Y54_N16
\BiPhase_tx_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_BiPhase_tx_out~q\,
	devoe => ww_devoe,
	o => \BiPhase_tx_out~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\start_strobe_tx~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \start_strobe_tx~reg0_q\,
	devoe => ww_devoe,
	o => \start_strobe_tx~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\read_address[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_read_address(0),
	devoe => ww_devoe,
	o => \read_address[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\read_address[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_read_address(1),
	devoe => ww_devoe,
	o => \read_address[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\read_address[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_read_address(2),
	devoe => ww_devoe,
	o => \read_address[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\read_address[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_read_address(3),
	devoe => ww_devoe,
	o => \read_address[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\read_address[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_read_address(4),
	devoe => ww_devoe,
	o => \read_address[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\read_address[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_read_address(5),
	devoe => ww_devoe,
	o => \read_address[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\rd~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_rd_rising_edge~0_combout\,
	devoe => ww_devoe,
	o => \rd~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\toggle~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_toggle~q\,
	devoe => ww_devoe,
	o => \toggle~output_o\);

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

-- Location: LCCOMB_X46_Y50_N8
\sig_main[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[0]~39_combout\ = !sig_main(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_main(0),
	combout => \sig_main[0]~39_combout\);

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

-- Location: FF_X46_Y50_N9
\sig_main[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[0]~39_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(0));

-- Location: LCCOMB_X46_Y53_N0
\sig_main[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[1]~13_combout\ = (sig_main(0) & (sig_main(1) $ (VCC))) # (!sig_main(0) & (sig_main(1) & VCC))
-- \sig_main[1]~14\ = CARRY((sig_main(0) & sig_main(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_main(0),
	datab => sig_main(1),
	datad => VCC,
	combout => \sig_main[1]~13_combout\,
	cout => \sig_main[1]~14\);

-- Location: FF_X46_Y53_N1
\sig_main[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[1]~13_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(1));

-- Location: LCCOMB_X46_Y53_N2
\sig_main[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[2]~15_combout\ = (sig_main(2) & (!\sig_main[1]~14\)) # (!sig_main(2) & ((\sig_main[1]~14\) # (GND)))
-- \sig_main[2]~16\ = CARRY((!\sig_main[1]~14\) # (!sig_main(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(2),
	datad => VCC,
	cin => \sig_main[1]~14\,
	combout => \sig_main[2]~15_combout\,
	cout => \sig_main[2]~16\);

-- Location: FF_X46_Y53_N3
\sig_main[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[2]~15_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(2));

-- Location: LCCOMB_X46_Y53_N4
\sig_main[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[3]~17_combout\ = (sig_main(3) & (\sig_main[2]~16\ $ (GND))) # (!sig_main(3) & (!\sig_main[2]~16\ & VCC))
-- \sig_main[3]~18\ = CARRY((sig_main(3) & !\sig_main[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(3),
	datad => VCC,
	cin => \sig_main[2]~16\,
	combout => \sig_main[3]~17_combout\,
	cout => \sig_main[3]~18\);

-- Location: FF_X46_Y53_N5
\sig_main[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[3]~17_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(3));

-- Location: LCCOMB_X46_Y53_N6
\sig_main[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[4]~19_combout\ = (sig_main(4) & (!\sig_main[3]~18\)) # (!sig_main(4) & ((\sig_main[3]~18\) # (GND)))
-- \sig_main[4]~20\ = CARRY((!\sig_main[3]~18\) # (!sig_main(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_main(4),
	datad => VCC,
	cin => \sig_main[3]~18\,
	combout => \sig_main[4]~19_combout\,
	cout => \sig_main[4]~20\);

-- Location: FF_X46_Y53_N7
\sig_main[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[4]~19_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(4));

-- Location: LCCOMB_X46_Y53_N8
\sig_main[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[5]~21_combout\ = (sig_main(5) & (\sig_main[4]~20\ $ (GND))) # (!sig_main(5) & (!\sig_main[4]~20\ & VCC))
-- \sig_main[5]~22\ = CARRY((sig_main(5) & !\sig_main[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(5),
	datad => VCC,
	cin => \sig_main[4]~20\,
	combout => \sig_main[5]~21_combout\,
	cout => \sig_main[5]~22\);

-- Location: FF_X46_Y53_N9
\sig_main[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[5]~21_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(5));

-- Location: LCCOMB_X46_Y53_N10
\sig_main[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[6]~23_combout\ = (sig_main(6) & (!\sig_main[5]~22\)) # (!sig_main(6) & ((\sig_main[5]~22\) # (GND)))
-- \sig_main[6]~24\ = CARRY((!\sig_main[5]~22\) # (!sig_main(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_main(6),
	datad => VCC,
	cin => \sig_main[5]~22\,
	combout => \sig_main[6]~23_combout\,
	cout => \sig_main[6]~24\);

-- Location: FF_X46_Y53_N11
\sig_main[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[6]~23_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(6));

-- Location: LCCOMB_X46_Y53_N12
\sig_main[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[7]~25_combout\ = (sig_main(7) & (\sig_main[6]~24\ $ (GND))) # (!sig_main(7) & (!\sig_main[6]~24\ & VCC))
-- \sig_main[7]~26\ = CARRY((sig_main(7) & !\sig_main[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_main(7),
	datad => VCC,
	cin => \sig_main[6]~24\,
	combout => \sig_main[7]~25_combout\,
	cout => \sig_main[7]~26\);

-- Location: FF_X46_Y53_N13
\sig_main[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[7]~25_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(7));

-- Location: LCCOMB_X46_Y53_N14
\sig_main[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[8]~27_combout\ = (sig_main(8) & (!\sig_main[7]~26\)) # (!sig_main(8) & ((\sig_main[7]~26\) # (GND)))
-- \sig_main[8]~28\ = CARRY((!\sig_main[7]~26\) # (!sig_main(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(8),
	datad => VCC,
	cin => \sig_main[7]~26\,
	combout => \sig_main[8]~27_combout\,
	cout => \sig_main[8]~28\);

-- Location: FF_X46_Y53_N15
\sig_main[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[8]~27_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(8));

-- Location: LCCOMB_X46_Y53_N16
\sig_main[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[9]~29_combout\ = (sig_main(9) & (\sig_main[8]~28\ $ (GND))) # (!sig_main(9) & (!\sig_main[8]~28\ & VCC))
-- \sig_main[9]~30\ = CARRY((sig_main(9) & !\sig_main[8]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(9),
	datad => VCC,
	cin => \sig_main[8]~28\,
	combout => \sig_main[9]~29_combout\,
	cout => \sig_main[9]~30\);

-- Location: FF_X46_Y53_N17
\sig_main[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[9]~29_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(9));

-- Location: LCCOMB_X46_Y53_N18
\sig_main[10]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[10]~31_combout\ = (sig_main(10) & (!\sig_main[9]~30\)) # (!sig_main(10) & ((\sig_main[9]~30\) # (GND)))
-- \sig_main[10]~32\ = CARRY((!\sig_main[9]~30\) # (!sig_main(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(10),
	datad => VCC,
	cin => \sig_main[9]~30\,
	combout => \sig_main[10]~31_combout\,
	cout => \sig_main[10]~32\);

-- Location: FF_X46_Y53_N19
\sig_main[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[10]~31_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(10));

-- Location: LCCOMB_X46_Y53_N20
\sig_main[11]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[11]~33_combout\ = (sig_main(11) & (\sig_main[10]~32\ $ (GND))) # (!sig_main(11) & (!\sig_main[10]~32\ & VCC))
-- \sig_main[11]~34\ = CARRY((sig_main(11) & !\sig_main[10]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(11),
	datad => VCC,
	cin => \sig_main[10]~32\,
	combout => \sig_main[11]~33_combout\,
	cout => \sig_main[11]~34\);

-- Location: FF_X46_Y53_N21
\sig_main[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[11]~33_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(11));

-- Location: LCCOMB_X46_Y53_N22
\sig_main[12]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[12]~35_combout\ = (sig_main(12) & (!\sig_main[11]~34\)) # (!sig_main(12) & ((\sig_main[11]~34\) # (GND)))
-- \sig_main[12]~36\ = CARRY((!\sig_main[11]~34\) # (!sig_main(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_main(12),
	datad => VCC,
	cin => \sig_main[11]~34\,
	combout => \sig_main[12]~35_combout\,
	cout => \sig_main[12]~36\);

-- Location: FF_X46_Y53_N23
\sig_main[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[12]~35_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(12));

-- Location: LCCOMB_X46_Y53_N24
\sig_main[13]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[13]~37_combout\ = \sig_main[12]~36\ $ (!sig_main(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_main(13),
	cin => \sig_main[12]~36\,
	combout => \sig_main[13]~37_combout\);

-- Location: FF_X46_Y53_N25
\sig_main[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[13]~37_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(13));

-- Location: FF_X50_Y53_N31
sig_cut : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_main(13),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut~q\);

-- Location: LCCOMB_X49_Y53_N14
\state_bi.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_bi.s3~feeder_combout\ = \state_bi.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_bi.s2~q\,
	combout => \state_bi.s3~feeder_combout\);

-- Location: FF_X50_Y53_N19
sig_cut_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_cut~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut_not~q\);

-- Location: LCCOMB_X50_Y53_N10
sig_main_rising_edge : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main_rising_edge~combout\ = (!\sig_cut_not~q\ & \sig_cut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_cut_not~q\,
	datac => \sig_cut~q\,
	combout => \sig_main_rising_edge~combout\);

-- Location: FF_X49_Y53_N15
\state_bi.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_bi.s3~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s3~q\);

-- Location: FF_X49_Y53_N29
\state_bi.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_bi.s3~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s4~q\);

-- Location: LCCOMB_X49_Y53_N18
\state_bi.s5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_bi.s5~feeder_combout\ = \state_bi.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_bi.s4~q\,
	combout => \state_bi.s5~feeder_combout\);

-- Location: FF_X49_Y53_N19
\state_bi.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_bi.s5~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s5~q\);

-- Location: LCCOMB_X49_Y53_N16
\state_bi.s6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_bi.s6~feeder_combout\ = \state_bi.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_bi.s5~q\,
	combout => \state_bi.s6~feeder_combout\);

-- Location: FF_X49_Y53_N17
\state_bi.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_bi.s6~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s6~q\);

-- Location: LCCOMB_X49_Y53_N20
\state_bi.s7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_bi.s7~feeder_combout\ = \state_bi.s6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_bi.s6~q\,
	combout => \state_bi.s7~feeder_combout\);

-- Location: FF_X49_Y53_N21
\state_bi.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_bi.s7~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s7~q\);

-- Location: LCCOMB_X49_Y53_N6
\state_bi.s0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_bi.s0~0_combout\ = !\state_bi.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_bi.s7~q\,
	combout => \state_bi.s0~0_combout\);

-- Location: FF_X49_Y53_N7
\state_bi.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_bi.s0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s0~q\);

-- Location: LCCOMB_X49_Y53_N24
\state_bi.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_bi.s1~0_combout\ = !\state_bi.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_bi.s0~q\,
	combout => \state_bi.s1~0_combout\);

-- Location: FF_X49_Y53_N25
\state_bi.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_bi.s1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s1~q\);

-- Location: LCCOMB_X49_Y53_N10
\state_bi.s2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_bi.s2~feeder_combout\ = \state_bi.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_bi.s1~q\,
	combout => \state_bi.s2~feeder_combout\);

-- Location: FF_X49_Y53_N11
\state_bi.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_bi.s2~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s2~q\);

-- Location: LCCOMB_X49_Y53_N12
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state_bi.s1~q\) # ((!\state_bi.s2~q\ & \sig_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_bi.s2~q\,
	datac => \sig_read~q\,
	datad => \state_bi.s1~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X49_Y53_N13
sig_read : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_read~q\);

-- Location: IOIBUF_X49_Y54_N8
\q_data_ram[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_ram(7),
	o => \q_data_ram[7]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\q_data_ram[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_ram(6),
	o => \q_data_ram[6]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\q_data_ram[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_ram(5),
	o => \q_data_ram[5]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\q_data_ram[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_ram(2),
	o => \q_data_ram[2]~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\q_data_ram[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_ram(0),
	o => \q_data_ram[0]~input_o\);

-- Location: LCCOMB_X50_Y53_N22
\sig_shift_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~7_combout\ = (\q_data_ram[0]~input_o\ & \sig_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q_data_ram[0]~input_o\,
	datad => \sig_read~q\,
	combout => \sig_shift_data~7_combout\);

-- Location: FF_X50_Y53_N23
\sig_shift_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_data~7_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_data(0));

-- Location: IOIBUF_X51_Y54_N15
\q_data_ram[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_ram(1),
	o => \q_data_ram[1]~input_o\);

-- Location: LCCOMB_X50_Y53_N20
\sig_shift_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~6_combout\ = (\sig_read~q\ & ((\q_data_ram[1]~input_o\))) # (!\sig_read~q\ & (sig_shift_data(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_read~q\,
	datac => sig_shift_data(0),
	datad => \q_data_ram[1]~input_o\,
	combout => \sig_shift_data~6_combout\);

-- Location: FF_X50_Y53_N21
\sig_shift_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_data~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_data(1));

-- Location: LCCOMB_X50_Y53_N26
\sig_shift_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~5_combout\ = (\sig_read~q\ & (\q_data_ram[2]~input_o\)) # (!\sig_read~q\ & ((sig_shift_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_read~q\,
	datac => \q_data_ram[2]~input_o\,
	datad => sig_shift_data(1),
	combout => \sig_shift_data~5_combout\);

-- Location: FF_X50_Y53_N27
\sig_shift_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_data~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_data(2));

-- Location: IOIBUF_X51_Y54_N1
\q_data_ram[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_ram(3),
	o => \q_data_ram[3]~input_o\);

-- Location: LCCOMB_X50_Y53_N8
\sig_shift_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~4_combout\ = (\sig_read~q\ & ((\q_data_ram[3]~input_o\))) # (!\sig_read~q\ & (sig_shift_data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_read~q\,
	datac => sig_shift_data(2),
	datad => \q_data_ram[3]~input_o\,
	combout => \sig_shift_data~4_combout\);

-- Location: FF_X50_Y53_N9
\sig_shift_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_data~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_data(3));

-- Location: IOIBUF_X51_Y54_N29
\q_data_ram[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_data_ram(4),
	o => \q_data_ram[4]~input_o\);

-- Location: LCCOMB_X50_Y53_N14
\sig_shift_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~3_combout\ = (\sig_read~q\ & ((\q_data_ram[4]~input_o\))) # (!\sig_read~q\ & (sig_shift_data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_read~q\,
	datac => sig_shift_data(3),
	datad => \q_data_ram[4]~input_o\,
	combout => \sig_shift_data~3_combout\);

-- Location: FF_X50_Y53_N15
\sig_shift_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_data~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_data(4));

-- Location: LCCOMB_X50_Y53_N12
\sig_shift_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~2_combout\ = (\sig_read~q\ & (\q_data_ram[5]~input_o\)) # (!\sig_read~q\ & ((sig_shift_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_read~q\,
	datab => \q_data_ram[5]~input_o\,
	datac => sig_shift_data(4),
	combout => \sig_shift_data~2_combout\);

-- Location: FF_X50_Y53_N13
\sig_shift_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_data~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_data(5));

-- Location: LCCOMB_X50_Y53_N24
\sig_shift_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~1_combout\ = (\sig_read~q\ & (\q_data_ram[6]~input_o\)) # (!\sig_read~q\ & ((sig_shift_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_read~q\,
	datac => \q_data_ram[6]~input_o\,
	datad => sig_shift_data(5),
	combout => \sig_shift_data~1_combout\);

-- Location: FF_X50_Y53_N25
\sig_shift_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_data~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_data(6));

-- Location: LCCOMB_X50_Y53_N28
\sig_shift_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~0_combout\ = (\sig_read~q\ & (\q_data_ram[7]~input_o\)) # (!\sig_read~q\ & ((sig_shift_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_read~q\,
	datac => \q_data_ram[7]~input_o\,
	datad => sig_shift_data(6),
	combout => \sig_shift_data~0_combout\);

-- Location: FF_X50_Y53_N29
\sig_shift_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_data~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_data(7));

-- Location: LCCOMB_X50_Y53_N0
\sig_BiPhase_tx_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_BiPhase_tx_out~0_combout\ = \sig_BiPhase_tx_out~q\ $ (((\sig_cut~q\ & ((!\sig_cut_not~q\))) # (!\sig_cut~q\ & (!sig_shift_data(7) & \sig_cut_not~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut~q\,
	datab => sig_shift_data(7),
	datac => \sig_BiPhase_tx_out~q\,
	datad => \sig_cut_not~q\,
	combout => \sig_BiPhase_tx_out~0_combout\);

-- Location: FF_X50_Y53_N1
sig_BiPhase_tx_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_BiPhase_tx_out~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_BiPhase_tx_out~q\);

-- Location: FF_X49_Y50_N31
\state_mini.s4a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_mini.s3a~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mini.s4a~q\);

-- Location: FF_X49_Y50_N7
\state_mini.s5a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_mini.s4a~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mini.s5a~q\);

-- Location: LCCOMB_X49_Y50_N2
\sig_inc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_inc~0_combout\ = (!\sig_cut_not~q\ & (\resetn~input_o\ & \sig_cut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_cut_not~q\,
	datac => \resetn~input_o\,
	datad => \sig_cut~q\,
	combout => \sig_inc~0_combout\);

-- Location: LCCOMB_X49_Y53_N22
\sig_inc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_inc~1_combout\ = (\sig_inc~0_combout\ & ((\state_bi.s7~q\) # ((\sig_inc~q\ & \state_bi.s0~q\)))) # (!\sig_inc~0_combout\ & (((\sig_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_inc~0_combout\,
	datab => \state_bi.s7~q\,
	datac => \sig_inc~q\,
	datad => \state_bi.s0~q\,
	combout => \sig_inc~1_combout\);

-- Location: FF_X49_Y53_N23
sig_inc : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_inc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_inc~q\);

-- Location: LCCOMB_X49_Y50_N22
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\state_mini.s5a~q\ & ((\state_mini.s0a~q\) # (\sig_inc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_mini.s5a~q\,
	datac => \state_mini.s0a~q\,
	datad => \sig_inc~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X49_Y50_N23
\state_mini.s0a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mini.s0a~q\);

-- Location: LCCOMB_X49_Y50_N10
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\sig_inc~q\ & ((\state_mini.s1a~q\) # (!\state_mini.s0a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_mini.s0a~q\,
	datac => \state_mini.s1a~q\,
	datad => \sig_inc~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X49_Y50_N11
\state_mini.s1a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mini.s1a~q\);

-- Location: LCCOMB_X49_Y50_N28
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state_mini.s1a~q\ & !\sig_inc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_mini.s1a~q\,
	datad => \sig_inc~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X49_Y50_N29
\state_mini.s2a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mini.s2a~q\);

-- Location: LCCOMB_X49_Y50_N8
\state_mini.s3a~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_mini.s3a~feeder_combout\ = \state_mini.s2a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_mini.s2a~q\,
	combout => \state_mini.s3a~feeder_combout\);

-- Location: FF_X49_Y50_N9
\state_mini.s3a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_mini.s3a~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mini.s3a~q\);

-- Location: LCCOMB_X49_Y50_N24
\sig_read_address_cnt[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address_cnt[0]~12_combout\ = \state_mini.s3a~q\ $ (sig_read_address_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_mini.s3a~q\,
	datac => sig_read_address_cnt(0),
	combout => \sig_read_address_cnt[0]~12_combout\);

-- Location: FF_X49_Y50_N25
\sig_read_address_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address_cnt[0]~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address_cnt(0));

-- Location: LCCOMB_X49_Y50_N12
\sig_read_address_cnt[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address_cnt[1]~4_combout\ = (sig_read_address_cnt(1) & (sig_read_address_cnt(0) $ (VCC))) # (!sig_read_address_cnt(1) & (sig_read_address_cnt(0) & VCC))
-- \sig_read_address_cnt[1]~5\ = CARRY((sig_read_address_cnt(1) & sig_read_address_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_read_address_cnt(1),
	datab => sig_read_address_cnt(0),
	datad => VCC,
	combout => \sig_read_address_cnt[1]~4_combout\,
	cout => \sig_read_address_cnt[1]~5\);

-- Location: FF_X49_Y50_N13
\sig_read_address_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address_cnt[1]~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address_cnt(1));

-- Location: LCCOMB_X49_Y50_N14
\sig_read_address_cnt[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address_cnt[2]~6_combout\ = (sig_read_address_cnt(2) & (!\sig_read_address_cnt[1]~5\)) # (!sig_read_address_cnt(2) & ((\sig_read_address_cnt[1]~5\) # (GND)))
-- \sig_read_address_cnt[2]~7\ = CARRY((!\sig_read_address_cnt[1]~5\) # (!sig_read_address_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_read_address_cnt(2),
	datad => VCC,
	cin => \sig_read_address_cnt[1]~5\,
	combout => \sig_read_address_cnt[2]~6_combout\,
	cout => \sig_read_address_cnt[2]~7\);

-- Location: FF_X49_Y50_N15
\sig_read_address_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address_cnt[2]~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address_cnt(2));

-- Location: LCCOMB_X49_Y50_N16
\sig_read_address_cnt[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address_cnt[3]~8_combout\ = (sig_read_address_cnt(3) & (\sig_read_address_cnt[2]~7\ $ (GND))) # (!sig_read_address_cnt(3) & (!\sig_read_address_cnt[2]~7\ & VCC))
-- \sig_read_address_cnt[3]~9\ = CARRY((sig_read_address_cnt(3) & !\sig_read_address_cnt[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_read_address_cnt(3),
	datad => VCC,
	cin => \sig_read_address_cnt[2]~7\,
	combout => \sig_read_address_cnt[3]~8_combout\,
	cout => \sig_read_address_cnt[3]~9\);

-- Location: FF_X49_Y50_N17
\sig_read_address_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address_cnt[3]~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address_cnt(3));

-- Location: LCCOMB_X49_Y50_N20
\start_strobe_tx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \start_strobe_tx~0_combout\ = (sig_read_address_cnt(1) & (sig_read_address_cnt(2) & !sig_read_address_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_read_address_cnt(1),
	datac => sig_read_address_cnt(2),
	datad => sig_read_address_cnt(3),
	combout => \start_strobe_tx~0_combout\);

-- Location: LCCOMB_X49_Y50_N18
\sig_read_address_cnt[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address_cnt[4]~10_combout\ = sig_read_address_cnt(4) $ (\sig_read_address_cnt[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_read_address_cnt(4),
	cin => \sig_read_address_cnt[3]~9\,
	combout => \sig_read_address_cnt[4]~10_combout\);

-- Location: FF_X49_Y50_N19
\sig_read_address_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address_cnt[4]~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address_cnt(4));

-- Location: LCCOMB_X49_Y50_N26
\start_strobe_tx~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \start_strobe_tx~1_combout\ = (\start_strobe_tx~0_combout\ & (!sig_read_address_cnt(4) & sig_read_address_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start_strobe_tx~0_combout\,
	datac => sig_read_address_cnt(4),
	datad => sig_read_address_cnt(0),
	combout => \start_strobe_tx~1_combout\);

-- Location: LCCOMB_X49_Y50_N0
\start_strobe_tx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \start_strobe_tx~2_combout\ = (\resetn~input_o\ & ((\state_mini.s2a~q\ & (\start_strobe_tx~1_combout\)) # (!\state_mini.s2a~q\ & ((\start_strobe_tx~reg0_q\))))) # (!\resetn~input_o\ & (((\start_strobe_tx~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_strobe_tx~1_combout\,
	datab => \resetn~input_o\,
	datac => \start_strobe_tx~reg0_q\,
	datad => \state_mini.s2a~q\,
	combout => \start_strobe_tx~2_combout\);

-- Location: FF_X49_Y50_N1
\start_strobe_tx~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \start_strobe_tx~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_strobe_tx~reg0_q\);

-- Location: LCCOMB_X47_Y50_N24
\sig_read_address[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address[0]~feeder_combout\ = sig_read_address_cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_read_address_cnt(0),
	combout => \sig_read_address[0]~feeder_combout\);

-- Location: LCCOMB_X49_Y50_N6
\sig_read_address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address[0]~0_combout\ = (\state_mini.s5a~q\ & \resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_mini.s5a~q\,
	datad => \resetn~input_o\,
	combout => \sig_read_address[0]~0_combout\);

-- Location: FF_X47_Y50_N25
\sig_read_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address[0]~feeder_combout\,
	ena => \sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address(0));

-- Location: LCCOMB_X52_Y50_N8
\sig_read_address[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address[1]~feeder_combout\ = sig_read_address_cnt(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_read_address_cnt(1),
	combout => \sig_read_address[1]~feeder_combout\);

-- Location: FF_X52_Y50_N9
\sig_read_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address[1]~feeder_combout\,
	ena => \sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address(1));

-- Location: LCCOMB_X55_Y50_N8
\sig_read_address[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address[2]~feeder_combout\ = sig_read_address_cnt(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_read_address_cnt(2),
	combout => \sig_read_address[2]~feeder_combout\);

-- Location: FF_X55_Y50_N9
\sig_read_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address[2]~feeder_combout\,
	ena => \sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address(2));

-- Location: LCCOMB_X47_Y50_N2
\sig_read_address[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address[3]~feeder_combout\ = sig_read_address_cnt(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_read_address_cnt(3),
	combout => \sig_read_address[3]~feeder_combout\);

-- Location: FF_X47_Y50_N3
\sig_read_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address[3]~feeder_combout\,
	ena => \sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address(3));

-- Location: LCCOMB_X47_Y50_N4
\sig_read_address[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address[4]~feeder_combout\ = sig_read_address_cnt(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_read_address_cnt(4),
	combout => \sig_read_address[4]~feeder_combout\);

-- Location: FF_X47_Y50_N5
\sig_read_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address[4]~feeder_combout\,
	ena => \sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address(4));

-- Location: LCCOMB_X49_Y50_N30
\sig_toggle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_toggle~0_combout\ = (!sig_read_address_cnt(4) & (!sig_read_address_cnt(3) & (\state_mini.s4a~q\ & !sig_read_address_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_read_address_cnt(4),
	datab => sig_read_address_cnt(3),
	datac => \state_mini.s4a~q\,
	datad => sig_read_address_cnt(0),
	combout => \sig_toggle~0_combout\);

-- Location: LCCOMB_X49_Y50_N4
\sig_toggle~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_toggle~1_combout\ = \sig_toggle~q\ $ (((\sig_toggle~0_combout\ & (!sig_read_address_cnt(2) & !sig_read_address_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_toggle~0_combout\,
	datab => sig_read_address_cnt(2),
	datac => \sig_toggle~q\,
	datad => sig_read_address_cnt(1),
	combout => \sig_toggle~1_combout\);

-- Location: FF_X49_Y50_N5
sig_toggle : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_toggle~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_toggle~q\);

-- Location: FF_X47_Y50_N7
\sig_read_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_toggle~q\,
	sload => VCC,
	ena => \sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address(5));

-- Location: LCCOMB_X49_Y53_N8
\sig_cut_rd~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cut_rd~feeder_combout\ = \sig_read~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_read~q\,
	combout => \sig_cut_rd~feeder_combout\);

-- Location: FF_X49_Y53_N9
sig_cut_rd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cut_rd~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut_rd~q\);

-- Location: FF_X49_Y53_N3
sig_cut_rd_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_cut_rd~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut_rd_not~q\);

-- Location: LCCOMB_X49_Y53_N2
\sig_rd_rising_edge~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rd_rising_edge~0_combout\ = (\sig_cut_rd~q\ & !\sig_cut_rd_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_cut_rd~q\,
	datac => \sig_cut_rd_not~q\,
	combout => \sig_rd_rising_edge~0_combout\);

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

ww_BiPhase_tx_out <= \BiPhase_tx_out~output_o\;

ww_start_strobe_tx <= \start_strobe_tx~output_o\;

ww_read_address(0) <= \read_address[0]~output_o\;

ww_read_address(1) <= \read_address[1]~output_o\;

ww_read_address(2) <= \read_address[2]~output_o\;

ww_read_address(3) <= \read_address[3]~output_o\;

ww_read_address(4) <= \read_address[4]~output_o\;

ww_read_address(5) <= \read_address[5]~output_o\;

ww_rd <= \rd~output_o\;

ww_toggle <= \toggle~output_o\;
END structure;


