library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity AT_CMD_HC06 is 
  	port(
        resetn                 : in std_logic; -- Asynchronous reset input
        sysclk                 : in std_logic; -- System clock input (operating at 50 MHz)
        -- start_triger           : in std_logic; -- Input signal that triggers the start of UART transmission in pulse form 
	    uart_tx_triger	       : out std_logic -- Output signal representing UART transmission trigger, the output bit by bit of the UART packet
    	);
end AT_CMD_HC06;

architecture ab of AT_CMD_HC06 is 

-- set components

-- set signals

type state is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
signal state_tx         : state; -- Signal representing the current state of the finite state machine

signal signal_A_q       : std_logic; -- Signal for generate rising edge
signal signal_A_q_not   : std_logic; -- Signal for generate rising edge
signal sig_arising_edge : std_logic; -- Signal indicating the rising edge of "sig_baud_clk"
signal sig_bit          : std_logic; -- A signal to store one bit of the output "uart_tx_triger"
signal sig_baud_clk     : std_logic; -- Signal representing the baud clock 38,400Hz
signal sig_byte         : std_logic_vector (7 downto 0); -- Signal representing an 8-bit data byte 
signal sig_packet       : std_logic_vector (9 downto 0); -- Signal representing a UART packet
-- signal sig_byte_t     : std_logic_vector (7 downto 0); 
signal sig_data       : std_logic_vector (79 downto 0) := x"41542B50494E31313131"; -- 41542B4E414D454C69646F724254 = AT+NAMELidorBT || 41542B50494E31313131 = AT+PIN1111
  
begin 
	
	-- set port maps

	-- set processes
  
  	baud_clock : process(sysclk,resetn)
  	variable cnt_baud : integer range 0 to 2650; -- A variable  used for counting
  	begin
  	  	if resetn = '0' then
  	    	sig_baud_clk <= '0';
		  	cnt_baud := 0;
		elsif rising_edge(sysclk) then
		  	cnt_baud := cnt_baud + 1;
		  	if cnt_baud = 2605 then
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

  	variable sig_cntr  : integer range 0 to 15; -- A variable used for counting
	variable cntr	: integer range 0 to 15;
  	constant end_bit   : std_logic := '1'; -- Constant representing the end bit = "111"
  	constant start_bit : std_logic := '0'; -- Constant representing the start bit = '0'

  	begin

    	if resetn = '0' then
			state_tx    <= s0;
			sig_bit     <= '1';
			sig_cntr    := 0;
			cntr    	:= 0;
			
		elsif rising_edge(sysclk)	then
	 
	   		case state_tx is
		  
		    	when s0 => 
		    	-- if start_triger = '1' then
				--     state_tx <= s1;
				-- else 
				--    state_tx <= s0;
				-- end if;
				state_tx <= s1;
				
		    	when s1 => 
		    	-- if start_triger = '0' then
				--     state_tx <= s2;
				-- else 
				--     state_tx <= s1;
				-- end if;
				state_tx <= s2;
				
	        	when s2 =>
		    	sig_cntr := sig_cntr + 1;
				if sig_cntr = 2 then 
				    state_tx <= s3;
				    sig_cntr := 0;
				else
				    state_tx <= s2; 
				end if;
			 
		    	when s3 => 
				sig_byte <= sig_data(79 downto 72);
	        	state_tx <= s4;
					
				-- important delay	  
		    	when s4 =>
				sig_cntr := sig_cntr + 1;
				sig_data <= sig_data(78 downto 0) & '0';
				if sig_cntr = 8 then 
					cntr     := cntr + 1;
				    state_tx <= s5;
				    sig_cntr := 0;
				else
				    state_tx <= s4;
				end if;
					
            	when s5 =>
		    	sig_packet <= end_bit & sig_byte & start_bit; 
				state_tx <= s6;		
					
		    	when s6 => 
				state_tx <= s7;
			 
		    	when s7 => 
		    	if sig_arising_edge = '1' then
				    sig_packet <= '1' & sig_packet(9 downto 1);
					sig_bit    <= sig_packet(0);
					sig_cntr   := sig_cntr + 1;	
				    if sig_cntr = 10 then
            	        sig_cntr := 0;
				        state_tx <= s8;
				    else
				        state_tx   <= s7;
				    end if;  
				end if;

            	when s8 =>
				if cntr = 10 then
					state_tx <= s8;
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