library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity BS_Filter is
    port(
        resetn         : in std_logic; -- Asynchronous reset input
        sysclk         : in std_logic; -- System clock input (operating at 50 MHz)
        bi_pahse_out   : in std_logic; -- The input BiPhase signal from card A
        signal_out     : out std_logic -- The filtered output signal
    );
end BS_Filter;

architecture ab of BS_Filter is    

-- set component 

-- set signals

signal sig_filter       : std_logic_vector(7 downto 0); -- A 8-bit vector used as a shift register to store the history of input signals
signal sig_check_0      : std_logic; -- Individual signals representing the XOR outputs of consecutive elements of the "sig_filter" vector
signal sig_check_1      : std_logic; -- Individual signals representing the XOR outputs of consecutive elements of the "sig_filter" vector
signal sig_check_2      : std_logic; -- Individual signals representing the XOR outputs of consecutive elements of the "sig_filter" vector
signal sig_check_3      : std_logic; -- Individual signals representing the XOR outputs of consecutive elements of the "sig_filter" vector
signal sig_check_4      : std_logic; -- Individual signals representing the XOR outputs of consecutive elements of the "sig_filter" vector
signal sig_check_5      : std_logic; -- Individual signals representing the XOR outputs of consecutive elements of the "sig_filter" vector
signal sig_check_6      : std_logic; -- Individual signals representing the XOR outputs of consecutive elements of the "sig_filter" vector
signal sig_total_check  : std_logic; -- A signal used to determine the total check result based on the XOR outputs

    begin

        -- set port maps 

        -- set processes 

        signal_in : process( resetn,sysclk ) -- receiving the data after transmission
        begin
            if resetn = '0' then
                sig_filter <= (others => '0');
            elsif rising_edge(sysclk) then
                sig_filter <= sig_filter(6 downto 0) & bi_pahse_out;
            end if; 
        end process signal_in; -- signal in

        xor_debouncer: process(resetn,sysclk) -- craete the form of the fiter 
        begin
            if resetn = '0' then
                sig_check_0 <= '1'; 
                sig_check_1 <= '1';
                sig_check_2 <= '1';
                sig_check_3 <= '1';
                sig_check_4 <= '1';
                sig_check_5 <= '1';
                sig_check_6 <= '1';
            elsif rising_edge(sysclk) then
                sig_check_0 <= sig_filter(0) xor sig_filter(1); 
                sig_check_1 <= sig_filter(1) xor sig_filter(2);
                sig_check_2 <= sig_filter(2) xor sig_filter(3);
                sig_check_3 <= sig_filter(3) xor sig_filter(4);
                sig_check_4 <= sig_filter(4) xor sig_filter(5);
                sig_check_5 <= sig_filter(5) xor sig_filter(6);
                sig_check_6 <= sig_filter(6) xor sig_filter(7);
            end if;
        end process xor_debouncer;

        main_check: process(resetn,sysclk) -- preforming filter on the data in
        begin
            if resetn = '0' then
                sig_total_check <= '1';
            elsif rising_edge(sysclk) then
                if (sig_check_0 or sig_check_1 or sig_check_2 or sig_check_3 or sig_check_4 or sig_check_5 or sig_check_6) = '0' then
                    sig_total_check <= '0';
                else
                    sig_total_check <= '1'; 
                end if;                
            end if;
        end process main_check;

        sign_out : process(resetn,sysclk) -- create the filter data out signal
        begin
            if resetn ='0' then
                signal_out <= '0';
            elsif rising_edge(sysclk) then
                if sig_total_check = '0' then
                    signal_out <= bi_pahse_out;
                end if;
            end if;
        end process sign_out;
        
end ab;