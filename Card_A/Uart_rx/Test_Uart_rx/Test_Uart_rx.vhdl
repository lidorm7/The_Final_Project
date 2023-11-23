library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Test_Uart_rx is
    port(
        resetn                 : in std_logic;
        sysclk                 : in std_logic;
        start_tx               : in std_logic;
		toggle                 : in std_logic := '1';
        wr_ram                 : out std_logic;
        ram_address            : out std_logic_vector(5 downto 0);
        detected_byte          : out std_logic_vector(7 downto 0);
        q_ram                  : out std_logic_vector(7 downto 0)	      
       
    );
end Test_Uart_rx;

architecture ab of Test_Uart_rx is

-- set components

component Uart_tx_Rom
	port
	(
		resetn		          :	 in std_logic;
		sysclk		          :	 in std_logic;
		start_triger		  :	 in std_logic;
		uart_tx_triger		  :	 out std_logic
	);
end component;

component Uart_rx
	port
	(
		resetn		    :	 in std_logic;
		sysclk		    :	 in std_logic;
		toggle		    :	 in std_logic;
		detected_bit    :	 in std_logic;
        wr_ram          :    out std_logic;
		ram_address		:	 out std_logic_vector(5 DOWNTO 0);
		detected_byte	:	 out std_logic_vector(7 DOWNTO 0)
	);
end component;

component Ram2_X
	port
	(
		clock		: in std_logic  := '1';
		data		: in std_logic_vector (7 DOWNTO 0);
		rdaddress   : in std_logic_vector (5 DOWNTO 0);
        rden		: in std_logic  := '1';
		wraddress	: in std_logic_vector (5 DOWNTO 0);
		wren		: in std_logic  := '0';
		q		    : out std_logic_vector (7 DOWNTO 0)
	);
end component;

-- set signals

signal sig_wr_ram        : std_logic;
signal sig_ram_address   : std_logic_vector(5 downto 0);
signal sig_cnt_address   : std_logic_vector(4 downto 0) := "00000";
signal sig_detected_byte : std_logic_vector(7 downto 0) := (others => '0');
signal sig_rden          : std_logic;
signal sig_detected_bit : std_logic;

    begin

        -- set port maps

        tx : Uart_tx_Rom
        port map (
            resetn                => resetn,
            sysclk                => sysclk,
            start_triger          => start_tx,
            uart_tx_triger        => sig_detected_bit   
        );  

        rx : Uart_rx
        port map (
            resetn                => resetn,
            sysclk                => sysclk,
            toggle                => toggle,
            detected_bit          => sig_detected_bit,
            ram_address           => sig_ram_address,
            detected_byte         => sig_detected_byte,
            wr_ram                => sig_wr_ram 
            
        );

        memory : Ram2_X
        port map (
        clock       =>  sysclk,
        data	    =>  sig_detected_byte,
        rdaddress	=>  sig_ram_address,
        rden        =>  '1',
        wraddress   =>  sig_ram_address,
        wren        =>  sig_wr_ram,
        q           =>  q_ram 
    );

    wr_ram <= sig_wr_ram;
    detected_byte <= sig_detected_byte;
    ram_address <= sig_ram_address;

end ab;         