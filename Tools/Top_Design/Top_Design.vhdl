library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Top_Design is
    port(
        resetn              : in std_logic;
        sysclk              : in std_logic;
        BiPhase_rx_in       : in std_logic; -- not for simulation
        detected_bit	    : in std_logic;
        uart_tx_triger		: out std_logic;
        OB_LED_RGB_Din      : out std_logic;
        -- rgb_leds_out		: out std_logic_vector(95 downto 0);
        LED_1               : out std_logic;
        LED_2               : out std_logic;
        LED_3               : out std_logic;
        BiPhase_tx_out		: out std_logic
    );
end Top_Design;

architecture ab of Top_Design is 

    -- set components

component Card_A_Design_Python
port
(
    resetn		        :	 in std_logic;
    sysclk		        :	 in std_logic;
    detected_bit	    :    in std_logic;
    uart_tx_triger		:	 out std_logic;
    BiPhase_tx_out		:	 out std_logic
);
end component;

component Card_B_Design
	PORT
	(
		resetn		    :	 in std_logic;
		sysclk		    :	 in std_logic;
		BiPhase_rx_in   :	 in std_logic;
		OB_LED_RGB_Din	:	 out std_logic;
		LED_1		    :	 out std_logic;
		LED_2		    :	 out std_logic;
		LED_3		    :	 out std_logic
	);
end component;
    -- set signals

    signal sig_bi_phase_filtered    : std_logic;
    signal sig_bi_phase             : std_logic;
    signal sig_nrzl_data            : std_logic;
    signal sig_main_clk             : std_logic;
    signal sig_crc8bit_check        : std_logic;

    signal sig_load_leds            : std_logic;
    signal sig_green_leds           : std_logic_vector(7 downto 0);
    signal sig_rgb_leds             : std_logic_vector(95 downto 0);

    begin

        -- set port maps

        Card_A : Card_A_Design_Python
        port map(
            resetn          => resetn,
            sysclk          => sysclk,
            detected_bit	=> detected_bit,
            uart_tx_triger  => uart_tx_triger,
            BiPhase_tx_out  => BiPhase_tx_out
            );

        Card_B : Card_B_Design
        port map(       
            resetn              => resetn,
            sysclk              => sysclk,
            BiPhase_rx_in       => BiPhase_rx_in,
            OB_LED_RGB_Din      => OB_LED_RGB_Din,
            LED_1               => LED_1,
            LED_2               => LED_2,
            LED_3               => LED_3
            );

end ab;