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

-- DATE "05/15/2023 13:17:09"

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

ENTITY 	Led_Max_10 IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	led_0 : OUT std_logic;
	led_1 : OUT std_logic;
	led_2 : OUT std_logic;
	led_3 : OUT std_logic;
	led_0_monitor : OUT std_logic;
	led_1_monitor : OUT std_logic;
	led_2_monitor : OUT std_logic;
	led_3_monitor : OUT std_logic
	);
END Led_Max_10;

-- Design Ports Information
-- led_0	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_1	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_2	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_3	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_0_monitor	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_1_monitor	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_2_monitor	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_3_monitor	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- resetn	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sysclk	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Led_Max_10 IS
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
SIGNAL ww_led_0 : std_logic;
SIGNAL ww_led_1 : std_logic;
SIGNAL ww_led_2 : std_logic;
SIGNAL ww_led_3 : std_logic;
SIGNAL ww_led_0_monitor : std_logic;
SIGNAL ww_led_1_monitor : std_logic;
SIGNAL ww_led_2_monitor : std_logic;
SIGNAL ww_led_3_monitor : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led_0~output_o\ : std_logic;
SIGNAL \led_1~output_o\ : std_logic;
SIGNAL \led_2~output_o\ : std_logic;
SIGNAL \led_3~output_o\ : std_logic;
SIGNAL \led_0_monitor~output_o\ : std_logic;
SIGNAL \led_1_monitor~output_o\ : std_logic;
SIGNAL \led_2_monitor~output_o\ : std_logic;
SIGNAL \led_3_monitor~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \LED.s1~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \sig_counter~5_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \sig_counter~4_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \sig_counter~3_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \sig_counter~2_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \sig_counter~1_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \sig_counter~0_combout\ : std_logic;
SIGNAL \LED.s1~0_combout\ : std_logic;
SIGNAL \LED.s1~q\ : std_logic;
SIGNAL \LED.s2~feeder_combout\ : std_logic;
SIGNAL \LED.s2~q\ : std_logic;
SIGNAL \LED.s3~feeder_combout\ : std_logic;
SIGNAL \LED.s3~q\ : std_logic;
SIGNAL \LED.s0~0_combout\ : std_logic;
SIGNAL \LED.s0~q\ : std_logic;
SIGNAL \sig_led0~1_combout\ : std_logic;
SIGNAL \sig_led0~2_combout\ : std_logic;
SIGNAL \sig_led0~q\ : std_logic;
SIGNAL \sig_led1~0_combout\ : std_logic;
SIGNAL \sig_led1~q\ : std_logic;
SIGNAL \sig_led2~0_combout\ : std_logic;
SIGNAL \sig_led2~q\ : std_logic;
SIGNAL \sig_led3~0_combout\ : std_logic;
SIGNAL \sig_led3~q\ : std_logic;
SIGNAL sig_counter : std_logic_vector(32 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
led_0 <= ww_led_0;
led_1 <= ww_led_1;
led_2 <= ww_led_2;
led_3 <= ww_led_3;
led_0_monitor <= ww_led_0_monitor;
led_1_monitor <= ww_led_1_monitor;
led_2_monitor <= ww_led_2_monitor;
led_3_monitor <= ww_led_3_monitor;
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

-- Location: IOOBUF_X56_Y0_N30
\led_0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_led0~q\,
	devoe => ww_devoe,
	o => \led_0~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\led_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_led1~q\,
	devoe => ww_devoe,
	o => \led_1~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\led_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_led2~q\,
	devoe => ww_devoe,
	o => \led_2~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\led_3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_led3~q\,
	devoe => ww_devoe,
	o => \led_3~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\led_0_monitor~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_led0~q\,
	devoe => ww_devoe,
	o => \led_0_monitor~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\led_1_monitor~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_led1~q\,
	devoe => ww_devoe,
	o => \led_1_monitor~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\led_2_monitor~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_led2~q\,
	devoe => ww_devoe,
	o => \led_2_monitor~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\led_3_monitor~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_led3~q\,
	devoe => ww_devoe,
	o => \led_3_monitor~output_o\);

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

-- Location: LCCOMB_X45_Y16_N0
\LED.s1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED.s1~1_combout\ = !\LED.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED.s0~q\,
	combout => \LED.s1~1_combout\);

-- Location: LCCOMB_X46_Y17_N16
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = sig_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(sig_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X46_Y17_N18
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (sig_counter(1) & (!\Add0~1\)) # (!sig_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!sig_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

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

-- Location: FF_X46_Y17_N19
\sig_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(1));

-- Location: LCCOMB_X46_Y17_N20
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (sig_counter(2) & (\Add0~3\ $ (GND))) # (!sig_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((sig_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X46_Y17_N21
\sig_counter[2]\ : dffeas
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
	q => sig_counter(2));

-- Location: LCCOMB_X46_Y17_N22
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (sig_counter(3) & (!\Add0~5\)) # (!sig_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!sig_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X46_Y17_N23
\sig_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(3));

-- Location: LCCOMB_X46_Y17_N24
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (sig_counter(4) & (\Add0~7\ $ (GND))) # (!sig_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((sig_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X46_Y17_N25
\sig_counter[4]\ : dffeas
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
	q => sig_counter(4));

-- Location: LCCOMB_X46_Y17_N26
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (sig_counter(5) & (!\Add0~9\)) # (!sig_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!sig_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X46_Y17_N27
\sig_counter[5]\ : dffeas
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
	q => sig_counter(5));

-- Location: LCCOMB_X46_Y17_N28
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (sig_counter(6) & (\Add0~11\ $ (GND))) # (!sig_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((sig_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X46_Y17_N29
\sig_counter[6]\ : dffeas
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
	q => sig_counter(6));

-- Location: LCCOMB_X46_Y17_N30
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (sig_counter(7) & (!\Add0~13\)) # (!sig_counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!sig_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X45_Y16_N4
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (sig_counter(10)) # ((sig_counter(11)) # ((sig_counter(9)) # (!sig_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(10),
	datab => sig_counter(11),
	datac => sig_counter(12),
	datad => sig_counter(9),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X46_Y17_N14
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (sig_counter(2)) # ((sig_counter(1)) # ((sig_counter(3)) # (sig_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(2),
	datab => sig_counter(1),
	datac => sig_counter(3),
	datad => sig_counter(4),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X45_Y16_N16
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (((sig_counter(16)) # (!sig_counter(13))) # (!sig_counter(15))) # (!sig_counter(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(14),
	datab => sig_counter(15),
	datac => sig_counter(16),
	datad => sig_counter(13),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X46_Y17_N12
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (sig_counter(8)) # ((sig_counter(6)) # ((sig_counter(5)) # (!sig_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(8),
	datab => sig_counter(6),
	datac => sig_counter(5),
	datad => sig_counter(7),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X46_Y17_N0
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\) # ((\Equal0~8_combout\) # ((\Equal0~5_combout\) # (\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X46_Y17_N2
\sig_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_counter~5_combout\ = (\Add0~14_combout\ & ((\Equal0~4_combout\) # ((sig_counter(0)) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Equal0~4_combout\,
	datac => sig_counter(0),
	datad => \Equal0~9_combout\,
	combout => \sig_counter~5_combout\);

-- Location: FF_X46_Y17_N3
\sig_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter~5_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(7));

-- Location: LCCOMB_X46_Y16_N0
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (sig_counter(8) & (\Add0~15\ $ (GND))) # (!sig_counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((sig_counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X46_Y16_N1
\sig_counter[8]\ : dffeas
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
	q => sig_counter(8));

-- Location: LCCOMB_X46_Y16_N2
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (sig_counter(9) & (!\Add0~17\)) # (!sig_counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!sig_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X46_Y16_N3
\sig_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(9));

-- Location: LCCOMB_X46_Y16_N4
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (sig_counter(10) & (\Add0~19\ $ (GND))) # (!sig_counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((sig_counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X46_Y16_N5
\sig_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(10));

-- Location: LCCOMB_X46_Y16_N6
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (sig_counter(11) & (!\Add0~21\)) # (!sig_counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!sig_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X46_Y16_N7
\sig_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(11));

-- Location: LCCOMB_X46_Y16_N8
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (sig_counter(12) & (\Add0~23\ $ (GND))) # (!sig_counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((sig_counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X45_Y16_N26
\sig_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_counter~4_combout\ = (\Add0~24_combout\ & ((sig_counter(0)) # ((\Equal0~4_combout\) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(0),
	datab => \Equal0~4_combout\,
	datac => \Add0~24_combout\,
	datad => \Equal0~9_combout\,
	combout => \sig_counter~4_combout\);

-- Location: FF_X45_Y16_N27
\sig_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter~4_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(12));

-- Location: LCCOMB_X46_Y16_N10
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (sig_counter(13) & (!\Add0~25\)) # (!sig_counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!sig_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X45_Y16_N6
\sig_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_counter~3_combout\ = (\Add0~26_combout\ & ((sig_counter(0)) # ((\Equal0~4_combout\) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(0),
	datab => \Equal0~4_combout\,
	datac => \Add0~26_combout\,
	datad => \Equal0~9_combout\,
	combout => \sig_counter~3_combout\);

-- Location: FF_X45_Y16_N7
\sig_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter~3_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(13));

-- Location: LCCOMB_X46_Y16_N12
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (sig_counter(14) & (\Add0~27\ $ (GND))) # (!sig_counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((sig_counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X45_Y16_N12
\sig_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_counter~2_combout\ = (\Add0~28_combout\ & ((sig_counter(0)) # ((\Equal0~4_combout\) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(0),
	datab => \Equal0~4_combout\,
	datac => \Add0~28_combout\,
	datad => \Equal0~9_combout\,
	combout => \sig_counter~2_combout\);

-- Location: FF_X45_Y16_N13
\sig_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter~2_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(14));

-- Location: LCCOMB_X46_Y16_N14
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (sig_counter(15) & (!\Add0~29\)) # (!sig_counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!sig_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X45_Y16_N2
\sig_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_counter~1_combout\ = (\Add0~30_combout\ & ((sig_counter(0)) # ((\Equal0~4_combout\) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(0),
	datab => \Equal0~4_combout\,
	datac => \Add0~30_combout\,
	datad => \Equal0~9_combout\,
	combout => \sig_counter~1_combout\);

-- Location: FF_X45_Y16_N3
\sig_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(15));

-- Location: LCCOMB_X46_Y16_N16
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (sig_counter(16) & (\Add0~31\ $ (GND))) # (!sig_counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((sig_counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X46_Y16_N17
\sig_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(16));

-- Location: LCCOMB_X46_Y16_N18
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (sig_counter(17) & (!\Add0~33\)) # (!sig_counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!sig_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X46_Y16_N19
\sig_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(17));

-- Location: LCCOMB_X46_Y16_N20
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (sig_counter(18) & (\Add0~35\ $ (GND))) # (!sig_counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((sig_counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X46_Y16_N21
\sig_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(18));

-- Location: LCCOMB_X46_Y16_N22
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (sig_counter(19) & (!\Add0~37\)) # (!sig_counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!sig_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X46_Y16_N23
\sig_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(19));

-- Location: LCCOMB_X46_Y16_N24
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (sig_counter(20) & (\Add0~39\ $ (GND))) # (!sig_counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((sig_counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X46_Y16_N25
\sig_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(20));

-- Location: LCCOMB_X46_Y16_N26
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (sig_counter(21) & (!\Add0~41\)) # (!sig_counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!sig_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X46_Y16_N27
\sig_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(21));

-- Location: LCCOMB_X46_Y16_N28
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (sig_counter(22) & (\Add0~43\ $ (GND))) # (!sig_counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((sig_counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X46_Y16_N29
\sig_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(22));

-- Location: LCCOMB_X46_Y16_N30
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (sig_counter(23) & (!\Add0~45\)) # (!sig_counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!sig_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X46_Y16_N31
\sig_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(23));

-- Location: LCCOMB_X46_Y15_N0
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (sig_counter(24) & (\Add0~47\ $ (GND))) # (!sig_counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((sig_counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X46_Y15_N1
\sig_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(24));

-- Location: LCCOMB_X46_Y15_N2
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (sig_counter(25) & (!\Add0~49\)) # (!sig_counter(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!sig_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X46_Y15_N3
\sig_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(25));

-- Location: LCCOMB_X46_Y15_N4
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (sig_counter(26) & (\Add0~51\ $ (GND))) # (!sig_counter(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((sig_counter(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X46_Y15_N5
\sig_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(26));

-- Location: LCCOMB_X46_Y15_N6
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (sig_counter(27) & (!\Add0~53\)) # (!sig_counter(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!sig_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X46_Y15_N7
\sig_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(27));

-- Location: LCCOMB_X46_Y15_N8
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (sig_counter(28) & (\Add0~55\ $ (GND))) # (!sig_counter(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((sig_counter(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X46_Y15_N9
\sig_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(28));

-- Location: LCCOMB_X46_Y15_N10
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (sig_counter(29) & (!\Add0~57\)) # (!sig_counter(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!sig_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X46_Y15_N11
\sig_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(29));

-- Location: LCCOMB_X46_Y15_N12
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (sig_counter(30) & (\Add0~59\ $ (GND))) # (!sig_counter(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((sig_counter(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X46_Y15_N13
\sig_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(30));

-- Location: LCCOMB_X46_Y15_N14
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (sig_counter(31) & (!\Add0~61\)) # (!sig_counter(31) & ((\Add0~61\) # (GND)))
-- \Add0~63\ = CARRY((!\Add0~61\) # (!sig_counter(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(31),
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~62_combout\,
	cout => \Add0~63\);

-- Location: FF_X46_Y15_N15
\sig_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(31));

-- Location: LCCOMB_X46_Y15_N16
\Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = \Add0~63\ $ (!sig_counter(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_counter(32),
	cin => \Add0~63\,
	combout => \Add0~64_combout\);

-- Location: FF_X46_Y15_N17
\sig_counter[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~64_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(32));

-- Location: LCCOMB_X46_Y15_N26
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (sig_counter(30)) # ((sig_counter(32)) # ((sig_counter(31)) # (sig_counter(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(30),
	datab => sig_counter(32),
	datac => sig_counter(31),
	datad => sig_counter(29),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y16_N24
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (sig_counter(19)) # ((sig_counter(20)) # ((sig_counter(18)) # (sig_counter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(19),
	datab => sig_counter(20),
	datac => sig_counter(18),
	datad => sig_counter(17),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X46_Y15_N22
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (sig_counter(23)) # ((sig_counter(24)) # ((sig_counter(21)) # (sig_counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(23),
	datab => sig_counter(24),
	datac => sig_counter(21),
	datad => sig_counter(22),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X46_Y15_N28
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (sig_counter(27)) # ((sig_counter(28)) # ((sig_counter(26)) # (sig_counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(27),
	datab => sig_counter(28),
	datac => sig_counter(26),
	datad => sig_counter(25),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X46_Y15_N24
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\) # ((\Equal0~3_combout\) # ((\Equal0~2_combout\) # (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X46_Y17_N8
\sig_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_counter~0_combout\ = (\Add0~0_combout\ & ((\Equal0~4_combout\) # ((sig_counter(0)) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Equal0~4_combout\,
	datac => sig_counter(0),
	datad => \Equal0~9_combout\,
	combout => \sig_counter~0_combout\);

-- Location: FF_X46_Y17_N9
\sig_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(0));

-- Location: LCCOMB_X45_Y16_N30
\LED.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED.s1~0_combout\ = (!sig_counter(0) & (\resetn~input_o\ & (!\Equal0~4_combout\ & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(0),
	datab => \resetn~input_o\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \LED.s1~0_combout\);

-- Location: FF_X45_Y16_N1
\LED.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \LED.s1~1_combout\,
	ena => \LED.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED.s1~q\);

-- Location: LCCOMB_X45_Y16_N18
\LED.s2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED.s2~feeder_combout\ = \LED.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LED.s1~q\,
	combout => \LED.s2~feeder_combout\);

-- Location: FF_X45_Y16_N19
\LED.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \LED.s2~feeder_combout\,
	ena => \LED.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED.s2~q\);

-- Location: LCCOMB_X45_Y16_N20
\LED.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED.s3~feeder_combout\ = \LED.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LED.s2~q\,
	combout => \LED.s3~feeder_combout\);

-- Location: FF_X45_Y16_N21
\LED.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \LED.s3~feeder_combout\,
	ena => \LED.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED.s3~q\);

-- Location: LCCOMB_X45_Y16_N22
\LED.s0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED.s0~0_combout\ = !\LED.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LED.s3~q\,
	combout => \LED.s0~0_combout\);

-- Location: FF_X45_Y16_N23
\LED.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \LED.s0~0_combout\,
	ena => \LED.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED.s0~q\);

-- Location: LCCOMB_X46_Y17_N10
\sig_led0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_led0~1_combout\ = (\resetn~input_o\ & ((\Equal0~4_combout\) # ((sig_counter(0)) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \Equal0~4_combout\,
	datac => sig_counter(0),
	datad => \Equal0~9_combout\,
	combout => \sig_led0~1_combout\);

-- Location: LCCOMB_X45_Y16_N8
\sig_led0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_led0~2_combout\ = (\LED.s0~q\ & (((\sig_led0~q\)))) # (!\LED.s0~q\ & ((\sig_led0~1_combout\) # ((!\resetn~input_o\ & \sig_led0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED.s0~q\,
	datab => \resetn~input_o\,
	datac => \sig_led0~q\,
	datad => \sig_led0~1_combout\,
	combout => \sig_led0~2_combout\);

-- Location: FF_X45_Y16_N9
sig_led0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_led0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_led0~q\);

-- Location: LCCOMB_X45_Y16_N10
\sig_led1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_led1~0_combout\ = (\LED.s1~q\ & ((\sig_led0~1_combout\) # ((!\resetn~input_o\ & \sig_led1~q\)))) # (!\LED.s1~q\ & (((\sig_led1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \LED.s1~q\,
	datac => \sig_led1~q\,
	datad => \sig_led0~1_combout\,
	combout => \sig_led1~0_combout\);

-- Location: FF_X45_Y16_N11
sig_led1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_led1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_led1~q\);

-- Location: LCCOMB_X45_Y16_N28
\sig_led2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_led2~0_combout\ = (\LED.s2~q\ & ((\sig_led0~1_combout\) # ((!\resetn~input_o\ & \sig_led2~q\)))) # (!\LED.s2~q\ & (((\sig_led2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \LED.s2~q\,
	datac => \sig_led2~q\,
	datad => \sig_led0~1_combout\,
	combout => \sig_led2~0_combout\);

-- Location: FF_X45_Y16_N29
sig_led2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_led2~q\);

-- Location: LCCOMB_X45_Y16_N14
\sig_led3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_led3~0_combout\ = (\LED.s3~q\ & ((\sig_led0~1_combout\) # ((!\resetn~input_o\ & \sig_led3~q\)))) # (!\LED.s3~q\ & (((\sig_led3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \LED.s3~q\,
	datac => \sig_led3~q\,
	datad => \sig_led0~1_combout\,
	combout => \sig_led3~0_combout\);

-- Location: FF_X45_Y16_N15
sig_led3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_led3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_led3~q\);

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

ww_led_0 <= \led_0~output_o\;

ww_led_1 <= \led_1~output_o\;

ww_led_2 <= \led_2~output_o\;

ww_led_3 <= \led_3~output_o\;

ww_led_0_monitor <= \led_0_monitor~output_o\;

ww_led_1_monitor <= \led_1_monitor~output_o\;

ww_led_2_monitor <= \led_2_monitor~output_o\;

ww_led_3_monitor <= \led_3_monitor~output_o\;
END structure;


