  
library IEEE;
use IEEE.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
 
    -- created 03.12.2022 
	 -- first basic rising and falling edge example EP4CE22F17C6N
entity Rising_Falling_Edge is 
  PORT ( 
    resetn               : IN  STD_LOGIC;
    sysclk               : IN  STD_LOGIC;-- 50Mhz 
    clk_7                : out STD_LOGIC;
    clk_6                : out STD_LOGIC;
    signal_A_q           : out STD_LOGIC;
    signal_A_q_not       : out STD_LOGIC;
    signal_A_r           : out STD_LOGIC;
    signal_A_f      		 : out STD_LOGIC	 
	 );
END Rising_Falling_Edge;      
      
        
ARCHITECTURE  ab of Rising_Falling_Edge is  
     
       
	  
    --   components declaration 
       
       
      
       
  signal  sig_counter       :std_logic_vector(7 downto 0);
  signal  sig_Aclock_q      :std_logic;
  signal  sig_Aclock_q_not  :std_logic;
  signal  sig_Araising      :std_logic;
  signal  sig_Afaling       :std_logic;
       
         
         
         
  begin

       --     components maping

   clk_bit_6_7 : process (sysclk,resetn)
 -- This create the BRC by dividing 50Mhz by 8192.
	  begin
       if resetn = '0' then
         sig_counter  <= (others => '0');
	    elsif  rising_edge(sysclk) then     
	      sig_counter <= sig_counter + 1;
         clk_7 <= sig_counter(7);
         clk_6 <= sig_counter(6);
       end if;
   end process clk_bit_6_7;
    
    
    
    
   raising_falling : process(sysclk,resetn)
     begin
       if resetn = '0' then      
         sig_Aclock_q        <= '0';
         sig_Aclock_q_not    <= '1';
       elsif  rising_edge(sysclk) then
         sig_Aclock_q     <= sig_counter(7); 
         sig_Aclock_q_not <= not sig_Aclock_q;
       end if;
   end process raising_falling;
	
   sig_Araising <= sig_Aclock_q AND sig_Aclock_q_not;
   sig_Afaling <= not(sig_Aclock_q OR  sig_Aclock_q_not);  
    

   signal_A_q      <= sig_Aclock_q;
   signal_A_q_not  <= sig_Aclock_q_not;
   signal_A_r      <= sig_Araising;
   signal_A_f      <= sig_Afaling;
    
    
    
end ab;