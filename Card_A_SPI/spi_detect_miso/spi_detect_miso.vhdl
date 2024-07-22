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
entity spi_detect_miso is
    port
    (
        resetn              :   in  std_logic;
        sysclk              :   in  std_logic;
        miso                :   in  std_logic;
        read_cs             :   in  std_logic;
        read_clk            :   in  std_logic;
        wren                :   out std_logic;
        modelsim_trigger    :   out std_logic;
        wr_RAM_adr          :   out std_logic_vector(5 downto 0);
        data_RAM_out        :   out std_logic_vector(7 downto 0)
    );
    end spi_detect_miso;

--==============
-- Architecture
--==============    
architecture ab of spi_detect_miso is

    --===============
    -- Set Component
    --=============== 

    --=============
    -- Set Signals
    --=============
    type state is (s0,s1,s2,s3);
    signal  state_wr                    :   state;
    signal  sig_CLK_A_q                 :   std_logic;
    signal  sig_CLK_A_q_not             :   std_logic;
    signal  sig_read_cs_r               :   std_logic;
    signal  sig_CLK_B_q                 :   std_logic;
    signal  sig_CLK_B_q_not             :   std_logic;
    signal  sig_read_clk_r              :   std_logic;
    signal  sig_wr_flag                 :   std_logic;
    signal  sig_modelsim_trigger        :   std_logic;
    signal  sig_wr_RAM_adr              :   std_logic_vector(5 downto 0);
    signal  sig_reg_data_RAM            :   std_logic_vector(7 downto 0);

    begin
        
        --===============
        -- Set Port Maps
        --===============

        --===============
        -- Set Processes 
        --===============
        cut_cs : process(sysclk,resetn)
        begin
            if (resetn = '0') then      
                sig_CLK_A_q     <= '0';
                sig_CLK_A_q_not <= '1';
            elsif  rising_edge(sysclk) then
                sig_CLK_A_q     <= read_cs;
                sig_CLK_A_q_not <= not sig_CLK_A_q;
            end if ;
        end process cut_cs;

        sig_read_cs_r <= sig_CLK_A_q AND sig_CLK_A_q_not; 

        cut_spi_clk : process(sysclk,resetn)
        begin
            if (resetn = '0') then      
                sig_CLK_B_q     <= '0';
                sig_CLK_B_q_not <= '1';
            elsif  rising_edge(sysclk) then
                sig_CLK_B_q     <= read_clk;
                sig_CLK_B_q_not <= not sig_CLK_B_q;
            end if ;
        end process cut_spi_clk;

        sig_read_clk_r <= sig_CLK_B_q AND sig_CLK_B_q_not; 

        main : process (sysclk, resetn)
        variable cntr : integer range 0 to 30;

        begin

            if resetn = '0' then
                cntr := 0;
                sig_reg_data_RAM <= (others => '0');
                sig_wr_flag <= '0';

            elsif rising_edge(sysclk) then
                if sig_read_clk_r = '1' and read_cs = '0' then
                    cntr := cntr + 1;
                end if;

                if sig_read_clk_r = '1' and read_cs = '0' and cntr > 6 then
                    sig_reg_data_RAM <= sig_reg_data_RAM(6 downto 0) & miso;
                end if;

                if cntr = 15 then
                    cntr := 0;
                    data_RAM_out <= sig_reg_data_RAM;
                    sig_wr_flag <= '1';
                end if;

                if cntr = 1 then
                    sig_wr_flag <= '0';
                end if;

            end if;
        
        end process main;

        write : process (sysclk, resetn)

        begin

            if resetn = '0' then
                state_wr <= s0;
                sig_modelsim_trigger <= '0';
                sig_wr_RAM_adr <= (others => '0');

            elsif rising_edge(sysclk) then
                case state_wr is

                    when s0 =>
                    if sig_wr_flag = '1' then
                        state_wr <= s1;
                    end if;

                    when s1 =>
                    wren <= '1';
                    state_wr <= s2;

                    when s2 =>
                    wren <= '0';
                    state_wr <= s3;

                    when s3 =>
                    if sig_wr_flag = '0' then
                        state_wr <= s0;
                        sig_wr_RAM_adr <= sig_wr_RAM_adr + 1;
                    end if; 

                    when others =>
                        state_wr <= s0;

                end case;

                if sig_read_cs_r = '1' then
                    sig_wr_RAM_adr <= (others => '0');
                    sig_modelsim_trigger <= '1';
                else
                    sig_modelsim_trigger <= '0';        
                end if;
                
            end if;
        
        end process write;

        wr_RAM_adr <= sig_wr_RAM_adr;
        modelsim_trigger <= sig_modelsim_trigger;  

    end ab;