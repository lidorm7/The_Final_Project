library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- polynome : x^8 + x^2 + x + 1 => "1 00000111"

entity CRC8BIT is
    port(
        resetn          : in std_logic; -- Asynchronous reset input
        sysclk          : in std_logic; -- System clock input (operating at 50 MHz)
        nrzl_in         : in std_logic; -- Input signal for data
        main_clk        : in std_logic; -- Clock signal with a period of 327 microseconds
        -- crc_reg8bit_out : out std_logic_vector(7 downto 0); -- only for simulation
        crc8bit_out     : out std_logic; -- Output indicating CRC result
        correlation     : out std_logic_vector(4 downto 0)
    );
end CRC8BIT;

architecture ab of CRC8BIT is
    
    -- set components 

    -- set signals

    type state is (s0,s1,s2,s3,s4);
    type state_sub is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32);
    signal state_crc : state; -- The state machine implementation helps organize and control the flow of the CRC calculation process
    signal state_xor : state_sub;

    signal crc_reg8bit          : std_logic_vector(7 downto 0); -- This signal holds the current state of the CRC value as it progresses
    signal sig_sf_reg           : std_logic_vector(31 downto 0); -- Serves as a buffer to hold the incoming data stream
    constant sig_header           : std_logic_vector(31 downto 0) := X"C0CAFEAB";
    signal sig_cut_main_clk     : std_logic; -- Designed to provide synchronization or timing control within your system
    signal sig_cut_main_clk_not : std_logic; -- Designed to provide synchronization or timing control within your system
    signal sig_main_clk_f       : std_logic; -- Signal indicating the falling edge of the main clock signal "main_clk"
    signal sig_main_clk_r       : std_logic; -- Signal indicating the rising edge of the main clock signal "main_clk"
    signal sig_report           : std_logic; -- This counter helps in controlling the flow of the CRC calculation algorithm
    signal flag                 : std_logic;
    signal sig_correlation      : std_logic_vector(4 downto 0);

    begin

        -- set port maps 

        -- set processes

        cut_main_clk : process(resetn,sysclk) -- rising & falling edge of main clock process
        begin
            if resetn = '0' then
                sig_cut_main_clk     <= '0';
                sig_cut_main_clk_not <= '1';
            elsif rising_edge(sysclk) then
                sig_cut_main_clk     <= main_clk;
                sig_cut_main_clk_not <= not sig_cut_main_clk; 
				end if;
        end process cut_main_clk;

        sig_main_clk_f <= not(sig_cut_main_clk or sig_cut_main_clk_not);
        sig_main_clk_r <= sig_cut_main_clk and sig_cut_main_clk_not;

        shift_register : process(resetn,sysclk) -- autocorrelation of 30/32 correct bits of the header process
        variable xor_cntr : integer range 0 to 50;

        begin
            if resetn = '0' then
                sig_sf_reg <= (others => '0');
                sig_correlation <= (others => '1');
                flag <= '0';
                state_xor <= s0;

            elsif rising_edge(sysclk) then
                if sig_main_clk_f = '1' then
                    sig_sf_reg <= sig_sf_reg(30 downto 0) & nrzl_in;
                    sig_correlation <= (others => '0');
                    flag <= '1';
                end if;
                
                -- for i in 0 to 31 loop
                --     if ((sig_sf_reg(i) xor sig_header(i)) = '1') and xor_cntr = i then
                --         sig_correlation <= sig_correlation + 1;
                --     end if;
                --     if xor_cntr < 31 then
                --         xor_cntr := xor_cntr + 1;
                --     end if;
                -- end loop;

                case state_xor is

                    when s0 =>
                    if flag = '1' then 
                        state_xor <= s1;
                    end if;

                    when s1 =>
                    if (sig_sf_reg(0) xor sig_header(0)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s2;

                    when s2 =>
                    if (sig_sf_reg(1) xor sig_header(1)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s3;

                    when s3 =>
                    if (sig_sf_reg(2) xor sig_header(2)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s4;

                    when s4 =>
                    if (sig_sf_reg(3) xor sig_header(3)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s5;

                    when s5 =>
                    if (sig_sf_reg(4) xor sig_header(4)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s6;

                    when s6 =>
                    if (sig_sf_reg(5) xor sig_header(5)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s7;

                    when s7 =>
                    if (sig_sf_reg(6) xor sig_header(6)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s8;

                    when s8 =>
                    if (sig_sf_reg(7) xor sig_header(7)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s9;

                    when s9 =>
                    if (sig_sf_reg(8) xor sig_header(8)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s10;

                    when s10 =>
                    if (sig_sf_reg(9) xor sig_header(9)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s11;

                    when s11 =>
                    if (sig_sf_reg(10) xor sig_header(10)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s12;

                    when s12 =>
                    if (sig_sf_reg(11) xor sig_header(11)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s13;

                    when s13 =>
                    if (sig_sf_reg(12) xor sig_header(12)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s14;

                    when s14 =>
                    if (sig_sf_reg(13) xor sig_header(13)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s15;

                    when s15 =>
                    if (sig_sf_reg(14) xor sig_header(14)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s16;

                    when s16 =>
                    if (sig_sf_reg(15) xor sig_header(15)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s17;

                    when s17 =>
                    if (sig_sf_reg(16) xor sig_header(16)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s18;

                    when s18 =>
                    if (sig_sf_reg(17) xor sig_header(17)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s19;

                    when s19 =>
                    if (sig_sf_reg(18) xor sig_header(18)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s20;

                    when s20 =>
                    if (sig_sf_reg(19) xor sig_header(19)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s21;

                    when s21 =>
                    if (sig_sf_reg(20) xor sig_header(20)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s22;

                    when s22 =>
                    if (sig_sf_reg(21) xor sig_header(21)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s23;

                    when s23 =>
                    if (sig_sf_reg(22) xor sig_header(22)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s24;

                    when s24 =>
                    if (sig_sf_reg(23) xor sig_header(23)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s25;

                    when s25 =>
                    if (sig_sf_reg(24) xor sig_header(24)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s26;

                    when s26 =>
                    if (sig_sf_reg(25) xor sig_header(25)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s27;

                    when s27 =>
                    if (sig_sf_reg(26) xor sig_header(26)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s28;

                    when s28 =>
                    if (sig_sf_reg(27) xor sig_header(27)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s29;

                    when s29 =>
                    if (sig_sf_reg(28) xor sig_header(28)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s30;

                    when s30 =>
                    if (sig_sf_reg(29) xor sig_header(29)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s31;

                    when s31 =>
                    if (sig_sf_reg(30) xor sig_header(30)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    state_xor <= s32;

                    when s32 =>
                    if (sig_sf_reg(31) xor sig_header(31)) = '1' then
                        sig_correlation <= sig_correlation + 1;
                    end if;
                    flag <= '0';
                    state_xor <= s0;
                    
                    when others =>
                    state_xor <= s0;

                end case;

            end if;
        end process shift_register;

        correlation <= sig_correlation;

        crc8bit_operation : process(resetn,sysclk) -- crc8bit check FSM operation
        variable cnt : integer range 0 to 216;

        begin
            if resetn = '0' then
                crc8bit_out <= '1'; -- crc8bit_out <= '0' is data ok else '1'
                crc_reg8bit <= (others => '0');
                state_crc <= s0;

            elsif rising_edge(sysclk) then
                if sig_main_clk_r = '1' then
                
                    case state_crc is

                        when s0 =>
                        -- if sig_sf_reg = X"C0CAFEAB" then
                        --     state_crc <= s1;
                        -- end if;

                        if sig_correlation < 3 then
                            state_crc <= s1;
                        end if;
                        
                        when s1 =>
                        crc_reg8bit(0) <= crc_reg8bit(7) xor nrzl_in;
                        crc_reg8bit(1) <= (crc_reg8bit(7) xor nrzl_in) xor crc_reg8bit(0);
                        crc_reg8bit(2) <= (crc_reg8bit(7) xor nrzl_in) xor crc_reg8bit(1);
                        crc_reg8bit(3) <= crc_reg8bit(2);
                        crc_reg8bit(4) <= crc_reg8bit(3);
                        crc_reg8bit(5) <= crc_reg8bit(4);
                        crc_reg8bit(6) <= crc_reg8bit(5);
                        crc_reg8bit(7) <= crc_reg8bit(6);
                        cnt := cnt + 1;
                        if cnt = 216 then
                            state_crc <= s2;
                            cnt := 0;
                        end if;

                        when s2 =>
                        if crc_reg8bit = X"00" then
                            crc8bit_out  <= '0';
                        else 
                            crc8bit_out  <= '1';
                        end if;
                        state_crc <= s3;

                        when s3 =>
                        crc_reg8bit <= (others => '0');
                        state_crc <= s4;

                        when s4 =>
                        state_crc <= s0;

                        when others =>
                        state_crc <= s0;

                    end case;

                end if;

            end if;

        end process crc8bit_operation;
        
        -- crc_reg8bit_out <= crc_reg8bit;
        
end ab;

