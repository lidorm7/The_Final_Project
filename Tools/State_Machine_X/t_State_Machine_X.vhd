library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

  entity t_State_Machine_X is
  
    port( 
    flag1    :out std_logic);

  end t_State_Machine_X;
  
  architecture only of t_State_Machine_X is
  
  --Set Component
  component State_Machine_X
  	port
	(
		resetn		:	 IN STD_LOGIC;
		sysclk		:	 IN STD_LOGIC;
		flag1		:	 OUT STD_LOGIC
	);
  end component;
  
  -- Set Signals
  signal sig_resetn : std_logic := '0';
  signal sig_sysclk : std_logic := '0';
  
  begin 
  
  -- Set Duties to State_Machine_X Ports
  dut: State_Machine_X
    port map
      (
      flag1 => flag1,
      resetn => sig_resetn,
      sysclk => sig_sysclk
      );
  
  -- sysclk Process    
  clk : process 
    begin
      wait for 10 ns;
      sig_sysclk <= not sig_sysclk; 
  end process clk;
  
  -- resetn Process 
  rstn : process 
    begin
      wait for 50 ns;
      sig_resetn <= '1';
      wait;
  end process rstn;
  
end only;
