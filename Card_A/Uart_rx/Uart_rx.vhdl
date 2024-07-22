library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Uart_rx is
    port(
        resetn                : in std_logic; -- Asynchronous reset input
        sysclk                : in std_logic; -- System clock input (operating at 50 MHz)
        toggle                : in std_logic; -- Input signal used for addressing the RAM
        detected_bit          : in std_logic; -- Output signal representing the UART transmission trigger
        wr_ram                : out std_logic; -- Output signal for controlling the RAM write operation
        ram_address           : out std_logic_vector(5 downto 0); -- Output signal for addressing the RAM
        detected_byte         : out std_logic_vector(7 downto 0) -- Output signal for the received byte of data
    );
end Uart_rx;

architecture ab of Uart_rx is

-- set components

-- set signals
type state is (s0,s1,s2,s3,s4,s5);
signal state_rx          : state; -- A signal of type state, which is an enumeration representing the different states of the receiver
signal sig_baudx32       : std_logic; -- A clock signal that operates at 32 times the baud rate of 38,400 bps. It toggles every 20 "sysclk" cycles
signal sig_bit           : std_logic_vector(2 downto 0); -- Used for debouncing the received data bit
signal sig_bouncer_bit   : std_logic; -- A debounced version of the received data bit
signal signal_A_q        : std_logic; -- Signal used to create a rising edge detector for "sig_baudx32"
signal signal_A_q_not    : std_logic; -- Signal used to create a rising edge detector for "sig_baudx32"
signal sig_araising_edge : std_logic; -- A signal that goes high on the rising edge of "sig_baudx32", indicating the start of a bit
signal sig_data_bit      : std_logic; -- A signal representing the current received data bit
signal sig_wr_ram        : std_logic; -- A signal used to control the write operation of the RAM
signal sig_ram_address   : std_logic_vector(5 downto 0); -- A signal used to address the RAM
signal sig_cnt_address   : std_logic_vector(4 downto 0) := "00000"; -- A counter signal used to increment the RAM address
signal sig_detected_byte : std_logic_vector(7 downto 0) := (others => '0'); -- A signal used to store the received byte of data
--signal sig_rden          : std_logic;

begin

-- set port maps

-- set processes

-- 38,400 * 32 = 1,228,800 hz
-- 1 / 1,228,800 = 813 ns
-- 813 / 20 = 40 => half period 20 "sysclk" clocks

baud_rate_clk : process(resetn,sysclk)
variable var_cntr : integer range 0 to 100;
begin
    if resetn = '0' then
        sig_baudx32 <= '0';
    elsif rising_edge(sysclk) then
        var_cntr := var_cntr + 1;
        if var_cntr = 20 then
            sig_baudx32 <= not sig_baudx32;
            var_cntr := 0;
        end if;    
    end if;    
end process baud_rate_clk;

araising_edge : process(resetn,sysclk)
begin
    if resetn = '0' then
        signal_A_q     <= '0';
        signal_A_q_not <= '1';
    elsif rising_edge(sysclk) then
        signal_A_q     <= sig_baudx32;
        signal_A_q_not <= not signal_A_q;-- delay of 20ns from line above !!
    end if;	
end process araising_edge;

sig_araising_edge <= signal_A_q and signal_A_q_not;

debouncer : process(resetn,sysclk)
begin
    if resetn = '0' then
        sig_bit <= (others => '0');
        sig_bouncer_bit <= '0';
    elsif rising_edge(sysclk) then
        sig_bit(0) <= detected_bit;
        sig_bit(1) <= sig_bit(0);
        sig_bit(2) <= sig_bit(1);
        if (sig_bit(0) = sig_bit(1)) and (sig_bit(1) = sig_bit(2)) then
            sig_bouncer_bit <= sig_bit(2);
        end if;
    end if;
end process debouncer;

-- ************************************************************************************
--  method to reset sig_addr_cntr when sig_tx_in_dbnc = '1'                           *
--  more then 10mSec it means the time is between transmition                         *
--  blocks and the next time of transimition the address to DPR                       *
--  will start at location '00000'                                                    *
--  26uSec X 12 x 32 = 9.984 mSec length of tx block                                  *
--  100mSec is the time between transmition (as answer to the riger transmition)	  *	
-- ************************************************************************************						 

main_rx : process(resetn,sysclk)

variable var_trns_cntr : integer range 0 to 500000;-- delay between transmit to recieve
variable var_bit_cntr : integer range 0 to 8;
variable var_clk_cntr : integer range 0 to 50;

begin
    if resetn = '0' then
        state_rx <= s0;
        var_trns_cntr := 0;
        var_bit_cntr  := 0;
        var_clk_cntr  := 0;
    elsif rising_edge(sysclk) then
        case state_rx is

            when s0 =>
            sig_wr_ram <= '0';
            --sig_rden <= '0'; 
            if sig_bouncer_bit = '1' then
                var_bit_cntr  := 0;
                var_trns_cntr := var_trns_cntr + 1;
                if var_trns_cntr = 500000 then
                     sig_ram_address <= (others => '0');
                end if;
            else
                state_rx <= s1;        
            end if;

            when s1 =>
            --sig_rden <= '1'; 
            if sig_araising_edge = '1' then
                var_clk_cntr  := var_clk_cntr + 1;
                if var_clk_cntr = 16 then
                    sig_data_bit <= sig_bouncer_bit;
					 end if;
                if var_clk_cntr = 32 then
                    var_clk_cntr  := 0;
                    state_rx <= s2;
                end if;
            end if;

            when s2 => 
            if sig_data_bit = '0' then
                state_rx <= s3;
                sig_ram_address <= not toggle & sig_cnt_address;
            else
                state_rx <= s0;
            end if;
            
            when s3 =>
            if sig_araising_edge = '1' then
                var_clk_cntr := var_clk_cntr + 1;
                if var_clk_cntr = 16 then
                    sig_data_bit <= sig_bouncer_bit;
                    var_bit_cntr := var_bit_cntr + 1;
                end if;
                if var_clk_cntr = 32 then
                    var_clk_cntr  := 0;
                    sig_detected_byte <= sig_data_bit & sig_detected_byte(7 downto 1)  ; -- sig_detected_byte(6 downto 0) & sig_data_bit ;
                    if var_bit_cntr = 8 then
                        state_rx <= s4;
                    end if;
                end if;
            else
                null;    
            end if;

            when s4 => 
            detected_byte <= sig_detected_byte;
            sig_cnt_address <= sig_cnt_address + 1;
            state_rx <= s5;

            when s5 => 
            sig_wr_ram <= '1';
            state_rx <= s0;
            
            when others =>
            state_rx <= s0;

        end case; 

    end if;

end process main_rx;

wr_ram <= sig_wr_ram;
ram_address <= sig_ram_address;

end ab;