 library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

 
-- 19.19.2023
-- This module send start pulse to system. after power up it send start pulse
-- after 10 uSec, then evry 10 mSec continuaslly.

entity   starter_module   is
     PORT (
           
        resetn              : IN  STD_LOGIC;-- 21.03.2022
        sysclk              : IN  STD_LOGIC;--  50Mhz  
        start_tx_system		: out std_logic  
		 );
            
      END    starter_module ;
        
        
		
         ARCHITECTURE  ab of   starter_module   is
			
				-- components declaration.
                
              signal  sig_time_flag       :std_logic;
			  signal  sig_time_cntr       :std_logic_vector(25 downto 0);
		      signal  sig_start_power	  :std_logic;  
		 	  constant sig_limit_value     : std_logic_vector(19 downto 0) :=  X"7A120" ;
                                          -- 500000 X 20 = 10mSec
                                                     
            begin
     
             
        -- components maping.
        
        
      process (sysclk,resetn)
        begin
	     if resetn = '0' then
              sig_time_flag <= '0';  
			  sig_time_cntr  <= (others => '0');
              sig_start_power <= '0';
         elsif  rising_edge(sysclk) then
			  if sig_time_cntr < sig_limit_value + 50 then -- 500050
              sig_time_cntr <= sig_time_cntr + 1;
           end if;
           if    (sig_time_cntr = 500) and ( sig_start_power = '0') then
              sig_time_flag <= '1';
           end if;
           if (sig_time_cntr = 505)  and ( sig_start_power = '0')then
              sig_start_power <= '1';
              sig_time_flag <= '0';		 
           end if;
			  if sig_time_cntr = sig_limit_value then --  500000
                sig_time_flag <= '1';
			  end if;       
				if sig_time_cntr = sig_limit_value + 10 then --500010
                sig_time_flag <= '0';
			  end if;  
			    if sig_time_cntr = sig_limit_value + 40 then -- 500040	
			    sig_time_cntr  <= (others => '0');
			end if;  
              
             
        end if ;
      end  process ;
		
      
      process (sysclk,resetn)
        begin
	     if resetn = '0' then
             start_tx_system <= '0';
         elsif  rising_edge(sysclk) then
            start_tx_system <= sig_time_flag ;     
        end if ;
      end  process ;
		
		
		
      
      
      
      
      end ab;
   