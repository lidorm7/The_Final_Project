library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity BiPhase_tx is
    port(
        resetn                : in std_logic;
        sysclk                : in std_logic;
        q_data_ram            : in std_logic_vector(7 downto 0);
        BiPhase_tx_out        : out std_logic;
        start_strobe_tx       : out std_logic;
        read_address          : out std_logic_vector(5 downto 0);
        rd                    : out std_logic;
        toggle                : out std_logic
    --    q_data_bit            : out std_logic;
    --    main_rising_edge      : out std_logic
        
    );
end BiPhase_tx;

architecture ab of BiPhase_tx is

-- set components

-- set signals

type state_biphase is (s0,s1,s2,s3,s4,s5,s6,s7);
type state_biphase_1 is (s0a,s1a,s2a,s3a,s4a,s5a);
signal state_bi                  : state_biphase;
signal state_mini                : state_biphase_1;

signal sig_main                  : std_logic_vector(13 downto 0);
signal sig_q_ram_out             : std_logic_vector(7 downto 0);
signal sig_read_address          : std_logic_vector(5 downto 0);
signal sig_read_address_cnt      : std_logic_vector(4 downto 0);
signal sig_shift_data            : std_logic_vector(7 downto 0);
signal sig_main_rising_edge      : std_logic;
signal sig_rd_rising_edge        : std_logic;
signal sig_main_falling_edge     : std_logic;
signal sig_read                  : std_logic;
signal sig_BiPhase_tx_out        : std_logic;
signal sig_q_data_bit            : std_logic;
signal sig_cut                   : std_logic;
signal sig_cut_not               : std_logic;
signal sig_cut_rd_not            : std_logic;
signal sig_cut_rd                : std_logic;
signal sig_main_clk              : std_logic;
signal sig_inc                   : std_logic;
signal sig_toggle                : std_logic := '0';

    begin

        -- set port maps

        -- set processes

        -- this transmiter is working with 3000hz
        main_clk : process(resetn,sysclk)
        begin
            if resetn = '0' then
                sig_main <= (others => '0');
            elsif rising_edge(sysclk) then
                sig_main <= sig_main + 1;
            end if;
        end process main_clk;

        -- change sign every (2^13) * 20ns = 164us
        -- period time is 164us * 2 = 328us

        sig_main_clk <= sig_main(13);
        
        cut_main_clk : process(resetn,sysclk)
        begin
            if resetn = '0' then
                sig_cut     <= '0';
                sig_cut_not <= '1';
            elsif rising_edge(sysclk) then
                sig_cut     <= sig_main_clk;
                sig_cut_not <= not sig_cut;
            end if;    
        end process cut_main_clk;
        
        sig_main_rising_edge  <= sig_cut and sig_cut_not;
        sig_main_falling_edge <= not (sig_cut or sig_cut_not);
        -- main_rising_edge      <= sig_main_rising_edge;

        main_state_mashine : process(sysclk,resetn)
        begin
            if resetn ='0' then
                state_bi <= s0;
                sig_read <= '0';
            elsif rising_edge(sysclk) then
                if sig_main_rising_edge = '1' then

                    case state_bi is

                        when s0 =>
                        sig_inc <= '0'; 
                        state_bi <= s1;

                        when s1 =>
                        sig_read <= '1';
                        state_bi <= s2;

                        when s2 =>
                        sig_read <= '0';
                        state_bi <= s3;

                        when s3 =>
                        state_bi <= s4;

                        when s4 =>
                        state_bi <= s5;

                        when s5 =>
                        state_bi <= s6;

                        when s6 => 
                        state_bi <= s7;

                        when s7 =>
                        sig_inc <= '1';
                        state_bi <= s0;

                    end case;    

                end if;

            end if;
        
        end process main_state_mashine;

        side_state_mashine : process(sysclk,resetn)
        begin          
            if resetn ='0' then
                state_mini <= s0a;
                sig_read_address_cnt <= (others => '0');
                sig_toggle <= '0';          
            elsif rising_edge(sysclk) then
       
                case state_mini is 

                    when s0a =>
                    if sig_inc = '1' then
                        state_mini <= s1a;
                    end if; 

                    when s1a =>
                    if sig_inc = '0' then
                        state_mini <= s2a;
                    end if;
       
                    when s2a =>
                    if sig_read_address_cnt = "00111" then
                        start_strobe_tx <= '1';
                    else
                        start_strobe_tx <= '0';    
                    end if;
                    state_mini <= s3a;
       
                    when s3a =>
                    sig_read_address_cnt <= sig_read_address_cnt + 1;
                    state_mini <= s4a;
       
                    when s4a =>
                    if sig_read_address_cnt = "00000" then
                        sig_toggle <= not sig_toggle;
                    end if;
                    state_mini <= s5a;
       
                    when s5a =>
                    sig_read_address <= sig_toggle & sig_read_address_cnt;
                    state_mini <= s0a;
       
                end case;
       
            end if;          
        end process side_state_mashine;        

        shift_data_out : process(resetn,sysclk)
        begin
            if resetn = '0' then
                sig_shift_data <= (others => '0');
            elsif rising_edge(sysclk) then
                if sig_main_rising_edge = '1' then
                    if sig_read = '1' then
                        sig_shift_data <= q_data_ram;
                    elsif sig_read = '0' then
                        sig_shift_data <= sig_shift_data(6 downto 0) & '0';
                    end if;
                end if; 
            end if;       
        end process shift_data_out;

        sig_q_data_bit <= sig_shift_data(7);
        -- q_data_bit <= sig_shift_data(7);

        biphase_signal_out : process(resetn,sysclk)
        begin
            if resetn = '0' then
                sig_BiPhase_tx_out <= '0';
            elsif rising_edge(sysclk) then
                if (sig_main_rising_edge = '1') or (sig_main_falling_edge = '1' and sig_q_data_bit = '0') then
                    sig_BiPhase_tx_out <= not sig_BiPhase_tx_out;
                end if;      
            end if;
        end process biphase_signal_out;

        cut_rd : process(resetn,sysclk)
        begin
            if resetn = '0' then
                sig_cut_rd     <= '0';
                sig_cut_rd_not <= '1';
            elsif rising_edge(sysclk) then
                sig_cut_rd     <= sig_read;
                sig_cut_rd_not <= not sig_cut_rd;
            end if;    
        end process cut_rd;

        sig_rd_rising_edge  <= sig_cut_rd and sig_cut_rd_not;

        rd <= sig_rd_rising_edge;
        read_address <= sig_read_address;
        BiPhase_tx_out <= sig_BiPhase_tx_out;
        toggle <= sig_toggle;

end ab;