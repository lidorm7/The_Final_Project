library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

--  15.11.2023  creating miso signal

entity  detecting_miso_module  is
     PORT (        
            resetn           : in std_logic;-- AB9
            sysclk           : in std_logic;-- 50mHz --N14 
            cs 		         : in std_logic;-- AA8
            spi_clock        : in std_logic; -- AB5
            miso             : in std_logic;  -- AA16
			write_read_select  : in std_logic;
				
			--	addr_strobe      : out std_logic;
		      wr_ram           : out std_logic;
		      adr_ram          : out std_logic_vector(5 downto 0);
 			   miso_data        : out std_logic_vector(7 downto 0); 
         --   miso_reg         : out std_logic_vector(7 downto 0);
				start_tx         : out std_logic
                         );
        END detecting_miso_module;      
      
        
     ARCHITECTURE  ab of detecting_miso_module  is
     
       -- components declaration.
        TYPE STATE_TYPE is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12);
           SIGNAL state:STATE_TYPE;  
		 signal  sig_load_miso_shift_reg  : std_logic;
       signal  sig_miso_data            :std_logic_vector(7 downto 0);
       signal  sig_miso_reg             :std_logic_vector(7 downto 0);
       	 signal  sig_CLK_A_q         : std_logic;
          signal  sig_CLK_A_q_not     : std_logic;
          signal  sig_CLK_A_r         : std_logic;
       --   signal  sig_CLK_A_f         : std_logic;
			 signal  sig_adr_cntr        :std_logic_vector(5 downto 0);
            -- sig_adr_cntr count number of spi_clock
          signal  sig_CLK_B_q         : std_logic;
          signal  sig_CLK_B_q_not     : std_logic;
          signal  sig_CLK_B_r         : std_logic;
        --  signal  sig_CLK_B_f         : std_logic;
			 signal  sig_cntrl_shift_reg :std_logic_vector(12 downto 0);
			 signal  sig_adr_ram         :std_logic_vector(5 downto 0);
			 signal  sig_addr_strobe     : std_logic;
			 signal  sig_wr_ram          : std_logic;
			 signal  sig_cs_rest_reg     :std_logic_vector(12 downto 0);
			 signal  sig_clear_adr_ram   : std_logic;
			 signal  sig_start_tx        : std_logic;
			 signal  sig_start_tx_cntrl  : std_logic;
			 signal  sig_cntrl_start_reg :std_logic_vector(12 downto 0);
			 
             
             begin
			  
		
			  
			  
        -- components ports.  
                PROCESS(sysclk,RESETN)
		 -- strobe of cs.
        BEGIN
      IF (RESETN = '0') THEN      
       sig_CLK_A_q        <= '0' ;
       sig_CLK_A_q_not    <= '1' ;
      ELSIF  RISING_EDGE(sysclk) THEN
       sig_CLK_A_q <= cs ;
       sig_CLK_A_q_not <= not  sig_CLK_A_q ;
      END IF ;
    END PROCESS ;
    sig_CLK_A_r <= sig_CLK_A_q AND sig_CLK_A_q_not ; 
 --   sig_CLK_A_f <= not(sig_CLK_A_q OR  sig_CLK_A_q_not) ;
  
  
    PROCESS(sysclk,RESETN)
		 -- strobe of spi_ clock.
   BEGIN
      IF (RESETN = '0') THEN      
       sig_CLK_B_q        <= '0' ;
       sig_CLK_B_q_not    <= '1' ;
      ELSIF  RISING_EDGE(sysclk) THEN
       sig_CLK_B_q <= spi_clock ;
       sig_CLK_B_q_not <= not  sig_CLK_B_q ;
      END IF ;
    END PROCESS ;
    sig_CLK_B_r <= sig_CLK_B_q AND sig_CLK_B_q_not ; 
  --  sig_CLK_B_f <= not(sig_CLK_B_q OR  sig_CLK_B_q_not) ;
	 
	-- CLK_B_r  <= sig_CLK_B_r;
    
	 process (sysclk, resetn) 
	   --=========================================  
       -- sig_adr_cntr counter
		--========================================
     begin
       if resetn = '0' then
         sig_adr_cntr <=  (others => '0') ; 
       elsif rising_edge(sysclk) then 
		  
		     if  cs = '0'  and  sig_CLK_B_r = '1' then 
			     sig_adr_cntr <= sig_adr_cntr + 1;-- cntr to count # of incoming address bytes
			 end if; 
			if  sig_CLK_A_r = '1' then   
			   sig_adr_cntr <= ( others => '0');
			end if;			 
	  
	  end if;
      end process;
        
     process (sysclk, resetn) 
	   --=========================================  
      -- loading sig_miso_reg register with serial data of miso register.
		--========================================
     begin	
      if resetn = '0' then
         sig_miso_reg <=  (others => '0') ; 
       elsif rising_edge(sysclk) then     	
 	--  if sig_CLK_B_f = '1'  and  sig_adr_cntr > 7  and cs = '0'  then
	  if sig_CLK_B_r = '1'  and  sig_adr_cntr > 7 and cs = '0'  then
        sig_miso_reg <= sig_miso_reg(6 downto 0) & miso;
 	  end if;
      if  	sig_adr_cntr = 16 then
         sig_miso_data <= sig_miso_reg;			 
	  end if;
      end if;
      end process;
		
		
		 process (sysclk, resetn ) 
		  begin	
		if (resetn = '0')   then
         sig_adr_ram <=  (others => '0') ;
			state <= s0 ;
		elsif rising_edge(sysclk) then
		 CASE state is
          WHEN s0 =>
			    if sig_addr_strobe = '1' then
		         state <= s1 ; 
				 else
				   state <= s0 ;
				 end if;	
			 WHEN s1 =>
	          if sig_addr_strobe = '0' then
		         state <= s2 ; 
				 else
				   state <= s1 ;
				 end if;
          WHEN s2 =>
			      sig_adr_ram  <= sig_adr_ram + 1;
					state <= s3 ;
		    WHEN s3 =>	
					  state <= s0 ;				 					 
					 
		  WHEN OTHERS  => 
                     state <= s0 ;
                END CASE ;
					 
			if sig_clear_adr_ram = '1' then
	        	sig_adr_ram <=  (others => '0') ;	
			end if;		 
					 
					 
		--	end if;
      end if;
      end process;		
				
		
     process (sysclk, resetn,sig_clear_adr_ram) 
		 begin	
      if resetn = '0' then
		  sig_cs_rest_reg <=  (others => '0') ; 
		  sig_clear_adr_ram <= '0';
		  sig_start_tx_cntrl <= '0';
       elsif rising_edge(sysclk) then 
		    if sig_cs_rest_reg < 5050 then
			    sig_cs_rest_reg  <= sig_cs_rest_reg + 1;
			  end if;
			 if cs = '0' then
			     sig_cs_rest_reg <=  (others => '0') ;
			 end if;
		
		 --  if sig_cs_rest_reg  = 1000 then 
			if sig_cs_rest_reg  = 400 then 
            sig_clear_adr_ram <= '1';
	      else
			   sig_clear_adr_ram <= '0';
			end if;
			
			if sig_cs_rest_reg  = 5000 then 
            sig_start_tx_cntrl <= '1';
	      else
			   sig_start_tx_cntrl <= '0';
			end if;
			
		    end if;
      end process;
			
			
			
		process (sysclk, resetn) 
		 begin	
      if resetn = '0' then
		  sig_cntrl_start_reg <=  (others => '0') ; 
       elsif rising_edge(sysclk) then 
		  if  sig_start_tx_cntrl = '1' then 
		    sig_cntrl_start_reg  <=  (others => '1') ;
		  else
		  sig_cntrl_start_reg <= sig_cntrl_start_reg(11 downto 0) & '0';	  
		 end if;
		 end if;
      end process; 
		
		process (sysclk, resetn) 
		 begin	
      if resetn = '0' then
			sig_start_tx <= '0';
		elsif rising_edge(sysclk) then	
		 if (sig_cntrl_start_reg(10) ='1') and  (sig_cntrl_start_reg(2) ='0') and (write_read_select = '1')then
		     sig_start_tx <= '1';
		  else
		     sig_start_tx <= '0';
		end if;
		end if;	
		end process; 	
			
--			if sig_adr_ram = 63 then
--			    sig_start_tx <= '1';
--	      else
--			   sig_start_tx <= '0';
--			end if;
			
		
		
		
		
	 	
		
		 process (sysclk, resetn) 
		 begin	
      if resetn = '0' then
		  sig_cntrl_shift_reg <=  (others => '0') ; 
       elsif rising_edge(sysclk) then  
		  sig_cntrl_shift_reg <= sig_cntrl_shift_reg(11 downto 0) & cs;	  
		 end if;
      end process;  
		
		 
		
		process (sysclk, resetn) 
		 begin	
      if resetn = '0' then
		 sig_wr_ram <= '0'; 
		 sig_addr_strobe <= '0';
       elsif rising_edge(sysclk) then  
		  if 	sig_cntrl_shift_reg(3) = '1' and sig_cntrl_shift_reg(4) = '0'  then
		      sig_wr_ram <= '1';
		  else
		      sig_wr_ram <= '0';
		  end if;
		  if 	sig_cntrl_shift_reg(6) = '1' and sig_cntrl_shift_reg(11) = '0'  then
		      sig_addr_strobe <= '1';
		  else
		      sig_addr_strobe <= '0';
		  end if;
		   
		  
		 end if;
      end process; 
		
		
	--	 addr_strobe  <= sig_addr_strobe;
		 wr_ram       <= sig_wr_ram;
		 adr_ram      <= sig_adr_ram;
      
       miso_data  <= sig_miso_data;
   --    miso_reg   <= sig_miso_reg;
		 start_tx  <= sig_start_tx;
		
		 miso_data   <= sig_miso_data;
		 adr_ram     <= sig_adr_ram;
		 wr_ram      <= sig_wr_ram;
                   
      end ab;