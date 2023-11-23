library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;





  entity State_Machine_X is
    port(
       resetn   :in std_logic;
	   sysclk   :in std_logic;
	   flag1    :out std_logic
        );
  end State_Machine_X;
  
  architecture ab of State_Machine_X is
  
  -- Component Decleration:
  -- Signals:
  
  type State_Type is (s0,s1,s2,s3,s4,s5,s6,s7);
  signal state : State_Type; 
  
    begin
  
    -- Component Mapping:
  
    -- Main State Mechine:
    process(resetn,sysclk)
  
    -- Variable dely_cntr  :integer range 0 to 200
  
      begin
		if resetn = '0' then
		
		  state <= s0;
		  flag1 <= '0';
		elsif rising_edge(sysclk) then
		
		  case state is 
		    when s0 =>
			   state <= s1;
			 when s1 =>
			   flag1 <= '1'; 
			   state <= s2; 
		    when s2 =>
			   flag1 <= '0';
				state <= s3;
			 when s3 =>
			   state <= s4;
			 when s4 =>
			   state <= s5;
			 when s5 =>
			   flag1 <= '1';
			   state <= s6;
			 when s6 =>
			   state <= s7;
			 when s7 =>
			   flag1 <= '0';
			   state <= s0;
			 when others =>
			   state <= s0;
				
		  end case;
		  
		end if;
		
    end process;
  
  end ab;
