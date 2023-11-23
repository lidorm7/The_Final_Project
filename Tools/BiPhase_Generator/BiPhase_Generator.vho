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

-- DATE "08/13/2023 18:08:00"

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

ENTITY 	BiPhase_Generator IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	BiPhase_tx_out : BUFFER std_logic
	);
END BiPhase_Generator;

-- Design Ports Information
-- BiPhase_tx_out	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BiPhase_Generator IS
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
SIGNAL ww_BiPhase_tx_out : std_logic;
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \BiPhase_tx_out~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_main[0]~18_combout\ : std_logic;
SIGNAL \sig_main[1]~6_combout\ : std_logic;
SIGNAL \sig_main[1]~7\ : std_logic;
SIGNAL \sig_main[2]~8_combout\ : std_logic;
SIGNAL \sig_main[2]~9\ : std_logic;
SIGNAL \sig_main[3]~10_combout\ : std_logic;
SIGNAL \sig_main[3]~11\ : std_logic;
SIGNAL \sig_main[4]~12_combout\ : std_logic;
SIGNAL \sig_main[4]~13\ : std_logic;
SIGNAL \sig_main[5]~14_combout\ : std_logic;
SIGNAL \sig_main[5]~15\ : std_logic;
SIGNAL \sig_main[6]~16_combout\ : std_logic;
SIGNAL \sig_cut~feeder_combout\ : std_logic;
SIGNAL \sig_cut~q\ : std_logic;
SIGNAL \sig_cut_not~feeder_combout\ : std_logic;
SIGNAL \sig_cut_not~q\ : std_logic;
SIGNAL \sig_main_rising_edge~combout\ : std_logic;
SIGNAL \state_bi.s3~q\ : std_logic;
SIGNAL \state_bi.s4~feeder_combout\ : std_logic;
SIGNAL \state_bi.s4~q\ : std_logic;
SIGNAL \state_bi.s5~feeder_combout\ : std_logic;
SIGNAL \state_bi.s5~q\ : std_logic;
SIGNAL \state_bi.s6~feeder_combout\ : std_logic;
SIGNAL \state_bi.s6~q\ : std_logic;
SIGNAL \state_bi.s7~q\ : std_logic;
SIGNAL \state_bi.s0~0_combout\ : std_logic;
SIGNAL \state_bi.s0~q\ : std_logic;
SIGNAL \state_bi.s1~0_combout\ : std_logic;
SIGNAL \state_bi.s1~q\ : std_logic;
SIGNAL \state_bi.s2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \sig_read~q\ : std_logic;
SIGNAL \sig_cut_rd~feeder_combout\ : std_logic;
SIGNAL \sig_cut_rd~q\ : std_logic;
SIGNAL \sig_cut_rd_not~q\ : std_logic;
SIGNAL \sig_rd_rising_edge~combout\ : std_logic;
SIGNAL \sig_inc~0_combout\ : std_logic;
SIGNAL \sig_inc~1_combout\ : std_logic;
SIGNAL \sig_inc~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state_mini.s0a~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state_mini.s1a~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state_mini.s2a~q\ : std_logic;
SIGNAL \sig_read_address[0]~4_combout\ : std_logic;
SIGNAL \sig_read_address[1]~5_combout\ : std_logic;
SIGNAL \sig_read_address[1]~6\ : std_logic;
SIGNAL \sig_read_address[2]~7_combout\ : std_logic;
SIGNAL \sig_read_address[2]~8\ : std_logic;
SIGNAL \sig_read_address[3]~9_combout\ : std_logic;
SIGNAL \sig_read_address[3]~10\ : std_logic;
SIGNAL \sig_read_address[4]~11_combout\ : std_logic;
SIGNAL \sig_shift_data~7_combout\ : std_logic;
SIGNAL \sig_shift_data~6_combout\ : std_logic;
SIGNAL \sig_shift_data~5_combout\ : std_logic;
SIGNAL \sig_shift_data~4_combout\ : std_logic;
SIGNAL \sig_shift_data~3_combout\ : std_logic;
SIGNAL \sig_shift_data~2_combout\ : std_logic;
SIGNAL \sig_shift_data~1_combout\ : std_logic;
SIGNAL \sig_shift_data~0_combout\ : std_logic;
SIGNAL \sig_BiPhase_tx_out~0_combout\ : std_logic;
SIGNAL \sig_BiPhase_tx_out~q\ : std_logic;
SIGNAL sig_main : std_logic_vector(13 DOWNTO 0);
SIGNAL sig_read_address : std_logic_vector(4 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
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
BiPhase_tx_out <= ww_BiPhase_tx_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (sig_read_address(4) & sig_read_address(3) & sig_read_address(2) & sig_read_address(1) & sig_read_address(0));

\memory|altsyncram_component|auto_generated|q_a\(0) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memory|altsyncram_component|auto_generated|q_a\(1) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memory|altsyncram_component|auto_generated|q_a\(2) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memory|altsyncram_component|auto_generated|q_a\(3) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memory|altsyncram_component|auto_generated|q_a\(4) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memory|altsyncram_component|auto_generated|q_a\(5) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memory|altsyncram_component|auto_generated|q_a\(6) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memory|altsyncram_component|auto_generated|q_a\(7) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

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

-- Location: IOOBUF_X0_Y16_N23
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

-- Location: LCCOMB_X32_Y17_N8
\sig_main[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[0]~18_combout\ = !sig_main(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_main(0),
	combout => \sig_main[0]~18_combout\);

-- Location: FF_X32_Y17_N9
\sig_main[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[0]~18_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(0));

-- Location: LCCOMB_X32_Y17_N10
\sig_main[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[1]~6_combout\ = (sig_main(1) & (sig_main(0) $ (VCC))) # (!sig_main(1) & (sig_main(0) & VCC))
-- \sig_main[1]~7\ = CARRY((sig_main(1) & sig_main(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_main(1),
	datab => sig_main(0),
	datad => VCC,
	combout => \sig_main[1]~6_combout\,
	cout => \sig_main[1]~7\);

-- Location: FF_X32_Y17_N11
\sig_main[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[1]~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(1));

-- Location: LCCOMB_X32_Y17_N12
\sig_main[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[2]~8_combout\ = (sig_main(2) & (!\sig_main[1]~7\)) # (!sig_main(2) & ((\sig_main[1]~7\) # (GND)))
-- \sig_main[2]~9\ = CARRY((!\sig_main[1]~7\) # (!sig_main(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_main(2),
	datad => VCC,
	cin => \sig_main[1]~7\,
	combout => \sig_main[2]~8_combout\,
	cout => \sig_main[2]~9\);

-- Location: FF_X32_Y17_N13
\sig_main[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[2]~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(2));

-- Location: LCCOMB_X32_Y17_N14
\sig_main[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[3]~10_combout\ = (sig_main(3) & (\sig_main[2]~9\ $ (GND))) # (!sig_main(3) & (!\sig_main[2]~9\ & VCC))
-- \sig_main[3]~11\ = CARRY((sig_main(3) & !\sig_main[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(3),
	datad => VCC,
	cin => \sig_main[2]~9\,
	combout => \sig_main[3]~10_combout\,
	cout => \sig_main[3]~11\);

-- Location: FF_X32_Y17_N15
\sig_main[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[3]~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(3));

-- Location: LCCOMB_X32_Y17_N16
\sig_main[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[4]~12_combout\ = (sig_main(4) & (!\sig_main[3]~11\)) # (!sig_main(4) & ((\sig_main[3]~11\) # (GND)))
-- \sig_main[4]~13\ = CARRY((!\sig_main[3]~11\) # (!sig_main(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(4),
	datad => VCC,
	cin => \sig_main[3]~11\,
	combout => \sig_main[4]~12_combout\,
	cout => \sig_main[4]~13\);

-- Location: FF_X32_Y17_N17
\sig_main[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[4]~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(4));

-- Location: LCCOMB_X32_Y17_N18
\sig_main[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[5]~14_combout\ = (sig_main(5) & (\sig_main[4]~13\ $ (GND))) # (!sig_main(5) & (!\sig_main[4]~13\ & VCC))
-- \sig_main[5]~15\ = CARRY((sig_main(5) & !\sig_main[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(5),
	datad => VCC,
	cin => \sig_main[4]~13\,
	combout => \sig_main[5]~14_combout\,
	cout => \sig_main[5]~15\);

-- Location: FF_X32_Y17_N19
\sig_main[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[5]~14_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(5));

-- Location: LCCOMB_X32_Y17_N20
\sig_main[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[6]~16_combout\ = \sig_main[5]~15\ $ (sig_main(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_main(6),
	cin => \sig_main[5]~15\,
	combout => \sig_main[6]~16_combout\);

-- Location: FF_X32_Y17_N21
\sig_main[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[6]~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(6));

-- Location: LCCOMB_X32_Y17_N26
\sig_cut~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cut~feeder_combout\ = sig_main(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_main(6),
	combout => \sig_cut~feeder_combout\);

-- Location: FF_X32_Y17_N27
sig_cut : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cut~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut~q\);

-- Location: LCCOMB_X31_Y17_N18
\sig_cut_not~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cut_not~feeder_combout\ = \sig_cut~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_cut~q\,
	combout => \sig_cut_not~feeder_combout\);

-- Location: FF_X31_Y17_N19
sig_cut_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cut_not~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut_not~q\);

-- Location: LCCOMB_X31_Y17_N6
sig_main_rising_edge : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main_rising_edge~combout\ = (!\sig_cut_not~q\ & \sig_cut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_cut_not~q\,
	datad => \sig_cut~q\,
	combout => \sig_main_rising_edge~combout\);

-- Location: FF_X31_Y17_N13
\state_bi.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_bi.s2~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s3~q\);

-- Location: LCCOMB_X31_Y17_N10
\state_bi.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_bi.s4~feeder_combout\ = \state_bi.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_bi.s3~q\,
	combout => \state_bi.s4~feeder_combout\);

-- Location: FF_X31_Y17_N11
\state_bi.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_bi.s4~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s4~q\);

-- Location: LCCOMB_X31_Y17_N24
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

-- Location: FF_X31_Y17_N25
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

-- Location: LCCOMB_X31_Y17_N30
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

-- Location: FF_X31_Y17_N31
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

-- Location: FF_X31_Y17_N21
\state_bi.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_bi.s6~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s7~q\);

-- Location: LCCOMB_X31_Y17_N16
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

-- Location: FF_X31_Y17_N17
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

-- Location: LCCOMB_X31_Y17_N4
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

-- Location: FF_X31_Y17_N5
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

-- Location: FF_X31_Y17_N23
\state_bi.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_bi.s1~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_bi.s2~q\);

-- Location: LCCOMB_X31_Y17_N28
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state_bi.s1~q\) # ((!\state_bi.s2~q\ & \sig_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_bi.s2~q\,
	datab => \state_bi.s1~q\,
	datac => \sig_read~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X31_Y17_N29
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

-- Location: LCCOMB_X31_Y17_N8
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

-- Location: FF_X31_Y17_N9
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

-- Location: FF_X31_Y17_N27
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

-- Location: LCCOMB_X31_Y17_N26
sig_rd_rising_edge : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rd_rising_edge~combout\ = (\sig_cut_rd~q\ & !\sig_cut_rd_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_cut_rd~q\,
	datac => \sig_cut_rd_not~q\,
	combout => \sig_rd_rising_edge~combout\);

-- Location: LCCOMB_X31_Y17_N22
\sig_inc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_inc~0_combout\ = (\resetn~input_o\ & (!\sig_cut_not~q\ & \sig_cut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \sig_cut_not~q\,
	datad => \sig_cut~q\,
	combout => \sig_inc~0_combout\);

-- Location: LCCOMB_X31_Y17_N2
\sig_inc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_inc~1_combout\ = (\sig_inc~0_combout\ & ((\state_bi.s7~q\) # ((\state_bi.s0~q\ & \sig_inc~q\)))) # (!\sig_inc~0_combout\ & (((\sig_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_inc~0_combout\,
	datab => \state_bi.s0~q\,
	datac => \sig_inc~q\,
	datad => \state_bi.s7~q\,
	combout => \sig_inc~1_combout\);

-- Location: FF_X31_Y17_N3
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

-- Location: LCCOMB_X34_Y17_N14
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\state_mini.s2a~q\ & ((\sig_inc~q\) # (\state_mini.s0a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_inc~q\,
	datac => \state_mini.s0a~q\,
	datad => \state_mini.s2a~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X34_Y17_N15
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

-- Location: LCCOMB_X34_Y17_N12
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\sig_inc~q\ & ((\state_mini.s1a~q\) # (!\state_mini.s0a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_inc~q\,
	datab => \state_mini.s0a~q\,
	datac => \state_mini.s1a~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X34_Y17_N13
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

-- Location: LCCOMB_X34_Y17_N10
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\sig_inc~q\ & \state_mini.s1a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_inc~q\,
	datad => \state_mini.s1a~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X34_Y17_N11
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

-- Location: LCCOMB_X34_Y17_N16
\sig_read_address[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address[0]~4_combout\ = sig_read_address(0) $ (\state_mini.s2a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_read_address(0),
	datad => \state_mini.s2a~q\,
	combout => \sig_read_address[0]~4_combout\);

-- Location: FF_X34_Y17_N17
\sig_read_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address[0]~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address(0));

-- Location: LCCOMB_X34_Y17_N0
\sig_read_address[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address[1]~5_combout\ = (sig_read_address(0) & (sig_read_address(1) $ (VCC))) # (!sig_read_address(0) & (sig_read_address(1) & VCC))
-- \sig_read_address[1]~6\ = CARRY((sig_read_address(0) & sig_read_address(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_read_address(0),
	datab => sig_read_address(1),
	datad => VCC,
	combout => \sig_read_address[1]~5_combout\,
	cout => \sig_read_address[1]~6\);

-- Location: FF_X34_Y17_N1
\sig_read_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address[1]~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_mini.s2a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address(1));

-- Location: LCCOMB_X34_Y17_N2
\sig_read_address[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address[2]~7_combout\ = (sig_read_address(2) & (!\sig_read_address[1]~6\)) # (!sig_read_address(2) & ((\sig_read_address[1]~6\) # (GND)))
-- \sig_read_address[2]~8\ = CARRY((!\sig_read_address[1]~6\) # (!sig_read_address(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_read_address(2),
	datad => VCC,
	cin => \sig_read_address[1]~6\,
	combout => \sig_read_address[2]~7_combout\,
	cout => \sig_read_address[2]~8\);

-- Location: FF_X34_Y17_N3
\sig_read_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address[2]~7_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_mini.s2a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address(2));

-- Location: LCCOMB_X34_Y17_N4
\sig_read_address[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address[3]~9_combout\ = (sig_read_address(3) & (\sig_read_address[2]~8\ $ (GND))) # (!sig_read_address(3) & (!\sig_read_address[2]~8\ & VCC))
-- \sig_read_address[3]~10\ = CARRY((sig_read_address(3) & !\sig_read_address[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_read_address(3),
	datad => VCC,
	cin => \sig_read_address[2]~8\,
	combout => \sig_read_address[3]~9_combout\,
	cout => \sig_read_address[3]~10\);

-- Location: FF_X34_Y17_N5
\sig_read_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address[3]~9_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_mini.s2a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address(3));

-- Location: LCCOMB_X34_Y17_N6
\sig_read_address[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_read_address[4]~11_combout\ = \sig_read_address[3]~10\ $ (sig_read_address(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_read_address(4),
	cin => \sig_read_address[3]~10\,
	combout => \sig_read_address[4]~11_combout\);

-- Location: FF_X34_Y17_N7
\sig_read_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_read_address[4]~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_mini.s2a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_read_address(4));

-- Location: M9K_X33_Y17_N0
\memory|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0018000BA002E400B8002DC00B6002D400B4002CC00B2002C400B0002BC00AE002B400000004400000000000110000000000004400000000000110000000AB003F800CA003000001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Rom_G.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Rom_G:memory|altsyncram:altsyncram_component|altsyncram_o191:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => \sig_rd_rising_edge~combout\,
	clk0 => \sysclk~inputclkctrl_outclk\,
	portaaddr => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y17_N30
\sig_shift_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~7_combout\ = (\sig_read~q\ & \memory|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_read~q\,
	datad => \memory|altsyncram_component|auto_generated|q_a\(0),
	combout => \sig_shift_data~7_combout\);

-- Location: FF_X32_Y17_N31
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

-- Location: LCCOMB_X32_Y17_N28
\sig_shift_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~6_combout\ = (\sig_read~q\ & ((\memory|altsyncram_component|auto_generated|q_a\(1)))) # (!\sig_read~q\ & (sig_shift_data(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_read~q\,
	datac => sig_shift_data(0),
	datad => \memory|altsyncram_component|auto_generated|q_a\(1),
	combout => \sig_shift_data~6_combout\);

-- Location: FF_X32_Y17_N29
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

-- Location: LCCOMB_X32_Y17_N2
\sig_shift_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~5_combout\ = (\sig_read~q\ & (\memory|altsyncram_component|auto_generated|q_a\(2))) # (!\sig_read~q\ & ((sig_shift_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_read~q\,
	datac => \memory|altsyncram_component|auto_generated|q_a\(2),
	datad => sig_shift_data(1),
	combout => \sig_shift_data~5_combout\);

-- Location: FF_X32_Y17_N3
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

-- Location: LCCOMB_X32_Y17_N0
\sig_shift_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~4_combout\ = (\sig_read~q\ & ((\memory|altsyncram_component|auto_generated|q_a\(3)))) # (!\sig_read~q\ & (sig_shift_data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_read~q\,
	datac => sig_shift_data(2),
	datad => \memory|altsyncram_component|auto_generated|q_a\(3),
	combout => \sig_shift_data~4_combout\);

-- Location: FF_X32_Y17_N1
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

-- Location: LCCOMB_X32_Y17_N22
\sig_shift_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~3_combout\ = (\sig_read~q\ & (\memory|altsyncram_component|auto_generated|q_a\(4))) # (!\sig_read~q\ & ((sig_shift_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|altsyncram_component|auto_generated|q_a\(4),
	datab => sig_shift_data(3),
	datad => \sig_read~q\,
	combout => \sig_shift_data~3_combout\);

-- Location: FF_X32_Y17_N23
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

-- Location: LCCOMB_X32_Y17_N6
\sig_shift_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~2_combout\ = (\sig_read~q\ & ((\memory|altsyncram_component|auto_generated|q_a\(5)))) # (!\sig_read~q\ & (sig_shift_data(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_read~q\,
	datac => sig_shift_data(4),
	datad => \memory|altsyncram_component|auto_generated|q_a\(5),
	combout => \sig_shift_data~2_combout\);

-- Location: FF_X32_Y17_N7
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

-- Location: LCCOMB_X32_Y17_N4
\sig_shift_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~1_combout\ = (\sig_read~q\ & (\memory|altsyncram_component|auto_generated|q_a\(6))) # (!\sig_read~q\ & ((sig_shift_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_read~q\,
	datac => \memory|altsyncram_component|auto_generated|q_a\(6),
	datad => sig_shift_data(5),
	combout => \sig_shift_data~1_combout\);

-- Location: FF_X32_Y17_N5
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

-- Location: LCCOMB_X32_Y17_N24
\sig_shift_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_data~0_combout\ = (\sig_read~q\ & ((\memory|altsyncram_component|auto_generated|q_a\(7)))) # (!\sig_read~q\ & (sig_shift_data(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_data(6),
	datac => \memory|altsyncram_component|auto_generated|q_a\(7),
	datad => \sig_read~q\,
	combout => \sig_shift_data~0_combout\);

-- Location: FF_X32_Y17_N25
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

-- Location: LCCOMB_X31_Y17_N0
\sig_BiPhase_tx_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_BiPhase_tx_out~0_combout\ = \sig_BiPhase_tx_out~q\ $ (((\sig_cut_not~q\ & (!sig_shift_data(7) & !\sig_cut~q\)) # (!\sig_cut_not~q\ & ((\sig_cut~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_data(7),
	datab => \sig_cut_not~q\,
	datac => \sig_BiPhase_tx_out~q\,
	datad => \sig_cut~q\,
	combout => \sig_BiPhase_tx_out~0_combout\);

-- Location: FF_X31_Y17_N1
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
END structure;


