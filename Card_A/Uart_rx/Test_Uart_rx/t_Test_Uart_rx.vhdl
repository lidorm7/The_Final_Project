library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Test bench for Uart_rx
-- set entity

entity t_Test_Uart_rx is
port (
        wr_ram                 : out std_logic;
        ram_address            : out std_logic_vector(5 downto 0);
        detected_byte          : out std_logic_vector(7 downto 0);
        q_ram                  : out std_logic_vector(7 downto 0)	
	                 );
end t_Test_Uart_rx;

-- set architecture

architecture only of t_Test_Uart_rx is

-- set components    

component Test_Uart_rx
	port
	(
		resetn                 : in std_logic;
        sysclk                 : in std_logic;
        toggle                 : in std_logic := '1';
        start_tx               : in std_logic;
        wr_ram                 : out std_logic;
        ram_address            : out std_logic_vector(5 downto 0);
        detected_byte          : out std_logic_vector(7 downto 0);
        q_ram                  : out std_logic_vector(7 downto 0)
	);
end component;

-- set signals

   signal sig_sysclk        :  std_logic   := '0';
   signal sig_resetn        :  std_logic   := '0';
   signal sig_strobe        :  std_logic   := '1';
  
begin

-- set port maps

   dut : Test_Uart_rx
	port map
	(
		resetn                   =>  sig_resetn,
        sysclk                   =>  sig_sysclk,
        start_tx                 =>  sig_strobe,
        toggle                   =>  '1',
        ram_address              =>  ram_address,
        detected_byte            =>  detected_byte,
        wr_ram                   =>  wr_ram,
        q_ram		             =>  q_ram
                            
 	);
   
-- set processes

 	process
    begin
        wait for 10.0 ns; sig_sysclk <= not sig_sysclk; -- 50.000mhz
    end process;

    stimulus : process
    begin
        wait for 50 ns; sig_resetn <= '1';
        wait;
    end process stimulus;
 
 -- 	  process
 --   begin
 --     wait for 13000 ns; sig_baud_rate  <= not sig_baud_rate;  -- 38400Hz
 --    
 --end process; 

    start_strobe : process
    begin
      wait for 100 ns; sig_strobe <= '0';
      wait for 500 ns; sig_strobe <= '1';
      wait;
    end process start_strobe;

    -- start_strobe : process
    -- begin
    --     for i in 1 to 32 loop
    --         wait for 500 ns; sig_strobe <= '0';
    --         wait for 312000 ns; sig_strobe <= '1';
    --     end loop;
    --     wait;
    -- end process start_strobe;

end only;