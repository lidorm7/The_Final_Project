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
entity spi_trigger is
    port
    (
        resetn                : in  std_logic;  -- AB9
        sysclk                : in  std_logic;  -- 50mHz  -- N14
		start_state_machine   : out  std_logic  -- external triger to
    );
    end spi_trigger;

--==============
-- Architecture
--==============    
architecture ab of spi_trigger is

    --===============
    -- Set Component
    --=============== 

    --=============
    -- Set Signals
    --=============
    signal  sig_time_flag           : std_logic;
	signal  sig_time_cntr           : std_logic_vector(25 downto 0);
	signal  sig_start_power	        : std_logic;
    signal  sig_start_state_machine : std_logic;
    constant sig_limit_value        : std_logic_vector(19 downto 0) :=  X"7A120" ;

    begin
        
        --===============
        -- Set Port Maps
        --===============

        --===============
        -- Set Processes 
        --===============
        trigger : process (sysclk, resetn)

        begin

            if resetn = '0' then

                sig_time_flag       <= '0';  
			    sig_time_cntr       <= (others => '0');
                sig_start_power     <= '0';
                sig_start_state_machine <= '0';

            elsif rising_edge(sysclk) then

                sig_start_state_machine <= sig_time_flag; 
			    if sig_time_cntr < sig_limit_value + 50 then -- 500050
                    sig_time_cntr <= sig_time_cntr + 1;
                end if;

                if (sig_time_cntr = 500) and ( sig_start_power = '0') then
                    sig_time_flag <= '1';
                end if;

                if (sig_time_cntr = 505)  and ( sig_start_power = '0')then
                    sig_start_power <= '1';
                    sig_time_flag <= '0';		 
                end if;

			    if sig_time_cntr = sig_limit_value then --  500000
                    sig_time_flag <= '1';
			    end if;

			    if sig_time_cntr = sig_limit_value + 10 then --500010
                    sig_time_flag <= '0';
			    end if;

			    if sig_time_cntr = sig_limit_value + 40 then -- 500040
                    sig_start_power <= '0';	
			        sig_time_cntr   <= (others => '0');
			    end if;  

            end if;
        
        end process trigger;

start_state_machine <= sig_start_state_machine;

end ab;