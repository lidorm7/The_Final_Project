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
entity X is
    port
    (
        resetn              :   in  std_logic;
        sysclk              :   in  std_logic;
        default_0           :   in  std_logic;
        default_1           :   out std_logic;
        default_2           :   out std_logic;
        default_3           :   out std_logic
    );
    end X;

--==============
-- Architecture
--==============    
architecture ab of X is

    --===============
    -- Set Component
    --=============== 
    component cmp_name
	PORT
	(
		resetn              :   in  std_logic;
        sysclk              :   in  std_logic
	);
    end component;

    --=============
    -- Set Signals
    --=============
    type state is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
    signal  state_machine       :   state;
    signal  sig_1               :   std_logic;
    signal  sig_2               :   std_logic_vector(7 downto 0);

    begin
        
        --===============
        -- Set Port Maps
        --===============
        name_you_want : cmp_name
        port map (
            resetn            => resetn,
            sysclk            => sysclk
        );

        --===============
        -- Set Processes 
        --===============
        name : process (sysclk, resetn)
        variable cntr : integer range 0 to 30;

        begin

            if resetn = '0' then

                sig_1 <= '0';
                sig_2 <= (others => '0');
                state_machine <= s0 ;

            elsif rising_edge(sysclk) then

                    case state_machine is

                        when s0 =>
                        
                        when s1 =>

                        when s2 =>

                        when s3 =>

                        when s4 =>

                        when s5 =>

                        when s6 =>

                        when s7 =>

                        when others =>
                        state_machine <= s0;

                    end case;
                         
            end if;
        
        end process name;

    end ab;