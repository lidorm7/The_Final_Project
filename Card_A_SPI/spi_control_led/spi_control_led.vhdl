--===========
-- Libraries
--===========
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--========
-- Entity
--========
entity spi_control_led is
    port
    (
        resetn              :   in  std_logic;
        sysclk              :   in  std_logic;
        d0_out              :   out std_logic
    );
    end spi_control_led;

--==============
-- Architecture
--==============    
architecture ab of spi_control_led is

    --===============
    -- Set Component
    --=============== 

    --=============
    -- Set Signals
    --=============
    signal  sig_d0_out : std_logic;

    begin
        
        --===============
        -- Set Port Maps
        --===============

        --===============
        -- Set Processes 
        --===============
        process (sysclk,resetn)
        -- main counter 50mhz t = 20nSec
        variable var_cntr : integer range 0 to 500000000;
	    begin
            if resetn = '0' then
                sig_d0_out  <= '0';
	        elsif rising_edge(sysclk) then      
                var_cntr := var_cntr + 1;
                if var_cntr = 50000000 then
                    sig_d0_out <= not sig_d0_out;
                    var_cntr := 0;
                end if;       
            end if;
        end process;

        d0_out <= sig_d0_out;

    end ab;