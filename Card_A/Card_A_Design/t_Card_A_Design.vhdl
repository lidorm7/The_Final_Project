library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- set entity

entity t_Card_A_Design is
port (
        BiPhase_tx_out		  :	out std_logic
    --    q_data_bit            :	out std_logic;
    --    start_strobe_tx       :	out std_logic;
    --    rd_rising_edge        : out std_logic;
    --    main_rising_edge      :	out std_logic	
	);
end t_Card_A_Design;

-- set architecture

architecture only of t_Card_A_Design is

-- set components    

component Card_A_Design
	port
	(
		resetn                : in std_logic;
        sysclk                : in std_logic;
        BiPhase_tx_out		  :	out std_logic
    --    q_data_bit            :	out std_logic;
    --    start_strobe_tx       :	out std_logic;
    --    rd_rising_edge        : out std_logic;
    --    main_rising_edge      :	out std_logic
	);
end component;

-- set signals

   signal sig_sysclk        :  std_logic   := '0';
   signal sig_resetn        :  std_logic   := '0';
  
begin

-- set port maps

    dut : Card_A_Design
	port map
	(
		resetn            =>  sig_resetn,
        sysclk            =>  sig_sysclk,
        BiPhase_tx_out    =>  BiPhase_tx_out
    --    q_data_bit        =>  q_data_bit,
    --    start_strobe_tx   =>  start_strobe_tx,
    --    main_rising_edge  =>  main_rising_edge,
    --    rd_rising_edge    =>  rd_rising_edge,                        
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