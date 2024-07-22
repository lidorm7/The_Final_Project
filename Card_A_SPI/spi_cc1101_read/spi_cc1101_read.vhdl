library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- 20.10.2023 This is master module that read data from cc1101 tranceiver.

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
	
entity  spi_cc1101_read  is
    port (        
        resetn                : in  std_logic;  -- AB9
        sysclk                : in  std_logic;  -- 50mHz  -- N14
		start_state_machine   : in  std_logic;  -- external triger to         
        cs                    : out std_logic;  -- to cc1101  *** AA8
        mosi                  : out std_logic;  -- to cc1101 *** AA5
	    spi_clock             : out std_logic  -- *** AB5 for spi clock -- clock to cc1101 after delay line to adjust spi clock to be in midle of mosi
        -- d0_out                : out std_logic  -- AA16 -- blinking led rate 1 second
                  );
end spi_cc1101_read;      
             
architecture ab of spi_cc1101_read is
     
-- components declaration

    type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
    signal state : state_type;
              
    signal  sig_raw_cntr        : std_logic_vector(3 downto 0);
    signal  sig_cc1101_rd_adr   : std_logic_vector(7 downto 0); 
    signal  sig_spi_state_cntr  : std_logic_vector(4 downto 0);
    signal  sig_CLK_A_q         : std_logic;
    signal  sig_CLK_A_q_not     : std_logic;
    signal  sig_CLK_A_r         : std_logic;
    signal  sig_spi_raw_clock   : std_logic;
    signal  sig_cs              : std_logic;
    signal  sig_spi_clock       : std_logic;
    signal  sig_spi_clock_1     : std_logic;
    signal  sig_spi_clock_2     : std_logic;
    signal  sig_spi_clk_out     : std_logic;
    signal  sig_spi_clk_dly     : std_logic_vector(31 downto 0);
    signal  sig_tx_reg          : std_logic_vector(7 downto 0);
    signal  sig_mosi            : std_logic;
	signal  sig_cs_stop         : std_logic;
                       
    begin
			  
    -- components ports.    
    --============================================
    -- Main state machine
    --============================================	  
    process (sysclk, resetn)
    
        begin
          
        if resetn = '0' then 
        
            sig_cc1101_rd_adr <= (others => '0');
            state <= s0;
            sig_cs <= '1';
			sig_cs_stop <= '1';
            sig_spi_state_cntr <= (others => '0');

        elsif rising_edge(sysclk) then
            if sig_CLK_A_r = '1' then -- spi_raw_clock raising edge strobe
                
                case state is
                    
                    when s0 => 
					-- =========================================== 
			        -- external signal to start the state machine.
					-- ===========================================		 
                    if start_state_machine = '1' then 
						sig_cc1101_rd_adr <= "10000000"; -- # of slice 0 -->  0X3F
					    sig_spi_state_cntr <= (others => '0'); --internal clock 0 --> 0XF
                        state <= s1; 
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
					sig_tx_reg <= sig_cc1101_rd_adr; 
                    state <= s3 ;

                    when s3 =>
                    sig_cs <= '0';
					sig_cs_stop <= '0';
                    state <= s4 ;

				    when s4 =>
                    --==================================================
					-- creating the mosi,sig_tx_reg is the shift reister.
					--================================================== 
				    sig_mosi <= sig_tx_reg(7);
                    sig_tx_reg <= sig_tx_reg(6 downto 0) & '0';
					--===================================================
					-- sig_spi_state_cntr is responsible to crate 16 clocl inside a transmition slice.
					-- note that #14 is because of delay of operation inside the state machine.
					--=====================================================
				    if sig_spi_state_cntr = 7 then
                        state <= s5;
                        sig_cs_stop <= '1';
                    end if; 
                    sig_spi_state_cntr <= sig_spi_state_cntr + 1;
                       
                    when s5 =>
                    state <= s6;
                    sig_spi_state_cntr <= (others => '0');

                    when s6 =>
                    --============================================
					-- sig_cs_stop signal to stop spi clock 
					--=============================================
                    sig_cs_stop <= '0';
                    state <= s7;  	 
              
                    when s7 => 
                    
                    if sig_spi_state_cntr = 7 then
                        state <= s8;
                        sig_cs_stop <= '1';
                    end if; 
                    sig_spi_state_cntr <= sig_spi_state_cntr + 1;
                      
                    when s8 =>
					--==============================================
					-- end of internal cs, and count up to 64 slice 
					-- to cover the 64 bytes of data.
					--===============================================
                    sig_cc1101_rd_adr   <= sig_cc1101_rd_adr + 1;    
                    if sig_cc1101_rd_adr = 191 then  -- X"BF"
                        state <= s0;
                        sig_cs <= '1';
                    else  
                        state <= s2;
                        sig_spi_state_cntr <= (others => '0');
                    end if; 
							  
                    when others => 
                    state <= s0;

                end case ;

            end if;

        end if;

    end process; 
       
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

	spi_clock <= sig_spi_clk_out;
    mosi      <= sig_mosi;
	cs        <= sig_cs;
     
end ab;    