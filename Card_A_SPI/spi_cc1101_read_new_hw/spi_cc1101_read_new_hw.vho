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

-- DATE "04/04/2024 12:44:17"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
	cs : OUT std_logic;
	mosi : OUT std_logic;
	spi_clock : OUT std_logic;
	d0_out : OUT std_logic
	);
END spi_cc1101_read_new_hw;

-- Design Ports Information
-- cs	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mosi	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- spi_clock	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- d0_out	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sysclk	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_cs : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_spi_clock : std_logic;
SIGNAL ww_d0_out : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \cs~output_o\ : std_logic;
SIGNAL \mosi~output_o\ : std_logic;
SIGNAL \spi_clock~output_o\ : std_logic;
SIGNAL \d0_out~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_raw_cntr[0]~3_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \sig_raw_cntr[1]~1_combout\ : std_logic;
SIGNAL \sig_raw_cntr[1]~2\ : std_logic;
SIGNAL \sig_d0_cntr[2]~24_combout\ : std_logic;
SIGNAL \sig_d0_cntr[2]~25\ : std_logic;
SIGNAL \sig_d0_cntr[3]~26_combout\ : std_logic;
SIGNAL \sig_spi_raw_clock~feeder_combout\ : std_logic;
SIGNAL \sig_spi_raw_clock~q\ : std_logic;
SIGNAL \sig_CLK_A_q~q\ : std_logic;
SIGNAL \sig_CLK_A_q_not~q\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \sig_time_cntr[4]~2_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \sig_time_cntr[5]~23_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \sig_time_cntr[6]~1_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \sig_time_cntr[7]~20_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \sig_time_cntr[8]~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \sig_time_cntr[9]~19_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \sig_time_cntr[10]~16_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \sig_time_cntr[11]~15_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \sig_time_cntr[12]~14_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \sig_time_cntr[13]~13_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \sig_time_cntr[14]~18_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \sig_time_cntr[0]~22_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \sig_time_cntr[16]~12_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \sig_time_cntr[17]~11_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \sig_time_cntr[18]~10_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \sig_time_cntr[19]~9_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \sig_time_cntr[20]~8_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \sig_time_cntr[21]~7_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \sig_time_cntr[22]~6_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \sig_time_cntr[23]~5_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \sig_time_cntr[24]~4_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \sig_time_cntr[25]~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \sig_time_cntr[15]~17_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \sig_time_cntr[1]~25_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \sig_time_cntr[2]~21_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \sig_time_cntr[3]~24_combout\ : std_logic;
SIGNAL \sig_time_flag~0_combout\ : std_logic;
SIGNAL \sig_start_power~0_combout\ : std_logic;
SIGNAL \sig_start_power~q\ : std_logic;
SIGNAL \process_5~0_combout\ : std_logic;
SIGNAL \process_5~1_combout\ : std_logic;
SIGNAL \process_5~2_combout\ : std_logic;
SIGNAL \process_5~3_combout\ : std_logic;
SIGNAL \sig_time_flag~1_combout\ : std_logic;
SIGNAL \sig_time_flag~2_combout\ : std_logic;
SIGNAL \sig_time_flag~3_combout\ : std_logic;
SIGNAL \sig_time_flag~q\ : std_logic;
SIGNAL \sig_start_tx_system~q\ : std_logic;
SIGNAL \sig_spi_state_cntr[0]~5_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[3]~12\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~13_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~17_combout\ : std_logic;
SIGNAL \sig_CLK_A_r~combout\ : std_logic;
SIGNAL \state.s7~q\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~18_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.s6~q\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~15_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[0]~6\ : std_logic;
SIGNAL \sig_spi_state_cntr[1]~7_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[1]~8\ : std_logic;
SIGNAL \sig_spi_state_cntr[2]~9_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[2]~10\ : std_logic;
SIGNAL \sig_spi_state_cntr[3]~11_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \state.s8~q\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state.s9~q\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[0]~8_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
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
SIGNAL \sig_cc1101_rd_adr[6]~21\ : std_logic;
SIGNAL \sig_cc1101_rd_adr[7]~22_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \sig_spi_state_cntr[4]~16_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \sig_cs~0_combout\ : std_logic;
SIGNAL \sig_cs~q\ : std_logic;
SIGNAL \sig_mosi~0_combout\ : std_logic;
SIGNAL \sig_tx_reg[7]~0_combout\ : std_logic;
SIGNAL \sig_tx_reg[0]~1_combout\ : std_logic;
SIGNAL \sig_tx_reg[0]~2_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \sig_mosi~1_combout\ : std_logic;
SIGNAL \sig_mosi~q\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
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
SIGNAL \sig_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[4]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[8]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[9]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[10]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[12]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[13]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[14]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[16]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[18]~feeder_combout\ : std_logic;
SIGNAL \sig_shift_reg[19]~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clock_3_out~feeder_combout\ : std_logic;
SIGNAL \sig_spi_clock_3_out~q\ : std_logic;
SIGNAL \sig_d0_cntr[3]~27\ : std_logic;
SIGNAL \sig_d0_cntr[4]~28_combout\ : std_logic;
SIGNAL \sig_d0_cntr[4]~29\ : std_logic;
SIGNAL \sig_d0_cntr[5]~30_combout\ : std_logic;
SIGNAL \sig_d0_cntr[5]~31\ : std_logic;
SIGNAL \sig_d0_cntr[6]~32_combout\ : std_logic;
SIGNAL \sig_d0_cntr[6]~33\ : std_logic;
SIGNAL \sig_d0_cntr[7]~34_combout\ : std_logic;
SIGNAL \sig_d0_cntr[7]~35\ : std_logic;
SIGNAL \sig_d0_cntr[8]~36_combout\ : std_logic;
SIGNAL \sig_d0_cntr[8]~37\ : std_logic;
SIGNAL \sig_d0_cntr[9]~38_combout\ : std_logic;
SIGNAL \sig_d0_cntr[9]~39\ : std_logic;
SIGNAL \sig_d0_cntr[10]~40_combout\ : std_logic;
SIGNAL \sig_d0_cntr[10]~41\ : std_logic;
SIGNAL \sig_d0_cntr[11]~42_combout\ : std_logic;
SIGNAL \sig_d0_cntr[11]~43\ : std_logic;
SIGNAL \sig_d0_cntr[12]~44_combout\ : std_logic;
SIGNAL \sig_d0_cntr[12]~45\ : std_logic;
SIGNAL \sig_d0_cntr[13]~46_combout\ : std_logic;
SIGNAL \sig_d0_cntr[13]~47\ : std_logic;
SIGNAL \sig_d0_cntr[14]~48_combout\ : std_logic;
SIGNAL \sig_d0_cntr[14]~49\ : std_logic;
SIGNAL \sig_d0_cntr[15]~50_combout\ : std_logic;
SIGNAL \sig_d0_cntr[15]~51\ : std_logic;
SIGNAL \sig_d0_cntr[16]~52_combout\ : std_logic;
SIGNAL \sig_d0_cntr[16]~53\ : std_logic;
SIGNAL \sig_d0_cntr[17]~54_combout\ : std_logic;
SIGNAL \sig_d0_cntr[17]~55\ : std_logic;
SIGNAL \sig_d0_cntr[18]~56_combout\ : std_logic;
SIGNAL \sig_d0_cntr[18]~57\ : std_logic;
SIGNAL \sig_d0_cntr[19]~58_combout\ : std_logic;
SIGNAL \sig_d0_cntr[19]~59\ : std_logic;
SIGNAL \sig_d0_cntr[20]~60_combout\ : std_logic;
SIGNAL \sig_d0_cntr[20]~61\ : std_logic;
SIGNAL \sig_d0_cntr[21]~62_combout\ : std_logic;
SIGNAL \sig_d0_cntr[21]~63\ : std_logic;
SIGNAL \sig_d0_cntr[22]~64_combout\ : std_logic;
SIGNAL \sig_d0_cntr[22]~65\ : std_logic;
SIGNAL \sig_d0_cntr[23]~66_combout\ : std_logic;
SIGNAL \sig_d0_cntr[23]~67\ : std_logic;
SIGNAL \sig_d0_cntr[24]~68_combout\ : std_logic;
SIGNAL \sig_d0_cntr[24]~69\ : std_logic;
SIGNAL \sig_d0_cntr[25]~70_combout\ : std_logic;
SIGNAL \d0_out~reg0feeder_combout\ : std_logic;
SIGNAL \d0_out~reg0_q\ : std_logic;
SIGNAL sig_d0_cntr : std_logic_vector(26 DOWNTO 0);
SIGNAL sig_cc1101_rd_adr : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_spi_state_cntr : std_logic_vector(4 DOWNTO 0);
SIGNAL sig_raw_cntr : std_logic_vector(3 DOWNTO 0);
SIGNAL sig_tx_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_shift_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL sig_time_cntr : std_logic_vector(25 DOWNTO 0);
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
cs <= ww_cs;
mosi <= ww_mosi;
spi_clock <= ww_spi_clock;
d0_out <= ww_d0_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
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

-- Location: IOOBUF_X56_Y0_N30
\d0_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0_out~reg0_q\,
	devoe => ww_devoe,
	o => \d0_out~output_o\);

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

-- Location: LCCOMB_X36_Y5_N2
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

-- Location: FF_X36_Y5_N3
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

-- Location: LCCOMB_X36_Y5_N8
\sig_raw_cntr[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_raw_cntr[1]~1_combout\ = (sig_raw_cntr(0) & (sig_raw_cntr(1) $ (VCC))) # (!sig_raw_cntr(0) & (sig_raw_cntr(1) & VCC))
-- \sig_raw_cntr[1]~2\ = CARRY((sig_raw_cntr(0) & sig_raw_cntr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_raw_cntr(0),
	datab => sig_raw_cntr(1),
	datad => VCC,
	combout => \sig_raw_cntr[1]~1_combout\,
	cout => \sig_raw_cntr[1]~2\);

-- Location: FF_X36_Y5_N9
\sig_raw_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_raw_cntr[1]~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_raw_cntr(1));

-- Location: LCCOMB_X36_Y5_N10
\sig_d0_cntr[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[2]~24_combout\ = (sig_d0_cntr(2) & (!\sig_raw_cntr[1]~2\)) # (!sig_d0_cntr(2) & ((\sig_raw_cntr[1]~2\) # (GND)))
-- \sig_d0_cntr[2]~25\ = CARRY((!\sig_raw_cntr[1]~2\) # (!sig_d0_cntr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_d0_cntr(2),
	datad => VCC,
	cin => \sig_raw_cntr[1]~2\,
	combout => \sig_d0_cntr[2]~24_combout\,
	cout => \sig_d0_cntr[2]~25\);

-- Location: FF_X36_Y5_N11
\sig_d0_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[2]~24_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(2));

-- Location: LCCOMB_X36_Y5_N12
\sig_d0_cntr[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[3]~26_combout\ = (sig_d0_cntr(3) & (\sig_d0_cntr[2]~25\ $ (GND))) # (!sig_d0_cntr(3) & (!\sig_d0_cntr[2]~25\ & VCC))
-- \sig_d0_cntr[3]~27\ = CARRY((sig_d0_cntr(3) & !\sig_d0_cntr[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_d0_cntr(3),
	datad => VCC,
	cin => \sig_d0_cntr[2]~25\,
	combout => \sig_d0_cntr[3]~26_combout\,
	cout => \sig_d0_cntr[3]~27\);

-- Location: FF_X36_Y5_N13
\sig_d0_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[3]~26_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(3));

-- Location: LCCOMB_X34_Y16_N28
\sig_spi_raw_clock~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_raw_clock~feeder_combout\ = sig_d0_cntr(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_d0_cntr(3),
	combout => \sig_spi_raw_clock~feeder_combout\);

-- Location: FF_X34_Y16_N29
sig_spi_raw_clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_raw_clock~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_raw_clock~q\);

-- Location: FF_X34_Y16_N23
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

-- Location: FF_X34_Y16_N27
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

-- Location: LCCOMB_X38_Y6_N12
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (sig_time_cntr(3) & (!\Add3~5\)) # (!sig_time_cntr(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!sig_time_cntr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X38_Y6_N14
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (sig_time_cntr(4) & (\Add3~7\ $ (GND))) # (!sig_time_cntr(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((sig_time_cntr(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X39_Y6_N2
\sig_time_cntr[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[4]~2_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(4)))) # (!\LessThan0~7_combout\ & (\Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(4),
	datad => \Equal6~0_combout\,
	combout => \sig_time_cntr[4]~2_combout\);

-- Location: FF_X39_Y6_N3
\sig_time_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[4]~2_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(4));

-- Location: LCCOMB_X38_Y6_N16
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (sig_time_cntr(5) & (!\Add3~9\)) # (!sig_time_cntr(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!sig_time_cntr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X37_Y6_N16
\sig_time_cntr[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[5]~23_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(5)))) # (!\LessThan0~7_combout\ & (\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Add3~10_combout\,
	datac => sig_time_cntr(5),
	datad => \LessThan0~7_combout\,
	combout => \sig_time_cntr[5]~23_combout\);

-- Location: FF_X37_Y6_N17
\sig_time_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[5]~23_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(5));

-- Location: LCCOMB_X38_Y6_N18
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (sig_time_cntr(6) & (\Add3~11\ $ (GND))) # (!sig_time_cntr(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((sig_time_cntr(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X38_Y6_N0
\sig_time_cntr[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[6]~1_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(6))) # (!\LessThan0~7_combout\ & ((\Add3~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \Equal6~0_combout\,
	datac => sig_time_cntr(6),
	datad => \Add3~12_combout\,
	combout => \sig_time_cntr[6]~1_combout\);

-- Location: FF_X38_Y6_N1
\sig_time_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[6]~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(6));

-- Location: LCCOMB_X38_Y6_N20
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (sig_time_cntr(7) & (!\Add3~13\)) # (!sig_time_cntr(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!sig_time_cntr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X37_Y5_N0
\sig_time_cntr[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[7]~20_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(7))) # (!\LessThan0~7_combout\ & ((\Add3~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(7),
	datad => \Add3~14_combout\,
	combout => \sig_time_cntr[7]~20_combout\);

-- Location: FF_X37_Y5_N1
\sig_time_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[7]~20_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(7));

-- Location: LCCOMB_X38_Y6_N22
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (sig_time_cntr(8) & (\Add3~15\ $ (GND))) # (!sig_time_cntr(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((sig_time_cntr(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X39_Y6_N8
\sig_time_cntr[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[8]~0_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(8))) # (!\LessThan0~7_combout\ & ((\Add3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \Equal6~0_combout\,
	datac => sig_time_cntr(8),
	datad => \Add3~16_combout\,
	combout => \sig_time_cntr[8]~0_combout\);

-- Location: FF_X39_Y6_N9
\sig_time_cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[8]~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(8));

-- Location: LCCOMB_X37_Y6_N10
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (sig_time_cntr(8) & (sig_time_cntr(6) & sig_time_cntr(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(8),
	datac => sig_time_cntr(6),
	datad => sig_time_cntr(4),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X38_Y6_N24
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (sig_time_cntr(9) & (!\Add3~17\)) # (!sig_time_cntr(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!sig_time_cntr(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X37_Y5_N6
\sig_time_cntr[9]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[9]~19_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(9))) # (!\LessThan0~7_combout\ & ((\Add3~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(9),
	datad => \Add3~18_combout\,
	combout => \sig_time_cntr[9]~19_combout\);

-- Location: FF_X37_Y5_N7
\sig_time_cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[9]~19_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(9));

-- Location: LCCOMB_X38_Y6_N26
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (sig_time_cntr(10) & (\Add3~19\ $ (GND))) # (!sig_time_cntr(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((sig_time_cntr(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X37_Y5_N22
\sig_time_cntr[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[10]~16_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(10))) # (!\LessThan0~7_combout\ & ((\Add3~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(10),
	datad => \Add3~20_combout\,
	combout => \sig_time_cntr[10]~16_combout\);

-- Location: FF_X37_Y5_N23
\sig_time_cntr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[10]~16_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(10));

-- Location: LCCOMB_X38_Y6_N28
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (sig_time_cntr(11) & (!\Add3~21\)) # (!sig_time_cntr(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!sig_time_cntr(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X37_Y5_N12
\sig_time_cntr[11]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[11]~15_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(11))) # (!\LessThan0~7_combout\ & ((\Add3~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(11),
	datad => \Add3~22_combout\,
	combout => \sig_time_cntr[11]~15_combout\);

-- Location: FF_X37_Y5_N13
\sig_time_cntr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[11]~15_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(11));

-- Location: LCCOMB_X38_Y6_N30
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (sig_time_cntr(12) & (\Add3~23\ $ (GND))) # (!sig_time_cntr(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((sig_time_cntr(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X37_Y5_N2
\sig_time_cntr[12]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[12]~14_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(12)))) # (!\LessThan0~7_combout\ & (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Add3~24_combout\,
	datac => sig_time_cntr(12),
	datad => \LessThan0~7_combout\,
	combout => \sig_time_cntr[12]~14_combout\);

-- Location: FF_X37_Y5_N3
\sig_time_cntr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[12]~14_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(12));

-- Location: LCCOMB_X38_Y5_N0
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (sig_time_cntr(13) & (!\Add3~25\)) # (!sig_time_cntr(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!sig_time_cntr(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X37_Y5_N16
\sig_time_cntr[13]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[13]~13_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(13)))) # (!\LessThan0~7_combout\ & (\Add3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Add3~26_combout\,
	datac => sig_time_cntr(13),
	datad => \LessThan0~7_combout\,
	combout => \sig_time_cntr[13]~13_combout\);

-- Location: FF_X37_Y5_N17
\sig_time_cntr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[13]~13_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(13));

-- Location: LCCOMB_X38_Y5_N2
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (sig_time_cntr(14) & (\Add3~27\ $ (GND))) # (!sig_time_cntr(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((sig_time_cntr(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X37_Y5_N4
\sig_time_cntr[14]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[14]~18_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(14))) # (!\LessThan0~7_combout\ & ((\Add3~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(14),
	datad => \Add3~28_combout\,
	combout => \sig_time_cntr[14]~18_combout\);

-- Location: FF_X37_Y5_N5
\sig_time_cntr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[14]~18_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(14));

-- Location: LCCOMB_X37_Y5_N18
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (sig_time_cntr(15) & (sig_time_cntr(9) & (sig_time_cntr(14) & !sig_time_cntr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(15),
	datab => sig_time_cntr(9),
	datac => sig_time_cntr(14),
	datad => sig_time_cntr(7),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X38_Y6_N6
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = sig_time_cntr(0) $ (VCC)
-- \Add3~1\ = CARRY(sig_time_cntr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X38_Y6_N2
\sig_time_cntr[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[0]~22_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(0))) # (!\LessThan0~7_combout\ & ((\Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \Equal6~0_combout\,
	datac => sig_time_cntr(0),
	datad => \Add3~0_combout\,
	combout => \sig_time_cntr[0]~22_combout\);

-- Location: FF_X38_Y6_N3
\sig_time_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[0]~22_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(0));

-- Location: LCCOMB_X37_Y6_N28
\Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (\Equal5~1_combout\ & (!sig_time_cntr(2) & !sig_time_cntr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datac => sig_time_cntr(2),
	datad => sig_time_cntr(0),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X37_Y5_N24
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!sig_time_cntr(11) & (!sig_time_cntr(12) & (!sig_time_cntr(10) & !sig_time_cntr(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(11),
	datab => sig_time_cntr(12),
	datac => sig_time_cntr(10),
	datad => sig_time_cntr(13),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X38_Y5_N4
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (sig_time_cntr(15) & (!\Add3~29\)) # (!sig_time_cntr(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!sig_time_cntr(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X38_Y5_N6
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (sig_time_cntr(16) & (\Add3~31\ $ (GND))) # (!sig_time_cntr(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((sig_time_cntr(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X39_Y5_N2
\sig_time_cntr[16]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[16]~12_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(16)))) # (!\LessThan0~7_combout\ & (\Add3~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => \Equal6~0_combout\,
	datac => sig_time_cntr(16),
	datad => \LessThan0~7_combout\,
	combout => \sig_time_cntr[16]~12_combout\);

-- Location: FF_X39_Y5_N3
\sig_time_cntr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[16]~12_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(16));

-- Location: LCCOMB_X38_Y5_N8
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (sig_time_cntr(17) & (!\Add3~33\)) # (!sig_time_cntr(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!sig_time_cntr(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X38_Y5_N28
\sig_time_cntr[17]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[17]~11_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(17)))) # (!\LessThan0~7_combout\ & (\Add3~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \Add3~34_combout\,
	datac => sig_time_cntr(17),
	datad => \Equal6~0_combout\,
	combout => \sig_time_cntr[17]~11_combout\);

-- Location: FF_X38_Y5_N29
\sig_time_cntr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[17]~11_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(17));

-- Location: LCCOMB_X38_Y5_N10
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (sig_time_cntr(18) & (\Add3~35\ $ (GND))) # (!sig_time_cntr(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((sig_time_cntr(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X39_Y5_N6
\sig_time_cntr[18]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[18]~10_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(18)))) # (!\LessThan0~7_combout\ & (\Add3~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~36_combout\,
	datab => \Equal6~0_combout\,
	datac => sig_time_cntr(18),
	datad => \LessThan0~7_combout\,
	combout => \sig_time_cntr[18]~10_combout\);

-- Location: FF_X39_Y5_N7
\sig_time_cntr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[18]~10_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(18));

-- Location: LCCOMB_X38_Y5_N12
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (sig_time_cntr(19) & (!\Add3~37\)) # (!sig_time_cntr(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!sig_time_cntr(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X39_Y5_N20
\sig_time_cntr[19]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[19]~9_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(19)))) # (!\LessThan0~7_combout\ & (\Add3~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \Equal6~0_combout\,
	datac => sig_time_cntr(19),
	datad => \LessThan0~7_combout\,
	combout => \sig_time_cntr[19]~9_combout\);

-- Location: FF_X39_Y5_N21
\sig_time_cntr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[19]~9_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(19));

-- Location: LCCOMB_X38_Y5_N14
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (sig_time_cntr(20) & (\Add3~39\ $ (GND))) # (!sig_time_cntr(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((sig_time_cntr(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X39_Y5_N26
\sig_time_cntr[20]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[20]~8_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(20)))) # (!\LessThan0~7_combout\ & (\Add3~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~40_combout\,
	datab => \Equal6~0_combout\,
	datac => sig_time_cntr(20),
	datad => \LessThan0~7_combout\,
	combout => \sig_time_cntr[20]~8_combout\);

-- Location: FF_X39_Y5_N27
\sig_time_cntr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[20]~8_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(20));

-- Location: LCCOMB_X38_Y5_N16
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (sig_time_cntr(21) & (!\Add3~41\)) # (!sig_time_cntr(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!sig_time_cntr(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X39_Y5_N0
\sig_time_cntr[21]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[21]~7_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(21)))) # (!\LessThan0~7_combout\ & (\Add3~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~42_combout\,
	datab => \Equal6~0_combout\,
	datac => sig_time_cntr(21),
	datad => \LessThan0~7_combout\,
	combout => \sig_time_cntr[21]~7_combout\);

-- Location: FF_X39_Y5_N1
\sig_time_cntr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[21]~7_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(21));

-- Location: LCCOMB_X39_Y5_N24
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!sig_time_cntr(18) & (!sig_time_cntr(21) & (!sig_time_cntr(20) & !sig_time_cntr(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(18),
	datab => sig_time_cntr(21),
	datac => sig_time_cntr(20),
	datad => sig_time_cntr(19),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y5_N18
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (sig_time_cntr(22) & (\Add3~43\ $ (GND))) # (!sig_time_cntr(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((sig_time_cntr(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X38_Y5_N26
\sig_time_cntr[22]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[22]~6_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(22))) # (!\LessThan0~7_combout\ & ((\Add3~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \Equal6~0_combout\,
	datac => sig_time_cntr(22),
	datad => \Add3~44_combout\,
	combout => \sig_time_cntr[22]~6_combout\);

-- Location: FF_X38_Y5_N27
\sig_time_cntr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[22]~6_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(22));

-- Location: LCCOMB_X38_Y5_N20
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (sig_time_cntr(23) & (!\Add3~45\)) # (!sig_time_cntr(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!sig_time_cntr(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X37_Y5_N20
\sig_time_cntr[23]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[23]~5_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(23))) # (!\LessThan0~7_combout\ & ((\Add3~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(23),
	datad => \Add3~46_combout\,
	combout => \sig_time_cntr[23]~5_combout\);

-- Location: FF_X37_Y5_N21
\sig_time_cntr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[23]~5_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(23));

-- Location: LCCOMB_X38_Y5_N22
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (sig_time_cntr(24) & (\Add3~47\ $ (GND))) # (!sig_time_cntr(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((sig_time_cntr(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X37_Y5_N10
\sig_time_cntr[24]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[24]~4_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(24))) # (!\LessThan0~7_combout\ & ((\Add3~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(24),
	datad => \Add3~48_combout\,
	combout => \sig_time_cntr[24]~4_combout\);

-- Location: FF_X37_Y5_N11
\sig_time_cntr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[24]~4_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(24));

-- Location: LCCOMB_X38_Y5_N24
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = \Add3~49\ $ (sig_time_cntr(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_time_cntr(25),
	cin => \Add3~49\,
	combout => \Add3~50_combout\);

-- Location: LCCOMB_X37_Y5_N8
\sig_time_cntr[25]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[25]~3_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(25))) # (!\LessThan0~7_combout\ & ((\Add3~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(25),
	datad => \Add3~50_combout\,
	combout => \sig_time_cntr[25]~3_combout\);

-- Location: FF_X37_Y5_N9
\sig_time_cntr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[25]~3_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(25));

-- Location: LCCOMB_X37_Y5_N30
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!sig_time_cntr(24) & (!sig_time_cntr(23) & (!sig_time_cntr(25) & !sig_time_cntr(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(24),
	datab => sig_time_cntr(23),
	datac => sig_time_cntr(25),
	datad => sig_time_cntr(22),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y5_N30
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!sig_time_cntr(16) & (!sig_time_cntr(17) & (\LessThan0~1_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(16),
	datab => sig_time_cntr(17),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y6_N14
\Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (\Equal5~0_combout\ & (\Equal5~2_combout\ & (\LessThan0~3_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal5~2_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X37_Y6_N30
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!sig_time_cntr(1) & (sig_time_cntr(5) & (\Equal5~3_combout\ & sig_time_cntr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(1),
	datab => sig_time_cntr(5),
	datac => \Equal5~3_combout\,
	datad => sig_time_cntr(3),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X37_Y5_N26
\sig_time_cntr[15]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[15]~17_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & (sig_time_cntr(15))) # (!\LessThan0~7_combout\ & ((\Add3~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(15),
	datad => \Add3~30_combout\,
	combout => \sig_time_cntr[15]~17_combout\);

-- Location: FF_X37_Y5_N27
\sig_time_cntr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[15]~17_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(15));

-- Location: LCCOMB_X37_Y6_N26
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!sig_time_cntr(1) & (!sig_time_cntr(5) & (!sig_time_cntr(6) & !sig_time_cntr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(1),
	datab => sig_time_cntr(5),
	datac => sig_time_cntr(6),
	datad => sig_time_cntr(3),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X37_Y6_N20
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (sig_time_cntr(8) & ((sig_time_cntr(4)) # ((sig_time_cntr(2)) # (!\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(4),
	datab => sig_time_cntr(8),
	datac => sig_time_cntr(2),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X37_Y5_N28
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~3_combout\ & (((!sig_time_cntr(7)) # (!sig_time_cntr(9))) # (!\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~3_combout\,
	datac => sig_time_cntr(9),
	datad => sig_time_cntr(7),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X37_Y5_N14
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ((sig_time_cntr(15) & (!\LessThan0~6_combout\ & sig_time_cntr(14)))) # (!\LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(15),
	datab => \LessThan0~6_combout\,
	datac => sig_time_cntr(14),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X38_Y6_N8
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (sig_time_cntr(1) & (!\Add3~1\)) # (!sig_time_cntr(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!sig_time_cntr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_time_cntr(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X38_Y6_N4
\sig_time_cntr[1]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[1]~25_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(1)))) # (!\LessThan0~7_combout\ & (\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \Add3~2_combout\,
	datac => sig_time_cntr(1),
	datad => \Equal6~0_combout\,
	combout => \sig_time_cntr[1]~25_combout\);

-- Location: FF_X38_Y6_N5
\sig_time_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[1]~25_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(1));

-- Location: LCCOMB_X38_Y6_N10
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (sig_time_cntr(2) & (\Add3~3\ $ (GND))) # (!sig_time_cntr(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((sig_time_cntr(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X39_Y6_N20
\sig_time_cntr[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[2]~21_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(2)))) # (!\LessThan0~7_combout\ & (\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(2),
	datad => \Equal6~0_combout\,
	combout => \sig_time_cntr[2]~21_combout\);

-- Location: FF_X39_Y6_N21
\sig_time_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[2]~21_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(2));

-- Location: LCCOMB_X39_Y6_N6
\sig_time_cntr[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_cntr[3]~24_combout\ = (!\Equal6~0_combout\ & ((\LessThan0~7_combout\ & ((sig_time_cntr(3)))) # (!\LessThan0~7_combout\ & (\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \LessThan0~7_combout\,
	datac => sig_time_cntr(3),
	datad => \Equal6~0_combout\,
	combout => \sig_time_cntr[3]~24_combout\);

-- Location: FF_X39_Y6_N7
\sig_time_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_cntr[3]~24_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_time_cntr(3));

-- Location: LCCOMB_X37_Y6_N2
\sig_time_flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_flag~0_combout\ = (sig_time_cntr(5) & ((!sig_time_cntr(3)))) # (!sig_time_cntr(5) & (sig_time_cntr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(1),
	datab => sig_time_cntr(5),
	datad => sig_time_cntr(3),
	combout => \sig_time_flag~0_combout\);

-- Location: LCCOMB_X37_Y6_N22
\sig_start_power~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_start_power~0_combout\ = (\sig_start_power~q\) # (\process_5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_start_power~q\,
	datad => \process_5~3_combout\,
	combout => \sig_start_power~0_combout\);

-- Location: FF_X37_Y6_N23
sig_start_power : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_start_power~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_start_power~q\);

-- Location: LCCOMB_X37_Y6_N4
\process_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~0_combout\ = (!sig_time_cntr(14) & (sig_time_cntr(5) & (!sig_time_cntr(15) & !sig_time_cntr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(14),
	datab => sig_time_cntr(5),
	datac => sig_time_cntr(15),
	datad => sig_time_cntr(1),
	combout => \process_5~0_combout\);

-- Location: LCCOMB_X37_Y6_N8
\process_5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~1_combout\ = (!\sig_start_power~q\ & (!sig_time_cntr(9) & (\process_5~0_combout\ & sig_time_cntr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_start_power~q\,
	datab => sig_time_cntr(9),
	datac => \process_5~0_combout\,
	datad => sig_time_cntr(7),
	combout => \process_5~1_combout\);

-- Location: LCCOMB_X37_Y6_N18
\process_5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~2_combout\ = (\Equal5~0_combout\ & (\process_5~1_combout\ & (\LessThan0~3_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \process_5~1_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \process_5~2_combout\);

-- Location: LCCOMB_X37_Y6_N12
\process_5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~3_combout\ = (sig_time_cntr(0) & (\process_5~2_combout\ & (!sig_time_cntr(2) & sig_time_cntr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(0),
	datab => \process_5~2_combout\,
	datac => sig_time_cntr(2),
	datad => sig_time_cntr(3),
	combout => \process_5~3_combout\);

-- Location: LCCOMB_X37_Y6_N6
\sig_time_flag~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_flag~1_combout\ = (!sig_time_cntr(0) & (\process_5~2_combout\ & sig_time_cntr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(0),
	datab => \process_5~2_combout\,
	datac => sig_time_cntr(2),
	combout => \sig_time_flag~1_combout\);

-- Location: LCCOMB_X37_Y6_N0
\sig_time_flag~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_flag~2_combout\ = (!\process_5~3_combout\ & ((\sig_time_flag~q\) # ((\sig_time_flag~1_combout\ & !sig_time_cntr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_5~3_combout\,
	datab => \sig_time_flag~q\,
	datac => \sig_time_flag~1_combout\,
	datad => sig_time_cntr(3),
	combout => \sig_time_flag~2_combout\);

-- Location: LCCOMB_X37_Y6_N24
\sig_time_flag~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_time_flag~3_combout\ = (sig_time_cntr(3) & (\sig_time_flag~2_combout\ & ((!\Equal5~3_combout\) # (!\sig_time_flag~0_combout\)))) # (!sig_time_cntr(3) & ((\sig_time_flag~2_combout\) # ((!\sig_time_flag~0_combout\ & \Equal5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_time_cntr(3),
	datab => \sig_time_flag~0_combout\,
	datac => \Equal5~3_combout\,
	datad => \sig_time_flag~2_combout\,
	combout => \sig_time_flag~3_combout\);

-- Location: FF_X37_Y6_N25
sig_time_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_time_flag~3_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_time_flag~q\);

-- Location: FF_X34_Y16_N21
sig_start_tx_system : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_time_flag~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_start_tx_system~q\);

-- Location: LCCOMB_X35_Y16_N0
\sig_spi_state_cntr[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[0]~5_combout\ = sig_spi_state_cntr(0) $ (VCC)
-- \sig_spi_state_cntr[0]~6\ = CARRY(sig_spi_state_cntr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_spi_state_cntr(0),
	datad => VCC,
	combout => \sig_spi_state_cntr[0]~5_combout\,
	cout => \sig_spi_state_cntr[0]~6\);

-- Location: LCCOMB_X35_Y16_N6
\sig_spi_state_cntr[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[3]~11_combout\ = (sig_spi_state_cntr(3) & (!\sig_spi_state_cntr[2]~10\)) # (!sig_spi_state_cntr(3) & ((\sig_spi_state_cntr[2]~10\) # (GND)))
-- \sig_spi_state_cntr[3]~12\ = CARRY((!\sig_spi_state_cntr[2]~10\) # (!sig_spi_state_cntr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(3),
	datad => VCC,
	cin => \sig_spi_state_cntr[2]~10\,
	combout => \sig_spi_state_cntr[3]~11_combout\,
	cout => \sig_spi_state_cntr[3]~12\);

-- Location: LCCOMB_X35_Y16_N8
\sig_spi_state_cntr[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~13_combout\ = sig_spi_state_cntr(4) $ (!\sig_spi_state_cntr[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_spi_state_cntr(4),
	cin => \sig_spi_state_cntr[3]~12\,
	combout => \sig_spi_state_cntr[4]~13_combout\);

-- Location: LCCOMB_X34_Y16_N26
\sig_spi_state_cntr[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~17_combout\ = (\sig_CLK_A_q~q\ & (!\state.s2~q\ & (!\sig_CLK_A_q_not~q\ & !\state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_q~q\,
	datab => \state.s2~q\,
	datac => \sig_CLK_A_q_not~q\,
	datad => \state.s1~q\,
	combout => \sig_spi_state_cntr[4]~17_combout\);

-- Location: LCCOMB_X34_Y16_N22
sig_CLK_A_r : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_CLK_A_r~combout\ = (\sig_CLK_A_q~q\ & !\sig_CLK_A_q_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_CLK_A_q~q\,
	datad => \sig_CLK_A_q_not~q\,
	combout => \sig_CLK_A_r~combout\);

-- Location: FF_X34_Y16_N9
\state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state.s6~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s7~q\);

-- Location: LCCOMB_X34_Y16_N8
\sig_spi_state_cntr[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~18_combout\ = (\sig_spi_state_cntr[4]~17_combout\ & (\sig_spi_state_cntr[4]~16_combout\ & (!\state.s7~q\ & !\state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_spi_state_cntr[4]~17_combout\,
	datab => \sig_spi_state_cntr[4]~16_combout\,
	datac => \state.s7~q\,
	datad => \state.s3~q\,
	combout => \sig_spi_state_cntr[4]~18_combout\);

-- Location: FF_X35_Y16_N9
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
	sclr => \sig_spi_state_cntr[4]~15_combout\,
	ena => \sig_spi_state_cntr[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(4));

-- Location: LCCOMB_X35_Y16_N26
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.s3~q\) # ((\state.s5~q\ & ((sig_spi_state_cntr(4)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datab => sig_spi_state_cntr(4),
	datac => \state.s5~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X35_Y16_N27
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

-- Location: LCCOMB_X35_Y16_N24
\state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (\state.s5~q\ & (\Equal0~0_combout\ & !sig_spi_state_cntr(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s5~q\,
	datab => \Equal0~0_combout\,
	datac => sig_spi_state_cntr(4),
	combout => \state~19_combout\);

-- Location: FF_X35_Y16_N25
\state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state~19_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s6~q\);

-- Location: LCCOMB_X35_Y16_N10
\sig_spi_state_cntr[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~15_combout\ = \state.s6~q\ $ (\state.s0~q\ $ (!\state.s9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s6~q\,
	datab => \state.s0~q\,
	datad => \state.s9~q\,
	combout => \sig_spi_state_cntr[4]~15_combout\);

-- Location: FF_X35_Y16_N1
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
	sclr => \sig_spi_state_cntr[4]~15_combout\,
	ena => \sig_spi_state_cntr[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(0));

-- Location: LCCOMB_X35_Y16_N2
\sig_spi_state_cntr[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[1]~7_combout\ = (sig_spi_state_cntr(1) & (!\sig_spi_state_cntr[0]~6\)) # (!sig_spi_state_cntr(1) & ((\sig_spi_state_cntr[0]~6\) # (GND)))
-- \sig_spi_state_cntr[1]~8\ = CARRY((!\sig_spi_state_cntr[0]~6\) # (!sig_spi_state_cntr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_spi_state_cntr(1),
	datad => VCC,
	cin => \sig_spi_state_cntr[0]~6\,
	combout => \sig_spi_state_cntr[1]~7_combout\,
	cout => \sig_spi_state_cntr[1]~8\);

-- Location: FF_X35_Y16_N3
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
	sclr => \sig_spi_state_cntr[4]~15_combout\,
	ena => \sig_spi_state_cntr[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(1));

-- Location: LCCOMB_X35_Y16_N4
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

-- Location: FF_X35_Y16_N5
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
	sclr => \sig_spi_state_cntr[4]~15_combout\,
	ena => \sig_spi_state_cntr[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(2));

-- Location: FF_X35_Y16_N7
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
	sclr => \sig_spi_state_cntr[4]~15_combout\,
	ena => \sig_spi_state_cntr[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_spi_state_cntr(3));

-- Location: LCCOMB_X35_Y16_N28
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!sig_spi_state_cntr(3) & (sig_spi_state_cntr(1) & (sig_spi_state_cntr(2) & sig_spi_state_cntr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_spi_state_cntr(3),
	datab => sig_spi_state_cntr(1),
	datac => sig_spi_state_cntr(2),
	datad => sig_spi_state_cntr(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X35_Y16_N20
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.s7~q\) # ((\state.s8~q\ & ((sig_spi_state_cntr(4)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s7~q\,
	datab => sig_spi_state_cntr(4),
	datac => \state.s8~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X35_Y16_N21
\state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s8~q\);

-- Location: LCCOMB_X35_Y16_N30
\state~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\Equal0~0_combout\ & (!sig_spi_state_cntr(4) & \state.s8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => sig_spi_state_cntr(4),
	datad => \state.s8~q\,
	combout => \state~17_combout\);

-- Location: FF_X35_Y16_N31
\state.s9\ : dffeas
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
	q => \state.s9~q\);

-- Location: LCCOMB_X35_Y18_N8
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

-- Location: LCCOMB_X35_Y18_N0
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

-- Location: LCCOMB_X34_Y16_N20
\sig_cc1101_rd_adr[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[7]~24_combout\ = (\sig_CLK_A_r~combout\ & ((\state.s0~q\ & (\state.s9~q\)) # (!\state.s0~q\ & ((\sig_start_tx_system~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s9~q\,
	datab => \sig_CLK_A_r~combout\,
	datac => \sig_start_tx_system~q\,
	datad => \state.s0~q\,
	combout => \sig_cc1101_rd_adr[7]~24_combout\);

-- Location: FF_X35_Y18_N9
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

-- Location: LCCOMB_X35_Y18_N10
\sig_cc1101_rd_adr[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[1]~10_combout\ = (sig_cc1101_rd_adr(1) & (!\sig_cc1101_rd_adr[0]~9\)) # (!sig_cc1101_rd_adr(1) & ((\sig_cc1101_rd_adr[0]~9\) # (GND)))
-- \sig_cc1101_rd_adr[1]~11\ = CARRY((!\sig_cc1101_rd_adr[0]~9\) # (!sig_cc1101_rd_adr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(1),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[0]~9\,
	combout => \sig_cc1101_rd_adr[1]~10_combout\,
	cout => \sig_cc1101_rd_adr[1]~11\);

-- Location: FF_X35_Y18_N11
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

-- Location: LCCOMB_X35_Y18_N12
\sig_cc1101_rd_adr[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[2]~12_combout\ = (sig_cc1101_rd_adr(2) & (\sig_cc1101_rd_adr[1]~11\ $ (GND))) # (!sig_cc1101_rd_adr(2) & (!\sig_cc1101_rd_adr[1]~11\ & VCC))
-- \sig_cc1101_rd_adr[2]~13\ = CARRY((sig_cc1101_rd_adr(2) & !\sig_cc1101_rd_adr[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(2),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[1]~11\,
	combout => \sig_cc1101_rd_adr[2]~12_combout\,
	cout => \sig_cc1101_rd_adr[2]~13\);

-- Location: FF_X35_Y18_N13
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

-- Location: LCCOMB_X35_Y18_N14
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

-- Location: FF_X35_Y18_N15
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

-- Location: LCCOMB_X35_Y18_N16
\sig_cc1101_rd_adr[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[4]~16_combout\ = (sig_cc1101_rd_adr(4) & (\sig_cc1101_rd_adr[3]~15\ $ (GND))) # (!sig_cc1101_rd_adr(4) & (!\sig_cc1101_rd_adr[3]~15\ & VCC))
-- \sig_cc1101_rd_adr[4]~17\ = CARRY((sig_cc1101_rd_adr(4) & !\sig_cc1101_rd_adr[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(4),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[3]~15\,
	combout => \sig_cc1101_rd_adr[4]~16_combout\,
	cout => \sig_cc1101_rd_adr[4]~17\);

-- Location: FF_X35_Y18_N17
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

-- Location: LCCOMB_X35_Y18_N18
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

-- Location: FF_X35_Y18_N19
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

-- Location: LCCOMB_X35_Y18_N20
\sig_cc1101_rd_adr[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[6]~20_combout\ = (sig_cc1101_rd_adr(6) & (\sig_cc1101_rd_adr[5]~19\ $ (GND))) # (!sig_cc1101_rd_adr(6) & (!\sig_cc1101_rd_adr[5]~19\ & VCC))
-- \sig_cc1101_rd_adr[6]~21\ = CARRY((sig_cc1101_rd_adr(6) & !\sig_cc1101_rd_adr[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cc1101_rd_adr(6),
	datad => VCC,
	cin => \sig_cc1101_rd_adr[5]~19\,
	combout => \sig_cc1101_rd_adr[6]~20_combout\,
	cout => \sig_cc1101_rd_adr[6]~21\);

-- Location: FF_X35_Y18_N21
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

-- Location: LCCOMB_X35_Y18_N22
\sig_cc1101_rd_adr[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cc1101_rd_adr[7]~22_combout\ = sig_cc1101_rd_adr(7) $ (\sig_cc1101_rd_adr[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(7),
	cin => \sig_cc1101_rd_adr[6]~21\,
	combout => \sig_cc1101_rd_adr[7]~22_combout\);

-- Location: FF_X35_Y18_N23
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

-- Location: LCCOMB_X35_Y18_N24
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (sig_cc1101_rd_adr(2) & (sig_cc1101_rd_adr(0) & (sig_cc1101_rd_adr(7) & sig_cc1101_rd_adr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(2),
	datab => sig_cc1101_rd_adr(0),
	datac => sig_cc1101_rd_adr(7),
	datad => sig_cc1101_rd_adr(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X35_Y18_N26
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!sig_cc1101_rd_adr(6) & (sig_cc1101_rd_adr(5) & (sig_cc1101_rd_adr(3) & sig_cc1101_rd_adr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cc1101_rd_adr(6),
	datab => sig_cc1101_rd_adr(5),
	datac => sig_cc1101_rd_adr(3),
	datad => sig_cc1101_rd_adr(4),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X35_Y18_N28
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~0_combout\ & \Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X34_Y16_N24
\sig_spi_state_cntr[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_state_cntr[4]~16_combout\ = (\state.s9~q\ & (!\Equal1~2_combout\ & ((\sig_start_tx_system~q\) # (\state.s0~q\)))) # (!\state.s9~q\ & ((\sig_start_tx_system~q\) # ((\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s9~q\,
	datab => \sig_start_tx_system~q\,
	datac => \state.s0~q\,
	datad => \Equal1~2_combout\,
	combout => \sig_spi_state_cntr[4]~16_combout\);

-- Location: FF_X34_Y16_N25
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_state_cntr[4]~16_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LCCOMB_X34_Y16_N12
\state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (\sig_start_tx_system~q\ & ((\state.s1~q\) # (!\state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_start_tx_system~q\,
	datac => \state.s1~q\,
	datad => \state.s0~q\,
	combout => \state~18_combout\);

-- Location: FF_X34_Y16_N13
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

-- Location: LCCOMB_X34_Y16_N16
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\state.s1~q\ & (((\state.s9~q\ & !\Equal1~2_combout\)) # (!\sig_start_tx_system~q\))) # (!\state.s1~q\ & (((\state.s9~q\ & !\Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \sig_start_tx_system~q\,
	datac => \state.s9~q\,
	datad => \Equal1~2_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X34_Y16_N17
\state.s2\ : dffeas
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
	q => \state.s2~q\);

-- Location: FF_X34_Y16_N3
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

-- Location: LCCOMB_X34_Y16_N0
\sig_cs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cs~0_combout\ = (\sig_cs~q\) # ((\sig_CLK_A_q~q\ & (!\sig_CLK_A_q_not~q\ & \state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_q~q\,
	datab => \sig_CLK_A_q_not~q\,
	datac => \sig_cs~q\,
	datad => \state.s3~q\,
	combout => \sig_cs~0_combout\);

-- Location: FF_X34_Y16_N1
sig_cs : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cs~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cs~q\);

-- Location: LCCOMB_X34_Y16_N30
\sig_mosi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_mosi~0_combout\ = (\resetn~input_o\ & (!\sig_CLK_A_q_not~q\ & (\sig_CLK_A_q~q\ & \state.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \sig_CLK_A_q_not~q\,
	datac => \sig_CLK_A_q~q\,
	datad => \state.s5~q\,
	combout => \sig_mosi~0_combout\);

-- Location: LCCOMB_X34_Y16_N2
\sig_tx_reg[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[7]~0_combout\ = (\resetn~input_o\ & (\sig_CLK_A_r~combout\ & ((\state.s2~q\) # (\state.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \sig_CLK_A_r~combout\,
	datac => \state.s2~q\,
	datad => \state.s5~q\,
	combout => \sig_tx_reg[7]~0_combout\);

-- Location: LCCOMB_X35_Y18_N6
\sig_tx_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[0]~1_combout\ = (\sig_CLK_A_r~combout\ & (\resetn~input_o\ & (sig_cc1101_rd_adr(0) & \state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_CLK_A_r~combout\,
	datab => \resetn~input_o\,
	datac => sig_cc1101_rd_adr(0),
	datad => \state.s2~q\,
	combout => \sig_tx_reg[0]~1_combout\);

-- Location: LCCOMB_X34_Y18_N6
\sig_tx_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_tx_reg[0]~2_combout\ = (\sig_tx_reg[0]~1_combout\) # ((!\sig_tx_reg[7]~0_combout\ & sig_tx_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_tx_reg[7]~0_combout\,
	datac => sig_tx_reg(0),
	datad => \sig_tx_reg[0]~1_combout\,
	combout => \sig_tx_reg[0]~2_combout\);

-- Location: FF_X34_Y18_N7
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

-- Location: LCCOMB_X34_Y18_N4
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.s5~q\ & (sig_tx_reg(0))) # (!\state.s5~q\ & ((sig_cc1101_rd_adr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_tx_reg(0),
	datab => \state.s5~q\,
	datac => sig_cc1101_rd_adr(1),
	combout => \Selector23~0_combout\);

-- Location: FF_X34_Y18_N5
\sig_tx_reg[1]\ : dffeas
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
	q => sig_tx_reg(1));

-- Location: LCCOMB_X34_Y18_N10
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state.s5~q\ & ((sig_tx_reg(1)))) # (!\state.s5~q\ & (sig_cc1101_rd_adr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s5~q\,
	datac => sig_cc1101_rd_adr(2),
	datad => sig_tx_reg(1),
	combout => \Selector22~0_combout\);

-- Location: FF_X34_Y18_N11
\sig_tx_reg[2]\ : dffeas
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
	q => sig_tx_reg(2));

-- Location: LCCOMB_X34_Y18_N24
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state.s5~q\ & (sig_tx_reg(2))) # (!\state.s5~q\ & ((sig_cc1101_rd_adr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_tx_reg(2),
	datab => \state.s5~q\,
	datac => sig_cc1101_rd_adr(3),
	combout => \Selector21~0_combout\);

-- Location: FF_X34_Y18_N25
\sig_tx_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(3));

-- Location: LCCOMB_X34_Y18_N22
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state.s5~q\ & (sig_tx_reg(3))) # (!\state.s5~q\ & ((sig_cc1101_rd_adr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_tx_reg(3),
	datac => \state.s5~q\,
	datad => sig_cc1101_rd_adr(4),
	combout => \Selector20~0_combout\);

-- Location: FF_X34_Y18_N23
\sig_tx_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(4));

-- Location: LCCOMB_X34_Y18_N12
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.s5~q\ & (sig_tx_reg(4))) # (!\state.s5~q\ & ((sig_cc1101_rd_adr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s5~q\,
	datac => sig_tx_reg(4),
	datad => sig_cc1101_rd_adr(5),
	combout => \Selector19~0_combout\);

-- Location: FF_X34_Y18_N13
\sig_tx_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(5));

-- Location: LCCOMB_X34_Y18_N26
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.s5~q\ & (sig_tx_reg(5))) # (!\state.s5~q\ & ((sig_cc1101_rd_adr(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_tx_reg(5),
	datab => \state.s5~q\,
	datac => sig_cc1101_rd_adr(6),
	combout => \Selector18~0_combout\);

-- Location: FF_X34_Y18_N27
\sig_tx_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(6));

-- Location: LCCOMB_X34_Y18_N16
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.s5~q\ & (sig_tx_reg(6))) # (!\state.s5~q\ & ((sig_cc1101_rd_adr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s5~q\,
	datac => sig_tx_reg(6),
	datad => sig_cc1101_rd_adr(7),
	combout => \Selector17~0_combout\);

-- Location: FF_X34_Y18_N17
\sig_tx_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \sig_tx_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_tx_reg(7));

-- Location: LCCOMB_X34_Y16_N18
\sig_mosi~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_mosi~1_combout\ = (\sig_mosi~0_combout\ & (sig_tx_reg(7))) # (!\sig_mosi~0_combout\ & ((\sig_mosi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_mosi~0_combout\,
	datab => sig_tx_reg(7),
	datac => \sig_mosi~q\,
	combout => \sig_mosi~1_combout\);

-- Location: FF_X34_Y16_N19
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

-- Location: LCCOMB_X35_Y16_N12
\Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\state.s6~q\) # ((\state.s9~q\) # (!\state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s6~q\,
	datab => \state.s0~q\,
	datad => \state.s9~q\,
	combout => \Selector25~2_combout\);

-- Location: LCCOMB_X35_Y16_N18
\Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\state.s2~q\) # ((\state.s8~q\) # ((\state.s5~q\) # (\state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \state.s8~q\,
	datac => \state.s5~q\,
	datad => \state.s1~q\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X35_Y16_N16
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\Equal0~0_combout\ & (!sig_spi_state_cntr(4) & ((\state.s5~q\) # (\state.s8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s5~q\,
	datab => \Equal0~0_combout\,
	datac => sig_spi_state_cntr(4),
	datad => \state.s8~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X35_Y16_N22
\Selector25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = (!\Selector25~0_combout\ & ((\sig_cs_stop~q\) # ((!\Selector25~2_combout\ & !\Selector25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~2_combout\,
	datab => \Selector25~1_combout\,
	datac => \sig_cs_stop~q\,
	datad => \Selector25~0_combout\,
	combout => \Selector25~3_combout\);

-- Location: FF_X35_Y16_N23
sig_cs_stop : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector25~3_combout\,
	clrn => \resetn~input_o\,
	ena => \sig_CLK_A_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cs_stop~q\);

-- Location: LCCOMB_X34_Y16_N10
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

-- Location: FF_X34_Y16_N11
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

-- Location: LCCOMB_X34_Y16_N14
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

-- Location: FF_X34_Y16_N15
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

-- Location: LCCOMB_X34_Y16_N6
\sig_spi_clock_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock_2~0_combout\ = (\sig_spi_clock_1~q\ & \sig_cs_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_spi_clock_1~q\,
	datad => \sig_cs_stop~q\,
	combout => \sig_spi_clock_2~0_combout\);

-- Location: FF_X34_Y16_N7
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

-- Location: LCCOMB_X34_Y16_N4
\sig_spi_clock_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock_3~0_combout\ = (\sig_spi_clock_2~q\ & \sig_cs_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_spi_clock_2~q\,
	datad => \sig_cs_stop~q\,
	combout => \sig_spi_clock_3~0_combout\);

-- Location: FF_X34_Y16_N5
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

-- Location: LCCOMB_X39_Y4_N18
\sig_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[0]~feeder_combout\ = \sig_spi_clock_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_spi_clock_3~q\,
	combout => \sig_shift_reg[0]~feeder_combout\);

-- Location: FF_X39_Y4_N19
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

-- Location: LCCOMB_X39_Y4_N16
\sig_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[1]~feeder_combout\ = sig_shift_reg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(0),
	combout => \sig_shift_reg[1]~feeder_combout\);

-- Location: FF_X39_Y4_N17
\sig_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[1]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(1));

-- Location: LCCOMB_X39_Y4_N6
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

-- Location: FF_X39_Y4_N7
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

-- Location: LCCOMB_X39_Y4_N28
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

-- Location: FF_X39_Y4_N29
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

-- Location: LCCOMB_X39_Y4_N26
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

-- Location: FF_X39_Y4_N27
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

-- Location: FF_X39_Y4_N9
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

-- Location: FF_X39_Y4_N31
\sig_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_shift_reg(5),
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(6));

-- Location: FF_X39_Y4_N21
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

-- Location: LCCOMB_X39_Y4_N2
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

-- Location: FF_X39_Y4_N3
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

-- Location: LCCOMB_X39_Y4_N24
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

-- Location: FF_X39_Y4_N25
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

-- Location: LCCOMB_X39_Y4_N22
\sig_shift_reg[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[10]~feeder_combout\ = sig_shift_reg(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(9),
	combout => \sig_shift_reg[10]~feeder_combout\);

-- Location: FF_X39_Y4_N23
\sig_shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[10]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(10));

-- Location: FF_X39_Y4_N13
\sig_shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_shift_reg(10),
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(11));

-- Location: LCCOMB_X39_Y4_N10
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

-- Location: FF_X39_Y4_N11
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

-- Location: LCCOMB_X39_Y4_N0
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

-- Location: FF_X39_Y4_N1
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

-- Location: LCCOMB_X39_Y5_N22
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

-- Location: FF_X39_Y5_N23
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

-- Location: FF_X39_Y5_N29
\sig_shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_shift_reg(14),
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(15));

-- Location: LCCOMB_X39_Y5_N14
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

-- Location: FF_X39_Y5_N15
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

-- Location: FF_X39_Y5_N13
\sig_shift_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_shift_reg(16),
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(17));

-- Location: LCCOMB_X39_Y5_N10
\sig_shift_reg[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_reg[18]~feeder_combout\ = sig_shift_reg(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(17),
	combout => \sig_shift_reg[18]~feeder_combout\);

-- Location: FF_X39_Y5_N11
\sig_shift_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_shift_reg[18]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_reg(18));

-- Location: LCCOMB_X39_Y5_N8
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

-- Location: FF_X39_Y5_N9
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

-- Location: LCCOMB_X36_Y5_N0
\sig_spi_clock_3_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_spi_clock_3_out~feeder_combout\ = sig_shift_reg(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_shift_reg(19),
	combout => \sig_spi_clock_3_out~feeder_combout\);

-- Location: FF_X36_Y5_N1
sig_spi_clock_3_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_spi_clock_3_out~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_spi_clock_3_out~q\);

-- Location: LCCOMB_X36_Y5_N14
\sig_d0_cntr[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[4]~28_combout\ = (sig_d0_cntr(4) & (!\sig_d0_cntr[3]~27\)) # (!sig_d0_cntr(4) & ((\sig_d0_cntr[3]~27\) # (GND)))
-- \sig_d0_cntr[4]~29\ = CARRY((!\sig_d0_cntr[3]~27\) # (!sig_d0_cntr(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(4),
	datad => VCC,
	cin => \sig_d0_cntr[3]~27\,
	combout => \sig_d0_cntr[4]~28_combout\,
	cout => \sig_d0_cntr[4]~29\);

-- Location: FF_X36_Y5_N15
\sig_d0_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[4]~28_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(4));

-- Location: LCCOMB_X36_Y5_N16
\sig_d0_cntr[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[5]~30_combout\ = (sig_d0_cntr(5) & (\sig_d0_cntr[4]~29\ $ (GND))) # (!sig_d0_cntr(5) & (!\sig_d0_cntr[4]~29\ & VCC))
-- \sig_d0_cntr[5]~31\ = CARRY((sig_d0_cntr(5) & !\sig_d0_cntr[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(5),
	datad => VCC,
	cin => \sig_d0_cntr[4]~29\,
	combout => \sig_d0_cntr[5]~30_combout\,
	cout => \sig_d0_cntr[5]~31\);

-- Location: FF_X36_Y5_N17
\sig_d0_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[5]~30_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(5));

-- Location: LCCOMB_X36_Y5_N18
\sig_d0_cntr[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[6]~32_combout\ = (sig_d0_cntr(6) & (!\sig_d0_cntr[5]~31\)) # (!sig_d0_cntr(6) & ((\sig_d0_cntr[5]~31\) # (GND)))
-- \sig_d0_cntr[6]~33\ = CARRY((!\sig_d0_cntr[5]~31\) # (!sig_d0_cntr(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(6),
	datad => VCC,
	cin => \sig_d0_cntr[5]~31\,
	combout => \sig_d0_cntr[6]~32_combout\,
	cout => \sig_d0_cntr[6]~33\);

-- Location: FF_X36_Y5_N19
\sig_d0_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[6]~32_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(6));

-- Location: LCCOMB_X36_Y5_N20
\sig_d0_cntr[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[7]~34_combout\ = (sig_d0_cntr(7) & (\sig_d0_cntr[6]~33\ $ (GND))) # (!sig_d0_cntr(7) & (!\sig_d0_cntr[6]~33\ & VCC))
-- \sig_d0_cntr[7]~35\ = CARRY((sig_d0_cntr(7) & !\sig_d0_cntr[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(7),
	datad => VCC,
	cin => \sig_d0_cntr[6]~33\,
	combout => \sig_d0_cntr[7]~34_combout\,
	cout => \sig_d0_cntr[7]~35\);

-- Location: FF_X36_Y5_N21
\sig_d0_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[7]~34_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(7));

-- Location: LCCOMB_X36_Y5_N22
\sig_d0_cntr[8]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[8]~36_combout\ = (sig_d0_cntr(8) & (!\sig_d0_cntr[7]~35\)) # (!sig_d0_cntr(8) & ((\sig_d0_cntr[7]~35\) # (GND)))
-- \sig_d0_cntr[8]~37\ = CARRY((!\sig_d0_cntr[7]~35\) # (!sig_d0_cntr(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_d0_cntr(8),
	datad => VCC,
	cin => \sig_d0_cntr[7]~35\,
	combout => \sig_d0_cntr[8]~36_combout\,
	cout => \sig_d0_cntr[8]~37\);

-- Location: FF_X36_Y5_N23
\sig_d0_cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[8]~36_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(8));

-- Location: LCCOMB_X36_Y5_N24
\sig_d0_cntr[9]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[9]~38_combout\ = (sig_d0_cntr(9) & (\sig_d0_cntr[8]~37\ $ (GND))) # (!sig_d0_cntr(9) & (!\sig_d0_cntr[8]~37\ & VCC))
-- \sig_d0_cntr[9]~39\ = CARRY((sig_d0_cntr(9) & !\sig_d0_cntr[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(9),
	datad => VCC,
	cin => \sig_d0_cntr[8]~37\,
	combout => \sig_d0_cntr[9]~38_combout\,
	cout => \sig_d0_cntr[9]~39\);

-- Location: FF_X36_Y5_N25
\sig_d0_cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[9]~38_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(9));

-- Location: LCCOMB_X36_Y5_N26
\sig_d0_cntr[10]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[10]~40_combout\ = (sig_d0_cntr(10) & (!\sig_d0_cntr[9]~39\)) # (!sig_d0_cntr(10) & ((\sig_d0_cntr[9]~39\) # (GND)))
-- \sig_d0_cntr[10]~41\ = CARRY((!\sig_d0_cntr[9]~39\) # (!sig_d0_cntr(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_d0_cntr(10),
	datad => VCC,
	cin => \sig_d0_cntr[9]~39\,
	combout => \sig_d0_cntr[10]~40_combout\,
	cout => \sig_d0_cntr[10]~41\);

-- Location: FF_X36_Y5_N27
\sig_d0_cntr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[10]~40_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(10));

-- Location: LCCOMB_X36_Y5_N28
\sig_d0_cntr[11]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[11]~42_combout\ = (sig_d0_cntr(11) & (\sig_d0_cntr[10]~41\ $ (GND))) # (!sig_d0_cntr(11) & (!\sig_d0_cntr[10]~41\ & VCC))
-- \sig_d0_cntr[11]~43\ = CARRY((sig_d0_cntr(11) & !\sig_d0_cntr[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(11),
	datad => VCC,
	cin => \sig_d0_cntr[10]~41\,
	combout => \sig_d0_cntr[11]~42_combout\,
	cout => \sig_d0_cntr[11]~43\);

-- Location: FF_X36_Y5_N29
\sig_d0_cntr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[11]~42_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(11));

-- Location: LCCOMB_X36_Y5_N30
\sig_d0_cntr[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[12]~44_combout\ = (sig_d0_cntr(12) & (!\sig_d0_cntr[11]~43\)) # (!sig_d0_cntr(12) & ((\sig_d0_cntr[11]~43\) # (GND)))
-- \sig_d0_cntr[12]~45\ = CARRY((!\sig_d0_cntr[11]~43\) # (!sig_d0_cntr(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_d0_cntr(12),
	datad => VCC,
	cin => \sig_d0_cntr[11]~43\,
	combout => \sig_d0_cntr[12]~44_combout\,
	cout => \sig_d0_cntr[12]~45\);

-- Location: FF_X36_Y5_N31
\sig_d0_cntr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[12]~44_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(12));

-- Location: LCCOMB_X36_Y4_N0
\sig_d0_cntr[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[13]~46_combout\ = (sig_d0_cntr(13) & (\sig_d0_cntr[12]~45\ $ (GND))) # (!sig_d0_cntr(13) & (!\sig_d0_cntr[12]~45\ & VCC))
-- \sig_d0_cntr[13]~47\ = CARRY((sig_d0_cntr(13) & !\sig_d0_cntr[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(13),
	datad => VCC,
	cin => \sig_d0_cntr[12]~45\,
	combout => \sig_d0_cntr[13]~46_combout\,
	cout => \sig_d0_cntr[13]~47\);

-- Location: FF_X36_Y4_N1
\sig_d0_cntr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[13]~46_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(13));

-- Location: LCCOMB_X36_Y4_N2
\sig_d0_cntr[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[14]~48_combout\ = (sig_d0_cntr(14) & (!\sig_d0_cntr[13]~47\)) # (!sig_d0_cntr(14) & ((\sig_d0_cntr[13]~47\) # (GND)))
-- \sig_d0_cntr[14]~49\ = CARRY((!\sig_d0_cntr[13]~47\) # (!sig_d0_cntr(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(14),
	datad => VCC,
	cin => \sig_d0_cntr[13]~47\,
	combout => \sig_d0_cntr[14]~48_combout\,
	cout => \sig_d0_cntr[14]~49\);

-- Location: FF_X36_Y4_N3
\sig_d0_cntr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[14]~48_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(14));

-- Location: LCCOMB_X36_Y4_N4
\sig_d0_cntr[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[15]~50_combout\ = (sig_d0_cntr(15) & (\sig_d0_cntr[14]~49\ $ (GND))) # (!sig_d0_cntr(15) & (!\sig_d0_cntr[14]~49\ & VCC))
-- \sig_d0_cntr[15]~51\ = CARRY((sig_d0_cntr(15) & !\sig_d0_cntr[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(15),
	datad => VCC,
	cin => \sig_d0_cntr[14]~49\,
	combout => \sig_d0_cntr[15]~50_combout\,
	cout => \sig_d0_cntr[15]~51\);

-- Location: FF_X36_Y4_N5
\sig_d0_cntr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[15]~50_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(15));

-- Location: LCCOMB_X36_Y4_N6
\sig_d0_cntr[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[16]~52_combout\ = (sig_d0_cntr(16) & (!\sig_d0_cntr[15]~51\)) # (!sig_d0_cntr(16) & ((\sig_d0_cntr[15]~51\) # (GND)))
-- \sig_d0_cntr[16]~53\ = CARRY((!\sig_d0_cntr[15]~51\) # (!sig_d0_cntr(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_d0_cntr(16),
	datad => VCC,
	cin => \sig_d0_cntr[15]~51\,
	combout => \sig_d0_cntr[16]~52_combout\,
	cout => \sig_d0_cntr[16]~53\);

-- Location: FF_X36_Y4_N7
\sig_d0_cntr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[16]~52_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(16));

-- Location: LCCOMB_X36_Y4_N8
\sig_d0_cntr[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[17]~54_combout\ = (sig_d0_cntr(17) & (\sig_d0_cntr[16]~53\ $ (GND))) # (!sig_d0_cntr(17) & (!\sig_d0_cntr[16]~53\ & VCC))
-- \sig_d0_cntr[17]~55\ = CARRY((sig_d0_cntr(17) & !\sig_d0_cntr[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(17),
	datad => VCC,
	cin => \sig_d0_cntr[16]~53\,
	combout => \sig_d0_cntr[17]~54_combout\,
	cout => \sig_d0_cntr[17]~55\);

-- Location: FF_X36_Y4_N9
\sig_d0_cntr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[17]~54_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(17));

-- Location: LCCOMB_X36_Y4_N10
\sig_d0_cntr[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[18]~56_combout\ = (sig_d0_cntr(18) & (!\sig_d0_cntr[17]~55\)) # (!sig_d0_cntr(18) & ((\sig_d0_cntr[17]~55\) # (GND)))
-- \sig_d0_cntr[18]~57\ = CARRY((!\sig_d0_cntr[17]~55\) # (!sig_d0_cntr(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_d0_cntr(18),
	datad => VCC,
	cin => \sig_d0_cntr[17]~55\,
	combout => \sig_d0_cntr[18]~56_combout\,
	cout => \sig_d0_cntr[18]~57\);

-- Location: FF_X36_Y4_N11
\sig_d0_cntr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[18]~56_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(18));

-- Location: LCCOMB_X36_Y4_N12
\sig_d0_cntr[19]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[19]~58_combout\ = (sig_d0_cntr(19) & (\sig_d0_cntr[18]~57\ $ (GND))) # (!sig_d0_cntr(19) & (!\sig_d0_cntr[18]~57\ & VCC))
-- \sig_d0_cntr[19]~59\ = CARRY((sig_d0_cntr(19) & !\sig_d0_cntr[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_d0_cntr(19),
	datad => VCC,
	cin => \sig_d0_cntr[18]~57\,
	combout => \sig_d0_cntr[19]~58_combout\,
	cout => \sig_d0_cntr[19]~59\);

-- Location: FF_X36_Y4_N13
\sig_d0_cntr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[19]~58_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(19));

-- Location: LCCOMB_X36_Y4_N14
\sig_d0_cntr[20]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[20]~60_combout\ = (sig_d0_cntr(20) & (!\sig_d0_cntr[19]~59\)) # (!sig_d0_cntr(20) & ((\sig_d0_cntr[19]~59\) # (GND)))
-- \sig_d0_cntr[20]~61\ = CARRY((!\sig_d0_cntr[19]~59\) # (!sig_d0_cntr(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(20),
	datad => VCC,
	cin => \sig_d0_cntr[19]~59\,
	combout => \sig_d0_cntr[20]~60_combout\,
	cout => \sig_d0_cntr[20]~61\);

-- Location: FF_X36_Y4_N15
\sig_d0_cntr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[20]~60_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(20));

-- Location: LCCOMB_X36_Y4_N16
\sig_d0_cntr[21]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[21]~62_combout\ = (sig_d0_cntr(21) & (\sig_d0_cntr[20]~61\ $ (GND))) # (!sig_d0_cntr(21) & (!\sig_d0_cntr[20]~61\ & VCC))
-- \sig_d0_cntr[21]~63\ = CARRY((sig_d0_cntr(21) & !\sig_d0_cntr[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(21),
	datad => VCC,
	cin => \sig_d0_cntr[20]~61\,
	combout => \sig_d0_cntr[21]~62_combout\,
	cout => \sig_d0_cntr[21]~63\);

-- Location: FF_X36_Y4_N17
\sig_d0_cntr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[21]~62_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(21));

-- Location: LCCOMB_X36_Y4_N18
\sig_d0_cntr[22]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[22]~64_combout\ = (sig_d0_cntr(22) & (!\sig_d0_cntr[21]~63\)) # (!sig_d0_cntr(22) & ((\sig_d0_cntr[21]~63\) # (GND)))
-- \sig_d0_cntr[22]~65\ = CARRY((!\sig_d0_cntr[21]~63\) # (!sig_d0_cntr(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(22),
	datad => VCC,
	cin => \sig_d0_cntr[21]~63\,
	combout => \sig_d0_cntr[22]~64_combout\,
	cout => \sig_d0_cntr[22]~65\);

-- Location: FF_X36_Y4_N19
\sig_d0_cntr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[22]~64_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(22));

-- Location: LCCOMB_X36_Y4_N20
\sig_d0_cntr[23]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[23]~66_combout\ = (sig_d0_cntr(23) & (\sig_d0_cntr[22]~65\ $ (GND))) # (!sig_d0_cntr(23) & (!\sig_d0_cntr[22]~65\ & VCC))
-- \sig_d0_cntr[23]~67\ = CARRY((sig_d0_cntr(23) & !\sig_d0_cntr[22]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_d0_cntr(23),
	datad => VCC,
	cin => \sig_d0_cntr[22]~65\,
	combout => \sig_d0_cntr[23]~66_combout\,
	cout => \sig_d0_cntr[23]~67\);

-- Location: FF_X36_Y4_N21
\sig_d0_cntr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[23]~66_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(23));

-- Location: LCCOMB_X36_Y4_N22
\sig_d0_cntr[24]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[24]~68_combout\ = (sig_d0_cntr(24) & (!\sig_d0_cntr[23]~67\)) # (!sig_d0_cntr(24) & ((\sig_d0_cntr[23]~67\) # (GND)))
-- \sig_d0_cntr[24]~69\ = CARRY((!\sig_d0_cntr[23]~67\) # (!sig_d0_cntr(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_d0_cntr(24),
	datad => VCC,
	cin => \sig_d0_cntr[23]~67\,
	combout => \sig_d0_cntr[24]~68_combout\,
	cout => \sig_d0_cntr[24]~69\);

-- Location: FF_X36_Y4_N23
\sig_d0_cntr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[24]~68_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(24));

-- Location: LCCOMB_X36_Y4_N24
\sig_d0_cntr[25]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_d0_cntr[25]~70_combout\ = \sig_d0_cntr[24]~69\ $ (!sig_d0_cntr(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_d0_cntr(25),
	cin => \sig_d0_cntr[24]~69\,
	combout => \sig_d0_cntr[25]~70_combout\);

-- Location: FF_X36_Y4_N25
\sig_d0_cntr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_d0_cntr[25]~70_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_d0_cntr(25));

-- Location: LCCOMB_X36_Y4_N26
\d0_out~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d0_out~reg0feeder_combout\ = sig_d0_cntr(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_d0_cntr(25),
	combout => \d0_out~reg0feeder_combout\);

-- Location: FF_X36_Y4_N27
\d0_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \d0_out~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0_out~reg0_q\);

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

ww_d0_out <= \d0_out~output_o\;
END structure;


