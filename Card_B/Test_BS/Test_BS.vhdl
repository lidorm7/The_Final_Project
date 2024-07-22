library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Test_BS is 
port(
    resetn              :   in std_logic;
    sysclk              :   in std_logic;
    clk90               :   out std_logic; -- for simulation
    enable              :   out std_logic; -- for simulation
    main_clk            :   out std_logic;
    nrzl_data           :   out std_logic
);
end Test_BS;

architecture ab of Test_BS is

-- set components

component Simple_BS
	port
	(
		resetn		        :   in std_logic;
		sysclk		        :   in std_logic;
		bi_phase_filtered	:   in std_logic;
        clk90               :   out std_logic; -- for simulation
        enable              :   out std_logic; -- for simulation
		main_clk		    :   out std_logic;
		nrzl_data		    :   out std_logic
	);  
end component;

component BS_Filter
	port
	(
		resetn		    :   in std_logic;
		sysclk		    :   in std_logic;
		bi_pahse_out	:   in std_logic;
		signal_out		:   out std_logic
	);
end component;

component Card_A_Design
	port
	(
		resetn		        :   in std_logic;
		sysclk		        :   in std_logic;
		BiPhase_tx_out		:   out std_logic
	);
    end component;

-- set signals

signal sig_BiPhase_tx_out    : std_logic;
signal sig_bi_phase_filtered : std_logic;

    begin

        -- set port maps

        simplebs : Simple_BS
        port map(
            resetn              => resetn,
            sysclk              => sysclk,
            bi_phase_filtered   => sig_bi_phase_filtered,
            clk90               => clk90,
            enable              => enable, 
            main_clk            => main_clk,           
            nrzl_data           => nrzl_data
        );

        bsfilter : BS_Filter
        port map(
            resetn          => resetn,
            sysclk          => sysclk,
            bi_pahse_out    => sig_BiPhase_tx_out, 
            signal_out      => sig_bi_phase_filtered
        );

        card_a : Card_A_Design
        port map(
            resetn              => resetn,
            sysclk              => sysclk,
            BiPhase_tx_out      => sig_BiPhase_tx_out
        );

end ab;