library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- set entity

entity t_Test_BS is
port (
    main_clk            : out std_logic;
    nrzl_data           : out std_logic;
    main_rising_edge    : out std_logic;
    q_data_bit          : out std_logic;
    rd_rising_edge      : out std_logic	
	);
end t_Test_BS;

-- set architecture

architecture only of t_Test_BS is

-- set components    

component Test_BS
	port
	(
		resetn              : in std_logic;
        sysclk              : in std_logic;
        main_clk            : out std_logic;
        nrzl_data           : out std_logic;
        main_rising_edge    : out std_logic;
        q_data_bit          : out std_logic;
        rd_rising_edge      : out std_logic   
	);
end component;

-- set signals

   signal sig_sysclk        :  std_logic   := '0';
   signal sig_resetn        :  std_logic   := '0';
  
begin

-- set port maps

    dut : Test_BS
	port map
	(
		resetn              =>  sig_resetn,
        sysclk              =>  sig_sysclk,
        main_clk            =>  main_clk,
        nrzl_data           =>  nrzl_data,
        main_rising_edge    =>  main_rising_edge,
        q_data_bit          =>  q_data_bit,
        rd_rising_edge      =>  rd_rising_edge
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