library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- set entity

entity t_BiPhase_Generator is
port (
    BiPhase_tx_out        : out std_logic
	);
end t_BiPhase_Generator;

-- set architecture

architecture only of t_BiPhase_Generator is

-- set components    

component BiPhase_Generator
	port
	(
		resetn              : in std_logic;
        sysclk              : in std_logic;
        BiPhase_tx_out      : out std_logic  
	);
end component;

-- set signals

   signal sig_sysclk        :  std_logic   := '0';
   signal sig_resetn        :  std_logic   := '0';
  
begin

-- set port maps

    dut : BiPhase_Generator
	port map
	(
		resetn              =>  sig_resetn,
        sysclk              =>  sig_sysclk,
        BiPhase_tx_out      =>  BiPhase_tx_out
 	);
   
-- set processes

 	clk : process
    begin
        wait for 10.0 ns; sig_sysclk <= not sig_sysclk; -- 50.000mhz
    end process clk;

    rst : process
    begin
        wait for 50 ns; sig_resetn <= '1';
        wait;
    end process rst;

end only;