library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

-- 20.10.2023 This is master module that read data from cc1101 tranceiver.
-- 04.04.2024  last changes

  -- 27.10.2023
--   |----------|
--   |          |---> cs
--	  |          |---> spi_clock - spi_clock_3_out
--	  |          |---> mosi
--   |          |<--- miso

-- 13.11.2023 for test of iput signals to cc1101 delet all signals 
-- miso it will be given by the device.  ---*
-- for simulation miso serial input is from the sim_miso 
-- however the complite test of read is done at the module "test_spi_cc1101_read"
	
entity  spi_cc1101_read_new_hw  is
     PORT (        
            resetn           :    IN  STD_LOGIC; -- AB9
            sysclk           :    IN  STD_LOGIC;-- 50mHz  -- N14
			 	start_state_machine  :    IN  STD_LOGIC;-- external triger to
				                        -- start transmit data read from cc1101
   ---*         miso             : in std_logic;          
            cs               : out std_logic;-- to cc1101  *** AA8
            mosi             : out std_logic;-- to cc1101 *** AA5 
	         spi_clock  : out std_logic--clock to cc1101 after delay line to adjust spi clock to be in midle of mosi
			    -- *** AB5 for spi clock	
			  --  d0_out		     :	 OUT STD_LOGIC  -- AA16 -- blinking led rate 1 second	 
                  );
        END spi_cc1101_read_new_hw;      
      
        
     ARCHITECTURE  ab of spi_cc1101_read_new_hw  is
     
       -- components declaration.
        TYPE STATE_TYPE is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12);
           SIGNAL state:STATE_TYPE;
              
              signal  sig_raw_cntr        :std_logic_vector(3 downto 0);
              signal  sig_cc1101_rd_adr   :std_logic_vector(7 downto 0); 
              signal  sig_spi_state_cntr  :std_logic_vector(4 downto 0);
              signal  sig_CLK_A_q         : std_logic;
              signal  sig_CLK_A_q_not     : std_logic;
              signal  sig_CLK_A_r         : std_logic;
           --   signal  sig_CLK_A_f         : std_logic;
				  signal  sig_spi_raw_clock   : std_logic;
				  signal  sig_cs              : std_logic;
				  signal  sig_spi_clock       : std_logic;
				  signal  sig_spi_clock_1     : std_logic;
			     signal  sig_spi_clock_2     : std_logic;
			     signal  sig_spi_clock_3     : std_logic;
              signal  sig_tx_reg          :std_logic_vector(7 downto 0);
              signal  sig_mosi            : std_logic;
				  signal  sig_shift_reg       :std_logic_vector(31 downto 0);
	           signal  sig_spi_clock_3_out : std_logic;
				  signal  sig_cs_stop         : std_logic;
				  signal  sig_cntr_for_miso   :std_logic_vector(7 downto 0);
		        signal  sig_miso_input_data : std_logic;
		        signal  sig_reg_collect     :std_logic_vector(7 downto 0);
				  
				  signal  sig_d0_cntr          : std_logic_vector( 26 downto 0 ) ; 
				  signal  sig_time_flag       :std_logic;
			     signal  sig_time_cntr       :std_logic_vector(25 downto 0);
		        signal  sig_start_power	   :std_logic; 
				  signal  sig_start_tx_system :std_logic;
		 	   --  constant sig_limit_value     : std_logic_vector(19 downto 0) :=  X"7A120" ;
              constant sig_limit_value     : std_logic_vector(15 downto 0) :=  X"C350" ;    
				       -- X"7A120" = 1Sec
						 -- X"C350"  = 1mSec
           
        begin
			  
        -- components ports.    
     --==========================================
     --  Main state machine
     --============================================	  
     process (sysclk, resetn)
   --  variable delay_cntr : integer range 0 to 3000;
     begin
       if resetn = '0' then 
       --  delay_cntr := 0 ;
         sig_cc1101_rd_adr <= (others => '0');
         state <= s0 ;
         sig_cs <= '1';
			sig_cs_stop <= '1';
         sig_spi_state_cntr <= (others => '0');
       elsif rising_edge(sysclk) then
         if sig_CLK_A_r = '1' then -- spi_raw_clock raising edge strobe
         CASE state is
                WHEN s0 => 
					       -- =========================================== 
			             -- external signal to start the state machine.
					       --============================================		 
                       if start_state_machine = '1' then  -- external signal
						--	 if sig_start_tx_system = '1' then    -- internal sinal
					      -- sig_cc1101_rd_adr <= (others => '0'); -- # of slice 0 -->  0X3F
							  sig_cc1101_rd_adr <= "10000000"; -- # of slice 0 -->  0X3F
					        sig_spi_state_cntr <= (others => '0'); --internal clock 0 --> 0XF
                        state <= s1 ; 
                      else
                        state <= s0 ; 
                      end if;         
                WHEN s1 =>
					       --===============================
					       -- detecting end of triger pulse
							 --===============================
                       if start_state_machine = '0' then  -- external signal
						--	 if sig_start_tx_system = '0' then    -- internal sinal
                        state <= s2 ; 
                      else
                        state <= s1 ; 
                      end if;                   
                WHEN s2 =>
					       --================================
							 -- copy to register for cretig mosi
							 -- ===============================
					       sig_tx_reg <=  sig_cc1101_rd_adr; 
                      state <= s3 ;              		
                WHEN s3 =>
--					       sig_mosi <= sig_tx_reg(7);
--                      sig_tx_reg <= sig_tx_reg(6 downto 0) & '0';
                      sig_cs <= '0';
							 sig_cs_stop <= '0';
                      state <= s5 ;
			    WHEN s4 =>                     
						state <= s5 ;	 
				WHEN s5 =>
                      --==================================================
							 -- creating the mosi,sig_tx_reg is the shift reister.
							 --================================================== 
				          sig_mosi <= sig_tx_reg(7);
                      sig_tx_reg <= sig_tx_reg(6 downto 0) & '0';
							 --===================================================
							 -- sig_spi_state_cntr is responsible to crate 16 clocl inside a transmition slice.
							 -- note that #14 is because of delay of operation inside the state machine.
							 --=====================================================
				     --      if sig_spi_state_cntr = 14 then
							  if sig_spi_state_cntr = 7 then
                          state <= s6 ;
								  sig_cs_stop <='1';
								  sig_spi_state_cntr <= (others => '0'); 
                       else
                         state <= s5 ;
                      end if; 
                       sig_spi_state_cntr <= sig_spi_state_cntr + 1;                       
                when s6 => 
								  sig_spi_state_cntr <= (others => '0');   
                          state <= s7 ;
                when s7 => 
					          sig_cs_stop <='0';
                         state <= s8 ;
					 
			                --============================================
						       -- sig_cs_stop signal to stop spi clock 
						       -- to be length of 16, stop by cs only will mresilt in two more clocks.
						       --=============================================								 							 
                 when s8 => 
					         sig_spi_state_cntr <= sig_spi_state_cntr + 1;
					         if sig_spi_state_cntr = 7 then
							    sig_cs_stop <='1';
                          state <= s9 ;
                       else
                         state <= s8 ;
					        end if;
                      
                      
                      
                 when s9 =>
					        --==============================================
							  -- end of internal cs, and count up to 64 slice 
							  -- to cover the 64 bytes of data.
							  --===============================================
					      --  sig_cs<='1';
                       sig_cc1101_rd_adr  <= sig_cc1101_rd_adr + 1;    
                       if   sig_cc1101_rd_adr = 191 then  -- X"BF"
                          state <= s0 ;
                       else  
							     sig_spi_state_cntr <= (others => '0'); 
                          state <= s2 ;
                       end if; 
							  
                 WHEN OTHERS  => 
                     state <= s0 ;
                END CASE ; 
            end if; 
          end if;
      end process; 
      
      
      
       
      
       PROCESS(sysclk,RESETN)
		 -- strobe of spi_raw clock.
   BEGIN
      IF (RESETN = '0') THEN      
       sig_CLK_A_q        <= '0' ;
       sig_CLK_A_q_not    <= '1' ;
      ELSIF  RISING_EDGE(sysclk) THEN
       sig_CLK_A_q <= sig_spi_raw_clock ;
       sig_CLK_A_q_not <= not  sig_CLK_A_q ;
      END IF ;
    END PROCESS ;
    sig_CLK_A_r <= sig_CLK_A_q AND sig_CLK_A_q_not ; 
  --  sig_CLK_A_f <= not(sig_CLK_A_q OR  sig_CLK_A_q_not) ; 
      
      process (sysclk, resetn)
	 --================================
    -- creating the spi master clock.
	 -- This clock is alwayes active.
	 -- 8 bits '0' and 8 bis '1' bit time = 320nSec f= 3.125mHz
	 --================================
    begin
	      if resetn = '0' then 
         sig_raw_cntr <= (others => '0');
         sig_spi_raw_clock  <= '0' ;
      elsif rising_edge(sysclk) then 
        sig_raw_cntr <=  sig_raw_cntr + 1;
        sig_spi_raw_clock <= sig_raw_cntr(3);     
      end if;
    end process; 
    
     process (sysclk, resetn)   
      --=======================================
		-- loocking for the correct phase of spi clock.
	   -- is yhe raw clock and the sig_cs_stop
	   --=======================================	
     begin
       if resetn = '0' then
         sig_spi_clock <= '0' ;
	      sig_spi_clock_1 <= '0';	
		   sig_spi_clock_2 <= '0';
		   sig_spi_clock_3 <= '0';
			
       elsif rising_edge(sysclk) then
       --  sig_spi_clock <= sig_spi_raw_clock and not sig_spi_cs ;
			sig_spi_clock <= sig_spi_raw_clock and  ( not sig_cs_stop) ;
			sig_spi_clock_1 <= sig_spi_clock and  ( not sig_cs_stop) ;
			sig_spi_clock_2 <= sig_spi_clock_1 and  ( not sig_cs_stop) ;
			sig_spi_clock_3 <= sig_spi_clock_2 and  ( not sig_cs_stop) ;	
			
         end if;
      end process;
	--    cs_stop <= sig_cs_stop;
	  
	  process (sysclk, resetn) 
	   --=========================================  
      -- shift of sig_spi_clock_3 by 19 sysclk.
		-- This is a delay line to adjust the clock timing according
		-- to the simulation.
		--========================================
     begin
       if resetn = '0' then
         sig_spi_clock_3_out <= '0' ; 
       elsif rising_edge(sysclk) then 
	    sig_shift_reg <=  sig_shift_reg(30 downto 0) &  sig_spi_clock_3;
	    sig_spi_clock_3_out <= sig_shift_reg(19); -- recomended 20
	  end if;
      end process;
		
		
--		process (sysclk, resetn) 
--	   --========================================= 
--    PROCESS TO COLLECT MISO DATA 
--      the miso input data is  output in the collect register. 
--		--========================================
--     begin
--       if resetn = '0' then
--         sig_miso_input_data  <= '0';
--			sig_cntr_for_miso  <= (others => '0');
--			sig_reg_collect    <= (others => '0');
--       elsif rising_edge(sysclk) then 
--		 if sig_cs = '0' then
--		   sig_cntr_for_miso <= sig_cntr_for_miso + 1;
--			if sig_cntr_for_miso > 8 then
--			   sig_miso_input_data <= sig_reg_collect(7);
--			  sig_reg_collect <= sig_reg_collect(6 downto 0) & miso;
--			end if;
--		  else
--		  sig_cntr_for_miso  <= (others => '0');
--		 end if; 
--	     
--	   end if;
--      end process;
--		
--		
		
--	 	reg_collect     <= sig_reg_collect;
--		miso_input_data <= sig_miso_input_data;


--
--
----	   --=========================================
----   Module to start the system.
--
----	   --=========================================
--       process (sysclk,resetn)
--        begin
--	     if resetn = '0' then
--              sig_time_flag <= '0';  
--			  sig_time_cntr  <= (others => '0');
--              sig_start_power <= '0';
--         elsif  rising_edge(sysclk) then
--			  if sig_time_cntr < sig_limit_value + 50 then -- 500050
--              sig_time_cntr <= sig_time_cntr + 1;
--           end if;
--           if    (sig_time_cntr = 500) and ( sig_start_power = '0') then
--              sig_time_flag <= '1';
--           end if;
--           if (sig_time_cntr = 505)  and ( sig_start_power = '0')then
--              sig_start_power <= '1';
--              sig_time_flag <= '0';		 
--           end if;
--			  if sig_time_cntr = sig_limit_value then --  500000
--                sig_time_flag <= '1';
--			  end if;       
--				if sig_time_cntr = sig_limit_value + 10 then --500010
--                sig_time_flag <= '0';
--			  end if;  
--			    if sig_time_cntr = sig_limit_value + 40 then -- 500040	
--			    sig_time_cntr  <= (others => '0');
--			end if;  
--              
--             
--        end if ;
--      end  process ;
--		
--      
--      process (sysclk,resetn)
--        begin
--	     if resetn = '0' then
--             sig_start_tx_system <= '0';
--         elsif  rising_edge(sysclk) then
--            sig_start_tx_system <= sig_time_flag ;     
--        end if ;
--      end  process ;		
--
---- ****************************************
----======================================================
---- module for blinking led to indicate system is alive.
----======================================================
--   process (sysclk,resetn)
-- -- main counter 50mhz t = 20nSec
--	begin
--      if resetn = '0' then
--         sig_d0_cntr  <= (others => '0');
--	   elsif  rising_edge(sysclk) then      
--	      sig_d0_cntr <= sig_d0_cntr + 1 ;
--      end if ;
--    end  process ;
--
--  
--
--   process (sysclk,resetn)
--	-- on/off of led to show that the card was loaded o.k.
--   begin
--    IF resetn = '0' THEN
--      d0_out <= '0';
--    elsif  rising_edge(sysclk) then -- on 1,3Sec 
--	 	 d0_out <= sig_d0_cntr(25); -- on 0.7Sec 
--      end if ;
--    end  process ; 
----******************************************************
-- 
-- 
-- 
 
	
    -- The output signal will be connected to cc1101 tranceiver	
	  spi_clock  <=  sig_spi_clock_3_out;
     cs  <= sig_cs;
     mosi           <= sig_mosi;
     
     end ab;    