library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity BiPhase_tx is
    port(
        resetn                : in std_logic; -- Asynchronous reset input
        sysclk                : in std_logic; -- System clock input (operating at 50 MHz)
        q_data_ram            : in std_logic_vector(7 downto 0); -- The data input from ram
        BiPhase_tx_out        : out std_logic; -- Bi-phase encoded output
        start_strobe_tx       : out std_logic; -- Signal indicating the start of transmission
        read_address          : out std_logic_vector(5 downto 0); -- Provides the address used for reading
        rd                    : out std_logic; -- Signal indicating a read operation
        toggle                : out std_logic -- Toggle the MSB bit of address for read/ write mode
    --    q_data_bit            : out std_logic;
    --    main_rising_edge      : out std_logic
        
    );
end BiPhase_tx;

architecture ab of BiPhase_tx is

-- set components

-- set signals

type state_biphase is (s0,s1,s2,s3,s4,s5,s6,s7);
type state_biphase_1 is (s0a,s1a,s2a,s3a,s4a,s5a);
signal state_bi                  : state_biphase; -- A signal of type state, which is an enumeration representing the different states of the "BiPhase_tx"
signal state_mini                : state_biphase_1; -- A signal of type state, which is an enumeration representing the different states of the "side_state_mashine"

signal sig_main                  : std_logic_vector(13 downto 0); -- This signal used to hold a count related to the main clock operation
signal sig_q_ram_out             : std_logic_vector(7 downto 0); -- This signal representing output data from a RAM
signal sig_read_address          : std_logic_vector(5 downto 0); -- This signal used to represent an address for reading from RAM
signal sig_read_address_cnt      : std_logic_vector(4 downto 0); -- This is signal used for counting purposes, possibly related to address generation
signal sig_shift_data            : std_logic_vector(7 downto 0); -- This signal used for shifting data
signal sig_main_rising_edge      : std_logic; -- This signal indicates the rising edge of the main clock
signal sig_rd_rising_edge        : std_logic; -- This signal indicates the rising edge of the read clock
signal sig_main_falling_edge     : std_logic; -- This signal indicates the falling edge of the main clock
signal sig_read                  : std_logic; -- This signal is used to control reading operations
signal sig_BiPhase_tx_out        : std_logic; -- This signal represents the output of the Bi-Phase transmitter
signal sig_q_data_bit            : std_logic; -- This signal represents a single bit of data from the shifted data
signal sig_cut                   : std_logic; -- Signal used to create a rising and falling edge detector for "sig_main_clk"
signal sig_cut_not               : std_logic; -- Signal used to create a rising and falling edge detector for "sig_main_clk"
signal sig_cut_rd_not            : std_logic; -- Signal used to create a rising edge detector for "sig_read"
signal sig_cut_rd                : std_logic; -- Signal used to create a rising edge detector for "sig_read"
signal sig_main_clk              : std_logic; -- This signal used to represent the clock derived from "sig_main" counter
signal sig_inc                   : std_logic; -- This signal used to create pulse to start the "state_mini"
signal sig_toggle                : std_logic := '0'; -- This signal is used to separate the sending of data in RAM between reading and writing 

    begin

        -- set port maps

        -- set processes

       
        main_clk : process(resetn,sysclk)  -- this transmiter is working with 3000hz (333.333us)
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
        
        cut_main_clk : process(resetn,sysclk) -- rising & falling edge of main clock process
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

        main_state_mashine : process(sysclk,resetn) -- main management FSM process for transfer
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

        side_state_mashine : process(sysclk,resetn) -- address management FSM process
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

        shift_data_out : process(resetn,sysclk) -- shift the data for biphase encoder signal creation
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

        biphase_signal_out : process(resetn,sysclk) -- create the biphase encoder signal process
        begin
            if resetn = '0' then
                sig_BiPhase_tx_out <= '0';
            elsif rising_edge(sysclk) then
                if (sig_main_rising_edge = '1') or (sig_main_falling_edge = '1' and sig_q_data_bit = '0') then
                    sig_BiPhase_tx_out <= not sig_BiPhase_tx_out;
                end if;      
            end if;
        end process biphase_signal_out;

        cut_rd : process(resetn,sysclk) -- cut the read signal to adjustment for the ram
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