
  library    IEEE;
use IEEE.std_logic_1164.all  ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;
 -- 04.04.2023
 
 
 -- use this module temporary for complite verifing design_card_A  --> 17.04.2023
 
 
 
entity  uart_tx_spi   is
     PORT (
           
        resetn           : IN  STD_LOGIC; 
        sysclk           : IN  STD_LOGIC;--  50Mhz 
		  start_tx         : IN  STD_LOGIC; 
        q_spi_data       : in STD_LOGIC_VECTOR(7 DOWNTO 0);
        adr_ram_rd		 :	 OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		  tx_rs232         : OUT  STD_LOGIC
		--  rd_en            : OUT  STD_LOGIC
				);
            
      END  uart_tx_spi ;
        
         
   
   
		
         ARCHITECTURE  ab of uart_tx_spi   is
			
				-- components declaration.	
 
  
 
 
			
	      TYPE STATE_TYPE_TX is (s0_tx,s1_tx,s2_tx,s3_tx,s4_tx,s5_tx,s6_tx,
		                           s7_tx,s8_tx,s9_tx,s10_tx,s11_tx,s12_tx,s13_tx);
			        SIGNAL state_tx:STATE_TYPE_tx;      
        signal   sig_counter             :std_logic_vector(12 downto 0); 
		  signal   sig_CLK_C_q           :std_logic ;
        signal   sig_CLK_C_q_not         :std_logic ;
        signal   sig_CLK_C_r             :std_logic ;
	     signal   sig_serial_tx_reg      :std_logic_vector(11 downto 0);
        signal   sig_tx_bit              : std_logic ;      
        signal   sig_tx_byte             : std_logic_vector(7 downto 0);
		  signal   sig_tx_byte_t         : std_logic_vector(7 downto 0);
		  signal   sig_byte_cntr         : std_logic_vector(4 downto 0);
		  signal   sig_f38400            : std_logic;
  		  signal   sig_q_data            : std_logic_vector(7 downto 0);   
        signal   sig_adr_ram_rd        : std_logic_vector(5 downto 0);
		--  signal   sig_rd_en             : std_logic;
        
			
			        BEGIN
 	       -- components maping. 		
   

   	
	PROCESS(sysclk,RESETN)
-- strobes of  38400 clock.
    BEGIN
      IF (RESETN = '0') THEN      
        sig_CLK_C_q        <= '0' ;
        sig_CLK_C_q_not    <= '1' ;
       ELSIF  RISING_EDGE(sysclk) THEN
		   sig_CLK_C_q <=  sig_f38400 ;
           sig_CLK_C_q_not <= not  sig_CLK_C_q ;
       END IF ;
     END PROCESS ;
     sig_CLK_C_r <= sig_CLK_C_q AND sig_CLK_C_q_not ;
  
     
   -- t 1/38400 = 26.04166 uSec
   -- t/2 = 13.02  uSec	
	-- 50000000/38400 = 1302.08
	--  divide by 2 = 651.04
	-- 1302 x 20nSec = 26.040 uSec
   -- complite cycle =  26.040 uSec 
   -- 26.040 / 26.041 =  0.038% max according std. is 5% 

 process(sysclk,resetn)
   -- creating the 38400 clock.
    begin
    IF (resetn = '0') THEN       
      sig_f38400  <= '0' ; 
		sig_counter <=  (others => '0') ;
    elsif  rising_edge(sysclk) then
       sig_counter <= sig_counter + 1 ;
        if   sig_counter = 651  then   -- for xtal 50Mhz
            sig_counter <= (others => '0') ;
            sig_f38400  <= not sig_f38400  ;
        end if ;
       end if ;
      end process ;
		
 
   
     process(sysclk,resetn)
 variable tx_cntr :integer range 0 to 15 ; 
 begin
 IF (resetn = '0') then
    state_tx <= s0_tx ;  
	 sig_tx_bit <= '1' ;
	 sig_adr_ram_rd <= (others => '0');
 --   sig_rd_en <= '0';	 
 elsif rising_edge(sysclk) then
    
      CASE state_tx is      
         WHEN s0_tx => 
                 if  start_tx = '1'  then
					       sig_adr_ram_rd <= (others => '0');
                      state_tx <= s1_tx ;
                 else
                      state_tx <= s0_tx ;
                 end if; 	  
         WHEN s1_tx => 
                  if  start_tx = '0'  then
                      state_tx <= s2_tx ;
                 else
                      state_tx <= s1_tx ;
                 end if;               
         WHEN s2_tx =>   
                state_tx <= s3_tx ;               
         WHEN s3_tx =>  
             --  sig_rd_en <= '1';			
               state_tx <= s4_tx ;                                         
          WHEN s4_tx =>
			    --  sig_rd_en <= '0'; 
			     state_tx <= s5_tx ;
         WHEN s5_tx =>  
			    state_tx <= s6_tx ;	
			WHEN 	s6_tx => 
			 --   sig_tx_byte_t <= sig_q_data; 
				 sig_tx_byte_t <= q_spi_data;
			    state_tx <= s7_tx ;
         WHEN s7_tx =>
			    state_tx <= s8_tx ;
         WHEN s8_tx =>
		          sig_tx_byte(0) <= sig_tx_byte_t(7) ; 
				  sig_tx_byte(1) <= sig_tx_byte_t(6) ;
				  sig_tx_byte(2) <= sig_tx_byte_t(5) ; 
				  sig_tx_byte(3) <= sig_tx_byte_t(4) ;
				  sig_tx_byte(4) <= sig_tx_byte_t(3) ; 
				  sig_tx_byte(5) <= sig_tx_byte_t(2) ;
				  sig_tx_byte(6) <= sig_tx_byte_t(1) ; 
				  sig_tx_byte(7) <= sig_tx_byte_t(0) ;
				  state_tx <= s9_tx ;
         WHEN s9_tx =>
                
			       sig_serial_tx_reg <=  "0" & sig_tx_byte  & "111"; 
                state_tx <= s10_tx ;					 
          WHEN s10_tx =>
               if sig_CLK_C_r = '1'  then
                 sig_serial_tx_reg <= sig_serial_tx_reg(10 downto 0) & '1' ;
                 sig_tx_bit <= sig_serial_tx_reg(11) ; 
			         tx_cntr := tx_cntr + 1 ;
                   if tx_cntr = 11 then
                     state_tx <= s11_tx ;
                     tx_cntr := 0 ;
					    else  
					      state_tx <= s10_tx ;
                   end if ; 
               end if;                                                                        
          WHEN s11_tx => 
                    sig_adr_ram_rd <=  sig_adr_ram_rd + 1;	 
                     state_tx <= s12_tx ;						 						  
          WHEN s12_tx => 
						 state_tx <= s13_tx ;
           WHEN s13_tx =>  
                   if sig_adr_ram_rd = "000000" then
                    state_tx <= s0_tx ; 
                   else
                    state_tx <= s2_tx ;
                   end if;
                                     
             WHEN OTHERS  => 
                     state_tx<= s0_tx;
           END CASE ;                 
       end if ;
     end process ;
    
         tx_rs232 <= sig_tx_bit;
         adr_ram_rd  <= sig_adr_ram_rd;
		--	rd_en       <=  sig_rd_en ;
    
	 
	 end ab ;  