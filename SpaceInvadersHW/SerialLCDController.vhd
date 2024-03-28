library ieee;
use ieee.std_logic_1164.all;

entity SerialLCDController is 
	port
	(
		-- Input ports
		nLCDsel	: in std_logic;
		SClk  	: in std_logic;
		Clk		: in std_logic;
		SDX    	: in std_logic;
		Reset  	: in std_logic;
	
		-- Output ports
		D     	: out std_logic_vector(4 downto 0);
		WrL	 	: out std_logic
	);
end SerialLCDController;

architecture structural of SerialLCDController is

component SerialReceiver is 
	port
	(
		-- Input ports
		Clk		: in std_logic;
		SDX   	: in std_logic;
		SClk  	: in std_logic;
		nSS    	: in std_logic;
		Accept   : in std_logic;
		Reset    : in std_logic;
	
		-- Output ports
		D     	: out std_logic_vector(4 downto 0);
		DXval 	: out std_logic
	);
end component;

component LCDDispatcher is 
	port
	(
		-- Input ports
		Clk 		: in std_logic;
		Reset    : in std_logic;
		DXval 	: in std_logic;
		Din	 	: in std_logic_vector(4 downto 0);
	
		-- Output ports
		WrL		: out std_logic;
		Dout		: out std_logic_vector(4 downto 0);
		Done		: out std_logic
	);
end component;

component ClkDiv is 
	generic (div: natural := 50000000);

	port 
	( 
		Clk_in	: in std_logic;
	
		Clk_out	: out std_logic
	);
end component;

signal Done_X, Dxval_X, Clk_X	: std_logic;
signal Din_X 						: std_logic_vector(4 downto 0);

begin

U0: SerialReceiver 			port map (Clk => Clk, SDX => SDX, SClk => SClk, nSS => nLCDsel, Accept => Done_X, Reset => Reset, 
												 D => Din_X, DXval => Dxval_X);
													
U1: LCDDispatcher      		port map (Clk => Clk_X, Reset => Reset, Dxval => Dxval_X, Din => Din_X, 
												 WrL => WrL, Dout => D, Done => Done_X);
												 
U2: ClkDiv  	generic map(50) port map (Clk_in => Clk, Clk_out => Clk_X);												 

end structural;