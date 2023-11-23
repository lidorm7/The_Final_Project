 library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

-- Test bench for sequencer.


entity t_Rising_Falling_Edge is
PORT (
   		clk_7		         : OUT STD_LOGIC;
		clk_6		         : OUT STD_LOGIC;
        signal_A_q           : OUT STD_LOGIC;
        signal_A_q_not       : OUT STD_LOGIC;
        signal_A_r           : OUT STD_LOGIC;
        signal_A_f      	 : OUT STD_LOGIC
	                 );
end t_Rising_Falling_Edge;

 architecture only of t_Rising_Falling_Edge is
 
COMPONENT Rising_Falling_Edge
	PORT
	(
		resetn		         : IN STD_LOGIC;
		sysclk		         : IN STD_LOGIC;
		clk_7		         : OUT STD_LOGIC;
		clk_6	             : OUT STD_LOGIC;
        signal_A_q           : OUT STD_LOGIC;
        signal_A_q_not       : OUT STD_LOGIC;
        signal_A_r           : OUT STD_LOGIC;
        signal_A_f      	 : OUT STD_LOGIC
	);
END COMPONENT;

   signal sig_sysclk   : STD_LOGIC   := '0';
   signal sig_resetn   : STD_LOGIC   := '0';
-- signal sig_q_a      : std_logic_vector( 15 downto 0 );
-- signal sig_q_b      : std_logic_vector( 15 downto 0 );
   signal sig_strobe   : STD_LOGIC := '0' ;
 
      
      
      
    constant  sig_cntr_detect       : std_logic_vector( 31 downto 0 ) := X"01010101";
  
begin
 
  
   
  
  
  
   dut: Rising_Falling_Edge
	PORT    MAP
	(
		resetn		            => sig_resetn,
	 	sysclk		            => sig_sysclk,
        clk_7		            => clk_7,
		clk_6		            => clk_6,
        signal_A_q              => signal_A_q,
        signal_A_q_not          => signal_A_q_not,
        signal_A_r              => signal_A_r,
        signal_A_f      	    => signal_A_f 
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
