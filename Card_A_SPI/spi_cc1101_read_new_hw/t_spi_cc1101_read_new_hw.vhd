 library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

-- Test bench for spi_cc1101_read.


entity t_spi_cc1101_read_new_hw is
PORT (
   	   cs		      :	 OUT STD_LOGIC;
		   mosi		   :	 OUT STD_LOGIC;
		   spi_clock	:	 OUT STD_LOGIC;
         d0_out		:	 OUT STD_LOGIC
	   );

end t_spi_cc1101_read_new_hw;

 architecture only of t_spi_cc1101_read_new_hw is
 
 
	COMPONENT spi_cc1101_read_new_hw
	PORT
	(
		resetn		:	 IN STD_LOGIC;
		sysclk		:	 IN STD_LOGIC;
		cs		:	 OUT STD_LOGIC;
		mosi		:	 OUT STD_LOGIC;
		spi_clock		:	 OUT STD_LOGIC;
		d0_out		:	 OUT STD_LOGIC
	);
END COMPONENT;
 

   signal sig_sysclk        :  STD_LOGIC   := '0';
   signal sig_resetn        :  STD_LOGIC   := '0';
   signal sig_start_strobe  :  STD_LOGIC   := '0';
   signal sig_baud_rate     :  STD_LOGIC   := '0';
   constant sig_q_8_bits_out : std_logic_vector( 7 downto 0 ) := X"CA" ;
   constant sig_hdr_q        : std_logic_vector( 7 downto 0 ) := X"83" ;
      
      
      
     
  
begin
 
  
   
  
  
  
   dut: spi_cc1101_read_new_hw
	PORT    MAP
	(
		resetn		            => sig_resetn,
	 	sysclk		            => sig_sysclk,
	--	start_state_machine		=> sig_start_strobe,
		cs		                => cs, 
        mosi                    => mosi, 
	    spi_clock               => spi_clock,
        d0_out		            => d0_out            
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
 
 

 	  PROCESS
   begin
     wait for 13000 ns; sig_baud_rate  <= not sig_baud_rate;  -- 38400Hz
    
end PROCESS; 

 
 
    start_strobe : PROCESS
    begin
    wait for 500 ns; sig_start_strobe  <= '0';
    wait for 500 ns; sig_start_strobe  <= '1';
    wait for 500 ns; sig_start_strobe  <= '0';
    
     wait for 500000 ns; sig_start_strobe  <= '1';
     wait for 500 ns; sig_start_strobe  <= '0';
    
  --  wait for 300000 ns; sig_start_strobe  <= '1';
  --  wait for 500 ns; sig_start_strobe  <= '0';
    
    wait;
 end PROCESS start_strobe ;
 
 
  
end only;