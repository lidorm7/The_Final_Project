library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- set entity

entity t_Shift_Register_X is 
  port
     (
		 shift_reg_out  :out std_logic_vector(7 downto 0);
--		 Afalling       :out std_logic;
		 Araising       :out std_logic;
		 q_rom_out      :out std_logic_vector(7 downto 0);
		 Address_cnt    :out std_logic_vector(5 downto 0);
         Timing_Pulse   :out std_logic
     );
end t_Shift_Register_X;

-- set architecture

architecture only of t_Shift_Register_X is

--Set Component

  component Shift_Register_X
  	port
	(
		 resetn         :in std_logic;
		 sysclk         :in std_logic;
		 shift_reg_out  :out std_logic_vector(7 downto 0);
--		 Afalling       :out std_logic;
		 Araising       :out std_logic;
		 q_rom_out      :out std_logic_vector(7 downto 0);
         Timing_Pulse   :out std_logic;
		 Address_cnt    :out std_logic_vector(5 downto 0)
	);
  end component;

-- set signals

signal sig_resetn : std_logic := '0';
signal sig_sysclk : std_logic := '0';

begin

-- set component port map

dut: Shift_Register_X
    port map
      (
         resetn          => sig_resetn,
		 sysclk          => sig_sysclk,
		 shift_reg_out   => shift_reg_out,
--		 Afalling        => Afalling,
		 Araising        => Araising,
		 q_rom_out       => q_rom_out,
		 Address_cnt     => Address_cnt,
         Timing_Pulse    => Timing_Pulse 
      );

-- sysclk Process

clk : process
begin
  wait for 10 ns;
  sig_sysclk <= not sig_sysclk;
end process clk;

-- resetn Process

rstn : process
begin
  wait for 50 ns;
  sig_resetn <= '1';
  wait;
end process rstn;
end only;
