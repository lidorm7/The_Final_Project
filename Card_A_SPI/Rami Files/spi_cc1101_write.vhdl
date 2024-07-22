library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

-- 28.10.2023 This is master module that write data to cc1101 tranceiver.

  -- 28.11.2023
--   |----------|
--   |          |---> cs
--	  |          |---> spi_clock - spi_clock_3_out
--	  |          |---> mosi
--   |          |<--- miso

-- 13.11.2023 for test of iput signals to cc1101 delet all signals 
-- miso it will be given by the device.  ---*
	
entity  spi_cc1101_write  is
     PORT (        
            resetn           :    IN  STD_LOGIC;
            sysclk           :    IN  STD_LOGIC;-- 50mHz
				start_state_machine  :    IN  STD_LOGIC;-- external triger to
				                        -- start transmit data read from cc1101
   ---*         miso             : in std_logic;
--				cc1101_rd_adr    : out std_logic_vector(7 downto 0);-- data 0 to 0x3f will be sent over mosi
--            spi_state_cntr   : out std_logic_vector(4 downto 0);-- internal counter. 
--            spi_clock        : out std_logic;-- internal signal.
--            spi_raw_clock    : out std_logic;-- internal signal.          
            cs               : out std_logic;-- to cc1101  *** AA8
--	         raw_cntr			  : out std_logic_vector(3 downto 0);-- internal counter. 
--				spi_clock_1      : out std_logic;-- internal counter.
--            spi_clock_2      : out std_logic;-- internal counter.
--				spi_clock_3      : out std_logic;-- internal counter.
            mosi             : out std_logic;-- to cc1101 *** AA5
			--	shift_reg        : out std_logic_vector(31 downto 0);-- dealy line 
	         start_read_cc1101 : out std_logic;
				spi_clock_3_out  : out std_logic;--clock to cc1101 after delay line to adjust spi clock to be in midle of mosi
			   
			   write_read_select	: out std_logic
				-- *** AB5 for spi clock
			--	cs_stop          : out std_logic -- internal cs to stop spi clock after 16 pulses.
--	---*			reg_collect      : out std_logic_vector(7 downto 0);
--	---*			miso_input_data  : out std_logic
				
                  );
        END spi_cc1101_write;      
      
        
     ARCHITECTURE  ab of spi_cc1101_write  is
     
       -- components declaration.
		
	
	
	component spi_write_data
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;
		 
		 
		 
        TYPE STATE_TYPE is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s9_a);
           SIGNAL state:STATE_TYPE;
--              signal  sig_spi_clock_1     : std_logic;
--			  signal  sig_spi_clock_2     : std_logic;
--			  signal  sig_spi_cs_1        : std_logic;
--			  signal  sig_calib_data_reg  :std_logic_vector(47 downto 0);
--			  signal  sig_data_req_reg    :std_logic_vector(47 downto 0); 
              
              signal  sig_raw_cntr        :std_logic_vector(3 downto 0);
              signal  sig_cc1101_write_adr   :std_logic_vector(7 downto 0); 
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
           --   signal  sig_tx_reg          :std_logic_vector(7 downto 0);
				  signal  sig_tx_reg          :std_logic_vector(15 downto 0);
              signal  sig_mosi            : std_logic;
				  signal  sig_shift_reg       :std_logic_vector(31 downto 0);
	           signal  sig_spi_clock_3_out : std_logic;
				  signal  sig_cs_stop         : std_logic;
				  signal  sig_cntr_for_miso   :std_logic_vector(7 downto 0);
		        signal  sig_miso_input_data : std_logic;
		        signal  sig_reg_collect     :std_logic_vector(7 downto 0);
              signal  sig_q_write_data    :std_logic_vector(7 downto 0);
				  signal  sig_start_read_cc1101 : std_logic;
				 
           
        begin
			  
        -- components ports.  
		
        romdata: spi_write_data
	PORT  MAP
	(
		address		=> sig_cc1101_write_adr( 5 downto 0),
		clock		   => sysclk,
		q		      => sig_q_write_data
	);
 


		
     --==========================================
     --  Main state machine
     --============================================	  
     process (sysclk, resetn)
     variable delay_cntr : integer range 0 to 3000;
     begin
       if resetn = '0' then 
         delay_cntr := 0 ;
         sig_cc1101_write_adr <= (others => '0');
         state <= s0 ;
         sig_cs <= '1';
			sig_cs_stop <= '1';
			sig_start_read_cc1101 <= '0';
         sig_spi_state_cntr <= (others => '0');
			write_read_select  <= '0';
       elsif rising_edge(sysclk) then
         if sig_CLK_A_r = '1' then -- spi_raw_clock raising edge strobe
         CASE state is
                WHEN s0 => 
					       -- =========================================== 
			             -- external signal to start the state machine.
					       --============================================		 
                      if start_state_machine = '1' then 
					       sig_cc1101_write_adr <= (others => '0'); -- # of slice 0 -->  0X3F
							--  sig_cc1101_rd_adr <= "10000000"; -- # of slice 0 -->  0X3F
					        sig_spi_state_cntr <= (others => '0'); --internal clock 0 --> 0XF
                        write_read_select  <= '0';
								state <= s1 ; 
                      else
                        state <= s0 ; 
                      end if;         
                WHEN s1 =>
					       --===============================
					       -- detecting end of triger pulse
							 --===============================
                      if start_state_machine = '0' then 
                        state <= s2 ; 
                      else
                        state <= s1 ; 
                      end if;                   
                WHEN s2 =>
					       --================================
							 -- copy to register for cretig mosi
							 -- ===============================
					    --    sig_tx_reg <=  sig_cc1101_rd_adr; 
						-- 	 sig_tx_reg <=  sig_cc1101_rd_adr & "0XAB"; 
							 sig_tx_reg(15 downto 8) <= sig_cc1101_write_adr;
							 sig_tx_reg(7 downto 0)  <= sig_q_write_data;
							 
                      state <= s3 ;              		
                WHEN s3 =>
                      sig_cs <= '0';
							 sig_cs_stop <= '0';
                      state <= s5 ;
			    WHEN s4 =>  	 
						state <= s5 ;	 
				WHEN s5 =>
                      --==================================================
							 -- creating the mosi,sig_tx_reg is the shift reister.
							 --================================================== 
--				          sig_mosi <= sig_tx_reg(7);
--                      sig_tx_reg <= sig_tx_reg(6 downto 0) & '0';
							  		
					   	 sig_mosi <= sig_tx_reg(15);
                      sig_tx_reg <= sig_tx_reg(14 downto 0) & '0';
							 --===================================================
							 -- sig_spi_state_cntr is responsible to crate 16 clocl inside a transmition slice.
							 -- note that #14 is because of delay of operation inside the state machine.
							 --=====================================================
				        --   if sig_spi_state_cntr = 14 then
						     sig_spi_state_cntr <= sig_spi_state_cntr + 1;		
						 --	  if sig_spi_state_cntr = 15 then
							  if sig_spi_state_cntr = 7 then
						--	  if sig_spi_state_cntr = 14 then
						        sig_cs_stop <='1';
                          state <= s6 ;
                       else
                         state <= s5 ;
                      end if; 
                  --     sig_spi_state_cntr <= sig_spi_state_cntr + 1;

                       
--                when s6 =>
--                       if sig_spi_state_cntr = 15 then
--                          state <= s7 ;
--                       else
--                         state <= s5 ;
--                      end if; 
                  when s6 => 
                        sig_spi_state_cntr <= sig_spi_state_cntr + 1;
                        if sig_spi_state_cntr = 9 then
                           sig_cs_stop <='0';
									state <= s7 ;
                        else
								   state <= s6 ;
								end if;
                
					 when s7 =>
					        sig_mosi <= sig_tx_reg(15);
                       sig_tx_reg <= sig_tx_reg(14 downto 0) & '0';
					        sig_spi_state_cntr <= sig_spi_state_cntr + 1;
					        if sig_spi_state_cntr = 17 then
							    sig_cs_stop <='1';
                          state <= s8 ;
                       else
                         state <= s7 ;
                      end if; 
							  
                when s8 =>  
			                --============================================
						       -- sig_cs_stop signal to stop spi clock 
						       -- to be length of 16, stop by cs only will mresilt in two more clocks.
						       --=============================================		 
					          sig_spi_state_cntr <= (others => '0'); 
                     --    sig_cs_stop <='1';
                         state <= s9_a ;
						when s9_a =>		 
								 state <= s9 ;
                 when s9 => 
                      
                      state <= s10 ;
                      
                 when s10 =>
					        --==============================================
							  -- end of internal cs, and count up to 64 slice 
							  -- to cover the 64 bytes of data.
							  --===============================================
					        sig_cs<='1';
                       sig_cc1101_write_adr  <= sig_cc1101_write_adr + 1;    
                     --  if   sig_cc1101_rd_adr = 191 then
						    if   sig_cc1101_write_adr = 47 then
                          state <= s11 ;
                       else  
                          state <= s2 ;
                       end if; 
							  
					when s11 =>	
					      delay_cntr := delay_cntr +1;
							if delay_cntr = 100 then
							  write_read_select  <= '1';
							 end if;
							if delay_cntr = 1000 then
							   state <= s12 ;
							   delay_cntr := 0;
							else
							   state <= s11 ;
							end if;	
					 when s12 =>
	                    sig_start_read_cc1101 <= '1';				 
							  state <= s13 ;
					 when s13 =>
					        state <= s14 ;
					  when s14 =>
					        sig_start_read_cc1101 <= '0';
							  state <= s0 ; 
							  
                 WHEN OTHERS  => 
                     state <= s0 ;
                END CASE ; 
            end if; 
          end if;
      end process; 
      
      start_read_cc1101 <= sig_start_read_cc1101 ;
      
       
      
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
		-- This a delay line to adjust the clock timing according
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
		
 
	  spi_clock_3_out  <=  sig_spi_clock_3_out;
	  
	  	
	 
     cs  <= sig_cs;
     mosi           <= sig_mosi;
	  
	  
--	  NOTES
--	  signals to cc1101
--	  1. cs
--	  2.mosi
--	  3.spi_clock_3_out
     
     end ab;    