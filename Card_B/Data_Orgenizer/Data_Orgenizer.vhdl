library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Data_Orgenizer is 
port(
    resetn      : in std_logic; -- Asynchronous reset input
    sysclk      : in std_logic; -- System clock input (operating at 50 MHz)
    main_clk    : in std_logic; -- Represents the main clock signal used for timing synchronization within the module
    nrzl_data   : in std_logic; -- Data input signal
    crc8bit_in  : in std_logic; -- Represents the result of a CRC-8 error detection calculation
    correlation : in std_logic_vector(4 downto 0);
    load_leds   : out std_logic; -- Used to control the loading of LEDs, likely indicating when the LEDs should be updated with new data
    green_leds  : out std_logic_vector(7 downto 0); -- Serves as the data signal for three green LEDs in the system
    rgb_leds    : out std_logic_vector(95 downto 0) -- Serves as the data signal for controlling RGB LEDs in the system
);
end Data_Orgenizer;

architecture ab of Data_Orgenizer is 

-- set components

-- set signals

type state is (s0,s1,s2,s3,s4,s5,s5a,s6,s7,s8,s9);
signal state_Do : state; -- Signal that governs the behavior and operation of the "Data_Organizer" module

signal sig_main_clk_cut     : std_logic; -- Used to synchronize internal operations with the rising and falling edges of the "main_clk" signal
signal sig_main_clk_cut_not : std_logic; -- Used to synchronize internal operations with the rising and falling edges of the "main_clk" signal
signal sig_main_clk_r       : std_logic; -- Represent the rising edge of the clock signal "main_clk"
signal sig_main_clk_f       : std_logic; -- Represent the falling edge of the clock signal "main_clk"
signal sig_sf_reg           : std_logic_vector(31 downto 0); -- Serves as a buffer to hold the incoming data stream

signal sig_cnt              : std_logic_vector(100 downto 0); -- Used as a counter to manage the input data shifting process into the "sig_rgb_leds_out" signal
signal sig_green_leds_reg   : std_logic_vector(7 downto 0); -- 23 downto 0 -- Serves as a register to temporarily store the input data for the green LEDs
signal sig_green_leds_out   : std_logic_vector(7 downto 0); -- Represents the output data signal for the green LEDs
signal sig_rgb_leds_out     : std_logic_vector(95 downto 0); -- Serves as the output data signal for controlling RGB LEDs

    begin

        -- set port maps

        -- set processes

        main_clk_cut : process(resetn,sysclk) -- autocorrelation of 30/32 correct bits of the header process
        begin
            if resetn = '0' then
                sig_main_clk_cut        <= '0';
                sig_main_clk_cut_not    <= '1';
            elsif rising_edge(sysclk) then
                sig_main_clk_cut        <= main_clk;
                sig_main_clk_cut_not    <= not sig_main_clk_cut;
            end if;
        end process main_clk_cut;

        sig_main_clk_r <= sig_main_clk_cut and sig_main_clk_cut_not;
        sig_main_clk_f <= not (sig_main_clk_cut or sig_main_clk_cut_not);

        shift_register : process(resetn,sysclk)
        begin
            if resetn = '0' then
                sig_sf_reg <= (others => '0');
            elsif rising_edge(sysclk) then
                if sig_main_clk_f = '1' then
                    sig_sf_reg <= sig_sf_reg(30 downto 0) & nrzl_data;
                end if;
            end if;
        end process shift_register;

        main_state_machine : process(resetn,sysclk) -- orgenize the data before transferring it to the leds FSM process
        begin
            if resetn = '0' then
                state_Do            <= s0;
                load_leds           <= '1';
                sig_cnt             <= (others => '0');
                sig_rgb_leds_out    <= (others => '0');
                sig_green_leds_reg  <= (others => '0');

            elsif rising_edge(sysclk) then
                if sig_main_clk_r = '1' then
                    case state_Do is

                        when s0 =>
                        -- if sig_sf_reg = X"C0CAFEAB" then
                        --     state_Do <= s1;
                        -- end if;
                        if correlation < 3 then
                            state_Do <= s1;
                        end if;
                            
                        when s1 =>
                        sig_cnt <= sig_cnt + 1;
                        sig_rgb_leds_out <= sig_rgb_leds_out(94 downto 0) & nrzl_data;
                        if sig_cnt = 95 then
                            state_Do <= s2;
                            sig_cnt  <= (others => '0');
                        end if;

                        -- when s2 =>
                        -- sig_cnt <= sig_cnt + 1;
                        -- sig_green_leds_reg <= sig_green_leds_reg(22 downto 0) & nrzl_data;
                        -- if sig_cnt = 23 then
                        --     state_Do <= s3;
                        --     sig_cnt  <= (others => '0');
                        -- end if;

                        when s2 =>
                        sig_cnt <= sig_cnt + 1;
                        sig_green_leds_reg <= sig_green_leds_reg(6 downto 0) & nrzl_data;
                        if sig_cnt = 7 then
                            state_Do <= s3;
                            sig_cnt  <= (others => '0');
                            end if;

                        when s3 =>
                        state_Do <= s4;

                        when s4 =>
                        sig_green_leds_out(7 downto 3)  <= (others => '0');
                        sig_green_leds_out(0)           <= sig_green_leds_reg(0); --16 -- 7
                        sig_green_leds_out(1)           <= sig_green_leds_reg(1); --8 -- 6
                        sig_green_leds_out(2)           <= sig_green_leds_reg(2); --0 -- 5
                        state_Do <= s5;

                        when s5 =>
                        sig_cnt <= sig_cnt + 1;
                        if sig_cnt = 110 then
                            state_Do <= s5a;
                            sig_cnt  <= (others => '0');
                        end if;

                        when s5a =>
                        if crc8bit_in = '0' then
                            state_Do <= s6;
                        end if;
                        if crc8bit_in = '1' then 
                            state_Do <= s9; -- s9 8.14.23
                        end if;

                        when s6 =>
                        load_leds <= '1';
                        state_Do <= s7;

                        when s7 =>
                        green_leds  <= sig_green_leds_out;  
                        rgb_leds    <= sig_rgb_leds_out;    
                        state_Do <= s8;

                        when s8 =>
                        load_leds <= '0';
                        state_Do <= s9;
                        
                        when s9 =>
                        state_Do <= s0;

                        when others =>
                        state_Do <= s0;

                    end case;
                end if;
            end if;
        end process main_state_machine;

end ab;