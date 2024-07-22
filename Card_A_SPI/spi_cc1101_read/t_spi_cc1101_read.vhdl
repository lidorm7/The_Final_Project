library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

-- Test bench for spi_cc1101_read.


entity t_spi_cc1101_read is
PORT (
   	   cs		      :	 OUT STD_LOGIC;
		   mosi		   :	 OUT STD_LOGIC;
		   spi_clock	:	 OUT STD_LOGIC;
         d0_out		:	 OUT STD_LOGIC
	   );

end t_spi_cc1101_read;

 architecture only of t_spi_cc1101_read is
 
 
	COMPONENT spi_cc1101_read
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
   constant sig_q_8_bits_out : std_logic_vector( 7 downto 0 ) := X"CA" ;
   constant sig_hdr_q        : std_logic_vector( 7 downto 0 ) := X"83" ;
  
begin
 
   dut: spi_cc1101_read
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
 
end only;