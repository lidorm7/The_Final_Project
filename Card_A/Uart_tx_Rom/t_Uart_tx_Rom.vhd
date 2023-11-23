library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity t_Uart_tx_Rom is 
  port ( 
		    uart_tx_triger : out std_logic
      );
end t_Uart_tx_Rom;

architecture only of t_Uart_tx_Rom is

component Uart_tx_Rom
  port ( 
            resetn               : in std_logic;
            sysclk               : in std_logic;-- 50mhz 
            start_triger         : in std_logic;-- 
			      uart_tx_triger	     : out std_logic
	   );
end component;

  signal sig_sysclk    : std_logic := '0';
  signal sig_resetn    : std_logic := '0';
  signal sig_strobe    : std_logic := '1';
--  signal sig_baud_rate : std_logic := '0';

  begin

    dut: Uart_tx_Rom
    port map
    (
      resetn               =>  sig_resetn,       
      sysclk               =>  sig_sysclk,   
      start_triger         =>  sig_strobe,  
	    uart_tx_triger       =>  uart_tx_triger	      
    );

    process
    begin
      wait for 10 ns; sig_sysclk <= not sig_sysclk;
    end process;

--    process
--    begin
--      wait for 13000 ns; sig_baud_rate <= not sig_baud_rate;
--    end process;

    process
    begin
      wait for 50 ns; sig_resetn <= '1';
      wait;
    end process;

    -- process
    -- begin
    --   for i in 1 to 32 loop
    --     wait for 100 ns; sig_strobe <= '0';
    --     wait for 312000 ns; sig_strobe <= '1';
    --   end loop;
    --   wait;
    -- end process;

    process
    begin
      wait for 100 ns; sig_strobe <= '0';
     -- wait for 500 ns; sig_strobe <= '1';
      wait;
    end process;

end only;
