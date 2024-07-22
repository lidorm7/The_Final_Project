-- libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- entity
entity top_spi_cc1101 is
    port
    (
        resetn          : in  std_logic; -- AB9
        sysclk          : in  std_logic; -- N14 -- 50mHz
        -- miso	        : in  std_logic; -- AB8
        mosi            : out std_logic; -- AA5
        cs 		        : out std_logic; -- AA8
        spi_clock       : out std_logic; -- AB5
        d0_out          : out std_logic -- AA16        
        -- data_out        : out std_logic_vector(7 downto 0)
        -- tx_rs232         : out std_logic; -- AB7
        -- mosi_monitor     : out std_logic  -- AA7
    );
    end top_spi_cc1101;

architecture ab of top_spi_cc1101 is

    -- set component 

    component spi_ROM
	port
	(
		address		: in std_logic_vector (5 downto 0);
		clock		: in std_logic  := '1';
		q		    : out std_logic_vector (7 downto 0)
	);
    end component;

    component spi_control_led
	port
	(
		resetn		:	 in std_logic;
		sysclk		:	 in std_logic;
		d0_out		:	 out std_logic
	);
    end component;

    component spi_trigger
	port
	(
		resetn		            :	 in std_logic;
		sysclk		            :	 in std_logic;
		start_state_machine		:	 out std_logic
	);
    end component;

    component spi_cc1101_write
	port
	(
		resetn		            :	 in std_logic;
		sysclk		            :	 in std_logic;
		start_state_machine		:	 in std_logic;
		q_data_in		        :	 in std_logic_vector(7 downto 0);
		ROM_address		        :	 out std_logic_vector(5 downto 0);
		start_read_cc1101		:	 out std_logic;
		wr_rd_toggle		    :	 out std_logic;
		cs		                :	 out std_logic;
		mosi		            :	 out std_logic;
		spi_clock		        :	 out std_logic
	);
end component;
    
    component spi_cc1101_read
	port
	(
		resetn		            :	 in std_logic;
		sysclk		            :	 in std_logic;
		start_state_machine		:	 in std_logic;
		cs		                :	 out std_logic;
		mosi		            :	 out std_logic;
		spi_clock		        :	 out std_logic
	);
    end component;

    component spi_wr_rd_toggle
	port
	(
		resetn		            :	 in std_logic;
		sysclk		            :	 in std_logic;
		wr_rd_toggle		    :	 in std_logic;
		write_cs		        :	 in std_logic;
		write_mosi		        :	 in std_logic;
		write_clk		        :	 in std_logic;
		read_cs		            :	 in std_logic;
		read_mosi		        :	 in std_logic;
		read_clk		        :	 in std_logic;
		cs		                :	 out std_logic;
		mosi		            :	 out std_logic;
		clk		                :	 out std_logic
	);
    end component;

    component spi_detect_miso
	port
	(
		resetn		            :	 in std_logic;
		sysclk		            :	 in std_logic;
		miso		            :	 in std_logic;
		read_cs		            :	 in std_logic;
		read_clk		        :	 in std_logic;
		wren		            :	 out std_logic;
        modelsim_trigger        :   out std_logic;
		wr_RAM_adr		        :	 out std_logic_vector(5 DOWNTO 0);
		data_RAM_out		    :	 out std_logic_vector(7 DOWNTO 0)
	);
    end component;

    component spi_miso_RAM
	port
	(
		clock		            : in std_logic := '1';
		data		            : in std_logic_vector (7 downto 0);
		rdaddress		        : in std_logic_vector (5 downto 0);
		wraddress		        : in std_logic_vector (5 downto 0);
		wren		            : in std_logic := '0';
		q		                : out std_logic_vector (7 downto 0)
	);
    end component;

    component spi_display_modelsim
	port
	(
		resetn		            :	 in std_logic;
		sysclk		            :	 in std_logic;
		modelsim_trigger		:	 in std_logic;
		RAM_q_in		        :	 in std_logic_vector(7 downto 0);
		RAM_rd_adr		        :	 out std_logic_vector(5 downto 0);
		data_out		        :	 out std_logic_vector(7 downto 0)
	);
    end component;

    -- set signals
    signal  sig_start_state_machine     :   std_logic;
    signal  sig_start_read_cc1101       :   std_logic;
    signal  sig_wr_rd_toggle            :   std_logic;
    signal  sig_ROM_adr                 :   std_logic_vector(5 downto 0);
    signal  sig_ROM_q                   :   std_logic_vector(7 downto 0);

    signal  sig_write_cs                :   std_logic;
    signal  sig_write_mosi              :   std_logic;
    signal  sig_write_clk               :   std_logic;
    signal  sig_read_cs                 :   std_logic;
    signal  sig_read_mosi               :   std_logic;
    signal  sig_read_clk                :   std_logic;

    -- signal  sig_wren                    :   std_logic;
    -- signal  sig_wr_RAM_adr              :   std_logic_vector(5 downto 0);
    -- signal  sig_rd_RAM_adr              :   std_logic_vector(5 downto 0);
    -- signal  sig_data_RAM_out            :   std_logic_vector(7 downto 0);
    -- signal  sig_RAM_q                   :   std_logic_vector(7 downto 0);
    -- signal  sig_modelsim_trigger        :   std_logic;

    begin
        -- set port maps
        blinking : spi_control_led
        port map (
            resetn                  => resetn,
            sysclk                  => sysclk,
            d0_out                  => d0_out
        );

        ROM_memory : spi_ROM
        port map (
            address                 => sig_ROM_adr,
            clock                   => sysclk,
            q                       => sig_ROM_q
        );

        trigger : spi_trigger
        port map (
            resetn                  => resetn,
            sysclk                  => sysclk,
            start_state_machine     => sig_start_state_machine
        );

        writing : spi_cc1101_write
        port map (
            resetn                  => resetn,
            sysclk                  => sysclk,
            start_state_machine     => sig_start_state_machine,
            q_data_in               => sig_ROM_q,
            ROM_address             => sig_ROM_adr,
            start_read_cc1101       => sig_start_read_cc1101,
            wr_rd_toggle            => sig_wr_rd_toggle,
            cs                      => sig_write_cs,
            mosi                    => sig_write_mosi,
            spi_clock               => sig_write_clk
        );

        reading : spi_cc1101_read
        port map (
            resetn                  => resetn,
            sysclk                  => sysclk,
            start_state_machine     => sig_start_read_cc1101,
            cs                      => sig_read_cs,
            mosi                    => sig_read_mosi,
            spi_clock               => sig_read_clk
        );

        toggle : spi_wr_rd_toggle
        port map (
            resetn                  => resetn,
            sysclk                  => sysclk,
            wr_rd_toggle            => sig_wr_rd_toggle,
            write_cs                => sig_write_cs,
            write_mosi              => sig_write_mosi,
            write_clk               => sig_write_clk,
            read_cs                 => sig_read_cs,
            read_mosi               => sig_read_mosi,
            read_clk                => sig_read_clk,
            cs                      => cs,
            mosi                    => mosi,
            clk                     => spi_clock
        );

        -- detecting : spi_detect_miso
        -- port map (
        --     resetn                  => resetn,      
        --     sysclk                  => sysclk,
        --     miso                    => miso,
        --     read_cs                 => sig_read_cs,
        --     read_clk                => sig_read_clk,
        --     wren                    => sig_wren,
        --     modelsim_trigger        => sig_modelsim_trigger,
        --     wr_RAM_adr              => sig_wr_RAM_adr,
        --     data_RAM_out            => sig_data_RAM_out
        -- );

        -- memory : spi_miso_RAM
        -- port map (
        --     clock                   => sysclk,
        --     data                    => sig_data_RAM_out,
        --     rdaddress               => sig_rd_RAM_adr,
        --     wraddress               => sig_wr_RAM_adr,
        --     wren                    => sig_wren, 
        --     q                       => sig_RAM_q
        -- );

        -- simulation : spi_display_modelsim
        -- port map (
        --     resetn                  => resetn,
        --     sysclk                  => sysclk,
        --     modelsim_trigger        => sig_modelsim_trigger,
        --     RAM_q_in                => sig_RAM_q,
        --     RAM_rd_adr              => sig_rd_RAM_adr,
        --     data_out                => data_out
        -- );


        -- set processes 
    
    end ab;       