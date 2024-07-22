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

-- DATE "07/10/2024 11:50:45"

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
	crc8bit_out : OUT std_logic;
	correlation : OUT std_logic_vector(4 DOWNTO 0)
	);
END CRC8BIT;

-- Design Ports Information
-- crc8bit_out	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_correlation : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \crc8bit_out~output_o\ : std_logic;
SIGNAL \correlation[0]~output_o\ : std_logic;
SIGNAL \correlation[1]~output_o\ : std_logic;
SIGNAL \correlation[2]~output_o\ : std_logic;
SIGNAL \correlation[3]~output_o\ : std_logic;
SIGNAL \correlation[4]~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \main_clk~input_o\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_cut_main_clk~q\ : std_logic;
SIGNAL \sig_cut_main_clk_not~feeder_combout\ : std_logic;
SIGNAL \sig_cut_main_clk_not~q\ : std_logic;
SIGNAL \sig_correlation[0]~5_combout\ : std_logic;
SIGNAL \state_xor.s4~q\ : std_logic;
SIGNAL \state_xor.s5~feeder_combout\ : std_logic;
SIGNAL \state_xor.s5~q\ : std_logic;
SIGNAL \state_xor.s6~feeder_combout\ : std_logic;
SIGNAL \state_xor.s6~q\ : std_logic;
SIGNAL \state_xor.s7~feeder_combout\ : std_logic;
SIGNAL \state_xor.s7~q\ : std_logic;
SIGNAL \state_xor.s8~feeder_combout\ : std_logic;
SIGNAL \state_xor.s8~q\ : std_logic;
SIGNAL \state_xor.s9~feeder_combout\ : std_logic;
SIGNAL \state_xor.s9~q\ : std_logic;
SIGNAL \state_xor.s10~q\ : std_logic;
SIGNAL \state_xor.s11~feeder_combout\ : std_logic;
SIGNAL \state_xor.s11~q\ : std_logic;
SIGNAL \state_xor.s12~feeder_combout\ : std_logic;
SIGNAL \state_xor.s12~q\ : std_logic;
SIGNAL \state_xor.s13~q\ : std_logic;
SIGNAL \state_xor.s14~feeder_combout\ : std_logic;
SIGNAL \state_xor.s14~q\ : std_logic;
SIGNAL \state_xor.s15~feeder_combout\ : std_logic;
SIGNAL \state_xor.s15~q\ : std_logic;
SIGNAL \state_xor.s16~q\ : std_logic;
SIGNAL \state_xor.s17~feeder_combout\ : std_logic;
SIGNAL \state_xor.s17~q\ : std_logic;
SIGNAL \state_xor.s18~q\ : std_logic;
SIGNAL \state_xor.s19~q\ : std_logic;
SIGNAL \state_xor.s20~feeder_combout\ : std_logic;
SIGNAL \state_xor.s20~q\ : std_logic;
SIGNAL \state_xor.s21~q\ : std_logic;
SIGNAL \state_xor.s22~q\ : std_logic;
SIGNAL \state_xor.s23~feeder_combout\ : std_logic;
SIGNAL \state_xor.s23~q\ : std_logic;
SIGNAL \state_xor.s24~q\ : std_logic;
SIGNAL \state_xor.s25~q\ : std_logic;
SIGNAL \state_xor.s26~feeder_combout\ : std_logic;
SIGNAL \state_xor.s26~q\ : std_logic;
SIGNAL \state_xor.s27~q\ : std_logic;
SIGNAL \state_xor.s28~feeder_combout\ : std_logic;
SIGNAL \state_xor.s28~q\ : std_logic;
SIGNAL \state_xor.s29~feeder_combout\ : std_logic;
SIGNAL \state_xor.s29~q\ : std_logic;
SIGNAL \state_xor.s30~feeder_combout\ : std_logic;
SIGNAL \state_xor.s30~q\ : std_logic;
SIGNAL \state_xor.s31~feeder_combout\ : std_logic;
SIGNAL \state_xor.s31~q\ : std_logic;
SIGNAL \state_xor.s32~feeder_combout\ : std_logic;
SIGNAL \state_xor.s32~q\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \flag~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state_xor.s0~q\ : std_logic;
SIGNAL \state_xor~70_combout\ : std_logic;
SIGNAL \state_xor.s1~q\ : std_logic;
SIGNAL \state_xor.s2~feeder_combout\ : std_logic;
SIGNAL \state_xor.s2~q\ : std_logic;
SIGNAL \state_xor.s3~feeder_combout\ : std_logic;
SIGNAL \state_xor.s3~q\ : std_logic;
SIGNAL \nrzl_in~input_o\ : std_logic;
SIGNAL \sig_main_clk_f~0_combout\ : std_logic;
SIGNAL \sig_sf_reg[5]~feeder_combout\ : std_logic;
SIGNAL \sig_correlation[0]~41_combout\ : std_logic;
SIGNAL \sig_correlation[0]~42_combout\ : std_logic;
SIGNAL \sig_correlation[0]~39_combout\ : std_logic;
SIGNAL \sig_correlation[0]~10_combout\ : std_logic;
SIGNAL \sig_correlation[0]~40_combout\ : std_logic;
SIGNAL \sig_correlation[0]~43_combout\ : std_logic;
SIGNAL \sig_correlation[0]~7_combout\ : std_logic;
SIGNAL \sig_correlation[0]~8_combout\ : std_logic;
SIGNAL \sig_correlation[0]~11_combout\ : std_logic;
SIGNAL \sig_sf_reg[18]~feeder_combout\ : std_logic;
SIGNAL \sig_correlation[0]~35_combout\ : std_logic;
SIGNAL \sig_correlation[0]~36_combout\ : std_logic;
SIGNAL \sig_correlation[0]~18_combout\ : std_logic;
SIGNAL \sig_correlation[0]~19_combout\ : std_logic;
SIGNAL \sig_correlation[0]~37_combout\ : std_logic;
SIGNAL \sig_correlation[0]~21_combout\ : std_logic;
SIGNAL \sig_correlation[0]~20_combout\ : std_logic;
SIGNAL \sig_correlation[0]~23_combout\ : std_logic;
SIGNAL \sig_sf_reg[23]~feeder_combout\ : std_logic;
SIGNAL \sig_correlation[0]~22_combout\ : std_logic;
SIGNAL \sig_correlation[0]~24_combout\ : std_logic;
SIGNAL \sig_correlation[0]~27_combout\ : std_logic;
SIGNAL \sig_correlation[0]~25_combout\ : std_logic;
SIGNAL \sig_correlation[0]~26_combout\ : std_logic;
SIGNAL \sig_sf_reg[29]~feeder_combout\ : std_logic;
SIGNAL \sig_correlation[0]~28_combout\ : std_logic;
SIGNAL \sig_correlation[0]~29_combout\ : std_logic;
SIGNAL \sig_sf_reg[30]~feeder_combout\ : std_logic;
SIGNAL \sig_correlation[0]~30_combout\ : std_logic;
SIGNAL \sig_correlation[0]~31_combout\ : std_logic;
SIGNAL \sig_correlation[0]~32_combout\ : std_logic;
SIGNAL \sig_correlation[0]~33_combout\ : std_logic;
SIGNAL \sig_correlation[0]~34_combout\ : std_logic;
SIGNAL \sig_correlation[0]~13_combout\ : std_logic;
SIGNAL \sig_correlation[0]~14_combout\ : std_logic;
SIGNAL \sig_correlation[0]~12_combout\ : std_logic;
SIGNAL \sig_correlation[0]~15_combout\ : std_logic;
SIGNAL \sig_correlation[0]~16_combout\ : std_logic;
SIGNAL \sig_correlation[0]~17_combout\ : std_logic;
SIGNAL \sig_correlation[0]~38_combout\ : std_logic;
SIGNAL \sig_correlation[0]~9_combout\ : std_logic;
SIGNAL \sig_correlation[0]~44_combout\ : std_logic;
SIGNAL \sig_correlation[0]~45_combout\ : std_logic;
SIGNAL \sig_correlation[0]~46_combout\ : std_logic;
SIGNAL \sig_correlation[0]~6\ : std_logic;
SIGNAL \sig_correlation[1]~47_combout\ : std_logic;
SIGNAL \sig_correlation[1]~48\ : std_logic;
SIGNAL \sig_correlation[2]~49_combout\ : std_logic;
SIGNAL \sig_correlation[2]~50\ : std_logic;
SIGNAL \sig_correlation[3]~51_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \state_crc.s4~feeder_combout\ : std_logic;
SIGNAL \sig_main_clk_r~combout\ : std_logic;
SIGNAL \state_crc.s4~q\ : std_logic;
SIGNAL \sig_correlation[3]~52\ : std_logic;
SIGNAL \sig_correlation[4]~53_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \state_crc.s0~q\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \state_crc.s1~q\ : std_logic;
SIGNAL \crc8bit_operation:cnt[7]~0_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[4]~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[0]~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[1]~q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[2]~q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[5]~q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \cnt~3_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[7]~q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[6]~q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \crc8bit_operation:cnt[3]~q\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \state_crc.s2~q\ : std_logic;
SIGNAL \state_crc.s3~feeder_combout\ : std_logic;
SIGNAL \state_crc.s3~q\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector49~1_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \crc8bit_out~0_combout\ : std_logic;
SIGNAL \crc8bit_out~1_combout\ : std_logic;
SIGNAL \crc8bit_out~reg0_q\ : std_logic;
SIGNAL sig_correlation : std_logic_vector(4 DOWNTO 0);
SIGNAL crc_reg8bit : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_sf_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_crc8bit_out~reg0_q\ : std_logic;
SIGNAL ALT_INV_sig_correlation : std_logic_vector(4 DOWNTO 0);

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
correlation <= ww_correlation;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\ALT_INV_crc8bit_out~reg0_q\ <= NOT \crc8bit_out~reg0_q\;
ALT_INV_sig_correlation(4) <= NOT sig_correlation(4);
ALT_INV_sig_correlation(3) <= NOT sig_correlation(3);
ALT_INV_sig_correlation(2) <= NOT sig_correlation(2);
ALT_INV_sig_correlation(1) <= NOT sig_correlation(1);
ALT_INV_sig_correlation(0) <= NOT sig_correlation(0);
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

-- Location: IOOBUF_X36_Y39_N30
\correlation[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_sig_correlation(0),
	devoe => ww_devoe,
	o => \correlation[0]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\correlation[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_sig_correlation(1),
	devoe => ww_devoe,
	o => \correlation[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\correlation[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_sig_correlation(2),
	devoe => ww_devoe,
	o => \correlation[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\correlation[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_sig_correlation(3),
	devoe => ww_devoe,
	o => \correlation[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\correlation[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_sig_correlation(4),
	devoe => ww_devoe,
	o => \correlation[4]~output_o\);

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

-- Location: LCCOMB_X51_Y41_N16
\cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = (\Add1~8_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add1~8_combout\,
	combout => \cnt~1_combout\);

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

-- Location: FF_X50_Y41_N3
sig_cut_main_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \main_clk~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut_main_clk~q\);

-- Location: LCCOMB_X49_Y41_N24
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

-- Location: FF_X49_Y41_N25
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

-- Location: LCCOMB_X46_Y41_N10
\sig_correlation[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~5_combout\ = !sig_correlation(0)
-- \sig_correlation[0]~6\ = CARRY(!sig_correlation(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_correlation(0),
	combout => \sig_correlation[0]~5_combout\,
	cout => \sig_correlation[0]~6\);

-- Location: FF_X47_Y41_N11
\state_xor.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_xor.s3~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s4~q\);

-- Location: LCCOMB_X47_Y41_N2
\state_xor.s5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s5~feeder_combout\ = \state_xor.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s4~q\,
	combout => \state_xor.s5~feeder_combout\);

-- Location: FF_X47_Y41_N3
\state_xor.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s5~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s5~q\);

-- Location: LCCOMB_X47_Y41_N18
\state_xor.s6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s6~feeder_combout\ = \state_xor.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s5~q\,
	combout => \state_xor.s6~feeder_combout\);

-- Location: FF_X47_Y41_N19
\state_xor.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s6~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s6~q\);

-- Location: LCCOMB_X47_Y41_N26
\state_xor.s7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s7~feeder_combout\ = \state_xor.s6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s6~q\,
	combout => \state_xor.s7~feeder_combout\);

-- Location: FF_X47_Y41_N27
\state_xor.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s7~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s7~q\);

-- Location: LCCOMB_X47_Y41_N24
\state_xor.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s8~feeder_combout\ = \state_xor.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s7~q\,
	combout => \state_xor.s8~feeder_combout\);

-- Location: FF_X47_Y41_N25
\state_xor.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s8~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s8~q\);

-- Location: LCCOMB_X47_Y41_N28
\state_xor.s9~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s9~feeder_combout\ = \state_xor.s8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s8~q\,
	combout => \state_xor.s9~feeder_combout\);

-- Location: FF_X47_Y41_N29
\state_xor.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s9~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s9~q\);

-- Location: FF_X49_Y40_N17
\state_xor.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_xor.s9~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s10~q\);

-- Location: LCCOMB_X49_Y40_N28
\state_xor.s11~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s11~feeder_combout\ = \state_xor.s10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s10~q\,
	combout => \state_xor.s11~feeder_combout\);

-- Location: FF_X49_Y40_N29
\state_xor.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s11~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s11~q\);

-- Location: LCCOMB_X49_Y40_N26
\state_xor.s12~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s12~feeder_combout\ = \state_xor.s11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s11~q\,
	combout => \state_xor.s12~feeder_combout\);

-- Location: FF_X49_Y40_N27
\state_xor.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s12~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s12~q\);

-- Location: FF_X49_Y40_N13
\state_xor.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_xor.s12~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s13~q\);

-- Location: LCCOMB_X49_Y40_N10
\state_xor.s14~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s14~feeder_combout\ = \state_xor.s13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s13~q\,
	combout => \state_xor.s14~feeder_combout\);

-- Location: FF_X49_Y40_N11
\state_xor.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s14~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s14~q\);

-- Location: LCCOMB_X49_Y40_N22
\state_xor.s15~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s15~feeder_combout\ = \state_xor.s14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s14~q\,
	combout => \state_xor.s15~feeder_combout\);

-- Location: FF_X49_Y40_N23
\state_xor.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s15~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s15~q\);

-- Location: FF_X49_Y40_N25
\state_xor.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_xor.s15~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s16~q\);

-- Location: LCCOMB_X46_Y40_N14
\state_xor.s17~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s17~feeder_combout\ = \state_xor.s16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s16~q\,
	combout => \state_xor.s17~feeder_combout\);

-- Location: FF_X46_Y40_N15
\state_xor.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s17~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s17~q\);

-- Location: FF_X46_Y40_N31
\state_xor.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_xor.s17~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s18~q\);

-- Location: FF_X46_Y40_N3
\state_xor.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_xor.s18~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s19~q\);

-- Location: LCCOMB_X46_Y40_N28
\state_xor.s20~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s20~feeder_combout\ = \state_xor.s19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s19~q\,
	combout => \state_xor.s20~feeder_combout\);

-- Location: FF_X46_Y40_N29
\state_xor.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s20~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s20~q\);

-- Location: FF_X46_Y40_N27
\state_xor.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_xor.s20~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s21~q\);

-- Location: FF_X46_Y40_N13
\state_xor.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_xor.s21~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s22~q\);

-- Location: LCCOMB_X46_Y40_N8
\state_xor.s23~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s23~feeder_combout\ = \state_xor.s22~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s22~q\,
	combout => \state_xor.s23~feeder_combout\);

-- Location: FF_X46_Y40_N9
\state_xor.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s23~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s23~q\);

-- Location: FF_X46_Y40_N17
\state_xor.s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_xor.s23~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s24~q\);

-- Location: FF_X47_Y40_N19
\state_xor.s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_xor.s24~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s25~q\);

-- Location: LCCOMB_X47_Y40_N2
\state_xor.s26~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s26~feeder_combout\ = \state_xor.s25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s25~q\,
	combout => \state_xor.s26~feeder_combout\);

-- Location: FF_X47_Y40_N3
\state_xor.s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s26~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s26~q\);

-- Location: FF_X47_Y40_N21
\state_xor.s27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_xor.s26~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s27~q\);

-- Location: LCCOMB_X47_Y40_N12
\state_xor.s28~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s28~feeder_combout\ = \state_xor.s27~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s27~q\,
	combout => \state_xor.s28~feeder_combout\);

-- Location: FF_X47_Y40_N13
\state_xor.s28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s28~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s28~q\);

-- Location: LCCOMB_X47_Y40_N28
\state_xor.s29~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s29~feeder_combout\ = \state_xor.s28~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s28~q\,
	combout => \state_xor.s29~feeder_combout\);

-- Location: FF_X47_Y40_N29
\state_xor.s29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s29~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s29~q\);

-- Location: LCCOMB_X47_Y40_N24
\state_xor.s30~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s30~feeder_combout\ = \state_xor.s29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s29~q\,
	combout => \state_xor.s30~feeder_combout\);

-- Location: FF_X47_Y40_N25
\state_xor.s30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s30~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s30~q\);

-- Location: LCCOMB_X47_Y40_N16
\state_xor.s31~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s31~feeder_combout\ = \state_xor.s30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s30~q\,
	combout => \state_xor.s31~feeder_combout\);

-- Location: FF_X47_Y40_N17
\state_xor.s31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s31~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s31~q\);

-- Location: LCCOMB_X47_Y40_N0
\state_xor.s32~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s32~feeder_combout\ = \state_xor.s31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s31~q\,
	combout => \state_xor.s32~feeder_combout\);

-- Location: FF_X47_Y40_N1
\state_xor.s32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s32~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s32~q\);

-- Location: LCCOMB_X49_Y41_N18
\flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = (!\state_xor.s32~q\ & ((\flag~q\) # ((\sig_cut_main_clk_not~q\ & !\sig_cut_main_clk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s32~q\,
	datab => \sig_cut_main_clk_not~q\,
	datac => \flag~q\,
	datad => \sig_cut_main_clk~q\,
	combout => \flag~0_combout\);

-- Location: FF_X49_Y41_N19
flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \flag~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag~q\);

-- Location: LCCOMB_X49_Y41_N12
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state_xor.s32~q\ & ((\state_xor.s0~q\) # (\flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_xor.s32~q\,
	datac => \state_xor.s0~q\,
	datad => \flag~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X49_Y41_N13
\state_xor.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s0~q\);

-- Location: LCCOMB_X49_Y41_N6
\state_xor~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor~70_combout\ = (!\state_xor.s0~q\ & \flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s0~q\,
	datad => \flag~q\,
	combout => \state_xor~70_combout\);

-- Location: FF_X49_Y41_N7
\state_xor.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor~70_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s1~q\);

-- Location: LCCOMB_X49_Y41_N26
\state_xor.s2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s2~feeder_combout\ = \state_xor.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s1~q\,
	combout => \state_xor.s2~feeder_combout\);

-- Location: FF_X49_Y41_N27
\state_xor.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s2~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s2~q\);

-- Location: LCCOMB_X47_Y41_N22
\state_xor.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_xor.s3~feeder_combout\ = \state_xor.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_xor.s2~q\,
	combout => \state_xor.s3~feeder_combout\);

-- Location: FF_X47_Y41_N23
\state_xor.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_xor.s3~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_xor.s3~q\);

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

-- Location: LCCOMB_X49_Y41_N28
\sig_main_clk_f~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main_clk_f~0_combout\ = (\sig_cut_main_clk_not~q\ & !\sig_cut_main_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_cut_main_clk_not~q\,
	datad => \sig_cut_main_clk~q\,
	combout => \sig_main_clk_f~0_combout\);

-- Location: FF_X49_Y41_N11
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

-- Location: FF_X49_Y41_N9
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

-- Location: FF_X47_Y41_N21
\sig_sf_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(1),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(2));

-- Location: FF_X47_Y41_N17
\sig_sf_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(2),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(3));

-- Location: FF_X47_Y41_N9
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

-- Location: LCCOMB_X47_Y41_N4
\sig_sf_reg[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[5]~feeder_combout\ = sig_sf_reg(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(4),
	combout => \sig_sf_reg[5]~feeder_combout\);

-- Location: FF_X47_Y41_N5
\sig_sf_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[5]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(5));

-- Location: LCCOMB_X47_Y41_N0
\sig_correlation[0]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~41_combout\ = (\state_xor.s5~q\ & (sig_sf_reg(4))) # (!\state_xor.s5~q\ & (((!sig_sf_reg(5) & \state_xor.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(4),
	datab => \state_xor.s5~q\,
	datac => sig_sf_reg(5),
	datad => \state_xor.s6~q\,
	combout => \sig_correlation[0]~41_combout\);

-- Location: LCCOMB_X47_Y41_N16
\sig_correlation[0]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~42_combout\ = (!\state_xor.s3~q\ & ((\state_xor.s4~q\ & ((!sig_sf_reg(3)))) # (!\state_xor.s4~q\ & (\sig_correlation[0]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s3~q\,
	datab => \sig_correlation[0]~41_combout\,
	datac => sig_sf_reg(3),
	datad => \state_xor.s4~q\,
	combout => \sig_correlation[0]~42_combout\);

-- Location: FF_X47_Y41_N1
\sig_sf_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(5),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(6));

-- Location: FF_X47_Y41_N7
\sig_sf_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(6),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(7));

-- Location: FF_X47_Y41_N31
\sig_sf_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(7),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(8));

-- Location: LCCOMB_X47_Y41_N30
\sig_correlation[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~39_combout\ = (\state_xor.s8~q\ & (!sig_sf_reg(7))) # (!\state_xor.s8~q\ & (((sig_sf_reg(8) & \state_xor.s9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s8~q\,
	datab => sig_sf_reg(7),
	datac => sig_sf_reg(8),
	datad => \state_xor.s9~q\,
	combout => \sig_correlation[0]~39_combout\);

-- Location: LCCOMB_X47_Y41_N12
\sig_correlation[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~10_combout\ = (!\state_xor.s4~q\ & (!\state_xor.s5~q\ & (!\state_xor.s3~q\ & !\state_xor.s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s4~q\,
	datab => \state_xor.s5~q\,
	datac => \state_xor.s3~q\,
	datad => \state_xor.s6~q\,
	combout => \sig_correlation[0]~10_combout\);

-- Location: LCCOMB_X47_Y41_N6
\sig_correlation[0]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~40_combout\ = (\sig_correlation[0]~10_combout\ & ((\state_xor.s7~q\ & ((sig_sf_reg(6)))) # (!\state_xor.s7~q\ & (\sig_correlation[0]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~39_combout\,
	datab => \state_xor.s7~q\,
	datac => sig_sf_reg(6),
	datad => \sig_correlation[0]~10_combout\,
	combout => \sig_correlation[0]~40_combout\);

-- Location: LCCOMB_X47_Y41_N20
\sig_correlation[0]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~43_combout\ = (\sig_correlation[0]~42_combout\) # ((\sig_correlation[0]~40_combout\) # ((\state_xor.s3~q\ & sig_sf_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s3~q\,
	datab => \sig_correlation[0]~42_combout\,
	datac => sig_sf_reg(2),
	datad => \sig_correlation[0]~40_combout\,
	combout => \sig_correlation[0]~43_combout\);

-- Location: LCCOMB_X49_Y41_N8
\sig_correlation[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~7_combout\ = (!\state_xor.s1~q\ & (\state_xor.s2~q\ & (!sig_sf_reg(1) & \state_xor.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s1~q\,
	datab => \state_xor.s2~q\,
	datac => sig_sf_reg(1),
	datad => \state_xor.s0~q\,
	combout => \sig_correlation[0]~7_combout\);

-- Location: LCCOMB_X49_Y41_N10
\sig_correlation[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~8_combout\ = (\sig_correlation[0]~7_combout\) # ((\state_xor.s1~q\ & (!sig_sf_reg(0) & \state_xor.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s1~q\,
	datab => \sig_correlation[0]~7_combout\,
	datac => sig_sf_reg(0),
	datad => \state_xor.s0~q\,
	combout => \sig_correlation[0]~8_combout\);

-- Location: LCCOMB_X47_Y41_N14
\sig_correlation[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~11_combout\ = (\sig_correlation[0]~10_combout\ & (!\state_xor.s8~q\ & (!\state_xor.s7~q\ & !\state_xor.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~10_combout\,
	datab => \state_xor.s8~q\,
	datac => \state_xor.s7~q\,
	datad => \state_xor.s9~q\,
	combout => \sig_correlation[0]~11_combout\);

-- Location: FF_X49_Y40_N1
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

-- Location: FF_X49_Y40_N5
\sig_sf_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(9),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(10));

-- Location: FF_X49_Y40_N9
\sig_sf_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(10),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(11));

-- Location: FF_X49_Y40_N15
\sig_sf_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(11),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(12));

-- Location: FF_X49_Y40_N31
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

-- Location: FF_X49_Y40_N19
\sig_sf_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(13),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(14));

-- Location: FF_X49_Y40_N7
\sig_sf_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(14),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(15));

-- Location: FF_X46_Y40_N7
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

-- Location: FF_X46_Y40_N19
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

-- Location: LCCOMB_X46_Y40_N10
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

-- Location: FF_X46_Y40_N11
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

-- Location: FF_X46_Y40_N1
\sig_sf_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(18),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(19));

-- Location: LCCOMB_X46_Y40_N4
\sig_correlation[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~35_combout\ = (\state_xor.s19~q\ & (((sig_sf_reg(18))))) # (!\state_xor.s19~q\ & (\state_xor.s20~q\ & (!sig_sf_reg(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s20~q\,
	datab => \state_xor.s19~q\,
	datac => sig_sf_reg(19),
	datad => sig_sf_reg(18),
	combout => \sig_correlation[0]~35_combout\);

-- Location: LCCOMB_X46_Y40_N18
\sig_correlation[0]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~36_combout\ = (\state_xor.s18~q\ & (!sig_sf_reg(17))) # (!\state_xor.s18~q\ & ((\sig_correlation[0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s18~q\,
	datac => sig_sf_reg(17),
	datad => \sig_correlation[0]~35_combout\,
	combout => \sig_correlation[0]~36_combout\);

-- Location: LCCOMB_X49_Y40_N2
\sig_correlation[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~18_combout\ = (!\state_xor.s13~q\ & (!\state_xor.s11~q\ & (!\state_xor.s12~q\ & !\state_xor.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s13~q\,
	datab => \state_xor.s11~q\,
	datac => \state_xor.s12~q\,
	datad => \state_xor.s10~q\,
	combout => \sig_correlation[0]~18_combout\);

-- Location: LCCOMB_X49_Y40_N20
\sig_correlation[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~19_combout\ = (!\state_xor.s14~q\ & (\sig_correlation[0]~18_combout\ & (!\state_xor.s15~q\ & !\state_xor.s16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s14~q\,
	datab => \sig_correlation[0]~18_combout\,
	datac => \state_xor.s15~q\,
	datad => \state_xor.s16~q\,
	combout => \sig_correlation[0]~19_combout\);

-- Location: LCCOMB_X46_Y40_N6
\sig_correlation[0]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~37_combout\ = (\sig_correlation[0]~19_combout\ & ((\state_xor.s17~q\ & ((sig_sf_reg(16)))) # (!\state_xor.s17~q\ & (\sig_correlation[0]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~36_combout\,
	datab => \state_xor.s17~q\,
	datac => sig_sf_reg(16),
	datad => \sig_correlation[0]~19_combout\,
	combout => \sig_correlation[0]~37_combout\);

-- Location: LCCOMB_X46_Y40_N2
\sig_correlation[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~21_combout\ = (!\state_xor.s20~q\ & !\state_xor.s19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s20~q\,
	datac => \state_xor.s19~q\,
	combout => \sig_correlation[0]~21_combout\);

-- Location: LCCOMB_X46_Y40_N30
\sig_correlation[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~20_combout\ = (!\state_xor.s17~q\ & (!\state_xor.s18~q\ & \sig_correlation[0]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_xor.s17~q\,
	datac => \state_xor.s18~q\,
	datad => \sig_correlation[0]~19_combout\,
	combout => \sig_correlation[0]~20_combout\);

-- Location: LCCOMB_X46_Y40_N16
\sig_correlation[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~23_combout\ = (!\state_xor.s21~q\ & (!\state_xor.s23~q\ & (!\state_xor.s24~q\ & !\state_xor.s22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s21~q\,
	datab => \state_xor.s23~q\,
	datac => \state_xor.s24~q\,
	datad => \state_xor.s22~q\,
	combout => \sig_correlation[0]~23_combout\);

-- Location: FF_X46_Y40_N5
\sig_sf_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(19),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(20));

-- Location: FF_X46_Y40_N23
\sig_sf_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(20),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(21));

-- Location: FF_X46_Y40_N25
\sig_sf_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(21),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(22));

-- Location: LCCOMB_X46_Y40_N20
\sig_sf_reg[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[23]~feeder_combout\ = sig_sf_reg(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(22),
	combout => \sig_sf_reg[23]~feeder_combout\);

-- Location: FF_X46_Y40_N21
\sig_sf_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[23]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(23));

-- Location: FF_X47_Y40_N9
\sig_sf_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(23),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(24));

-- Location: FF_X47_Y40_N27
\sig_sf_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(24),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(25));

-- Location: LCCOMB_X47_Y40_N8
\sig_correlation[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~22_combout\ = (\state_xor.s25~q\ & (((sig_sf_reg(24))))) # (!\state_xor.s25~q\ & (sig_sf_reg(25) & (\state_xor.s26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(25),
	datab => \state_xor.s26~q\,
	datac => sig_sf_reg(24),
	datad => \state_xor.s25~q\,
	combout => \sig_correlation[0]~22_combout\);

-- Location: LCCOMB_X46_Y40_N22
\sig_correlation[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~24_combout\ = (\state_xor.s21~q\ & ((sig_sf_reg(20)) # ((\sig_correlation[0]~23_combout\ & \sig_correlation[0]~22_combout\)))) # (!\state_xor.s21~q\ & (\sig_correlation[0]~23_combout\ & ((\sig_correlation[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s21~q\,
	datab => \sig_correlation[0]~23_combout\,
	datac => sig_sf_reg(20),
	datad => \sig_correlation[0]~22_combout\,
	combout => \sig_correlation[0]~24_combout\);

-- Location: LCCOMB_X46_Y40_N0
\sig_correlation[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~27_combout\ = (!\state_xor.s26~q\ & (\sig_correlation[0]~23_combout\ & !\state_xor.s25~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s26~q\,
	datab => \sig_correlation[0]~23_combout\,
	datad => \state_xor.s25~q\,
	combout => \sig_correlation[0]~27_combout\);

-- Location: LCCOMB_X46_Y40_N24
\sig_correlation[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~25_combout\ = (\state_xor.s23~q\ & (((!sig_sf_reg(22))))) # (!\state_xor.s23~q\ & (!sig_sf_reg(23) & ((\state_xor.s24~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s23~q\,
	datab => sig_sf_reg(23),
	datac => sig_sf_reg(22),
	datad => \state_xor.s24~q\,
	combout => \sig_correlation[0]~25_combout\);

-- Location: LCCOMB_X46_Y40_N12
\sig_correlation[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~26_combout\ = (!\state_xor.s21~q\ & ((\state_xor.s22~q\ & ((sig_sf_reg(21)))) # (!\state_xor.s22~q\ & (\sig_correlation[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~25_combout\,
	datab => \state_xor.s21~q\,
	datac => \state_xor.s22~q\,
	datad => sig_sf_reg(21),
	combout => \sig_correlation[0]~26_combout\);

-- Location: FF_X47_Y40_N5
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

-- Location: FF_X47_Y40_N31
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

-- Location: FF_X47_Y40_N7
\sig_sf_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_sf_reg(27),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(28));

-- Location: LCCOMB_X47_Y40_N10
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

-- Location: FF_X47_Y40_N11
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

-- Location: LCCOMB_X47_Y40_N6
\sig_correlation[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~28_combout\ = (\state_xor.s29~q\ & (((sig_sf_reg(28))))) # (!\state_xor.s29~q\ & (sig_sf_reg(29) & ((\state_xor.s30~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(29),
	datab => \state_xor.s29~q\,
	datac => sig_sf_reg(28),
	datad => \state_xor.s30~q\,
	combout => \sig_correlation[0]~28_combout\);

-- Location: LCCOMB_X47_Y40_N30
\sig_correlation[0]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~29_combout\ = (!\state_xor.s27~q\ & ((\state_xor.s28~q\ & ((sig_sf_reg(27)))) # (!\state_xor.s28~q\ & (\sig_correlation[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s28~q\,
	datab => \sig_correlation[0]~28_combout\,
	datac => sig_sf_reg(27),
	datad => \state_xor.s27~q\,
	combout => \sig_correlation[0]~29_combout\);

-- Location: LCCOMB_X47_Y40_N14
\sig_sf_reg[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_sf_reg[30]~feeder_combout\ = sig_sf_reg(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_sf_reg(29),
	combout => \sig_sf_reg[30]~feeder_combout\);

-- Location: FF_X47_Y40_N15
\sig_sf_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_sf_reg[30]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_sf_reg(30));

-- Location: FF_X47_Y40_N23
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

-- Location: LCCOMB_X47_Y40_N22
\sig_correlation[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~30_combout\ = (!\state_xor.s29~q\ & ((\state_xor.s32~q\ & ((!sig_sf_reg(31)))) # (!\state_xor.s32~q\ & (!sig_sf_reg(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s29~q\,
	datab => sig_sf_reg(30),
	datac => sig_sf_reg(31),
	datad => \state_xor.s32~q\,
	combout => \sig_correlation[0]~30_combout\);

-- Location: LCCOMB_X47_Y40_N26
\sig_correlation[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~31_combout\ = (!\state_xor.s28~q\ & (!\state_xor.s30~q\ & !\state_xor.s27~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s28~q\,
	datab => \state_xor.s30~q\,
	datad => \state_xor.s27~q\,
	combout => \sig_correlation[0]~31_combout\);

-- Location: LCCOMB_X47_Y40_N4
\sig_correlation[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~32_combout\ = (\sig_correlation[0]~30_combout\ & ((\sig_correlation[0]~31_combout\) # ((sig_sf_reg(26) & \state_xor.s27~q\)))) # (!\sig_correlation[0]~30_combout\ & (((sig_sf_reg(26) & \state_xor.s27~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~30_combout\,
	datab => \sig_correlation[0]~31_combout\,
	datac => sig_sf_reg(26),
	datad => \state_xor.s27~q\,
	combout => \sig_correlation[0]~32_combout\);

-- Location: LCCOMB_X46_Y41_N2
\sig_correlation[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~33_combout\ = (\sig_correlation[0]~26_combout\) # ((\sig_correlation[0]~27_combout\ & ((\sig_correlation[0]~29_combout\) # (\sig_correlation[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~27_combout\,
	datab => \sig_correlation[0]~26_combout\,
	datac => \sig_correlation[0]~29_combout\,
	datad => \sig_correlation[0]~32_combout\,
	combout => \sig_correlation[0]~33_combout\);

-- Location: LCCOMB_X46_Y41_N4
\sig_correlation[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~34_combout\ = (\sig_correlation[0]~21_combout\ & (\sig_correlation[0]~20_combout\ & ((\sig_correlation[0]~24_combout\) # (\sig_correlation[0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~21_combout\,
	datab => \sig_correlation[0]~20_combout\,
	datac => \sig_correlation[0]~24_combout\,
	datad => \sig_correlation[0]~33_combout\,
	combout => \sig_correlation[0]~34_combout\);

-- Location: LCCOMB_X49_Y40_N18
\sig_correlation[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~13_combout\ = (\state_xor.s15~q\ & (((!sig_sf_reg(14))))) # (!\state_xor.s15~q\ & (!sig_sf_reg(15) & ((\state_xor.s16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(15),
	datab => \state_xor.s15~q\,
	datac => sig_sf_reg(14),
	datad => \state_xor.s16~q\,
	combout => \sig_correlation[0]~13_combout\);

-- Location: LCCOMB_X49_Y40_N30
\sig_correlation[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~14_combout\ = (!\state_xor.s14~q\ & (\sig_correlation[0]~13_combout\ & !\state_xor.s13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s14~q\,
	datab => \sig_correlation[0]~13_combout\,
	datad => \state_xor.s13~q\,
	combout => \sig_correlation[0]~14_combout\);

-- Location: LCCOMB_X49_Y40_N14
\sig_correlation[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~12_combout\ = (\state_xor.s13~q\ & (((!sig_sf_reg(12))))) # (!\state_xor.s13~q\ & (!sig_sf_reg(13) & (\state_xor.s14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_sf_reg(13),
	datab => \state_xor.s14~q\,
	datac => sig_sf_reg(12),
	datad => \state_xor.s13~q\,
	combout => \sig_correlation[0]~12_combout\);

-- Location: LCCOMB_X49_Y40_N8
\sig_correlation[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~15_combout\ = (\state_xor.s12~q\ & (((!sig_sf_reg(11))))) # (!\state_xor.s12~q\ & ((\sig_correlation[0]~14_combout\) # ((\sig_correlation[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s12~q\,
	datab => \sig_correlation[0]~14_combout\,
	datac => sig_sf_reg(11),
	datad => \sig_correlation[0]~12_combout\,
	combout => \sig_correlation[0]~15_combout\);

-- Location: LCCOMB_X49_Y40_N4
\sig_correlation[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~16_combout\ = (\state_xor.s11~q\ & (!sig_sf_reg(10))) # (!\state_xor.s11~q\ & ((\sig_correlation[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_xor.s11~q\,
	datac => sig_sf_reg(10),
	datad => \sig_correlation[0]~15_combout\,
	combout => \sig_correlation[0]~16_combout\);

-- Location: LCCOMB_X49_Y40_N0
\sig_correlation[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~17_combout\ = (\state_xor.s10~q\ & ((!sig_sf_reg(9)))) # (!\state_xor.s10~q\ & (\sig_correlation[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~16_combout\,
	datac => sig_sf_reg(9),
	datad => \state_xor.s10~q\,
	combout => \sig_correlation[0]~17_combout\);

-- Location: LCCOMB_X46_Y41_N22
\sig_correlation[0]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~38_combout\ = (\sig_correlation[0]~11_combout\ & ((\sig_correlation[0]~37_combout\) # ((\sig_correlation[0]~34_combout\) # (\sig_correlation[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~11_combout\,
	datab => \sig_correlation[0]~37_combout\,
	datac => \sig_correlation[0]~34_combout\,
	datad => \sig_correlation[0]~17_combout\,
	combout => \sig_correlation[0]~38_combout\);

-- Location: LCCOMB_X49_Y41_N20
\sig_correlation[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~9_combout\ = (!\state_xor.s1~q\ & (!\state_xor.s2~q\ & \state_xor.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_xor.s1~q\,
	datab => \state_xor.s2~q\,
	datad => \state_xor.s0~q\,
	combout => \sig_correlation[0]~9_combout\);

-- Location: LCCOMB_X46_Y41_N0
\sig_correlation[0]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~44_combout\ = (!\sig_correlation[0]~8_combout\ & (((!\sig_correlation[0]~43_combout\ & !\sig_correlation[0]~38_combout\)) # (!\sig_correlation[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~43_combout\,
	datab => \sig_correlation[0]~8_combout\,
	datac => \sig_correlation[0]~38_combout\,
	datad => \sig_correlation[0]~9_combout\,
	combout => \sig_correlation[0]~44_combout\);

-- Location: LCCOMB_X49_Y41_N22
\sig_correlation[0]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~45_combout\ = (!\sig_correlation[0]~8_combout\ & ((\sig_cut_main_clk~q\) # (!\sig_cut_main_clk_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~8_combout\,
	datab => \sig_cut_main_clk_not~q\,
	datad => \sig_cut_main_clk~q\,
	combout => \sig_correlation[0]~45_combout\);

-- Location: LCCOMB_X46_Y41_N28
\sig_correlation[0]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[0]~46_combout\ = ((\sig_correlation[0]~9_combout\ & ((\sig_correlation[0]~43_combout\) # (\sig_correlation[0]~38_combout\)))) # (!\sig_correlation[0]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_correlation[0]~43_combout\,
	datab => \sig_correlation[0]~9_combout\,
	datac => \sig_correlation[0]~38_combout\,
	datad => \sig_correlation[0]~45_combout\,
	combout => \sig_correlation[0]~46_combout\);

-- Location: FF_X46_Y41_N11
\sig_correlation[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_correlation[0]~5_combout\,
	asdata => VCC,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => \sig_correlation[0]~44_combout\,
	ena => \sig_correlation[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_correlation(0));

-- Location: LCCOMB_X46_Y41_N12
\sig_correlation[1]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[1]~47_combout\ = (sig_correlation(1) & ((GND) # (!\sig_correlation[0]~6\))) # (!sig_correlation(1) & (\sig_correlation[0]~6\ $ (GND)))
-- \sig_correlation[1]~48\ = CARRY((sig_correlation(1)) # (!\sig_correlation[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_correlation(1),
	datad => VCC,
	cin => \sig_correlation[0]~6\,
	combout => \sig_correlation[1]~47_combout\,
	cout => \sig_correlation[1]~48\);

-- Location: FF_X46_Y41_N13
\sig_correlation[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_correlation[1]~47_combout\,
	asdata => VCC,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => \sig_correlation[0]~44_combout\,
	ena => \sig_correlation[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_correlation(1));

-- Location: LCCOMB_X46_Y41_N14
\sig_correlation[2]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[2]~49_combout\ = (sig_correlation(2) & (\sig_correlation[1]~48\ & VCC)) # (!sig_correlation(2) & (!\sig_correlation[1]~48\))
-- \sig_correlation[2]~50\ = CARRY((!sig_correlation(2) & !\sig_correlation[1]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_correlation(2),
	datad => VCC,
	cin => \sig_correlation[1]~48\,
	combout => \sig_correlation[2]~49_combout\,
	cout => \sig_correlation[2]~50\);

-- Location: FF_X46_Y41_N15
\sig_correlation[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_correlation[2]~49_combout\,
	asdata => VCC,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => \sig_correlation[0]~44_combout\,
	ena => \sig_correlation[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_correlation(2));

-- Location: LCCOMB_X46_Y41_N16
\sig_correlation[3]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[3]~51_combout\ = (sig_correlation(3) & ((GND) # (!\sig_correlation[2]~50\))) # (!sig_correlation(3) & (\sig_correlation[2]~50\ $ (GND)))
-- \sig_correlation[3]~52\ = CARRY((sig_correlation(3)) # (!\sig_correlation[2]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_correlation(3),
	datad => VCC,
	cin => \sig_correlation[2]~50\,
	combout => \sig_correlation[3]~51_combout\,
	cout => \sig_correlation[3]~52\);

-- Location: FF_X46_Y41_N17
\sig_correlation[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_correlation[3]~51_combout\,
	asdata => VCC,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => \sig_correlation[0]~44_combout\,
	ena => \sig_correlation[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_correlation(3));

-- Location: LCCOMB_X46_Y41_N30
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (sig_correlation(3) & (sig_correlation(2) & ((sig_correlation(0)) # (sig_correlation(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_correlation(0),
	datab => sig_correlation(3),
	datac => sig_correlation(2),
	datad => sig_correlation(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y41_N20
\state_crc.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_crc.s4~feeder_combout\ = \state_crc.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_crc.s3~q\,
	combout => \state_crc.s4~feeder_combout\);

-- Location: LCCOMB_X49_Y41_N16
sig_main_clk_r : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main_clk_r~combout\ = (!\sig_cut_main_clk_not~q\ & \sig_cut_main_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_cut_main_clk_not~q\,
	datad => \sig_cut_main_clk~q\,
	combout => \sig_main_clk_r~combout\);

-- Location: FF_X46_Y41_N21
\state_crc.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_crc.s4~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_crc.s4~q\);

-- Location: LCCOMB_X46_Y41_N18
\sig_correlation[4]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_correlation[4]~53_combout\ = \sig_correlation[3]~52\ $ (!sig_correlation(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_correlation(4),
	cin => \sig_correlation[3]~52\,
	combout => \sig_correlation[4]~53_combout\);

-- Location: FF_X46_Y41_N19
\sig_correlation[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_correlation[4]~53_combout\,
	asdata => VCC,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => \sig_correlation[0]~44_combout\,
	ena => \sig_correlation[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_correlation(4));

-- Location: LCCOMB_X46_Y41_N24
\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (!\state_crc.s4~q\ & ((\state_crc.s0~q\) # ((\LessThan0~0_combout\ & sig_correlation(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \state_crc.s4~q\,
	datac => \state_crc.s0~q\,
	datad => sig_correlation(4),
	combout => \Selector37~0_combout\);

-- Location: FF_X46_Y41_N25
\state_crc.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_crc.s0~q\);

-- Location: LCCOMB_X46_Y41_N26
\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (!\state_crc.s0~q\ & (\LessThan0~0_combout\ & sig_correlation(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_crc.s0~q\,
	datac => \LessThan0~0_combout\,
	datad => sig_correlation(4),
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X51_Y41_N18
\Selector38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\Selector38~0_combout\) # ((\state_crc.s1~q\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Selector38~0_combout\,
	datac => \state_crc.s1~q\,
	datad => \Equal0~1_combout\,
	combout => \Selector38~1_combout\);

-- Location: FF_X51_Y41_N19
\state_crc.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector38~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_crc.s1~q\);

-- Location: LCCOMB_X50_Y41_N6
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

-- Location: FF_X51_Y41_N17
\crc8bit_operation:cnt[4]\ : dffeas
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
	q => \crc8bit_operation:cnt[4]~q\);

-- Location: LCCOMB_X51_Y41_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \crc8bit_operation:cnt[0]~q\ $ (VCC)
-- \Add1~1\ = CARRY(\crc8bit_operation:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc8bit_operation:cnt[0]~q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X51_Y41_N1
\crc8bit_operation:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[0]~q\);

-- Location: LCCOMB_X51_Y41_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\crc8bit_operation:cnt[1]~q\ & (!\Add1~1\)) # (!\crc8bit_operation:cnt[1]~q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\crc8bit_operation:cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc8bit_operation:cnt[1]~q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X51_Y41_N3
\crc8bit_operation:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[1]~q\);

-- Location: LCCOMB_X51_Y41_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\crc8bit_operation:cnt[2]~q\ & (\Add1~3\ $ (GND))) # (!\crc8bit_operation:cnt[2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\crc8bit_operation:cnt[2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc8bit_operation:cnt[2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X51_Y41_N5
\crc8bit_operation:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[2]~q\);

-- Location: LCCOMB_X51_Y41_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\crc8bit_operation:cnt[3]~q\ & (!\Add1~5\)) # (!\crc8bit_operation:cnt[3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\crc8bit_operation:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc8bit_operation:cnt[3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X51_Y41_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\crc8bit_operation:cnt[4]~q\ & (\Add1~7\ $ (GND))) # (!\crc8bit_operation:cnt[4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\crc8bit_operation:cnt[4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc8bit_operation:cnt[4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X51_Y41_N11
\crc8bit_operation:cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[5]~q\);

-- Location: LCCOMB_X51_Y41_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\crc8bit_operation:cnt[5]~q\ & (!\Add1~9\)) # (!\crc8bit_operation:cnt[5]~q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\crc8bit_operation:cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \crc8bit_operation:cnt[5]~q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X51_Y41_N28
\cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~3_combout\ = (\Add1~14_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Add1~14_combout\,
	datac => \Equal0~0_combout\,
	combout => \cnt~3_combout\);

-- Location: FF_X51_Y41_N29
\crc8bit_operation:cnt[7]\ : dffeas
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
	q => \crc8bit_operation:cnt[7]~q\);

-- Location: LCCOMB_X51_Y41_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\crc8bit_operation:cnt[6]~q\ & (\Add1~11\ $ (GND))) # (!\crc8bit_operation:cnt[6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\crc8bit_operation:cnt[6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \crc8bit_operation:cnt[6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X51_Y41_N26
\cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = (\Add1~12_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add1~12_combout\,
	combout => \cnt~2_combout\);

-- Location: FF_X51_Y41_N27
\crc8bit_operation:cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt~2_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[6]~q\);

-- Location: LCCOMB_X51_Y41_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (\crc8bit_operation:cnt[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \crc8bit_operation:cnt[7]~q\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X51_Y41_N30
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Add1~8_combout\ & (!\Add1~10_combout\ & (\Add1~14_combout\ & \Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~10_combout\,
	datac => \Add1~14_combout\,
	datad => \Add1~12_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X51_Y41_N20
\cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = (\Add1~6_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add1~6_combout\,
	combout => \cnt~0_combout\);

-- Location: FF_X51_Y41_N21
\crc8bit_operation:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt~0_combout\,
	ena => \crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc8bit_operation:cnt[3]~q\);

-- Location: LCCOMB_X51_Y41_N22
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add1~6_combout\ & (!\Add1~2_combout\ & (!\Add1~4_combout\ & !\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~2_combout\,
	datac => \Add1~4_combout\,
	datad => \Add1~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X51_Y41_N24
\Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & \state_crc.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \state_crc.s1~q\,
	combout => \Selector39~0_combout\);

-- Location: FF_X51_Y41_N25
\state_crc.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector39~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_crc.s2~q\);

-- Location: LCCOMB_X50_Y41_N22
\state_crc.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_crc.s3~feeder_combout\ = \state_crc.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_crc.s2~q\,
	combout => \state_crc.s3~feeder_combout\);

-- Location: FF_X50_Y41_N23
\state_crc.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_crc.s3~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_crc.s3~q\);

-- Location: LCCOMB_X50_Y41_N0
\Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\state_crc.s1~q\ & (((crc_reg8bit(4))))) # (!\state_crc.s1~q\ & (!\state_crc.s3~q\ & (crc_reg8bit(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s3~q\,
	datab => \state_crc.s1~q\,
	datac => crc_reg8bit(5),
	datad => crc_reg8bit(4),
	combout => \Selector44~0_combout\);

-- Location: FF_X50_Y41_N1
\crc_reg8bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(5));

-- Location: LCCOMB_X50_Y41_N14
\Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\state_crc.s1~q\ & (((crc_reg8bit(5))))) # (!\state_crc.s1~q\ & (!\state_crc.s3~q\ & ((crc_reg8bit(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s3~q\,
	datab => crc_reg8bit(5),
	datac => crc_reg8bit(6),
	datad => \state_crc.s1~q\,
	combout => \Selector43~0_combout\);

-- Location: FF_X50_Y41_N15
\crc_reg8bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector43~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(6));

-- Location: LCCOMB_X50_Y41_N28
\Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\state_crc.s1~q\ & (((crc_reg8bit(6))))) # (!\state_crc.s1~q\ & (!\state_crc.s3~q\ & ((crc_reg8bit(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s3~q\,
	datab => crc_reg8bit(6),
	datac => crc_reg8bit(7),
	datad => \state_crc.s1~q\,
	combout => \Selector42~0_combout\);

-- Location: FF_X50_Y41_N29
\crc_reg8bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(7));

-- Location: LCCOMB_X50_Y41_N12
\Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\state_crc.s1~q\ & (\nrzl_in~input_o\ $ (crc_reg8bit(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrzl_in~input_o\,
	datab => crc_reg8bit(7),
	datad => \state_crc.s1~q\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X50_Y41_N18
\Selector49~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~1_combout\ = (\Selector49~0_combout\) # ((!\state_crc.s3~q\ & (!\state_crc.s1~q\ & crc_reg8bit(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s3~q\,
	datab => \state_crc.s1~q\,
	datac => crc_reg8bit(0),
	datad => \Selector49~0_combout\,
	combout => \Selector49~1_combout\);

-- Location: FF_X50_Y41_N19
\crc_reg8bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector49~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(0));

-- Location: LCCOMB_X50_Y41_N10
\Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\state_crc.s1~q\ & (\nrzl_in~input_o\ $ (crc_reg8bit(7) $ (crc_reg8bit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrzl_in~input_o\,
	datab => crc_reg8bit(7),
	datac => crc_reg8bit(0),
	datad => \state_crc.s1~q\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X50_Y41_N8
\Selector48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (\Selector48~0_combout\) # ((!\state_crc.s3~q\ & (crc_reg8bit(1) & !\state_crc.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s3~q\,
	datab => \Selector48~0_combout\,
	datac => crc_reg8bit(1),
	datad => \state_crc.s1~q\,
	combout => \Selector48~1_combout\);

-- Location: FF_X50_Y41_N9
\crc_reg8bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector48~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(1));

-- Location: LCCOMB_X50_Y41_N16
\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\state_crc.s1~q\ & (\nrzl_in~input_o\ $ (crc_reg8bit(7) $ (crc_reg8bit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrzl_in~input_o\,
	datab => crc_reg8bit(7),
	datac => crc_reg8bit(1),
	datad => \state_crc.s1~q\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X50_Y41_N30
\Selector47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\Selector47~0_combout\) # ((!\state_crc.s3~q\ & (crc_reg8bit(2) & !\state_crc.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s3~q\,
	datab => \Selector47~0_combout\,
	datac => crc_reg8bit(2),
	datad => \state_crc.s1~q\,
	combout => \Selector47~1_combout\);

-- Location: FF_X50_Y41_N31
\crc_reg8bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector47~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(2));

-- Location: LCCOMB_X50_Y41_N20
\Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\state_crc.s1~q\ & (((crc_reg8bit(2))))) # (!\state_crc.s1~q\ & (!\state_crc.s3~q\ & ((crc_reg8bit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_crc.s3~q\,
	datab => crc_reg8bit(2),
	datac => crc_reg8bit(3),
	datad => \state_crc.s1~q\,
	combout => \Selector46~0_combout\);

-- Location: FF_X50_Y41_N21
\crc_reg8bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(3));

-- Location: LCCOMB_X46_Y41_N8
\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\state_crc.s1~q\ & (crc_reg8bit(3))) # (!\state_crc.s1~q\ & (((!\state_crc.s3~q\ & crc_reg8bit(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => crc_reg8bit(3),
	datab => \state_crc.s3~q\,
	datac => crc_reg8bit(4),
	datad => \state_crc.s1~q\,
	combout => \Selector45~0_combout\);

-- Location: FF_X46_Y41_N9
\crc_reg8bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector45~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => crc_reg8bit(4));

-- Location: LCCOMB_X50_Y41_N26
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!crc_reg8bit(4) & (!crc_reg8bit(7) & (!crc_reg8bit(6) & !crc_reg8bit(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => crc_reg8bit(4),
	datab => crc_reg8bit(7),
	datac => crc_reg8bit(6),
	datad => crc_reg8bit(5),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X50_Y41_N4
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!crc_reg8bit(0) & (!crc_reg8bit(1) & (!crc_reg8bit(2) & !crc_reg8bit(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => crc_reg8bit(0),
	datab => crc_reg8bit(1),
	datac => crc_reg8bit(2),
	datad => crc_reg8bit(3),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X50_Y41_N2
\crc8bit_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc8bit_out~0_combout\ = (!\sig_cut_main_clk_not~q\ & (\sig_cut_main_clk~q\ & \state_crc.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut_main_clk_not~q\,
	datac => \sig_cut_main_clk~q\,
	datad => \state_crc.s2~q\,
	combout => \crc8bit_out~0_combout\);

-- Location: LCCOMB_X50_Y41_N24
\crc8bit_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc8bit_out~1_combout\ = (\crc8bit_out~0_combout\ & (\Equal1~0_combout\ & (\Equal1~1_combout\))) # (!\crc8bit_out~0_combout\ & (((\crc8bit_out~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \crc8bit_out~reg0_q\,
	datad => \crc8bit_out~0_combout\,
	combout => \crc8bit_out~1_combout\);

-- Location: FF_X50_Y41_N25
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

ww_correlation(0) <= \correlation[0]~output_o\;

ww_correlation(1) <= \correlation[1]~output_o\;

ww_correlation(2) <= \correlation[2]~output_o\;

ww_correlation(3) <= \correlation[3]~output_o\;

ww_correlation(4) <= \correlation[4]~output_o\;
END structure;


