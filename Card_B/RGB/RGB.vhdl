library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity RGB is
    port(
        resetn          : in std_logic; -- Asynchronous reset input
        sysclk          : in std_logic; -- System clock input (operating at 50 MHz)
        load_leds       : in std_logic; -- Control signal to load LED data
        green_leds      : in std_logic_vector(7 downto 0); -- Input signal for displaying data on green LEDs
        rgb_leds        : in std_logic_vector(95 downto 0); -- Output signal for displaying data on RGB LEDs
        OB_LED_RGB_DIN  : out std_logic; -- Output signal to drive RGB LEDs' data input
        LED_1           : out std_logic; -- AA14 -- Output signals for specific LEDs
        LED_2           : out std_logic; -- AA15 -- Output signals for specific LEDs
        LED_3           : out std_logic -- AB15 -- Output signals for specific LEDs
    );
end RGB;

architecture ab of RGB is

    -- set components

    -- set signals

    type state is (s0,s1,s2,s3,s4,s5,s5a,s6,s7,s8,s9);
    signal state_leds : state; -- This signal represents the current state of the LED controller's finite state machine (FSM)

    signal sig_cnt              : std_logic_vector(99 downto 0); -- This signal is used for counting clock cycles or generating timing pulses
    signal sig_cnt_loop         : std_logic_vector(99 downto 0); -- This signal is used to keep track of the number of iterations in a loop
    signal sig_shift_led_rgb    : std_logic_vector(95 downto 0); -- This signal holds the RGB LED data that needs to be shifted out to the LEDs
    signal sig_OB_LED_RGB_DIN   : std_logic; -- This signal represents the data input for the RGB LEDs
    signal sig_bit              : std_logic; -- This signal holds the value of a single bit from the "sig_shift_led_rgb" signal

    begin

        -- set port maps

        -- set processes

        set_leds : process( resetn, sysclk )
        variable sig_cnt_delay : integer range 0 to 20000;
        begin
            if resetn = '0' then
                state_leds          <= s0;
                sig_cnt_delay       := 0;
                sig_cnt             <= (others => '0');
                sig_OB_LED_RGB_DIN  <= '0';
                sig_shift_led_rgb   <= (others => '0');
                sig_cnt_loop        <= (others => '0');

            elsif rising_edge(sysclk) then
                OB_LED_RGB_DIN <= sig_OB_LED_RGB_DIN;
                case state_leds is 

                    when s0 => 
                    sig_OB_LED_RGB_DIN <= '0';
                    sig_cnt_delay := sig_cnt_delay + 1;
                    if sig_cnt_delay = 15000 then
                        sig_cnt_delay := 0;
                        state_leds    <= s1;
                    end if;
                    
                    when s1 =>
                    if load_leds = '0' then
                        sig_shift_led_rgb <= rgb_leds;
                        LED_1       <= green_leds(0);
                        LED_2       <= green_leds(1);
                        LED_3       <= green_leds(2);
                        state_leds  <= s2;
                    end if;
                    
                    when s2 => 
                    sig_bit     <= sig_shift_led_rgb(95);
                    state_leds  <= s3;

                    when s3 => 
                    sig_shift_led_rgb <= sig_shift_led_rgb(94 downto 0) & '0';
                    state_leds  <= s4;

                    when s4 => 
                    sig_cnt_loop <= sig_cnt_loop + 1;
                    if sig_cnt_loop = 96 then
                        state_leds      <= s0;
                        sig_cnt_loop    <= (others => '0');
                    else 
                        state_leds  <= s5;
                    end if;

                    when s5 =>
                    sig_OB_LED_RGB_DIN <= '1';
                    if sig_bit = '0' then
                        state_leds  <= s6;
                    end if;
                    if sig_bit = '1' then
                        state_leds  <= s7;
                    end if;  
                    
                    when s6 =>
                    -- T0H
                    sig_cnt <= sig_cnt + 1;
                    if sig_cnt = 14 then
                        sig_OB_LED_RGB_DIN <= '0';
                    end if;
                    -- T0L
                    if sig_cnt = 50 then
                        sig_cnt <= (others => '0');
                        state_leds  <= s2;
                    end if;

                    when s7 =>
                    -- T1H
                    sig_cnt <= sig_cnt + 1;
                    if sig_cnt = 36 then
                        sig_OB_LED_RGB_DIN <= '0';
                    end if;
                    -- T1L
                    if sig_cnt = 50 then
                        sig_cnt <= (others => '0');
                        state_leds  <= s2;
                    end if;

                    when others =>
                    state_leds  <= s0;

                end case;
                
            end if;

        end process set_leds;

end ab;
