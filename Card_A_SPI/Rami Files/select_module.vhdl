library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

--  30.11.2023 module for selecting between cs,spi_clock or mosi
--               from spi_cc1101_write or spi_cc1101_read.

entity  select_module  is
     PORT (        
            resetn           : IN  STD_LOGIC;-- AB9
            sysclk           : IN  STD_LOGIC;-- 50mHz --N14
		      write_read_select : in  std_logic;
            cs_write         : in  std_logic;
            mosi_write       : in  std_logic;
            spi_clock_write  : in  std_logic;
            cs_read          : in  std_logic;
            mosi_read        : in  std_logic;
            spi_clock_read   : in  std_logic;
            
            mosi             : out std_logic;-- AA5
            cs 		        : out std_logic;-- AA8
            spi_clock        : out std_logic; -- AB5 
				mosi_monitor     : out std_logic -- AA7
                        );
        END select_module;      
      
        
     ARCHITECTURE  ab of select_module  is
     
       -- components declaration.
                  
           signal  sig_cs_write         : std_logic;
		   signal  sig_mosi_write       : std_logic;
           signal  sig_spi_clock_write  : std_logic;
           signal  sig_cs_read          : std_logic;
           signal  sig_mosi_read        : std_logic;
           signal  sig_spi_clock_read   : std_logic;
           
           	 
           
        begin
			  
        -- components ports.  
		
         
	  process (sysclk, resetn) 
	   
     begin
       if resetn = '0' then
         mosi <= '0' ; 
         cs   <= '0';
         spi_clock  <= '0';
       elsif rising_edge(sysclk) then 
	   if  write_read_select = '0'  then
            cs  <= sig_cs_write ;   
            mosi <= sig_mosi_write;
				mosi_monitor  <= sig_mosi_write;
            spi_clock <= sig_spi_clock_write;   
       else
            cs  <= sig_cs_read ;   
            mosi <= sig_mosi_read; 
				mosi_monitor <= sig_mosi_read; 
            spi_clock <= sig_spi_clock_read;   
       end if;   
	  end if;
      end process;
      
      
      
      sig_cs_write        <= cs_write;
      sig_mosi_write      <= mosi_write;
      sig_spi_clock_write <= spi_clock_write;
      
      sig_cs_read        <= cs_read;
      sig_mosi_read      <= mosi_read;
      sig_spi_clock_read <= spi_clock_read;
      
      
      
      end ab;