library ieee;
use ieee.std_logic_1164.all;

entity SpaceInvaders is
	port (
	 Mclk : in std_logic;
    reset : in std_logic;
    ack : in std_logic;
	 Coin : in std_logic;
	 M : in std_logic;
    Lines : in std_logic_vector(3 downTo 0);
    Columns : out std_logic_vector(2 downTo 0);
    Dval : out std_logic;
	 LCDDout : out std_logic_vector(8 downTo 0);
	 e : out std_logic;
	 accept : out std_logic;
	 SHEX0	: out std_logic_vector(7 downto 0);
	 SHEX1	: out std_logic_vector(7 downto 0);
	 SHEX2	: out std_logic_vector(7 downto 0);
	 SHEX3	: out std_logic_vector(7 downto 0);
	 SHEX4	: out std_logic_vector(7 downto 0);
	 SHEX5	: out std_logic_vector(7 downto 0)
    );
end SpaceInvaders;

architecture Structure of SpaceInvaders is
component Keyboard_Reader is 
	port 
	(
		Mclk: in std_logic;
		reset: in std_logic;
		 Kack: in std_logic;
		Lines: in std_logic_vector(3 downTo 0);
		Columns : out std_logic_vector (2 downTo 0);
		Dval: out std_logic;
		D : out std_logic_vector(3 downTo 0)	
	);
end component;

component SLCDCvhd is 
	port
	(
		-- Input ports
		LCDsel	: in std_logic;
		SClk  	: in std_logic;
		MClk		: in std_logic;
		SDX    	: in std_logic;
		Reset  	: in std_logic;
	
		-- Output ports
		Dout     	: out std_logic_vector(8 downto 0);
		WrL	 	: out std_logic
	);
end component;

component SerialScoreController is
	port
	(
		-- Input ports
		SCsel	: in std_logic;
		SClk  	: in std_logic;
		MClk		: in std_logic;
		SDX    	: in std_logic;
		Reset  	: in std_logic;
	
		-- Output ports
		Dout     	: out std_logic_vector(6 downto 0);
		set	 	: out std_logic
	);
end component;

component scoreDisplay is
	port(	
		set	: in std_logic;
		cmd	: in std_logic_vector(2 downto 0);
		data	: in std_logic_vector(3 downto 0);
		HEX0	: out std_logic_vector(7 downto 0);
		HEX1	: out std_logic_vector(7 downto 0);
		HEX2	: out std_logic_vector(7 downto 0);
		HEX3	: out std_logic_vector(7 downto 0);
		HEX4	: out std_logic_vector(7 downto 0);
		HEX5	: out std_logic_vector(7 downto 0)
		);
end component;

component UsbPort IS 
PORT
(
    inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
    outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END component;

signal Dval_signal : std_logic;
signal inputPort_signal : std_logic_vector(7 downTo 0);
signal d_signal : std_logic_vector(3 downTo 0);
signal ack_signal : std_logic;
signal outputLCD : std_logic_vector(8 downTo 0);
signal outputPort_signal : std_logic_vector(7 downTo 0);
signal set_signal : std_logic;
signal scoreData : std_logic_vector(6 downTo 0);


begin

    U0: Keyboard_Reader port map (
		Mclk => Mclk, 
		reset => reset, 
		Kack => ack_signal, 
		Lines => Lines, 
		Columns => Columns, 
		Dval => Dval_signal, 
		D => d_signal);
		
    U1: UsbPort port map(
		inputPort(3 downTo 0) => d_signal, 
		inputPort(4) => Dval_signal,
		inputPort(6) => coin,
		inputPort(7) => M,
		outputPort => outputPort_signal);
		
	 U2: SLCDCvhd port map(
		 LCDsel => outputPort_signal(0),
		 SClk => outputPort_signal(4),
		 MClk => Mclk,
		 SDX => outputPort_signal(3),
		 reset => reset,
		 Dout => outputLCD,
		 Wrl => e
	 );
	 
	 U3: SerialScoreController port map(
		 SCsel => outputPort_signal(1),
		 SClk => outputPort_signal(4),
		 MClk => MClk,
		 SDX => outputPort_signal(3),
		 Reset => Reset,
		 set => set_signal,
		 Dout => scoreData
	 );
	 
	 U4: scoreDisplay port map(
	 set => set_signal,
	 cmd => scoreData(2 downTo 0),
	 data => scoreData(6 downto 3),
	 HEX0 => SHEX0,
	 HEX1 => SHEX1,
	 HEX2 => SHEX2,
	 HEX3 => SHEX3,
	 HEX4 => SHEX4,
	 HEX5 => SHEX5
	 );
	 
	 LCDDout <= outputLCD;
    
    ack_signal <= outputPort_signal(7);
	 
	 accept <= outputPort_signal(6); 
	 
end Structure;