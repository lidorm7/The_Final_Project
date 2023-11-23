library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Uart_tx_Rom is 
  	port(
        resetn                 : in std_logic;
        sysclk                 : in std_logic;-- 50mhz 
        start_triger           : in std_logic; 
	    uart_tx_triger	       : out std_logic
    	);
end Uart_tx_Rom;

architecture ab of Uart_tx_Rom is 

-- set components

component Rom_X
  	port(
        address    : in std_logic_vector (4 DOWNTO 0);
		clock	    : in std_logic := '1';
		q	     	: out std_logic_vector (7 DOWNTO 0)
       	); 
end component;

-- set signals

type state is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10);
signal state_tx         : state;
signal signal_A_q       : std_logic;
signal signal_A_q_not   : std_logic;
signal sig_arising_edge : std_logic;
signal sig_bit          : std_logic;
signal sig_baud_clk     : std_logic;
signal sig_address      : std_logic_vector (4 downto 0);
signal sig_rom_data_out : std_logic_vector (7 downto 0);
signal sig_byte         : std_logic_vector (7 downto 0);
signal sig_packet       : std_logic_vector (11 downto 0);
-- signal sig_byte_t     : std_logic_vector (7 downto 0);
  
begin 
	
	-- set port maps

  	dut : Rom_X
  	port map
    	(
		 address => sig_address,
		 clock   => sysclk,  
    	 q       => sig_rom_data_out
    	);

	-- set processes
  
  	baud_clock : process(sysclk,resetn)
  	variable cnt_baud : integer range 0 to 655;
  	begin
  	  	if resetn = '0' then
  	    	sig_baud_clk <= '0';
		  	cnt_baud := 0;
		elsif rising_edge(sysclk) then
		  	cnt_baud := cnt_baud + 1;
		  	if cnt_baud = 651 then
		    	sig_baud_clk <= not sig_baud_clk;
				cnt_baud := 0;
		  	end if;	
  	  	end if;
  	end process baud_clock;
  
  	rising_edg : process(sysclk,resetn)
  	begin
  	 	if resetn = '0' then
		  	signal_A_q     <= '0';
		  	signal_A_q_not <= '1';
		elsif rising_edge(sysclk) then
		  	signal_A_q     <= sig_baud_clk;
		  	signal_A_q_not <= not signal_A_q;
		end if;	
  	end process rising_edg;

  	sig_arising_edge <= signal_A_q AND signal_A_q_not;

  	transmission : process(sysclk,resetn)

  	variable sig_cntr  : integer range 0 to 15;
  	constant end_bit   : std_logic_vector(2 downto 0) := "111";
  	constant start_bit : std_logic := '0'; 

  	begin

    	if resetn = '0' then
			sig_address <= (others => '0');
			state_tx    <= s0;
			sig_bit     <= '1';
			sig_cntr    := 0;
		elsif rising_edge(sysclk)	then
	 
	   		case state_tx is
		  
		    	when s0 => 
		    	if start_triger = '1' then
				    state_tx <= s1;
				else 
				    state_tx <= s0;
				end if;
				
		    	when s1 => 
		    	if start_triger = '0' then
				    state_tx <= s2;
				else 
				    state_tx <= s1;
				end if;
				
	        	when s2 =>
		    	sig_cntr := sig_cntr + 1;
				if sig_cntr = 2 then 
				    state_tx <= s3;
				    sig_cntr := 0;
				else
				    state_tx <= s2; 
				end if;
				
		    	when s3 => 
		    	sig_address <= sig_address + 1;
				state_tx    <= s4;
				
		    	when s4 =>  
				state_tx <= s5;
				
			 
		    	when s5 => 
				sig_byte <= sig_rom_data_out;
	        	state_tx <= s6;
					
				-- important delay	  
		    	when s6 =>
				sig_cntr := sig_cntr + 1;
				if sig_cntr = 5 then 
				    state_tx <= s7;
				    sig_cntr := 0;
				else
				    state_tx <= s6;
				end if;
					
            	when s7 => 
				sig_packet <= end_bit & sig_byte & start_bit;
				state_tx <= s8;		
					
		    	when s8 => 
				state_tx <= s9;
			 
		    	when s9 => 
				if sig_arising_edge = '1' then
				    sig_packet <= '1' & sig_packet(11 downto 1);
					sig_bit    <= sig_packet(0);
					sig_cntr   := sig_cntr + 1;	
				    if sig_cntr = 12 then
            	        sig_cntr := 0;
				        state_tx <= s10;
				    else
				        state_tx   <= s9;
				    end if;  
				end if;

            	when s10 =>
				if sig_address = "00000" then
					state_tx <= s0;
				else
					state_tx <= s2;
				end if;

				when others =>
		    	state_tx <= s0;
			 
			end case;
		
	 	end if;
 	 
  	end process transmission;

  	uart_tx_triger <= sig_bit;

end ab;