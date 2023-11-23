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

-- DATE "04/29/2023 19:57:12"

-- 
-- Device: Altera 10M50DAF484I7G Package FBGA484
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

ENTITY 	Shift_Register_X IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	shift_reg_out : BUFFER std_logic_vector(7 DOWNTO 0);
	Araising : BUFFER std_logic;
	q_rom_out : BUFFER std_logic_vector(7 DOWNTO 0);
	Timing_Pulse : BUFFER std_logic;
	Address_cnt : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END Shift_Register_X;

-- Design Ports Information
-- shift_reg_out[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_reg_out[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_reg_out[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_reg_out[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_reg_out[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_reg_out[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_reg_out[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_reg_out[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Araising	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_rom_out[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_rom_out[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_rom_out[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_rom_out[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_rom_out[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_rom_out[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_rom_out[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_rom_out[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Timing_Pulse	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_cnt[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_cnt[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_cnt[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_cnt[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_cnt[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_cnt[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Shift_Register_X IS
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
SIGNAL ww_shift_reg_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Araising : std_logic;
SIGNAL ww_q_rom_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Timing_Pulse : std_logic;
SIGNAL ww_Address_cnt : std_logic_vector(5 DOWNTO 0);
SIGNAL \dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \shift_reg_out[0]~output_o\ : std_logic;
SIGNAL \shift_reg_out[1]~output_o\ : std_logic;
SIGNAL \shift_reg_out[2]~output_o\ : std_logic;
SIGNAL \shift_reg_out[3]~output_o\ : std_logic;
SIGNAL \shift_reg_out[4]~output_o\ : std_logic;
SIGNAL \shift_reg_out[5]~output_o\ : std_logic;
SIGNAL \shift_reg_out[6]~output_o\ : std_logic;
SIGNAL \shift_reg_out[7]~output_o\ : std_logic;
SIGNAL \Araising~output_o\ : std_logic;
SIGNAL \q_rom_out[0]~output_o\ : std_logic;
SIGNAL \q_rom_out[1]~output_o\ : std_logic;
SIGNAL \q_rom_out[2]~output_o\ : std_logic;
SIGNAL \q_rom_out[3]~output_o\ : std_logic;
SIGNAL \q_rom_out[4]~output_o\ : std_logic;
SIGNAL \q_rom_out[5]~output_o\ : std_logic;
SIGNAL \q_rom_out[6]~output_o\ : std_logic;
SIGNAL \q_rom_out[7]~output_o\ : std_logic;
SIGNAL \Timing_Pulse~output_o\ : std_logic;
SIGNAL \Address_cnt[0]~output_o\ : std_logic;
SIGNAL \Address_cnt[1]~output_o\ : std_logic;
SIGNAL \Address_cnt[2]~output_o\ : std_logic;
SIGNAL \Address_cnt[3]~output_o\ : std_logic;
SIGNAL \Address_cnt[4]~output_o\ : std_logic;
SIGNAL \Address_cnt[5]~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_sysclk_cnt[0]~21_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_sysclk_cnt[1]~7_combout\ : std_logic;
SIGNAL \sig_sysclk_cnt[1]~8\ : std_logic;
SIGNAL \sig_sysclk_cnt[2]~9_combout\ : std_logic;
SIGNAL \sig_sysclk_cnt[2]~10\ : std_logic;
SIGNAL \sig_sysclk_cnt[3]~11_combout\ : std_logic;
SIGNAL \sig_sysclk_cnt[3]~12\ : std_logic;
SIGNAL \sig_sysclk_cnt[4]~13_combout\ : std_logic;
SIGNAL \sig_sysclk_cnt[4]~14\ : std_logic;
SIGNAL \sig_sysclk_cnt[5]~15_combout\ : std_logic;
SIGNAL \sig_sysclk_cnt[5]~16\ : std_logic;
SIGNAL \sig_sysclk_cnt[6]~17_combout\ : std_logic;
SIGNAL \sig_sysclk_cnt[6]~18\ : std_logic;
SIGNAL \sig_sysclk_cnt[7]~19_combout\ : std_logic;
SIGNAL \sig_Aclock_q~feeder_combout\ : std_logic;
SIGNAL \sig_Aclock_q~q\ : std_logic;
SIGNAL \sig_Aclock_q_not~q\ : std_logic;
SIGNAL \sig_Address_cnt[0]~5_combout\ : std_logic;
SIGNAL \sig_Address_cnt[1]~6_combout\ : std_logic;
SIGNAL \sig_Araising~0_combout\ : std_logic;
SIGNAL \sig_Address_cnt[1]~7\ : std_logic;
SIGNAL \sig_Address_cnt[2]~8_combout\ : std_logic;
SIGNAL \sig_Address_cnt[2]~9\ : std_logic;
SIGNAL \sig_Address_cnt[3]~10_combout\ : std_logic;
SIGNAL \sig_Address_cnt[3]~11\ : std_logic;
SIGNAL \sig_Address_cnt[4]~12_combout\ : std_logic;
SIGNAL \sig_Address_cnt[4]~13\ : std_logic;
SIGNAL \sig_Address_cnt[5]~14_combout\ : std_logic;
SIGNAL \sig_shift_reg_out~0_combout\ : std_logic;
SIGNAL \sig_shift_reg_out~1_combout\ : std_logic;
SIGNAL \sig_shift_reg_out~2_combout\ : std_logic;
SIGNAL \sig_shift_reg_out~3_combout\ : std_logic;
SIGNAL \sig_shift_reg_out~4_combout\ : std_logic;
SIGNAL \sig_shift_reg_out~5_combout\ : std_logic;
SIGNAL \sig_shift_reg_out~6_combout\ : std_logic;
SIGNAL \sig_shift_reg_out~7_combout\ : std_logic;
SIGNAL \tim_pulse~0_combout\ : std_logic;
SIGNAL \sig_Timing_Pulse~q\ : std_logic;
SIGNAL \dut|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_Address_cnt : std_logic_vector(5 DOWNTO 0);
SIGNAL sig_sysclk_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_shift_reg_out : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
shift_reg_out <= ww_shift_reg_out;
Araising <= ww_Araising;
q_rom_out <= ww_q_rom_out;
Timing_Pulse <= ww_Timing_Pulse;
Address_cnt <= ww_Address_cnt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (sig_Address_cnt(5) & sig_Address_cnt(4) & sig_Address_cnt(3) & sig_Address_cnt(2) & sig_Address_cnt(1) & sig_Address_cnt(0));

\dut|altsyncram_component|auto_generated|q_a\(0) <= \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\dut|altsyncram_component|auto_generated|q_a\(1) <= \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\dut|altsyncram_component|auto_generated|q_a\(2) <= \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\dut|altsyncram_component|auto_generated|q_a\(3) <= \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\dut|altsyncram_component|auto_generated|q_a\(4) <= \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\dut|altsyncram_component|auto_generated|q_a\(5) <= \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\dut|altsyncram_component|auto_generated|q_a\(6) <= \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\dut|altsyncram_component|auto_generated|q_a\(7) <= \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
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

-- Location: IOOBUF_X49_Y54_N30
\shift_reg_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_shift_reg_out(0),
	devoe => ww_devoe,
	o => \shift_reg_out[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\shift_reg_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_shift_reg_out(1),
	devoe => ww_devoe,
	o => \shift_reg_out[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\shift_reg_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_shift_reg_out(2),
	devoe => ww_devoe,
	o => \shift_reg_out[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\shift_reg_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_shift_reg_out(3),
	devoe => ww_devoe,
	o => \shift_reg_out[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\shift_reg_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_shift_reg_out(4),
	devoe => ww_devoe,
	o => \shift_reg_out[4]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\shift_reg_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_shift_reg_out(5),
	devoe => ww_devoe,
	o => \shift_reg_out[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\shift_reg_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_shift_reg_out(6),
	devoe => ww_devoe,
	o => \shift_reg_out[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\shift_reg_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_shift_reg_out(7),
	devoe => ww_devoe,
	o => \shift_reg_out[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\Araising~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_Araising~0_combout\,
	devoe => ww_devoe,
	o => \Araising~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\q_rom_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \q_rom_out[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\q_rom_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \q_rom_out[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\q_rom_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \q_rom_out[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\q_rom_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \q_rom_out[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\q_rom_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \q_rom_out[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\q_rom_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \q_rom_out[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\q_rom_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \q_rom_out[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\q_rom_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \q_rom_out[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Timing_Pulse~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_Timing_Pulse~q\,
	devoe => ww_devoe,
	o => \Timing_Pulse~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\Address_cnt[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_Address_cnt(0),
	devoe => ww_devoe,
	o => \Address_cnt[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\Address_cnt[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_Address_cnt(1),
	devoe => ww_devoe,
	o => \Address_cnt[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\Address_cnt[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_Address_cnt(2),
	devoe => ww_devoe,
	o => \Address_cnt[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\Address_cnt[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_Address_cnt(3),
	devoe => ww_devoe,
	o => \Address_cnt[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\Address_cnt[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_Address_cnt(4),
	devoe => ww_devoe,
	o => \Address_cnt[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\Address_cnt[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_Address_cnt(5),
	devoe => ww_devoe,
	o => \Address_cnt[5]~output_o\);

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

-- Location: LCCOMB_X54_Y53_N24
\sig_sysclk_cnt[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sysclk_cnt[0]~21_combout\ = !sig_sysclk_cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_sysclk_cnt(0),
	combout => \sig_sysclk_cnt[0]~21_combout\);

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

-- Location: FF_X54_Y53_N25
\sig_sysclk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sysclk_cnt[0]~21_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sysclk_cnt(0));

-- Location: LCCOMB_X54_Y53_N0
\sig_sysclk_cnt[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sysclk_cnt[1]~7_combout\ = (sig_sysclk_cnt(1) & (sig_sysclk_cnt(0) $ (VCC))) # (!sig_sysclk_cnt(1) & (sig_sysclk_cnt(0) & VCC))
-- \sig_sysclk_cnt[1]~8\ = CARRY((sig_sysclk_cnt(1) & sig_sysclk_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sysclk_cnt(1),
	datab => sig_sysclk_cnt(0),
	datad => VCC,
	combout => \sig_sysclk_cnt[1]~7_combout\,
	cout => \sig_sysclk_cnt[1]~8\);

-- Location: FF_X54_Y53_N1
\sig_sysclk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sysclk_cnt[1]~7_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sysclk_cnt(1));

-- Location: LCCOMB_X54_Y53_N2
\sig_sysclk_cnt[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sysclk_cnt[2]~9_combout\ = (sig_sysclk_cnt(2) & (!\sig_sysclk_cnt[1]~8\)) # (!sig_sysclk_cnt(2) & ((\sig_sysclk_cnt[1]~8\) # (GND)))
-- \sig_sysclk_cnt[2]~10\ = CARRY((!\sig_sysclk_cnt[1]~8\) # (!sig_sysclk_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_sysclk_cnt(2),
	datad => VCC,
	cin => \sig_sysclk_cnt[1]~8\,
	combout => \sig_sysclk_cnt[2]~9_combout\,
	cout => \sig_sysclk_cnt[2]~10\);

-- Location: FF_X54_Y53_N3
\sig_sysclk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sysclk_cnt[2]~9_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sysclk_cnt(2));

-- Location: LCCOMB_X54_Y53_N4
\sig_sysclk_cnt[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sysclk_cnt[3]~11_combout\ = (sig_sysclk_cnt(3) & (\sig_sysclk_cnt[2]~10\ $ (GND))) # (!sig_sysclk_cnt(3) & (!\sig_sysclk_cnt[2]~10\ & VCC))
-- \sig_sysclk_cnt[3]~12\ = CARRY((sig_sysclk_cnt(3) & !\sig_sysclk_cnt[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_sysclk_cnt(3),
	datad => VCC,
	cin => \sig_sysclk_cnt[2]~10\,
	combout => \sig_sysclk_cnt[3]~11_combout\,
	cout => \sig_sysclk_cnt[3]~12\);

-- Location: FF_X54_Y53_N5
\sig_sysclk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sysclk_cnt[3]~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sysclk_cnt(3));

-- Location: LCCOMB_X54_Y53_N6
\sig_sysclk_cnt[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sysclk_cnt[4]~13_combout\ = (sig_sysclk_cnt(4) & (!\sig_sysclk_cnt[3]~12\)) # (!sig_sysclk_cnt(4) & ((\sig_sysclk_cnt[3]~12\) # (GND)))
-- \sig_sysclk_cnt[4]~14\ = CARRY((!\sig_sysclk_cnt[3]~12\) # (!sig_sysclk_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_sysclk_cnt(4),
	datad => VCC,
	cin => \sig_sysclk_cnt[3]~12\,
	combout => \sig_sysclk_cnt[4]~13_combout\,
	cout => \sig_sysclk_cnt[4]~14\);

-- Location: FF_X54_Y53_N7
\sig_sysclk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sysclk_cnt[4]~13_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sysclk_cnt(4));

-- Location: LCCOMB_X54_Y53_N8
\sig_sysclk_cnt[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sysclk_cnt[5]~15_combout\ = (sig_sysclk_cnt(5) & (\sig_sysclk_cnt[4]~14\ $ (GND))) # (!sig_sysclk_cnt(5) & (!\sig_sysclk_cnt[4]~14\ & VCC))
-- \sig_sysclk_cnt[5]~16\ = CARRY((sig_sysclk_cnt(5) & !\sig_sysclk_cnt[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_sysclk_cnt(5),
	datad => VCC,
	cin => \sig_sysclk_cnt[4]~14\,
	combout => \sig_sysclk_cnt[5]~15_combout\,
	cout => \sig_sysclk_cnt[5]~16\);

-- Location: FF_X54_Y53_N9
\sig_sysclk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sysclk_cnt[5]~15_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sysclk_cnt(5));

-- Location: LCCOMB_X54_Y53_N10
\sig_sysclk_cnt[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sysclk_cnt[6]~17_combout\ = (sig_sysclk_cnt(6) & (!\sig_sysclk_cnt[5]~16\)) # (!sig_sysclk_cnt(6) & ((\sig_sysclk_cnt[5]~16\) # (GND)))
-- \sig_sysclk_cnt[6]~18\ = CARRY((!\sig_sysclk_cnt[5]~16\) # (!sig_sysclk_cnt(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_sysclk_cnt(6),
	datad => VCC,
	cin => \sig_sysclk_cnt[5]~16\,
	combout => \sig_sysclk_cnt[6]~17_combout\,
	cout => \sig_sysclk_cnt[6]~18\);

-- Location: FF_X54_Y53_N11
\sig_sysclk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sysclk_cnt[6]~17_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sysclk_cnt(6));

-- Location: LCCOMB_X54_Y53_N12
\sig_sysclk_cnt[7]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sysclk_cnt[7]~19_combout\ = sig_sysclk_cnt(7) $ (!\sig_sysclk_cnt[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_sysclk_cnt(7),
	cin => \sig_sysclk_cnt[6]~18\,
	combout => \sig_sysclk_cnt[7]~19_combout\);

-- Location: FF_X54_Y53_N13
\sig_sysclk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sysclk_cnt[7]~19_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sysclk_cnt(7));

-- Location: LCCOMB_X54_Y53_N22
\sig_Aclock_q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_Aclock_q~feeder_combout\ = sig_sysclk_cnt(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sysclk_cnt(7),
	combout => \sig_Aclock_q~feeder_combout\);

-- Location: FF_X54_Y53_N23
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

-- Location: FF_X52_Y53_N3
sig_Aclock_q_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_Aclock_q~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_Aclock_q_not~q\);

-- Location: LCCOMB_X52_Y53_N22
\sig_Address_cnt[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_Address_cnt[0]~5_combout\ = sig_Address_cnt(0) $ (((\sig_Aclock_q~q\ & !\sig_Aclock_q_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_Aclock_q~q\,
	datab => \sig_Aclock_q_not~q\,
	datac => sig_Address_cnt(0),
	combout => \sig_Address_cnt[0]~5_combout\);

-- Location: FF_X52_Y53_N23
\sig_Address_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_Address_cnt[0]~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_Address_cnt(0));

-- Location: LCCOMB_X52_Y53_N10
\sig_Address_cnt[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_Address_cnt[1]~6_combout\ = (sig_Address_cnt(0) & (sig_Address_cnt(1) $ (VCC))) # (!sig_Address_cnt(0) & (sig_Address_cnt(1) & VCC))
-- \sig_Address_cnt[1]~7\ = CARRY((sig_Address_cnt(0) & sig_Address_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_Address_cnt(0),
	datab => sig_Address_cnt(1),
	datad => VCC,
	combout => \sig_Address_cnt[1]~6_combout\,
	cout => \sig_Address_cnt[1]~7\);

-- Location: LCCOMB_X52_Y53_N2
\sig_Araising~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_Araising~0_combout\ = (\sig_Aclock_q~q\ & !\sig_Aclock_q_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_Aclock_q~q\,
	datac => \sig_Aclock_q_not~q\,
	combout => \sig_Araising~0_combout\);

-- Location: FF_X52_Y53_N11
\sig_Address_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_Address_cnt[1]~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_Araising~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_Address_cnt(1));

-- Location: LCCOMB_X52_Y53_N12
\sig_Address_cnt[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_Address_cnt[2]~8_combout\ = (sig_Address_cnt(2) & (!\sig_Address_cnt[1]~7\)) # (!sig_Address_cnt(2) & ((\sig_Address_cnt[1]~7\) # (GND)))
-- \sig_Address_cnt[2]~9\ = CARRY((!\sig_Address_cnt[1]~7\) # (!sig_Address_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_Address_cnt(2),
	datad => VCC,
	cin => \sig_Address_cnt[1]~7\,
	combout => \sig_Address_cnt[2]~8_combout\,
	cout => \sig_Address_cnt[2]~9\);

-- Location: FF_X52_Y53_N13
\sig_Address_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_Address_cnt[2]~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_Araising~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_Address_cnt(2));

-- Location: LCCOMB_X52_Y53_N14
\sig_Address_cnt[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_Address_cnt[3]~10_combout\ = (sig_Address_cnt(3) & (\sig_Address_cnt[2]~9\ $ (GND))) # (!sig_Address_cnt(3) & (!\sig_Address_cnt[2]~9\ & VCC))
-- \sig_Address_cnt[3]~11\ = CARRY((sig_Address_cnt(3) & !\sig_Address_cnt[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_Address_cnt(3),
	datad => VCC,
	cin => \sig_Address_cnt[2]~9\,
	combout => \sig_Address_cnt[3]~10_combout\,
	cout => \sig_Address_cnt[3]~11\);

-- Location: FF_X52_Y53_N15
\sig_Address_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_Address_cnt[3]~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_Araising~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_Address_cnt(3));

-- Location: LCCOMB_X52_Y53_N16
\sig_Address_cnt[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_Address_cnt[4]~12_combout\ = (sig_Address_cnt(4) & (!\sig_Address_cnt[3]~11\)) # (!sig_Address_cnt(4) & ((\sig_Address_cnt[3]~11\) # (GND)))
-- \sig_Address_cnt[4]~13\ = CARRY((!\sig_Address_cnt[3]~11\) # (!sig_Address_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_Address_cnt(4),
	datad => VCC,
	cin => \sig_Address_cnt[3]~11\,
	combout => \sig_Address_cnt[4]~12_combout\,
	cout => \sig_Address_cnt[4]~13\);

-- Location: FF_X52_Y53_N17
\sig_Address_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_Address_cnt[4]~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_Araising~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_Address_cnt(4));

-- Location: LCCOMB_X52_Y53_N18
\sig_Address_cnt[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_Address_cnt[5]~14_combout\ = sig_Address_cnt(5) $ (!\sig_Address_cnt[4]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_Address_cnt(5),
	cin => \sig_Address_cnt[4]~13\,
	combout => \sig_Address_cnt[5]~14_combout\);

-- Location: FF_X52_Y53_N19
\sig_Address_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_Address_cnt[5]~14_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_Araising~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_Address_cnt(5));

-- Location: M9K_X53_Y53_N0
\dut|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0037000DB0036800D90036000D70035800D50035000D30034800D10034000CF0033800CD0033000CB0032800C90032000C70031800C50031000C30030800C10030000BF002F800BD002F000BB002E800B9002E000B7002D800B5002D000B3002C800B1002C000AF002B800AD002B000AB002A800A9002A000A70029800A50029000A30028800A1002AC00FE0032800C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Rom_X_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Rom_X:dut|altsyncram:altsyncram_component|altsyncram_vt81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sysclk~inputclkctrl_outclk\,
	portaaddr => \dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y53_N8
\sig_shift_reg_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg_out~0_combout\ = (\dut|altsyncram_component|auto_generated|q_a\(0) & (!\sig_Aclock_q_not~q\ & \sig_Aclock_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|altsyncram_component|auto_generated|q_a\(0),
	datab => \sig_Aclock_q_not~q\,
	datac => \sig_Aclock_q~q\,
	combout => \sig_shift_reg_out~0_combout\);

-- Location: FF_X52_Y53_N9
\sig_shift_reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg_out~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg_out(0));

-- Location: LCCOMB_X52_Y53_N26
\sig_shift_reg_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg_out~1_combout\ = (\sig_Aclock_q~q\ & ((\sig_Aclock_q_not~q\ & (sig_shift_reg_out(0))) # (!\sig_Aclock_q_not~q\ & ((\dut|altsyncram_component|auto_generated|q_a\(1)))))) # (!\sig_Aclock_q~q\ & (((sig_shift_reg_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_Aclock_q~q\,
	datab => \sig_Aclock_q_not~q\,
	datac => sig_shift_reg_out(0),
	datad => \dut|altsyncram_component|auto_generated|q_a\(1),
	combout => \sig_shift_reg_out~1_combout\);

-- Location: FF_X52_Y53_N27
\sig_shift_reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg_out~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg_out(1));

-- Location: LCCOMB_X52_Y53_N20
\sig_shift_reg_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg_out~2_combout\ = (\sig_Aclock_q_not~q\ & (sig_shift_reg_out(1))) # (!\sig_Aclock_q_not~q\ & ((\sig_Aclock_q~q\ & ((\dut|altsyncram_component|auto_generated|q_a\(2)))) # (!\sig_Aclock_q~q\ & (sig_shift_reg_out(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_reg_out(1),
	datab => \dut|altsyncram_component|auto_generated|q_a\(2),
	datac => \sig_Aclock_q_not~q\,
	datad => \sig_Aclock_q~q\,
	combout => \sig_shift_reg_out~2_combout\);

-- Location: FF_X52_Y53_N21
\sig_shift_reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg_out~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg_out(2));

-- Location: LCCOMB_X52_Y53_N30
\sig_shift_reg_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg_out~3_combout\ = (\sig_Aclock_q~q\ & ((\sig_Aclock_q_not~q\ & (sig_shift_reg_out(2))) # (!\sig_Aclock_q_not~q\ & ((\dut|altsyncram_component|auto_generated|q_a\(3)))))) # (!\sig_Aclock_q~q\ & (((sig_shift_reg_out(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_Aclock_q~q\,
	datab => \sig_Aclock_q_not~q\,
	datac => sig_shift_reg_out(2),
	datad => \dut|altsyncram_component|auto_generated|q_a\(3),
	combout => \sig_shift_reg_out~3_combout\);

-- Location: FF_X52_Y53_N31
\sig_shift_reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg_out~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg_out(3));

-- Location: LCCOMB_X52_Y53_N0
\sig_shift_reg_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg_out~4_combout\ = (\sig_Aclock_q_not~q\ & (((sig_shift_reg_out(3))))) # (!\sig_Aclock_q_not~q\ & ((\sig_Aclock_q~q\ & (\dut|altsyncram_component|auto_generated|q_a\(4))) # (!\sig_Aclock_q~q\ & ((sig_shift_reg_out(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|altsyncram_component|auto_generated|q_a\(4),
	datab => \sig_Aclock_q_not~q\,
	datac => \sig_Aclock_q~q\,
	datad => sig_shift_reg_out(3),
	combout => \sig_shift_reg_out~4_combout\);

-- Location: FF_X52_Y53_N1
\sig_shift_reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg_out~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg_out(4));

-- Location: LCCOMB_X52_Y53_N28
\sig_shift_reg_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg_out~5_combout\ = (\sig_Aclock_q~q\ & ((\sig_Aclock_q_not~q\ & (sig_shift_reg_out(4))) # (!\sig_Aclock_q_not~q\ & ((\dut|altsyncram_component|auto_generated|q_a\(5)))))) # (!\sig_Aclock_q~q\ & (((sig_shift_reg_out(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_Aclock_q~q\,
	datab => \sig_Aclock_q_not~q\,
	datac => sig_shift_reg_out(4),
	datad => \dut|altsyncram_component|auto_generated|q_a\(5),
	combout => \sig_shift_reg_out~5_combout\);

-- Location: FF_X52_Y53_N29
\sig_shift_reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg_out~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg_out(5));

-- Location: LCCOMB_X52_Y53_N6
\sig_shift_reg_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg_out~6_combout\ = (\sig_Aclock_q~q\ & ((\sig_Aclock_q_not~q\ & (sig_shift_reg_out(5))) # (!\sig_Aclock_q_not~q\ & ((\dut|altsyncram_component|auto_generated|q_a\(6)))))) # (!\sig_Aclock_q~q\ & (sig_shift_reg_out(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_Aclock_q~q\,
	datab => sig_shift_reg_out(5),
	datac => \sig_Aclock_q_not~q\,
	datad => \dut|altsyncram_component|auto_generated|q_a\(6),
	combout => \sig_shift_reg_out~6_combout\);

-- Location: FF_X52_Y53_N7
\sig_shift_reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg_out~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg_out(6));

-- Location: LCCOMB_X52_Y53_N24
\sig_shift_reg_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg_out~7_combout\ = (\sig_Aclock_q_not~q\ & (((sig_shift_reg_out(6))))) # (!\sig_Aclock_q_not~q\ & ((\sig_Aclock_q~q\ & (\dut|altsyncram_component|auto_generated|q_a\(7))) # (!\sig_Aclock_q~q\ & ((sig_shift_reg_out(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|altsyncram_component|auto_generated|q_a\(7),
	datab => \sig_Aclock_q_not~q\,
	datac => \sig_Aclock_q~q\,
	datad => sig_shift_reg_out(6),
	combout => \sig_shift_reg_out~7_combout\);

-- Location: FF_X52_Y53_N25
\sig_shift_reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg_out~7_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg_out(7));

-- Location: LCCOMB_X52_Y53_N4
\tim_pulse~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tim_pulse~0_combout\ = (sig_shift_reg_out(4) & !sig_shift_reg_out(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_reg_out(4),
	datac => sig_shift_reg_out(3),
	combout => \tim_pulse~0_combout\);

-- Location: FF_X52_Y53_N5
sig_Timing_Pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tim_pulse~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_Timing_Pulse~q\);

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

ww_shift_reg_out(0) <= \shift_reg_out[0]~output_o\;

ww_shift_reg_out(1) <= \shift_reg_out[1]~output_o\;

ww_shift_reg_out(2) <= \shift_reg_out[2]~output_o\;

ww_shift_reg_out(3) <= \shift_reg_out[3]~output_o\;

ww_shift_reg_out(4) <= \shift_reg_out[4]~output_o\;

ww_shift_reg_out(5) <= \shift_reg_out[5]~output_o\;

ww_shift_reg_out(6) <= \shift_reg_out[6]~output_o\;

ww_shift_reg_out(7) <= \shift_reg_out[7]~output_o\;

ww_Araising <= \Araising~output_o\;

ww_q_rom_out(0) <= \q_rom_out[0]~output_o\;

ww_q_rom_out(1) <= \q_rom_out[1]~output_o\;

ww_q_rom_out(2) <= \q_rom_out[2]~output_o\;

ww_q_rom_out(3) <= \q_rom_out[3]~output_o\;

ww_q_rom_out(4) <= \q_rom_out[4]~output_o\;

ww_q_rom_out(5) <= \q_rom_out[5]~output_o\;

ww_q_rom_out(6) <= \q_rom_out[6]~output_o\;

ww_q_rom_out(7) <= \q_rom_out[7]~output_o\;

ww_Timing_Pulse <= \Timing_Pulse~output_o\;

ww_Address_cnt(0) <= \Address_cnt[0]~output_o\;

ww_Address_cnt(1) <= \Address_cnt[1]~output_o\;

ww_Address_cnt(2) <= \Address_cnt[2]~output_o\;

ww_Address_cnt(3) <= \Address_cnt[3]~output_o\;

ww_Address_cnt(4) <= \Address_cnt[4]~output_o\;

ww_Address_cnt(5) <= \Address_cnt[5]~output_o\;
END structure;


