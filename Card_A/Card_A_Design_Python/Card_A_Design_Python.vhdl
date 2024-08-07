library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- this block design to connect all the blocks component for card A

entity Card_A_Design_Python is
    port(
        resetn                : in std_logic;
        sysclk                : in std_logic;
        detected_bit	      :	in std_logic;
    --    main_rising_edge      :	out std_logic;
    --    q_data_bit            :	out std_logic;
    --    start_strobe_tx       :	out std_logic;
    --    rd_rising_edge        : out std_logic;
        uart_tx_triger		  :	out std_logic;
        BiPhase_tx_out		  :	out std_logic
    );
end Card_A_Design_Python;

architecture ab of Card_A_Design_Python is

-- set components

component BiPhase_tx
	port
	(
		resetn		        :	 in std_logic;
		sysclk		        :	 in std_logic;
		q_data_ram		    :	 in std_logic_vector(7 DOWNTO 0);
		BiPhase_tx_out		:	 out std_logic;
		start_strobe_tx		:	 out std_logic;
		read_address		:	 out std_logic_vector(5 DOWNTO 0);
		rd		            :	 out std_logic;
		toggle		        :	 out std_logic
    --   q_data_bit          :	 out std_logic;
	--	main_rising_edge    :	 out std_logic
	);
end component;

component Uart_tx_Constant
	port
	(
		resetn		         :	 in std_logic;
		sysclk		         :	 in std_logic;
		start_triger		 :	 in std_logic;
		uart_tx_triger		 :	 out std_logic
	);
end component;

component Uart_rx
	port
	(
		resetn		       :	 in std_logic;
		sysclk		       :	 in std_logic;
		toggle		       :	 in std_logic;
		detected_bit	   :	 in std_logic;
        wr_ram		       :	 out std_logic; 
		ram_address		   :	 out std_logic_vector(5 DOWNTO 0);
		detected_byte	   :	 out std_logic_vector(7 DOWNTO 0)
	);
end component;

component Ram2_X
	port
	(
		clock		    : in std_logic  := '1';
		data		    : in std_logic_vector (7 DOWNTO 0);
		rdaddress		: in std_logic_vector (5 DOWNTO 0);
		rden		    : in std_logic  := '1';
		wraddress		: in std_logic_vector (5 DOWNTO 0);
		wren		    : in std_logic  := '0';
		q		        : out std_logic_vector (7 DOWNTO 0)
	);
end component;

-- set signals

signal sig_start_strobe_tx  :  std_logic;
signal sig_rd               :  std_logic;
signal sig_wr               :  std_logic;
signal sig_toggle           :  std_logic;
-- signal sig_detected_bit     :  std_logic;
signal sig_q_data_ram       :  std_logic_vector(7 downto 0);
signal sig_read_address     :  std_logic_vector(5 downto 0);
signal sig_wr_address       :  std_logic_vector(5 downto 0);
signal sig_detected_byte    :  std_logic_vector(7 downto 0);

    begin

        -- set port maps

        biphase : BiPhase_tx
        port map (

            resetn            => resetn,
            sysclk            => sysclk,
            q_data_ram        => sig_q_data_ram,
            BiPhase_tx_out    => BiPhase_tx_out,
            start_strobe_tx   => sig_start_strobe_tx,
            read_address      => sig_read_address,
            rd                => sig_rd,
            toggle            => sig_toggle
        --    q_data_bit        => q_data_bit,
        --    main_rising_edge  => main_rising_edge
        
        );

        tx : Uart_tx_Constant
        port map (

            resetn                 => resetn,
            sysclk                 => sysclk,
            start_triger           => sig_start_strobe_tx,
            uart_tx_triger         => uart_tx_triger      
        );

        rx : Uart_rx
        port map (

            resetn            => resetn,
            sysclk            => sysclk,
            toggle            => sig_toggle,
            detected_bit      => detected_bit,
            ram_address       => sig_wr_address,
            wr_ram		      => sig_wr,
            detected_byte     => sig_detected_byte
                        
        );

        memory : Ram2_X
        port map (

            clock            => sysclk,
            data             => sig_detected_byte,
            rdaddress        => sig_read_address,
            rden             => sig_rd,
            wraddress        => sig_wr_address,
            wren             => sig_wr,
            q                => sig_q_data_ram
                        
        );

        -- start_strobe_tx <= sig_start_strobe_tx;
        -- rd_rising_edge <= sig_rd;

end ab;        