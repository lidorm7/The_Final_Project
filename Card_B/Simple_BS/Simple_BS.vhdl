library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Simple_BS is
    port(
        resetn              : in std_logic; -- Asynchronous reset input
        sysclk              : in std_logic; -- System clock input (operating at 50 MHz)
        bi_phase_filtered   : in std_logic; -- The input BiPhase signal after filtering from "BS_Filter"
        --clk90               : out std_logic; -- for simulation
        --enable              : out std_logic; -- for simulation
        main_clk            : out std_logic; -- The clock output signal
        nrzl_data           : out std_logic -- The data output signal
    ); 
end Simple_BS;

architecture ab of Simple_BS is

    -- set components

    -- set signals
    
    signal sig_00_clk                    : std_logic; -- This signal used to represent the clock derived from counter
    signal sig_00_cut                    : std_logic; -- Signal used to create a rising edge detector for "sig_00_clk "
    signal sig_00_cut_not                : std_logic; -- Signal used to create a rising edge detector for "sig_00_clk "
    signal sig_00_r                      : std_logic; -- This signal indicates the rising edge of the "sig_00_clk"

    signal sig_90_clk                    : std_logic; -- This signal used to represent the clock derived from counter.
    signal sig_90_cut                    : std_logic; -- Signal used to create a rising and falling edge detector for "sig_90_clk"
    signal sig_90_cut_not                : std_logic; -- Signal used to create a rising and falling edge detector for "sig_90_clk"
    signal sig_90_r                      : std_logic; -- This signal indicates the rising edge of the "sig_90_clk"
    signal sig_90_f                      : std_logic; -- This signal indicates the falling edge of "sig_90_clk"

    signal sig_bi_phase_filterd_cut      : std_logic; -- Signal used to create a rising and falling edge detector for "sig_bi_phase_filterd"
    signal sig_bi_phase_filterd_cut_not  : std_logic; -- Signal used to create a rising and falling edge detector for "sig_bi_phase_filterd"
    signal sig_bi_phase_filterd_r        : std_logic; -- This signal indicates the rising edge of the "sig_bi_phase_filterd"    
    signal sig_bi_phase_filterd_f        : std_logic; -- This signal indicates the falling edge of "sig_bi_phase_filterd"
    
    signal sig_enable                    : std_logic; -- This signal used to represent the enable derived from counter
    signal sig_ff_A                      : std_logic; -- This signal represent the samples from "sig_bi_phase_filterd"
    signal sig_ff_B                      : std_logic; -- This signal represent the samples from "sig_bi_phase_filterd"
    signal cnt_clk                       : std_logic_vector(13 downto 0); -- This signal used to represent counter numbers of "sysclk" to generate clocks or pulses

    begin
        
        -- set port maps

        -- set processes

        cut_bi_phase : process(resetn,sysclk) -- rising & falling edge of biphase signal process
        begin
            if resetn = '0' then
                sig_bi_phase_filterd_cut     <= '0';
                sig_bi_phase_filterd_cut_not <= '1';
            elsif rising_edge(sysclk) then
                sig_bi_phase_filterd_cut     <= bi_phase_filtered;
                sig_bi_phase_filterd_cut_not <= not sig_bi_phase_filterd_cut;
            end if;
        end process cut_bi_phase;

        sig_bi_phase_filterd_r <= sig_bi_phase_filterd_cut and sig_bi_phase_filterd_cut_not;
        sig_bi_phase_filterd_f <= not(sig_bi_phase_filterd_cut or sig_bi_phase_filterd_cut_not);

        ena : process(resetn,sysclk) -- create the enable signal for synchronization
        begin
            if resetn = '0' then
                cnt_clk <= (others => '0');
                sig_enable  <= '0';
            elsif rising_edge(sysclk) then
                cnt_clk <= cnt_clk + 1;
                if cnt_clk = 12288 then -- 12288 -- 96
                    sig_enable <= '1';
                end if;
                if ((sig_bi_phase_filterd_r = '1') or (sig_bi_phase_filterd_f = '1')) and (sig_enable = '1') then
                    sig_enable  <= '0';
                    cnt_clk <= (others => '0');
                end if;
            end if;
        end process ena;

        clk_00 : process(resetn,sysclk) -- create the main clock signal and synchronize with the enable and the biphase signal
        begin
            if resetn = '0' then
                sig_00_clk <= '1';
            elsif rising_edge(sysclk) then
                if cnt_clk = 8192 then -- 8192 -- 64
                    sig_00_clk <= '0';
                end if;
                if ((sig_bi_phase_filterd_r = '1') or (sig_bi_phase_filterd_f = '1')) and (sig_enable = '1') then
                    sig_00_clk <= '1';
                end if;
            end if;
        end process clk_00;

        main_clk <= sig_00_clk;

        cut_clk_00 : process(resetn,sysclk) -- rising edge of main clock process
        begin
            if resetn = '0' then
                sig_00_cut     <= '0';
                sig_00_cut_not <= '1';
            elsif rising_edge(sysclk) then
                sig_00_cut     <= sig_00_clk;
                sig_00_cut_not <= not sig_00_cut;
            end if;
        end process cut_clk_00;

        sig_00_r <= sig_00_cut and sig_00_cut_not;

        clk_90 : process(resetn,sysclk) -- creation of a clock that is moved by quarter main clock cycle time
        begin
            if resetn = '0' then
                sig_90_clk <= '0';
            elsif rising_edge(sysclk) then
                if cnt_clk = 4096 then -- 4096 -- 32
                    sig_90_clk <= '1';
                end if;
                if cnt_clk = 12288 then -- 12288 -- 96
                    sig_90_clk <= '0';
                end if;
            end if;
        end process clk_90;

        cut_clk_90 : process(resetn,sysclk) -- rising edge of main clock_90 process
        begin
            if resetn = '0' then
                sig_90_cut     <= '0';
                sig_90_cut_not <= '1';
            elsif rising_edge(sysclk) then
                sig_90_cut     <= sig_90_clk;
                sig_90_cut_not <= not sig_90_cut;
            end if;
        end process cut_clk_90;

        sig_90_r <= sig_90_cut and sig_90_cut_not;
        sig_90_f <= not(sig_90_cut or sig_90_cut_not);

        sample_bs : process(resetn,sysclk) -- sampling process of the bipahse signal to nrzl signal generation
        begin
            if resetn = '0' then
                sig_ff_A <= '0';
                sig_ff_B <= '0';
            elsif rising_edge(sysclk) then
                if (sig_90_r = '1' and sig_00_clk = '1') then
                    sig_ff_A <= bi_phase_filtered;
                end if;
                if (sig_90_f = '1' and sig_00_clk = '0') then
                    sig_ff_B <= bi_phase_filtered;
                end if;
            end if;
        end process sample_bs;

        nrzl_creation : process(resetn,sysclk) -- generate the nrzl signal by preforming an XNOR operation between every 2 samples
        begin
            if resetn = '0' then
                nrzl_data <= '0';
            elsif rising_edge(sysclk) then
                if sig_00_r = '1' then
                    nrzl_data <= sig_ff_A xnor sig_ff_B;
                end if;
            end if;
        end process nrzl_creation;
        
        --enable <= sig_enable; -- for simulation
        --clk90 <= sig_90_clk; -- for simulation
end ab;