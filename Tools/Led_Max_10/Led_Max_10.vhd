library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;
 
  -- created 15.12.2022 
    
  -- example of operating led as first design on de0-Nano evaluation card.
  -- device ep4ce22f17c6n
 
  entity  Led_Max_10  is
    PORT ( 
         resetn               : IN  STD_LOGIC; -- key0  -- pin J15
         sysclk               : IN  STD_LOGIC; -- 50mhz -- pin R8
         led_0                : out STD_LOGIC; -- led0  -- pin A15 chhge to  L3
	    	led_1                : out STD_LOGIC;
			led_2                : out STD_LOGIC; 
			led_3                : out STD_LOGIC;
			led_0_monitor        : out STD_LOGIC; -- pin D3
			led_1_monitor        : out STD_LOGIC;
			led_2_monitor        : out STD_LOGIC;
			led_3_monitor        : out STD_LOGIC
--			RGB_Pulse            : out STD_LOGIC
		   );
  END Led_Max_10 ;      
      
        
  ARCHITECTURE  ab of Led_Max_10  is  
     
       
	  
  -- components declaration 
          
  -- signals declaration  
     
    signal  sig_counter       :std_logic_vector(32 downto 0);
    signal  sig_Aclock_q      :std_logic;
    signal  sig_Aclock_q_not  :std_logic;
    signal  sig_Araising      :std_logic;
    signal  sig_Afaling       :std_logic;
	 signal  sig_led0          :std_logic:='0';
	 signal  sig_led1          :std_logic:='0';
	 signal  sig_led2          :std_logic:='0';
	 signal  sig_led3          :std_logic:='0';
		 
    type state is (s0,s1,s2,s3);                          
    signal LED : state;
		
--  type RGB is array (0 to 3) of std_logic_vector(23 downto 0);
--	 signal sig_RGB_Pulse : RGB;
    
    begin
	 
  --  components maping

      process (sysclk,resetn)
		
  -- This counter is creating the LED on / off signal
  -- 0.5 Sec on 0.5 Sec off  from 50Mhz signal
  -- calculation 500 000 000 / 20 = 25000000 = X"17D7840"
  -- 1 sec = 1000000000nSec
  -- 0.5   = 500000000
  -- how many 20nSec pulse is 500000000nSec/20nSec = 25000000 = 0x17d7840
 
	     begin
          if resetn = '0' then
            sig_counter  <= (others => '0');
				
  -- sig_counter  <= "00000000";
  -- sig_counter  <= X"00";
		
		
		    elsif  rising_edge(sysclk) then
		
          CASE LED IS 
		
		    WHEN S0 => 
		      sig_led0 <= '1';
		      sig_counter<= sig_counter+ '1';
		    if (sig_counter=X"F080") then
		      sig_led0<= '0';
		      LED<=S1;
		      sig_counter<= (others => '0');
		    else
		      LED<=S0;
		    end if;
		
	       WHEN S1 => 
		      sig_led1 <= '1';
		      sig_counter<= sig_counter+ '1';
		    if (sig_counter=X"F080") then
		      sig_led1<= '0';
		      LED<=S2;
		      sig_counter<= (others => '0');
		    else
		     LED<=S1;
		    end if;
		
		    WHEN S2 => 
		      sig_led2 <= '1';
		      sig_counter<= sig_counter+ '1';
		    if (sig_counter=X"F080") then
		      sig_led2<= '0';
		      LED<=S3;
		      sig_counter<= (others => '0');
	    	 else
		      LED<=S2;
		    end if;
		
		    WHEN S3 => 
		      sig_led3 <= '1';
		      sig_counter<= sig_counter+ '1';
		    if (sig_counter=X"F080") then
		      sig_led3<= '0';
		      LED<=S0;
		      sig_counter<= (others => '0');
		    else
		      LED<=S3;
		    end if;
		
		    WHEN OTHERS =>
		      LED <=S0;
		      sig_counter<= (others => '0');
				
		
--  elsif  rising_edge(sysclk) then     
--          if sig_counter = X"5F5E100"  then
--             sig_led0  <= not sig_led0;
--				 sig_led1  <= not sig_led1;
--             sig_counter  <= (others => '0');
--           else
--              sig_counter <= sig_counter + 1 ;
--           end if;
--      end if ;
--    end  process ;
--    
	 
    
--     process( sysclk,resetn)
--     begin
--      IF (resetn = '0') THEN      
--       sig_Aclock_q        <= '0' ;
--       sig_Aclock_q_not    <= '1' ;
--       elsif  rising_edge(sysclk) then
--       sig_Aclock_q     <= sig_counter(7);;  
--       sig_Aclock_q_not <= not  sig_Aclock_q ;
--       end if ;
--    end  process ;
--
--    sig_Araising <= sig_Aclock_q AND sig_Aclock_q_not ;
--    sig_Afaling <= not(sig_Aclock_q OR  sig_Aclock_q_not) ;  

  
          end case ;                 
          end if ;
      end process ;
		
  led_0         <=  sig_led0;
  led_0_monitor <=  sig_led0;
  led_1         <=  sig_led1;
  led_1_monitor <=  sig_led1;
  led_2         <=  sig_led2;
  led_2_monitor <=  sig_led2;
  led_3         <=  sig_led3;
  led_3_monitor <=  sig_led3;
--  RGB_Pulse <=  sig_RGB_Pulse(0);
--  RGB_Pulse <=  sig_RGB_Pulse(1);
--  RGB_Pulse <=  sig_RGB_Pulse(2);
--  RGB_Pulse <=  sig_RGB_Pulse(3);
  end ab;
