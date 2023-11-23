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

-- DATE "09/06/2023 16:09:41"

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

ENTITY 	Uart_tx_Rom IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	start_triger : IN std_logic;
	uart_tx_triger : OUT std_logic
	);
END Uart_tx_Rom;

-- Design Ports Information
-- uart_tx_triger	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: 12mA
-- sysclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_triger	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Uart_tx_Rom IS
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
SIGNAL ww_start_triger : std_logic;
SIGNAL ww_uart_tx_triger : std_logic;
SIGNAL \dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \uart_tx_triger~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_address[0]~4_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_address[1]~5_combout\ : std_logic;
SIGNAL \sig_address[1]~6\ : std_logic;
SIGNAL \sig_address[2]~7_combout\ : std_logic;
SIGNAL \sig_address[2]~8\ : std_logic;
SIGNAL \sig_address[3]~9_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \sig_address[3]~10\ : std_logic;
SIGNAL \sig_address[4]~11_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \start_triger~input_o\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[6]~q\ : std_logic;
SIGNAL \baud_clock:cnt_baud[8]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \cnt_baud~4_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \cnt_baud~5_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[9]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \cnt_baud~0_combout\ : std_logic;
SIGNAL \cnt_baud~1_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \cnt_baud~2_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \cnt_baud~3_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[3]~q\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \sig_baud_clk~0_combout\ : std_logic;
SIGNAL \sig_baud_clk~q\ : std_logic;
SIGNAL \signal_A_q~feeder_combout\ : std_logic;
SIGNAL \signal_A_q~q\ : std_logic;
SIGNAL \signal_A_q_not~q\ : std_logic;
SIGNAL \sig_arising_edge~combout\ : std_logic;
SIGNAL \transmission:sig_cntr[3]~2_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[2]~q\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[3]~0_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[3]~1_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[0]~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[1]~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[3]~q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \state_tx~28_combout\ : std_logic;
SIGNAL \state_tx.s10~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state_tx.s0~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state_tx.s1~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state_tx.s2~q\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state_tx.s3~q\ : std_logic;
SIGNAL \state_tx.s4~q\ : std_logic;
SIGNAL \state_tx.s5~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state_tx.s6~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state_tx.s7~q\ : std_logic;
SIGNAL \state_tx.s8~feeder_combout\ : std_logic;
SIGNAL \state_tx.s8~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \state_tx.s9~q\ : std_logic;
SIGNAL \sig_byte[0]~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \sig_packet[1]~1_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \sig_byte[5]~feeder_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \sig_byte[4]~feeder_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \sig_byte[3]~feeder_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \sig_byte[1]~feeder_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \sig_byte[0]~feeder_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \sig_packet[0]~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \sig_bit~0_combout\ : std_logic;
SIGNAL \sig_bit~q\ : std_logic;
SIGNAL sig_packet : std_logic_vector(11 DOWNTO 0);
SIGNAL \dut|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_address : std_logic_vector(4 DOWNTO 0);
SIGNAL sig_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_state_tx.s9~q\ : std_logic;
SIGNAL \ALT_INV_sig_bit~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_start_triger <= start_triger;
uart_tx_triger <= ww_uart_tx_triger;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (sig_address(4) & sig_address(3) & sig_address(2) & sig_address(1) & sig_address(0));

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
\ALT_INV_state_tx.s9~q\ <= NOT \state_tx.s9~q\;
\ALT_INV_sig_bit~q\ <= NOT \sig_bit~q\;
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

-- Location: IOOBUF_X58_Y54_N2
\uart_tx_triger~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sig_bit~q\,
	devoe => ww_devoe,
	o => \uart_tx_triger~output_o\);

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

-- Location: LCCOMB_X34_Y33_N22
\sig_address[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[0]~4_combout\ = \state_tx.s3~q\ $ (sig_address(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s3~q\,
	datac => sig_address(0),
	combout => \sig_address[0]~4_combout\);

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

-- Location: FF_X34_Y33_N23
\sig_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_address[0]~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_address(0));

-- Location: LCCOMB_X34_Y33_N6
\sig_address[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[1]~5_combout\ = (sig_address(0) & (sig_address(1) $ (VCC))) # (!sig_address(0) & (sig_address(1) & VCC))
-- \sig_address[1]~6\ = CARRY((sig_address(0) & sig_address(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_address(0),
	datab => sig_address(1),
	datad => VCC,
	combout => \sig_address[1]~5_combout\,
	cout => \sig_address[1]~6\);

-- Location: FF_X34_Y33_N7
\sig_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_address[1]~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_address(1));

-- Location: LCCOMB_X34_Y33_N8
\sig_address[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[2]~7_combout\ = (sig_address(2) & (!\sig_address[1]~6\)) # (!sig_address(2) & ((\sig_address[1]~6\) # (GND)))
-- \sig_address[2]~8\ = CARRY((!\sig_address[1]~6\) # (!sig_address(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_address(2),
	datad => VCC,
	cin => \sig_address[1]~6\,
	combout => \sig_address[2]~7_combout\,
	cout => \sig_address[2]~8\);

-- Location: FF_X34_Y33_N9
\sig_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_address[2]~7_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_address(2));

-- Location: LCCOMB_X34_Y33_N10
\sig_address[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[3]~9_combout\ = (sig_address(3) & (\sig_address[2]~8\ $ (GND))) # (!sig_address(3) & (!\sig_address[2]~8\ & VCC))
-- \sig_address[3]~10\ = CARRY((sig_address(3) & !\sig_address[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_address(3),
	datad => VCC,
	cin => \sig_address[2]~8\,
	combout => \sig_address[3]~9_combout\,
	cout => \sig_address[3]~10\);

-- Location: FF_X34_Y33_N11
\sig_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_address[3]~9_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_address(3));

-- Location: LCCOMB_X34_Y33_N24
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!sig_address(1) & (!sig_address(2) & (!sig_address(0) & !sig_address(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_address(1),
	datab => sig_address(2),
	datac => sig_address(0),
	datad => sig_address(3),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X34_Y33_N12
\sig_address[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[4]~11_combout\ = \sig_address[3]~10\ $ (sig_address(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_address(4),
	cin => \sig_address[3]~10\,
	combout => \sig_address[4]~11_combout\);

-- Location: FF_X34_Y33_N13
\sig_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_address[4]~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_address(4));

-- Location: LCCOMB_X34_Y33_N18
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\Equal4~0_combout\ & !sig_address(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datad => sig_address(4),
	combout => \Equal4~1_combout\);

-- Location: IOIBUF_X54_Y54_N29
\start_triger~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_triger,
	o => \start_triger~input_o\);

-- Location: LCCOMB_X35_Y33_N20
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\transmission:sig_cntr[3]~1_combout\ & (\transmission:sig_cntr[2]~q\ $ (((\transmission:sig_cntr[0]~q\ & \transmission:sig_cntr[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[0]~q\,
	datab => \transmission:sig_cntr[1]~q\,
	datac => \transmission:sig_cntr[2]~q\,
	datad => \transmission:sig_cntr[3]~1_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X38_Y34_N13
\baud_clock:cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[6]~q\);

-- Location: FF_X38_Y34_N17
\baud_clock:cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[8]~q\);

-- Location: LCCOMB_X38_Y34_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\baud_clock:cnt_baud[6]~q\ & (\Add0~11\ $ (GND))) # (!\baud_clock:cnt_baud[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\baud_clock:cnt_baud[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_clock:cnt_baud[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X38_Y34_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\baud_clock:cnt_baud[7]~q\ & (!\Add0~13\)) # (!\baud_clock:cnt_baud[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\baud_clock:cnt_baud[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_clock:cnt_baud[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X39_Y34_N4
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~16_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \Add0~18_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X38_Y34_N28
\cnt_baud~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~4_combout\ = (\Add0~14_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Add0~14_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \cnt_baud~4_combout\);

-- Location: FF_X38_Y34_N29
\baud_clock:cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_baud~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[7]~q\);

-- Location: LCCOMB_X38_Y34_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\baud_clock:cnt_baud[8]~q\ & (\Add0~15\ $ (GND))) # (!\baud_clock:cnt_baud[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\baud_clock:cnt_baud[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_clock:cnt_baud[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X39_Y34_N18
\cnt_baud~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~5_combout\ = (\Add0~18_combout\ & (((\Add0~16_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Add0~16_combout\,
	datad => \Add0~18_combout\,
	combout => \cnt_baud~5_combout\);

-- Location: FF_X39_Y34_N19
\baud_clock:cnt_baud[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_baud~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[9]~q\);

-- Location: LCCOMB_X38_Y34_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (\baud_clock:cnt_baud[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \baud_clock:cnt_baud[9]~q\,
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X38_Y34_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \baud_clock:cnt_baud[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\baud_clock:cnt_baud[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_clock:cnt_baud[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X39_Y34_N22
\cnt_baud~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~0_combout\ = (\Add0~16_combout\) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Add0~16_combout\,
	combout => \cnt_baud~0_combout\);

-- Location: LCCOMB_X38_Y34_N20
\cnt_baud~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~1_combout\ = (\Add0~0_combout\ & (((\cnt_baud~0_combout\) # (!\Equal0~1_combout\)) # (!\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \cnt_baud~0_combout\,
	combout => \cnt_baud~1_combout\);

-- Location: FF_X38_Y34_N21
\baud_clock:cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_baud~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[0]~q\);

-- Location: LCCOMB_X38_Y34_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\baud_clock:cnt_baud[1]~q\ & (!\Add0~1\)) # (!\baud_clock:cnt_baud[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\baud_clock:cnt_baud[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_clock:cnt_baud[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X38_Y34_N30
\cnt_baud~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~2_combout\ = (\Add0~2_combout\ & (((\cnt_baud~0_combout\) # (!\Equal0~1_combout\)) # (!\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \cnt_baud~0_combout\,
	combout => \cnt_baud~2_combout\);

-- Location: FF_X38_Y34_N31
\baud_clock:cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_baud~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[1]~q\);

-- Location: LCCOMB_X38_Y34_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\baud_clock:cnt_baud[2]~q\ & (\Add0~3\ $ (GND))) # (!\baud_clock:cnt_baud[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\baud_clock:cnt_baud[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_clock:cnt_baud[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X38_Y34_N5
\baud_clock:cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[2]~q\);

-- Location: LCCOMB_X38_Y34_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\baud_clock:cnt_baud[3]~q\ & (!\Add0~5\)) # (!\baud_clock:cnt_baud[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\baud_clock:cnt_baud[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_clock:cnt_baud[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X38_Y34_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\baud_clock:cnt_baud[4]~q\ & (\Add0~7\ $ (GND))) # (!\baud_clock:cnt_baud[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\baud_clock:cnt_baud[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_clock:cnt_baud[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X38_Y34_N9
\baud_clock:cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[4]~q\);

-- Location: LCCOMB_X38_Y34_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\baud_clock:cnt_baud[5]~q\ & (!\Add0~9\)) # (!\baud_clock:cnt_baud[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\baud_clock:cnt_baud[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_clock:cnt_baud[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X38_Y34_N11
\baud_clock:cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[5]~q\);

-- Location: LCCOMB_X38_Y34_N22
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~12_combout\ & (\Add0~14_combout\ & (!\Add0~8_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~10_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X38_Y34_N24
\cnt_baud~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~3_combout\ = (\Add0~6_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Add0~6_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \cnt_baud~3_combout\);

-- Location: FF_X38_Y34_N25
\baud_clock:cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_baud~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[3]~q\);

-- Location: LCCOMB_X38_Y34_N26
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add0~6_combout\ & (\Add0~2_combout\ & (!\Add0~4_combout\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X39_Y34_N24
\sig_baud_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_baud_clk~0_combout\ = \sig_baud_clk~q\ $ (((\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \sig_baud_clk~q\,
	datad => \Equal0~1_combout\,
	combout => \sig_baud_clk~0_combout\);

-- Location: FF_X39_Y34_N25
sig_baud_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_baud_clk~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_baud_clk~q\);

-- Location: LCCOMB_X36_Y33_N20
\signal_A_q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \signal_A_q~feeder_combout\ = \sig_baud_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_baud_clk~q\,
	combout => \signal_A_q~feeder_combout\);

-- Location: FF_X36_Y33_N21
signal_A_q : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \signal_A_q~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_A_q~q\);

-- Location: FF_X35_Y33_N1
signal_A_q_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \signal_A_q~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_A_q_not~q\);

-- Location: LCCOMB_X35_Y33_N0
sig_arising_edge : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_arising_edge~combout\ = (\signal_A_q~q\ & !\signal_A_q_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_A_q~q\,
	datac => \signal_A_q_not~q\,
	combout => \sig_arising_edge~combout\);

-- Location: LCCOMB_X35_Y33_N26
\transmission:sig_cntr[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmission:sig_cntr[3]~2_combout\ = (\state_tx.s9~q\ & (((\sig_arising_edge~combout\)))) # (!\state_tx.s9~q\ & ((\state_tx.s6~q\) # ((\state_tx.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s9~q\,
	datab => \state_tx.s6~q\,
	datac => \state_tx.s2~q\,
	datad => \sig_arising_edge~combout\,
	combout => \transmission:sig_cntr[3]~2_combout\);

-- Location: FF_X35_Y33_N21
\transmission:sig_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \transmission:sig_cntr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmission:sig_cntr[2]~q\);

-- Location: LCCOMB_X35_Y33_N10
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\transmission:sig_cntr[3]~q\ & (!\transmission:sig_cntr[1]~q\ & (!\transmission:sig_cntr[0]~q\ & \transmission:sig_cntr[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[3]~q\,
	datab => \transmission:sig_cntr[1]~q\,
	datac => \transmission:sig_cntr[0]~q\,
	datad => \transmission:sig_cntr[2]~q\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X35_Y33_N4
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\transmission:sig_cntr[3]~q\ & (!\transmission:sig_cntr[1]~q\ & (\transmission:sig_cntr[0]~q\ & !\transmission:sig_cntr[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[3]~q\,
	datab => \transmission:sig_cntr[1]~q\,
	datac => \transmission:sig_cntr[0]~q\,
	datad => \transmission:sig_cntr[2]~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X35_Y33_N14
\transmission:sig_cntr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmission:sig_cntr[3]~0_combout\ = (\state_tx.s2~q\ & (((\Selector3~0_combout\)))) # (!\state_tx.s2~q\ & (\Equal3~0_combout\ & ((\state_tx.s9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Selector3~0_combout\,
	datac => \state_tx.s2~q\,
	datad => \state_tx.s9~q\,
	combout => \transmission:sig_cntr[3]~0_combout\);

-- Location: LCCOMB_X35_Y33_N24
\transmission:sig_cntr[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmission:sig_cntr[3]~1_combout\ = (\transmission:sig_cntr[3]~0_combout\) # ((\Equal2~0_combout\ & (!\state_tx.s2~q\ & !\state_tx.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \transmission:sig_cntr[3]~0_combout\,
	datac => \state_tx.s2~q\,
	datad => \state_tx.s9~q\,
	combout => \transmission:sig_cntr[3]~1_combout\);

-- Location: LCCOMB_X35_Y33_N30
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!\transmission:sig_cntr[0]~q\ & !\transmission:sig_cntr[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \transmission:sig_cntr[0]~q\,
	datad => \transmission:sig_cntr[3]~1_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X35_Y33_N31
\transmission:sig_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \transmission:sig_cntr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmission:sig_cntr[0]~q\);

-- Location: LCCOMB_X35_Y33_N18
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\transmission:sig_cntr[3]~1_combout\ & (\transmission:sig_cntr[0]~q\ $ (\transmission:sig_cntr[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[0]~q\,
	datac => \transmission:sig_cntr[1]~q\,
	datad => \transmission:sig_cntr[3]~1_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X35_Y33_N19
\transmission:sig_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \transmission:sig_cntr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmission:sig_cntr[1]~q\);

-- Location: LCCOMB_X35_Y33_N28
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \transmission:sig_cntr[3]~q\ $ (((\transmission:sig_cntr[1]~q\ & (\transmission:sig_cntr[0]~q\ & \transmission:sig_cntr[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[3]~q\,
	datab => \transmission:sig_cntr[1]~q\,
	datac => \transmission:sig_cntr[0]~q\,
	datad => \transmission:sig_cntr[2]~q\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X35_Y33_N8
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Add1~0_combout\ & !\transmission:sig_cntr[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datad => \transmission:sig_cntr[3]~1_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X35_Y33_N9
\transmission:sig_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \transmission:sig_cntr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmission:sig_cntr[3]~q\);

-- Location: LCCOMB_X35_Y33_N6
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\transmission:sig_cntr[3]~q\ & (\transmission:sig_cntr[1]~q\ & (\transmission:sig_cntr[0]~q\ & !\transmission:sig_cntr[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[3]~q\,
	datab => \transmission:sig_cntr[1]~q\,
	datac => \transmission:sig_cntr[0]~q\,
	datad => \transmission:sig_cntr[2]~q\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X35_Y33_N22
\state_tx~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_tx~28_combout\ = (\Equal3~0_combout\ & (!\signal_A_q_not~q\ & (\signal_A_q~q\ & \state_tx.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \signal_A_q_not~q\,
	datac => \signal_A_q~q\,
	datad => \state_tx.s9~q\,
	combout => \state_tx~28_combout\);

-- Location: FF_X35_Y33_N23
\state_tx.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_tx~28_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s10~q\);

-- Location: LCCOMB_X34_Y33_N16
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\start_triger~input_o\ & (((!\state_tx.s10~q\)) # (!\Equal4~1_combout\))) # (!\start_triger~input_o\ & (\state_tx.s0~q\ & ((!\state_tx.s10~q\) # (!\Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_triger~input_o\,
	datab => \Equal4~1_combout\,
	datac => \state_tx.s0~q\,
	datad => \state_tx.s10~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X34_Y33_N17
\state_tx.s0\ : dffeas
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
	q => \state_tx.s0~q\);

-- Location: LCCOMB_X34_Y33_N28
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\start_triger~input_o\ & ((\state_tx.s1~q\) # (!\state_tx.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_triger~input_o\,
	datab => \state_tx.s0~q\,
	datac => \state_tx.s1~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X34_Y33_N29
\state_tx.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s1~q\);

-- Location: LCCOMB_X34_Y33_N20
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Equal4~1_combout\ & (\state_tx.s1~q\ & (!\start_triger~input_o\))) # (!\Equal4~1_combout\ & ((\state_tx.s10~q\) # ((\state_tx.s1~q\ & !\start_triger~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \state_tx.s1~q\,
	datac => \start_triger~input_o\,
	datad => \state_tx.s10~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X34_Y33_N0
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\state_tx.s2~q\ & !\Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \state_tx.s2~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X34_Y33_N1
\state_tx.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s2~q\);

-- Location: LCCOMB_X34_Y33_N26
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\state_tx.s2~q\ & \Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_tx.s2~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X34_Y33_N27
\state_tx.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s3~q\);

-- Location: FF_X34_Y33_N31
\state_tx.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_tx.s3~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s4~q\);

-- Location: FF_X34_Y33_N3
\state_tx.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_tx.s4~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s5~q\);

-- Location: LCCOMB_X35_Y33_N16
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state_tx.s5~q\) # ((\state_tx.s6~q\ & !\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_tx.s5~q\,
	datac => \state_tx.s6~q\,
	datad => \Equal2~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X35_Y33_N17
\state_tx.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s6~q\);

-- Location: LCCOMB_X35_Y33_N2
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state_tx.s6~q\ & \Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_tx.s6~q\,
	datad => \Equal2~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X35_Y33_N3
\state_tx.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s7~q\);

-- Location: LCCOMB_X35_Y33_N12
\state_tx.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_tx.s8~feeder_combout\ = \state_tx.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_tx.s7~q\,
	combout => \state_tx.s8~feeder_combout\);

-- Location: FF_X35_Y33_N13
\state_tx.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_tx.s8~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s8~q\);

-- Location: LCCOMB_X36_Y33_N6
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state_tx.s8~q\) # ((\state_tx.s9~q\ & ((!\Equal3~0_combout\) # (!\sig_arising_edge~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s8~q\,
	datab => \sig_arising_edge~combout\,
	datac => \state_tx.s9~q\,
	datad => \Equal3~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X36_Y33_N7
\state_tx.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s9~q\);

-- Location: M9K_X33_Y33_N0
\dut|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0019400BA002E400B8002DC00B6002D400B4002CC00B2002C400B0002BC00AE002B400000008800000000000220000000000008800000000000220000000AB003F800CA003000001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Rom_X_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Rom_X:dut|altsyncram:altsyncram_component|altsyncram_pt81:auto_generated|ALTSYNCRAM",
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
	portare => VCC,
	clk0 => \sysclk~inputclkctrl_outclk\,
	portaaddr => \dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y33_N2
\sig_byte[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_byte[0]~0_combout\ = (\resetn~input_o\ & \state_tx.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~input_o\,
	datac => \state_tx.s5~q\,
	combout => \sig_byte[0]~0_combout\);

-- Location: FF_X32_Y33_N5
\sig_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \dut|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \sig_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_byte(2));

-- Location: FF_X32_Y33_N13
\sig_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \dut|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \sig_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_byte(6));

-- Location: FF_X32_Y33_N15
\sig_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \dut|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \sig_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_byte(7));

-- Location: LCCOMB_X32_Y33_N18
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state_tx.s9~q\) # (sig_byte(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_tx.s9~q\,
	datac => sig_byte(7),
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X36_Y33_N2
\sig_packet[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_packet[1]~1_combout\ = (\resetn~input_o\ & ((\state_tx.s9~q\ & ((\sig_arising_edge~combout\))) # (!\state_tx.s9~q\ & (\state_tx.s7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s7~q\,
	datab => \sig_arising_edge~combout\,
	datac => \resetn~input_o\,
	datad => \state_tx.s9~q\,
	combout => \sig_packet[1]~1_combout\);

-- Location: FF_X32_Y33_N19
\sig_packet[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \sig_packet[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(8));

-- Location: LCCOMB_X32_Y33_N22
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state_tx.s9~q\ & ((sig_packet(8)))) # (!\state_tx.s9~q\ & (sig_byte(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_byte(6),
	datab => sig_packet(8),
	datac => \state_tx.s9~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X32_Y33_N23
\sig_packet[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \sig_packet[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(7));

-- Location: LCCOMB_X32_Y33_N0
\sig_byte[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_byte[5]~feeder_combout\ = \dut|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|altsyncram_component|auto_generated|q_a\(5),
	combout => \sig_byte[5]~feeder_combout\);

-- Location: FF_X32_Y33_N1
\sig_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_byte[5]~feeder_combout\,
	ena => \sig_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_byte(5));

-- Location: LCCOMB_X32_Y33_N10
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state_tx.s9~q\ & (sig_packet(7))) # (!\state_tx.s9~q\ & ((sig_byte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_packet(7),
	datab => sig_byte(5),
	datac => \state_tx.s9~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X32_Y33_N11
\sig_packet[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \sig_packet[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(6));

-- Location: LCCOMB_X32_Y33_N20
\sig_byte[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_byte[4]~feeder_combout\ = \dut|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|altsyncram_component|auto_generated|q_a\(4),
	combout => \sig_byte[4]~feeder_combout\);

-- Location: FF_X32_Y33_N21
\sig_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_byte[4]~feeder_combout\,
	ena => \sig_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_byte(4));

-- Location: LCCOMB_X32_Y33_N30
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state_tx.s9~q\ & (sig_packet(6))) # (!\state_tx.s9~q\ & ((sig_byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_packet(6),
	datab => sig_byte(4),
	datac => \state_tx.s9~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X32_Y33_N31
\sig_packet[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \sig_packet[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(5));

-- Location: LCCOMB_X32_Y33_N24
\sig_byte[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_byte[3]~feeder_combout\ = \dut|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|altsyncram_component|auto_generated|q_a\(3),
	combout => \sig_byte[3]~feeder_combout\);

-- Location: FF_X32_Y33_N25
\sig_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_byte[3]~feeder_combout\,
	ena => \sig_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_byte(3));

-- Location: LCCOMB_X32_Y33_N2
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state_tx.s9~q\ & (sig_packet(5))) # (!\state_tx.s9~q\ & ((sig_byte(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_packet(5),
	datab => sig_byte(3),
	datac => \state_tx.s9~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X32_Y33_N3
\sig_packet[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	ena => \sig_packet[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(4));

-- Location: LCCOMB_X32_Y33_N6
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state_tx.s9~q\ & ((sig_packet(4)))) # (!\state_tx.s9~q\ & (sig_byte(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_byte(2),
	datac => \state_tx.s9~q\,
	datad => sig_packet(4),
	combout => \Selector22~0_combout\);

-- Location: FF_X32_Y33_N7
\sig_packet[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \sig_packet[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(3));

-- Location: LCCOMB_X32_Y33_N16
\sig_byte[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_byte[1]~feeder_combout\ = \dut|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|altsyncram_component|auto_generated|q_a\(1),
	combout => \sig_byte[1]~feeder_combout\);

-- Location: FF_X32_Y33_N17
\sig_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_byte[1]~feeder_combout\,
	ena => \sig_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_byte(1));

-- Location: LCCOMB_X32_Y33_N26
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state_tx.s9~q\ & (sig_packet(3))) # (!\state_tx.s9~q\ & ((sig_byte(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_packet(3),
	datab => sig_byte(1),
	datac => \state_tx.s9~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X32_Y33_N27
\sig_packet[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \sig_packet[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(2));

-- Location: LCCOMB_X32_Y33_N28
\sig_byte[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_byte[0]~feeder_combout\ = \dut|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|altsyncram_component|auto_generated|q_a\(0),
	combout => \sig_byte[0]~feeder_combout\);

-- Location: FF_X32_Y33_N29
\sig_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_byte[0]~feeder_combout\,
	ena => \sig_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_byte(0));

-- Location: LCCOMB_X32_Y33_N8
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\state_tx.s9~q\ & (sig_packet(2))) # (!\state_tx.s9~q\ & ((sig_byte(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_packet(2),
	datab => sig_byte(0),
	datac => \state_tx.s9~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X32_Y33_N9
\sig_packet[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \sig_packet[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(1));

-- Location: LCCOMB_X36_Y33_N24
\sig_packet[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_packet[0]~0_combout\ = (\sig_arising_edge~combout\ & (sig_packet(1))) # (!\sig_arising_edge~combout\ & ((sig_packet(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_packet(1),
	datab => \sig_arising_edge~combout\,
	datac => sig_packet(0),
	combout => \sig_packet[0]~0_combout\);

-- Location: LCCOMB_X36_Y33_N8
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\state_tx.s7~q\ & sig_packet(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s7~q\,
	datad => sig_packet(0),
	combout => \Selector25~0_combout\);

-- Location: FF_X36_Y33_N25
\sig_packet[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_packet[0]~0_combout\,
	asdata => \Selector25~0_combout\,
	sload => \ALT_INV_state_tx.s9~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(0));

-- Location: LCCOMB_X36_Y33_N26
\sig_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_bit~0_combout\ = (\state_tx.s9~q\ & ((\sig_arising_edge~combout\ & ((!sig_packet(0)))) # (!\sig_arising_edge~combout\ & (\sig_bit~q\)))) # (!\state_tx.s9~q\ & (((\sig_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s9~q\,
	datab => \sig_arising_edge~combout\,
	datac => \sig_bit~q\,
	datad => sig_packet(0),
	combout => \sig_bit~0_combout\);

-- Location: FF_X36_Y33_N27
sig_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_bit~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_bit~q\);

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

ww_uart_tx_triger <= \uart_tx_triger~output_o\;
END structure;


