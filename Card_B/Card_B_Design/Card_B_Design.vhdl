library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Card_B_Design is
    port(
        resetn              : in std_logic;
        sysclk              : in std_logic;
        BiPhase_rx_in       : in std_logic; -- not for simulation
        OB_LED_RGB_Din      : out std_logic;
        -- rgb_leds_out		: out std_logic_vector(95 downto 0);
        LED_1               : out std_logic;
        LED_2               : out std_logic;
        LED_3               : out std_logic
    );
end Card_B_Design;

architecture ab of Card_B_Design is 

    -- set components

--    component BiPhase_Generator
--	port
--	(
--		resetn		        :	 in std_logic;
--		sysclk		        :	 in std_logic;
--		BiPhase_tx_out		:	 out std_logic
--	);
--    end component;

--    component Card_A_Design
--    port
--    (
--        resetn		        :	 in std_logic;
--        sysclk		        :	 in std_logic;
--        BiPhase_tx_out		:	 out std_logic
--    );
--    end component;

    component BS_Filter
	port
	(
		resetn		    :	 in std_logic;
		sysclk		    :	 in std_logic;
		bi_pahse_out	:	 in std_logic;
		signal_out		:	 out std_logic
	);
    end component;

    component Simple_BS
	port
	(
		resetn		        :	 in std_logic;
		sysclk		        :	 in std_logic;
		bi_phase_filtered	:	 in std_logic;
		main_clk		    :	 out std_logic;
		nrzl_data		    :	 out std_logic
	);
    end component;

    component CRC8BIT -- to comment this component if we want without crc8
	port
	(
		resetn		        :	 in std_logic;
		sysclk		        :	 in std_logic;
		nrzl_in		        :	 in std_logic;
		main_clk		    :	 in std_logic;
		-- crc_reg8bit_out		:	 out std_logic_vector(7 downto 0); -- only for simulation
		crc8bit_out		    :	 out std_logic
	);
    end component;

    component Data_Orgenizer
	port
	(
		resetn		    :	 in std_logic;
		sysclk		    :	 in std_logic;
		main_clk		:	 in std_logic;
		nrzl_data		:	 in std_logic;
        crc8bit_in      :    in std_logic;
		load_leds		:	 out std_logic;
		green_leds		:	 out std_logic_vector(7 downto 0);
		rgb_leds		:	 out std_logic_vector(95 downto 0)
	);
    end component;

    component RGB
	port
	(
		resetn		    :	 in std_logic;
		sysclk		    :	 in std_logic;
		load_leds		:	 in std_logic;
		green_leds		:	 in std_logic_vector(7 downto 0);
		rgb_leds		:	 in std_logic_vector(95 downto 0);
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

        -- bi_phase : BiPhase_Generator
        -- port map(
        --     resetn          => resetn,
        --     sysclk          => sysclk,
        --     BiPhase_tx_out  => sig_bi_phase
        -- );

        -- card_A : Card_A_Design
        -- port map(
        --      resetn          => resetn,
        --      sysclk          => sysclk,
        --      BiPhase_tx_out  => sig_bi_phase
        --  );

        Filter : BS_Filter
        port map(       
            resetn          => resetn,
            sysclk          => sysclk,
            bi_pahse_out    => BiPhase_rx_in, -- sig_bi_phase
            signal_out      => sig_bi_phase_filtered
        );

        Simple : Simple_BS
        port map(       
            resetn              => resetn,
            sysclk              => sysclk,
            bi_phase_filtered   => sig_bi_phase_filtered,
            main_clk            => sig_main_clk,
            nrzl_data           => sig_nrzl_data
        );

        CRC8 : CRC8BIT -- to comment this process if we want without crc8
        port map(       
            resetn              => resetn,
            sysclk              => sysclk,
            nrzl_in             => sig_nrzl_data, 
            main_clk            => sig_main_clk, 
            -- crc_reg8bit_out     => 
            crc8bit_out         => sig_crc8bit_check
        );

        DO : Data_Orgenizer
        port map(       
            resetn              => resetn,
            sysclk              => sysclk,
            main_clk            => sig_main_clk,
            nrzl_data           => sig_nrzl_data,
            crc8bit_in          => sig_crc8bit_check,-- '0' if we want without crc8
            load_leds           => sig_load_leds,
            green_leds          => sig_green_leds,
            rgb_leds            => sig_rgb_leds
        );

        -- rgb_leds_out <= sig_rgb_leds;

        RGB_Leds : RGB
        port map(       
            resetn              => resetn,
            sysclk              => sysclk,
            load_leds           => sig_load_leds,
            green_leds          => sig_green_leds,
            rgb_leds            => sig_rgb_leds,
            OB_LED_RGB_Din      => OB_LED_RGB_Din,
            LED_1               => LED_1,
            LED_2               => LED_2,
            LED_3               => LED_3
        );

end ab;