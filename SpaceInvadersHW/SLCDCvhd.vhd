library ieee;
use ieee.std_logic_1164.all;

entity SLCDCvhd is 
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
end SLCDCvhd;

architecture structural of SLCDCvhd is

component SerialReceiver is 
	port (
			SS      : in std_logic;
			SDX     : in std_logic;
			SCLK    : in std_logic;
			accept  : in std_logic;
			reset   : in std_logic;
			MCLK       : in std_logic;
			DXval   : out std_logic;
			D       : out std_logic_vector(8 downto 0)
			);
end component;

component Dispatcher is 
	port
    (
        -- Input ports
        Clk         : in std_logic;
        Reset       : in std_logic;
        DXval       : in std_logic;
        Din         : in std_logic_vector(8 downto 0);
    
        -- Output ports
        WrL         : out std_logic;
        Dout        : out std_logic_vector(8 downto 0);
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

signal Done_X, Dxval_X	: std_logic;
signal Din_X 									: std_logic_vector(8 downto 0);

begin

U0: SerialReceiver 			port map (MClk => MClk, SDX => SDX, SClk => SClk, SS => LCDsel, Accept => Done_X, Reset => Reset, 
												 D => Din_X, DXval => Dxval_X);
													
U1: Dispatcher      		port map (Clk => MClk, Reset => Reset, Dxval => Dxval_X, Din => Din_X, 
												 WrL => WrL, Dout => Dout, Done => Done_X);
												 
--U2: ClkDiv  	generic map(15) port map (Clk_in => MClk, Clk_out => Clk_X);												 

end structural;