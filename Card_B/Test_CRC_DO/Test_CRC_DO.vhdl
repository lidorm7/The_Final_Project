library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Test_CRC_DO is
    port(
        resetn          : in std_logic;
        sysclk          : in std_logic;
        nrzl_data       : out std_logic;
        crc_reg8bit_out : out std_logic_vector(7 downto 0); -- only for simulation
        load_leds       : out std_logic;
        green_leds      : out std_logic_vector(7 downto 0);
        rgb_leds        : out std_logic_vector(95 downto 0); 
        main_clk        : out std_logic;
        crc8bit_out     : out std_logic
    );
end Test_CRC_DO;

architecture ab of Test_CRC_DO is

-- set components 

component ROM_CRC
	port
	(
		address		: in std_logic_vector(4 downto 0);
		clock		: in STD_LOGIC  := '1';
        -- rden		: in STD_LOGIC  := '1';
		q           : out std_logic_vector(7 downto 0)
	);
end component;

component CRC8BIT
	port
	(
		resetn		    :	 in std_logic;
		sysclk		    :	 in std_logic;
		nrzl_in		    :	 in std_logic;
		main_clk		:	 in std_logic;
        crc_reg8bit_out :    out std_logic_vector(7 downto 0); 
		crc8bit_out		:	 out std_logic
	);
end component;

component Data_Orgenizer
port(
    resetn      : in std_logic;
    sysclk      : in std_logic;
    main_clk    : in std_logic;
    nrzl_data   : in std_logic;
    crc8bit_in  : in std_logic;
    load_leds   : out std_logic;
    green_leds  : out std_logic_vector(7 downto 0);
    rgb_leds    : out std_logic_vector(95 downto 0)
);
end component;

-- set signals

    type state is (s0a,s0,s1,s2,s3,s4,s5,s6,s7);
    signal state_t              : state;

    signal sig_nrzl_data        : std_logic;
    signal sig_main_clk         : std_logic;
    signal sig_main             : std_logic_vector(13 downto 0);

    signal sig_address          : std_logic_vector (4 downto 0);
    signal sig_rom_data_out     : std_logic_vector (7 downto 0);
    signal sig_rom_sf           : std_logic_vector (7 downto 0);
    
    signal sig_cut              : std_logic;
    signal sig_cut_not          : std_logic;
    signal sig_main_rising_edge : std_logic;

    signal sig_crc8bit_out      : std_logic;

    begin

        -- set port maps

        MEMORY : ROM_CRC
        port map(       
            address             => sig_address,
            clock               => sysclk,
            -- rden                => sig_redn,
            q                   => sig_rom_data_out
        );

        crc : CRC8BIT
        port map(       
            resetn              => resetn,
            sysclk              => sysclk,
            nrzl_in             => sig_rom_sf(7),
            main_clk            => sig_main_clk,
            crc_reg8bit_out     => crc_reg8bit_out,
            crc8bit_out         => sig_crc8bit_out           
        );
        nrzl_data <= sig_rom_sf(7);

        og : Data_Orgenizer
        port map(
            resetn              => resetn,
            sysclk              => sysclk,
            main_clk            => sig_main_clk,
            nrzl_data           => sig_rom_sf(7),
            crc8bit_in          => sig_crc8bit_out,
            load_leds           => load_leds,
            green_leds          => green_leds,
            rgb_leds            => rgb_leds
        );

        crc8bit_out <= sig_crc8bit_out;

        -- set processes
		
        main_clock : process(resetn,sysclk)
        begin
            if resetn = '0' then
                sig_main <= (others => '0');
            elsif rising_edge(sysclk) then
                sig_main <= sig_main + 1;
            end if;
        end process main_clock;

        sig_main_clk <= sig_main(6);
        main_clk <= sig_main_clk;

        cut_main_clk : process(resetn,sysclk)
        begin
            if resetn = '0' then
                sig_cut     <= '0';
                sig_cut_not <= '1';
            elsif rising_edge(sysclk) then
                sig_cut     <= sig_main_clk;
                sig_cut_not <= not sig_cut;
            end if;    
        end process cut_main_clk;
        
        sig_main_rising_edge  <= sig_cut and sig_cut_not;
        

        ROM_SET : process(resetn,sysclk)
        begin
            if resetn = '0' then
                sig_address <= (others => '0');
                state_t     <= s0a;
            elsif rising_edge(sysclk) then
                if sig_main_rising_edge = '1' then

                    case state_t is 
                        when s0a =>
                        sig_rom_sf <= sig_rom_data_out;
                        state_t     <= s0;

                        when s0 =>
                        sig_rom_sf <= sig_rom_sf(6 downto 0) & '0';
                        state_t     <= s1;

                        when s1 =>
                        sig_rom_sf <= sig_rom_sf(6 downto 0) & '0';
                        state_t     <= s2;

                        when s2 =>
                        sig_rom_sf <= sig_rom_sf(6 downto 0) & '0';
                        state_t     <= s3;

                        when s3 =>
                        sig_rom_sf <= sig_rom_sf(6 downto 0) & '0';
                        state_t     <= s4;

                        when s4 =>
                        sig_rom_sf <= sig_rom_sf(6 downto 0) & '0';
                        state_t     <= s5;

                        when s5 =>
                        sig_rom_sf <= sig_rom_sf(6 downto 0) & '0';
                        state_t     <= s6;

                        when s6 =>
                        sig_address <= sig_address + 1;
                        sig_rom_sf <= sig_rom_sf(6 downto 0) & '0';
                        state_t     <= s7;

                        when s7 =>
                        sig_rom_sf <= sig_rom_sf(6 downto 0) & '0';
                        sig_rom_sf <= sig_rom_data_out;
                        state_t     <= s0;

                    end case;

                end if; 

            end if;

        end process ROM_SET;

end ab;