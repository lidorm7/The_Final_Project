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
entity spi_display_modelsim is
    port
    (
        resetn              :   in  std_logic;
        sysclk              :   in  std_logic;
        modelsim_trigger    :   in  std_logic;
        RAM_q_in            :   in  std_logic_vector(7 downto 0);
        RAM_rd_adr          :   out std_logic_vector(5 downto 0);
        data_out            :   out std_logic_vector(7 downto 0)
    );
    end spi_display_modelsim;

--==============
-- Architecture
--==============    
architecture ab of spi_display_modelsim is

    --===============
    -- Set Component
    --=============== 

    --=============
    -- Set Signals
    --=============
    type state is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
    signal  state_machine       :   state;
    signal  sig_1               :   std_logic;
    signal  sig_RAM_rd_adr      :   std_logic_vector(5 downto 0);
    signal  sig_data_out        :   std_logic_vector(7 downto 0);

    begin
        
        --===============
        -- Set Port Maps
        --===============

        --===============
        -- Set Processes 
        --===============
        name : process (sysclk, resetn)
        variable cntr : integer range 0 to 30;

        begin

            if resetn = '0' then
                sig_RAM_rd_adr  <= (others => '0');
                sig_data_out        <= (others => '0');
                state_machine   <= s0 ;

            elsif rising_edge(sysclk) then

                    case state_machine is

                        when s0 =>
                        if modelsim_trigger = '1' then
                            state_machine <= s1;
                        end if;

                        when s1 =>
                        if modelsim_trigger = '0' then
                            state_machine <= s2;
                        end if;

                        when s2 =>
                        sig_data_out <= RAM_q_in;
                        state_machine <= s3; 

                        when s3 =>
                        state_machine <= s4;

                        when s4 =>
                        state_machine <= s5;

                        when s5 =>
                        sig_RAM_rd_adr <= sig_RAM_rd_adr + 1;
                        state_machine <= s6;

                        when s6 =>
                        state_machine <= s7;

                        when s7 =>
                        if sig_RAM_rd_adr = 47 then
                            sig_RAM_rd_adr  <= (others => '0');
                            state_machine <= s0;
                        else
                            state_machine <= s2;
                        end if;

                        when others =>
			                state_machine <= s0;

                    end case;
                         
            end if;
        
        end process name;

        data_out    <= sig_data_out;
        RAM_rd_adr  <= sig_RAM_rd_adr;

    end ab;