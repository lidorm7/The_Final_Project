library ieee;
use ieee.std_logic_1164.all  ;
use ieee.std_logic_arith.all ;
use ieee.std_logic_unsigned.all ;

entity spi_cc1101_write is
    port
    (
        resetn              :   in  std_logic;
        sysclk              :   in  std_logic;
        start_state_machine :   in  std_logic;
        q_data_in           :   in  std_logic_vector(7 downto 0); -- The data input from rom
        ROM_address         :   out std_logic_vector(5 downto 0); -- Provides the address used for reading
        start_read_cc1101   :   out std_logic;
        wr_rd_toggle        :   out std_logic;
        cs                  :   out std_logic;
        mosi                :   out std_logic;
        spi_clock           :   out std_logic
    );
    end spi_cc1101_write;

architecture ab of spi_cc1101_write is

   -- components declaration

   type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10);
   signal state : state_type;
             
   signal  sig_raw_cntr             : std_logic_vector(3 downto 0);
   signal  sig_cc1101_wr_adr        : std_logic_vector(7 downto 0); 
   signal  sig_spi_state_cntr       : std_logic_vector(4 downto 0);
   signal  sig_CLK_A_q              : std_logic;
   signal  sig_CLK_A_q_not          : std_logic;
   signal  sig_CLK_A_r              : std_logic;
   signal  sig_spi_raw_clock        : std_logic;

   signal  sig_spi_clock            : std_logic;
   signal  sig_spi_clock_1          : std_logic;
   signal  sig_spi_clock_2          : std_logic;
   signal  sig_spi_clk_out          : std_logic;
   signal  sig_spi_clk_dly          : std_logic_vector(31 downto 0);

   signal  sig_tx_reg               : std_logic_vector(15 downto 0);
   signal  sig_mosi                 : std_logic;
   signal  sig_cs                   : std_logic;
   signal  sig_cs_stop              : std_logic;
   signal  sig_ROM_address          : std_logic_vector(5 downto 0);
   signal  sig_start_read_cc1101    : std_logic;
            
   begin
             
   -- components ports.    
   --============================================
   -- Main state machine
   --============================================	  
   process (sysclk, resetn)
   
       begin
         
       if resetn = '0' then 
       
           sig_cc1101_wr_adr        <= (others => '0');
           sig_ROM_address          <= (others => '0');
           state                    <= s0;
           sig_cs                   <= '1';
           sig_cs_stop              <= '1';
           sig_spi_state_cntr       <= (others => '0');
           sig_start_read_cc1101    <= '0';

       elsif rising_edge(sysclk) then
           if sig_CLK_A_r = '1' then -- spi_raw_clock raising edge strobe
               
               case state is
                   
                   when s0 => 
                   -- =========================================== 
                   -- external signal to start the state machine.
                   -- ===========================================		 
                   if start_state_machine = '1' then 
                       sig_cc1101_wr_adr  <= "00000000"; -- # of slice 0 -->  0X3F
                       sig_ROM_address     <= (others => '0');
                       sig_spi_state_cntr <= (others => '0'); --internal clock 0 --> 0XF
                       state <= s1;
                       wr_rd_toggle <= '0'; -- flag
                   end if; 

                   when s1 =>
                   --===============================
                   -- detecting end of triger pulse
                   --===============================
                   if start_state_machine = '0' then 
                       state <= s2;  
                   end if; 

                   when s2 =>
                   --================================
                   -- copy to register for cretig mosi
                   -- ===============================
                   sig_tx_reg(15 downto 8) <= sig_cc1101_wr_adr; 
                   sig_tx_reg(7 downto 0)  <= q_data_in; 
                   state <= s3 ;

                   when s3 =>
                   sig_cs <= '0';
                   sig_cs_stop <= '0';
                   state <= s4 ;

                   when s4 =>
                   --==================================================
                   -- creating the mosi,sig_tx_reg is the shift reister.
                   --================================================== 
                   sig_mosi <= sig_tx_reg(15);
                   sig_tx_reg <= sig_tx_reg(14 downto 0) & '0';
                   --=====================================================
                   -- sig_spi_state_cntr is responsible to crate 16 clocl inside a transmition slice.
                   -- note that #14 is because of delay of operation inside the state machine.
                   --=====================================================
                   if sig_spi_state_cntr = 7 then
                       state <= s5;
                       sig_cs_stop <= '1';
                   end if; 
                   sig_spi_state_cntr <= sig_spi_state_cntr + 1;
                      
                   when s5 =>
                   sig_ROM_address    <= sig_ROM_address + 1;
                   state <= s6;
                   sig_spi_state_cntr <= (others => '0');

                   when s6 =>
                   --=============================================
                   -- sig_cs_stop signal to stop spi clock 
                   --=============================================
                   sig_cs_stop <= '0';
                   state <= s7;  	 
             
                   when s7 => 
                   sig_mosi <= sig_tx_reg(15);
                   sig_tx_reg <= sig_tx_reg(14 downto 0) & '0';
                   if sig_spi_state_cntr = 7 then
                       state <= s8;
                       sig_cs_stop <= '1';
                   end if; 
                   sig_spi_state_cntr <= sig_spi_state_cntr + 1;
                     
                   when s8 =>
                   --===============================================
                   -- end of internal cs, and count up to 64 slice 
                   -- to cover the 64 bytes of data.
                   --===============================================
                   sig_cc1101_wr_adr   <= sig_cc1101_wr_adr + 1;    
                   if sig_cc1101_wr_adr = 47 then  -- X"2F"
                       state <= s9;
                       sig_cs <= '1';
                       sig_start_read_cc1101 <= '1';
                       wr_rd_toggle <= '1';
                   else  
                       state <= s2;
                       sig_spi_state_cntr <= (others => '0');
                   end if; 

                   when s9 =>
                   state <= s10;

                   when s10 =>
                   state <= s0;
                   sig_start_read_cc1101 <= '0';
                   
                   when others => 
                   state <= s0;

               end case ;

           end if;

       end if;

   end process; 
   
   start_read_cc1101 <= sig_start_read_cc1101; 

   process(sysclk,resetn)
        -- strobe of spi_raw clock.
   begin
       if (resetn = '0') then      
           sig_CLK_A_q     <= '0';
           sig_CLK_A_q_not <= '1';
       elsif  rising_edge(sysclk) then
           sig_CLK_A_q     <= sig_spi_raw_clock;
           sig_CLK_A_q_not <= not sig_CLK_A_q;
       end if ;
   end process ;

   sig_CLK_A_r <= sig_CLK_A_q AND sig_CLK_A_q_not; 
   -- sig_CLK_A_f <= not(sig_CLK_A_q OR  sig_CLK_A_q_not) ; 
     
   process (sysclk, resetn)
   --================================
   -- creating the spi master clock.
   -- This clock is alwayes active.
   -- 8 bits '0' and 8 bis '1' bit time = 320nSec f= 3.125mHz
   --================================
   begin
       if resetn = '0' then 
           sig_raw_cntr      <= (others => '0');
           sig_spi_raw_clock <= '0';
       elsif rising_edge(sysclk) then 
           sig_raw_cntr      <= sig_raw_cntr + 1;
           sig_spi_raw_clock <= sig_raw_cntr(3);     
       end if;
   end process; 
   
   process (sysclk, resetn)   
   --=======================================
   -- loocking for the correct phase of spi clock.
   -- is the raw clock and the sig_cs_stop
   --=======================================	
   -- variable delay_cntr : integer range 0 to 30;
   begin
       if resetn = '0' then
           sig_spi_clock   <= '0';
           sig_spi_clock_1 <= '0';
           sig_spi_clock_2 <= '0';
       elsif rising_edge(sysclk) then
           sig_spi_clock   <= sig_spi_raw_clock  and  ( not sig_cs_stop); 
           sig_spi_clock_1 <= sig_spi_clock      and  ( not sig_cs_stop);
           sig_spi_clock_2 <= sig_spi_clock_1    and  ( not sig_cs_stop);
       end if;

   end process;

   process (sysclk, resetn)   
   begin
       if resetn = '0' then
           sig_spi_clk_out <= '0';	 
           sig_spi_clk_dly <= (others => '0');
       elsif rising_edge(sysclk) then
           sig_spi_clk_dly <= sig_spi_clk_dly(30 downto 0) & sig_spi_clock_2;
           sig_spi_clk_out <= sig_spi_clk_dly(20);
       end if;

   end process;    

   spi_clock    <= sig_spi_clk_out;
   mosi         <= sig_mosi;
   cs           <= sig_cs;
   ROM_address   <= sig_ROM_address   ;
    
end ab;