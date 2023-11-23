library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- polynome : x^8 + x^2 + x + 1 => "1 00000111"

entity CRC8BIT is
    port(
        resetn          : in std_logic;
        sysclk          : in std_logic;
        nrzl_in         : in std_logic;
        main_clk        : in std_logic;-- 327us
        -- crc_reg8bit_out : out std_logic_vector(7 downto 0); -- only for simulation
        crc8bit_out     : out std_logic
    );
end CRC8BIT;

architecture ab of CRC8BIT is
    
    -- set components 

    -- set signals

    type state is (s0,s1,s2,s3,s4);
    signal state_crc : state;

    signal crc_reg8bit          : std_logic_vector(7 downto 0);
    signal sig_sf_reg           : std_logic_vector(31 downto 0);
    signal sig_cut_main_clk     : std_logic;
    signal sig_cut_main_clk_not : std_logic;
    signal sig_main_clk_f       : std_logic;
    signal sig_main_clk_r       : std_logic;
    signal sig_report           : std_logic;

    begin

        -- set port maps 

        -- set processes

        cut_main_clk : process(resetn,sysclk)
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

        shift_register : process(resetn,sysclk)
        begin
            if resetn = '0' then
                sig_sf_reg <= (others => '0');
            elsif rising_edge(sysclk) then
                if sig_main_clk_f = '1' then
                    sig_sf_reg <= sig_sf_reg(30 downto 0) & nrzl_in;
                end if;
            end if;
        end process shift_register;

        crc8bit_operation : process(resetn,sysclk)
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
                        if sig_sf_reg = X"C0CAFEAB" then
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

