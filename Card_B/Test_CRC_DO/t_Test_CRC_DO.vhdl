library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity t_Test_CRC_DO is
    port(
        crc_reg8bit_out : out std_logic_vector(7 downto 0); 
        nrzl_data       : out std_logic;
        load_leds       : out std_logic;
        green_leds      : out std_logic_vector(7 downto 0);
        rgb_leds        : out std_logic_vector(95 downto 0);
        main_clk        : out std_logic; 
        crc8bit_out     : out std_logic
    );
end t_Test_CRC_DO;

architecture only of t_Test_CRC_DO is

    -- set components
    component Test_CRC_DO
    port(
        resetn          : in std_logic;
        sysclk          : in std_logic;
        nrzl_data       : out std_logic;
        crc_reg8bit_out : out std_logic_vector(7 downto 0); 
        load_leds       : out std_logic;
        green_leds      : out std_logic_vector(7 downto 0);
        rgb_leds        : out std_logic_vector(95 downto 0); 
        main_clk        : out std_logic;
        crc8bit_out     : out std_logic
    );
    end component;

    -- set signals

    signal sig_sysclk        :  std_logic   := '0';
    signal sig_resetn        :  std_logic   := '0';

    begin
        
        -- set port maps
        dut : Test_CRC_DO
        port map(
        resetn          => sig_resetn,
        sysclk          => sig_sysclk,
        nrzl_data       => nrzl_data,
        crc_reg8bit_out => crc_reg8bit_out,
        load_leds       => load_leds,
        green_leds      => green_leds,
        rgb_leds        => rgb_leds,
        main_clk        => main_clk,
        crc8bit_out     => crc8bit_out
        );

        -- set processes

        clk : process
        begin
            wait for 10.0 ns; sig_sysclk <= not sig_sysclk; -- 50.000mhz
        end process clk;

        rst : process
        begin
            wait for 50 ns; sig_resetn <= '1';
            wait;
        end process rst;

end only;