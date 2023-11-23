library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- set entity

entity Shift_Register_X is 
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
end Shift_Register_X;

-- set architecture

architecture ab of Shift_Register_X is 

-- set component 

component Rom_X
  port
	  (
		 address		: in std_logic_vector(5 downto 0);
		 clock	   : in std_logic  := '1';
--		 rden		   : in std_logic  := '1';
		 q	     	   : out std_logic_vector(7 downto 0)
	  );
end component;

-- set signals

signal sig_shift_reg_out  : std_logic_vector(7 downto 0);
signal sig_q_rom_out      : std_logic_vector(7 downto 0);
signal sig_Address_cnt    : std_logic_vector(5 downto 0);
signal sig_sysclk_cnt     : std_logic_vector(7 downto 0);
signal sig_Aclock_q       : std_logic;
signal sig_Aclock_q_not   : std_logic;
--signal sig_Afalling       : std_logic;
signal sig_Araising       : std_logic;
signal sig_Timing_Pulse   : std_logic;

  begin

-- set port map component

    dut : Rom_X
    port map
            (
			     address   =>  sig_Address_cnt,
		        clock	   =>  sysclk, 
--		        rden		=>  sig_Afalling,
		        q	     	=>  sig_q_rom_out 
            );

-- set processes
-- first process			 
			 
 raising_falling : process(sysclk,resetn)
      begin
		
		  if resetn = '0' then
		    sig_Aclock_q     <= '0';
			 sig_Aclock_q_not <= '1';
			 sig_sysclk_cnt   <= (others => '0');
		  elsif rising_edge(sysclk) then 
		    sig_sysclk_cnt   <= sig_sysclk_cnt + 1;
			 sig_Aclock_q     <= sig_sysclk_cnt(7);
			 sig_Aclock_q_not <= not (sig_Aclock_q);
			 
		  end if;
		  
 end process raising_falling;
  
    sig_Araising <= sig_Aclock_q AND sig_Aclock_q_not;
--	 sig_Afalling <= not (sig_Aclock_q OR sig_Aclock_q_not);
	 
	 Araising <= sig_Araising;
--	 Afalling <= sig_Afalling;
	 
-- second process	 
	 
 address_counter : process(sysclk,resetn)
      begin
		  
		  if resetn = '0' then
		    sig_Address_cnt <= (others => '0');
--			 sig_Address_cnt <= (others => '1');
			 
		  elsif rising_edge(sysclk) then
		  
		    if sig_Araising = '1' then
			   sig_Address_cnt <= sig_Address_cnt + 1;
			 else
			   null;
		    end if;
		    
		  end if;		
		
 end process address_counter;
    
	 Address_cnt <= sig_Address_cnt;
	 
-- third process	

 shift_register : process(sysclk,resetn)
   begin
	  
	  if resetn = '0' then
	    sig_shift_reg_out <= (others => '0');
		 
	  elsif rising_edge(sysclk) then
	  
	    if sig_Araising = '1' then
	    sig_shift_reg_out <= sig_q_rom_out;
	    else
		 sig_shift_reg_out <= sig_shift_reg_out(6 downto 0) & '0'; 
	    end if;	
		 
	  end if;
 
 end process shift_register;

    q_rom_out     <= sig_q_rom_out;
    shift_reg_out <= sig_shift_reg_out;    

-- fourth process

 tim_pulse : process(sysclk,resetn,sig_shift_reg_out)
   begin
	
	  if resetn = '0' then 
	    sig_Timing_Pulse <= '0';
		 
	  elsif rising_edge(sysclk) then
	  
	    if sig_shift_reg_out(3) = '0' AND sig_shift_reg_out(4) = '1' then 
	      sig_Timing_Pulse <= '1';
	    else 
	      sig_Timing_Pulse <= '0';
	    end if;
		 
	  end if;
 
 end process tim_pulse;

     Timing_Pulse <= sig_Timing_Pulse;

end ab;
