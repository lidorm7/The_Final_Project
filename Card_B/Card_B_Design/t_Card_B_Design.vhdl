library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- set entity

entity t_Card_B_Design is
port (
        OB_LED_RGB_Din      : out std_logic;
        -- rgb_leds_out		    : out std_logic_vector(95 downto 0);
        LED_1               : out std_logic;
        LED_2               : out std_logic;
        LED_3               : out std_logic	
	);
end t_Card_B_Design;

-- set architecture

architecture only of t_Card_B_Design is

-- set components    

component Card_B_Design
	port
	(
		resetn              : in std_logic;
        sysclk              : in std_logic;
        OB_LED_RGB_Din      : out std_logic;
        -- rgb_leds_out		    : out std_logic_vector(95 downto 0);
        LED_1               : out std_logic;
        LED_2               : out std_logic;
        LED_3               : out std_logic  
	);
end component;

-- set signals

   signal sig_sysclk        :  std_logic   := '0';
   signal sig_resetn        :  std_logic   := '0';
  
begin

-- set port maps

    dut : Card_B_Design
	port map
	(
		resetn              =>  sig_resetn,
        sysclk              =>  sig_sysclk,
        OB_LED_RGB_Din      =>  OB_LED_RGB_Din,
        -- rgb_leds_out            =>  rgb_leds_out,
        LED_1               =>  LED_1,
        LED_2               =>  LED_2,
        LED_3               =>  LED_3
 	);
   
-- set processes

 	clk : process
    begin
        wait for 10.0 ns; sig_sysclk <= not sig_sysclk; -- 50.000mhz
    end process clk;

    rst : process
    begin
        wait for 50 ns; sig_resetn <= '1';
        wait;
    end process rst;

end only;