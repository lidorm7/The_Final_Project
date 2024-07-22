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
entity spi_wr_rd_toggle is
    port
    (
        resetn              :   in  std_logic;
        sysclk              :   in  std_logic;
        wr_rd_toggle        :   in  std_logic;
        write_cs            :   in  std_logic;
        write_mosi          :   in  std_logic;
        write_clk           :   in  std_logic;
        read_cs             :   in  std_logic;
        read_mosi           :   in  std_logic;
        read_clk            :   in  std_logic;
        cs                  :   out std_logic;
        mosi                :   out std_logic;
        clk                 :   out std_logic
    );
    end spi_wr_rd_toggle;

--==============
-- Architecture
--==============    
architecture ab of spi_wr_rd_toggle is

    --===============
    -- Set Component
    --=============== 

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

        --===============
        -- Set Processes 
        --===============
        toggle : process (sysclk, resetn)

        begin

            if resetn = '0' then
                cs      <= '0';
                mosi    <= '0';
                clk     <= '0';

            elsif rising_edge(sysclk) then
                if wr_rd_toggle = '0' then
                    cs      <= write_cs;
                    mosi    <= write_mosi;
                    clk     <= write_clk;

                else
                    cs      <= read_cs;
                    mosi    <= read_mosi;
                    clk     <= read_clk;
                    
                end if;

            end if;
        
        end process toggle;

    end ab;