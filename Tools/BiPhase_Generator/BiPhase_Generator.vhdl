library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity BiPhase_Generator is
    port(
        resetn                : in std_logic;
        sysclk                : in std_logic;
        BiPhase_tx_out        : out std_logic
        -- q_data_bit            : out std_logic;
        -- main_rising_edge      : out std_logic
        
    );
end BiPhase_Generator;

architecture ab of BiPhase_Generator is

-- set components

component Rom_G
	port
	(
		address		: in std_logic_vector (4 downto 0);
		clock		: in std_logic  := '1';
		rden		: in std_logic  := '1';
		q		: out std_logic_vector (7 downto 0)
	);
end component;

-- set signals

type state_biphase is (s0,s1,s2,s3,s4,s5,s6,s7);
type state_biphase_1 is (s0a,s1a,s2a);
signal state_bi                  : state_biphase;
signal state_mini                : state_biphase_1;

signal sig_main                  : std_logic_vector(13 downto 0);
signal sig_q_data_rom            : std_logic_vector(7 downto 0);
signal sig_read_address          : std_logic_vector(4 downto 0);
signal sig_shift_data            : std_logic_vector(7 downto 0);
signal sig_main_rising_edge      : std_logic;
signal sig_main_falling_edge     : std_logic;
signal sig_rd_rising_edge        : std_logic;
signal sig_read                  : std_logic;
signal sig_BiPhase_tx_out        : std_logic;
signal sig_q_data_bit            : std_logic;
signal sig_cut                   : std_logic;
signal sig_cut_not               : std_logic;
signal sig_cut_rd_not            : std_logic;
signal sig_cut_rd                : std_logic;
signal sig_main_clk              : std_logic;
signal sig_inc                   : std_logic;

    begin

        -- set port maps
        memory : Rom_G
        port map (
            address => sig_read_address,
            clock   => sysclk,
            rden    => sig_rd_rising_edge,
            q       => sig_q_data_rom

        );

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

        sig_main_clk <= sig_main(6);
        
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
                sig_read_address <= (others => '0');         
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
                    sig_read_address <= sig_read_address + 1;
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
                        sig_shift_data <= sig_q_data_rom;
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
        
        BiPhase_tx_out <= sig_BiPhase_tx_out;

end ab;