library ieee;
use ieee.std_logic_1164.all;

entity SerialScoreController is 
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
end SerialScoreController;

architecture structural of SerialScoreController is

component SerialReceiverScore is 
	port (
		SS      : in std_logic;
		SDX     : in std_logic;
		SCLK    : in std_logic;
		accept  : in std_logic;
		reset   : in std_logic;
		MCLK       : in std_logic;
		DXval   : out std_logic;
		D       : out std_logic_vector(6 downto 0)
		);
end component;

component ScoreDispatcher is 
	port
    (
        -- Input ports
        Clk         : in std_logic;
        Reset       : in std_logic;
        DXval       : in std_logic;
        Din         : in std_logic_vector(6 downto 0);
    
        -- Output ports
        WrD         : out std_logic;
        Dout        : out std_logic_vector(6 downto 0);
        Done        : out std_logic
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

signal Done_X, Dxval_X, Busy_X	: std_logic;
signal Din_X 									: std_logic_vector(6 downto 0);

begin

U0: SerialReceiverScore 			port map (MClk => Mclk, SDX => SDX, SClk => SClk, SS => SCsel, Accept => Done_X, Reset => Reset, 
												 D => Din_X, DXval => Dxval_X);
													
U1: ScoreDispatcher      		port map (Clk => Mclk, Reset => Reset, Dxval => Dxval_X, Din => Din_X, 
												 WrD => set, Dout => Dout, Done => Done_X);
												 										 

end structural;