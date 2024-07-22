library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

-- Test bench for spi_cc1101_read.


entity t_spi_cc1101_read is
PORT (
	mosi            : out std_logic; -- AA5
	cs 		        : out std_logic; -- AA8
	spi_clock       : out std_logic; -- AB5
	d0_out          : out std_logic; -- AA16        
	data_out        : out std_logic_vector(7 downto 0)
	   );

end t_spi_cc1101_read;

 architecture only of t_spi_cc1101_read is
 
 
	COMPONENT spi_cc1101_read
	PORT
	(
		resetn          : in  std_logic; -- AB9
        sysclk          : in  std_logic; -- N14 -- 50mHz
        miso	        : in  std_logic; -- AB8
        mosi            : out std_logic; -- AA5
        cs 		        : out std_logic; -- AA8
        spi_clock       : out std_logic; -- AB5
        d0_out          : out std_logic; -- AA16        
        data_out        : out std_logic_vector(7 downto 0)
	);
END COMPONENT;
 

   signal sig_sysclk        :  STD_LOGIC   := '0';
   signal sig_resetn        :  STD_LOGIC   := '0';

  
begin
 
   dut: spi_cc1101_read
	PORT    MAP
	(
		resetn		=> sig_resetn,
		sysclk		=> sig_sysclk,
		miso		=> ,
		mosi		=> mosi,
		cs			=> cs,
		spi_clock	=> spi_clock,
		d0_out		=> d0_out,
		data_out	=> data_out    	 
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