 library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

-- Test bench for sequencer.


entity t_led0 is
PORT (
   		led_0		    :	 OUT STD_LOGIC;
        led_0_monitor   :	 OUT STD_LOGIC
	                 );
end t_led0;

 architecture only of t_led0 is
 
COMPONENT led0
	PORT
	(
		resetn		:	 IN STD_LOGIC;
		sysclk		:	 IN STD_LOGIC;
		led_0		:	 OUT STD_LOGIC;
		led_0_monitor		:	 OUT STD_LOGIC
	);
END COMPONENT;

   signal sig_sysclk   :  STD_LOGIC   := '0';
   signal sig_resetn   :  STD_LOGIC   := '0';
-- signal sig_q_a    : std_logic_vector( 15 downto 0 );
-- signal sig_q_b    : std_logic_vector( 15 downto 0 );
   signal sig_strobe    :STD_LOGIC := '0' ;
 
      
      
      
    constant  sig_cntr_detect       : std_logic_vector( 31 downto 0 ) := X"01010101";
  
begin
 
  
   
  
  
  
   dut: led0
	PORT    MAP
	(
		resetn		            => sig_resetn,
	 	sysclk		            => sig_sysclk,
        led_0		            => led_0,
        led_0_monitor		    => led_0_monitor
 	);
   
    	 
 
 
 	  PROCESS
   begin
    wait for 10.0 ns; sig_sysclk       <= not sig_sysclk; -- 50.000mhz
end PROCESS ;

  
 
stimulus : PROCESS
   begin
   wait for 50 ns; sig_resetn  <= '0';
   wait for 40 ns; sig_resetn  <= '1';
   wait;
end PROCESS stimulus;
 



   
   start_strobe : PROCESS
    begin
  
    wait for 200 ns; sig_strobe  <= '1';
    wait for 100 ns; sig_strobe  <= '0';
    
    wait for 1000 ns; sig_strobe  <= '1';
    wait for 100 ns; sig_strobe  <= '0';
    
    wait for 3000 ns; sig_strobe  <= '1';
    wait for 100 ns; sig_strobe  <= '0'; 
    
    wait;
 end PROCESS start_strobe ;
  
end only;