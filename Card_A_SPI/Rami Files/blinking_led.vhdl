library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

--  13.11.2023  blinking led to verify cpld is OK.
entity  blinking_led  is
     PORT (        
            resetn           : IN  STD_LOGIC;-- AB9
            sysclk           : IN  STD_LOGIC;-- 50mHz --N14 
            d0_out		     :	 OUT STD_LOGIC  -- AA16 -- blinking led rate 1 second
            
            
                        );
        END blinking_led;      
      
        
     ARCHITECTURE  ab of blinking_led  is
     
       -- components declaration.
      
      signal  sig_d0_cntr          : std_logic_vector( 26 downto 0 ) ; 
         
        begin
			  
        -- components ports.    
       
          
 process (sysclk,resetn)
 -- main counter 50mhz t = 20nSec
	begin
      if resetn = '0' then
         sig_d0_cntr  <= (others => '0');
	   elsif  rising_edge(sysclk) then      
	      sig_d0_cntr <= sig_d0_cntr + 1 ;
      end if ;
    end  process ;

  

   process (sysclk,resetn)
	-- on/off of led to show that the card was loaded o.k.
   begin
    IF resetn = '0' THEN
      d0_out <= '0';
    elsif  rising_edge(sysclk) then -- on 1,3Sec 
	 	 d0_out <= sig_d0_cntr(25); -- on 0.7Sec 
      end if ;
    end  process ; 
    
    end ab;
    
       
                  
				 
       