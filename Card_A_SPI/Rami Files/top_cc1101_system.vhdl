library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

--  30.11.2023   top system to check write and read to cc1101 tranceiver

entity  top_cc1101_system  is
     PORT (        
            resetn           : IN  STD_LOGIC;-- AB9
            sysclk           : IN  STD_LOGIC;-- 50mHz --N14
	   	   miso	           : IN  STD_LOGIC;--  ***AB8
            mosi             : out std_logic;-- AA5
            cs 		        : out std_logic;-- AA8
            spi_clock        : out std_logic; -- AB5
            d0_out           : out std_logic;  -- AA16
		      tx_rs232         : out std_logic;  --***AB7
				mosi_monitor     : out std_logic   -- AA7
				 
            
                        );
        END top_cc1101_system;      
      
        
     ARCHITECTURE  ab of top_cc1101_system  is
     
       -- components declaration.
       
       COMPONENT spi_cc1101_write
	PORT
	(
		resetn		:	 IN STD_LOGIC;
		sysclk		:	 IN STD_LOGIC;
		start_state_machine		:	 IN STD_LOGIC;
		cs		:	 OUT STD_LOGIC;
		mosi		:	 OUT STD_LOGIC;
        start_read_cc1101		:	 OUT STD_LOGIC;
		spi_clock_3_out		:	 OUT STD_LOGIC;
       	write_read_select		:	 OUT STD_LOGIC
	);
END COMPONENT;

  COMPONENT spi_cc1101_read_new_hw
	PORT
	(
		resetn		:	 IN STD_LOGIC;
		sysclk		:	 IN STD_LOGIC;
		start_state_machine		:	 IN STD_LOGIC;
		cs		:	 OUT STD_LOGIC;
		mosi		:	 OUT STD_LOGIC;
		spi_clock		:	 OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT select_module
	PORT
	(
		resetn		:	 IN STD_LOGIC;
		sysclk		:	 IN STD_LOGIC;
		write_read_select		:	 IN STD_LOGIC;
		cs_write		:	 IN STD_LOGIC;
		mosi_write		:	 IN STD_LOGIC;
		spi_clock_write		:	 IN STD_LOGIC;
		cs_read		:	 IN STD_LOGIC;
		mosi_read		:	 IN STD_LOGIC;
		spi_clock_read		:	 IN STD_LOGIC;
		mosi		:	 OUT STD_LOGIC;
		mosi_monitor     : out std_logic;
		cs		:	 OUT STD_LOGIC;
		spi_clock		:	 OUT STD_LOGIC
	);
END COMPONENT;



COMPONENT starter_module
	PORT
	(
		resetn		:	 IN STD_LOGIC;
		sysclk		:	 IN STD_LOGIC;
		start_tx_system		:	 OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT blinking_led
	PORT
	(
		resetn		:	 IN STD_LOGIC;
		sysclk		:	 IN STD_LOGIC;
		d0_out		:	 OUT STD_LOGIC
	);
END COMPONENT;


component spi_data_memory
	PORT
	(
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		wraddress		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;

COMPONENT uart_tx_spi
	PORT
	(
		resetn		:	 IN STD_LOGIC;
		sysclk		:	 IN STD_LOGIC;
		start_tx		:	 IN STD_LOGIC;
		q_spi_data		:	 IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		adr_ram_rd		:	 OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		tx_rs232		:	 OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT detecting_miso_module
	PORT
	(
		resetn		:	 IN STD_LOGIC;
		sysclk		:	 IN STD_LOGIC;
		cs		:	 IN STD_LOGIC;
		spi_clock		:	 IN STD_LOGIC;
		miso		:	 IN STD_LOGIC;
		write_read_select  : in std_logic;
		wr_ram		:	 OUT STD_LOGIC;
		adr_ram		:	 OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		miso_data		:	 OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		start_tx		:	 OUT STD_LOGIC
	);
END COMPONENT;

 
	
	



    signal  sig_start_tx_system      : std_logic;
    signal  sig_cs_write             : std_logic;
    signal  sig_cs_read              : std_logic;
    signal  sig_mosi_write           : std_logic;
    signal  sig_mosi_read            : std_logic;
    signal  sig_spi_clock_write      : std_logic;
    signal  sig_spi_clock_read       : std_logic;
    
    
    signal  sig_miso_data            : std_logic_vector(7 downto 0);
    signal  sig_adr_ram              : std_logic_vector(5 downto 0);
	signal  sig_adr_ram_rd           : std_logic_vector(5 downto 0);
	signal  sig_wr_ram               : std_logic;
    signal  sig_q_spi_data           : std_logic_vector(7 downto 0);
	signal  sig_start_tx			       : std_logic;
	signal  sig_start_read_cc1101     : std_logic;
	signal  sig_write_read_select     : std_logic;
	signal  sig_miso                  : std_logic;
     
           
        begin
			  
        -- components ports. 
        
           spiwr: spi_cc1101_write
	PORT  MAP
	(
		resetn		          => resetn,
		sysclk		          => sysclk,
		start_state_machine	  => sig_start_tx_system,
		cs		              => sig_cs_write,
		mosi		          => sig_mosi_write,
        start_read_cc1101	  => sig_start_read_cc1101,
		spi_clock_3_out		  => sig_spi_clock_write,
        write_read_select	  => sig_write_read_select
	);
 

 main: spi_cc1101_read_new_hw
	PORT  MAP
	(
	    resetn		          => resetn,
		sysclk		          => sysclk,
	    start_state_machine	  => sig_start_read_cc1101,
		cs		              => sig_cs_read,
		mosi		          => sig_mosi_read,
		spi_clock		    => sig_spi_clock_read
	);
	 
    sel: select_module
	PORT  MAP
	(
		resetn		          => resetn,
		sysclk		          => sysclk,
		write_read_select	    => sig_write_read_select,
		cs_write		          => sig_cs_write,
		mosi_write		      => sig_mosi_write,
		spi_clock_write		  => sig_spi_clock_write,
		cs_read		          => sig_cs_read,
		mosi_read		      => sig_mosi_read,
		spi_clock_read		  => sig_spi_clock_read,
		mosi		          => mosi,
		mosi_monitor       => mosi_monitor,
		cs		              => cs,
		spi_clock		      => spi_clock
	);
 

strt: starter_module
	PORT   MAP
	(
		resetn		       => resetn,
		sysclk		       => sysclk,
		start_tx_system	 => sig_start_tx_system
	);  
    
    blink: blinking_led
	PORT  MAP
	(
		resetn		       => resetn,
		sysclk		       => sysclk,
		d0_out		       => d0_out
	);
 
   
     
mem: spi_data_memory
	PORT  MAP
	(
		clock		       => sysclk,
		data		       => sig_miso_data,
		rdaddress		   => sig_adr_ram_rd,
		wraddress		   => sig_adr_ram,
		wren		       => sig_wr_ram,
		q		           => sig_q_spi_data
	);
   
tx: uart_tx_spi
	PORT  MAP
	(
	    resetn		       => resetn,
		sysclk		       => sysclk,
		start_tx		       => sig_start_tx,
		q_spi_data		    => sig_q_spi_data,
		adr_ram_rd		    => sig_adr_ram_rd,
		tx_rs232		       => tx_rs232
	);
 

det: detecting_miso_module
	PORT  MAP
	(
		resetn		       => resetn,
		sysclk		       => sysclk,
		cs		             => sig_cs_read,
		spi_clock		    => sig_spi_clock_read,
	   miso		          => miso,
	   write_read_select  => sig_write_read_select, 
		wr_ram		       => sig_wr_ram,
		adr_ram		       => sig_adr_ram,
		miso_data		    => sig_miso_data,
		start_tx		       => sig_start_tx
	);
	
	
	 
	
	 
   
        
         end ab;