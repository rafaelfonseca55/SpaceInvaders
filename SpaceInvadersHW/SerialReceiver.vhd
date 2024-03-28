library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiver is 
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
end SerialReceiver;

architecture structural of SerialReceiver is

component SerialControl is 
	port
	(
		-- Input ports
		Clk 		: in std_logic;
		EnRx 		: in std_logic;
		Accept 	: in std_logic;
		Eq5	 	: in std_logic;
		Reset    : in std_logic;
	
		-- Output ports
		Clr		: out std_logic;
		Wr			: out std_logic;
		DXval		: out std_logic
	);
end component;

component ShiftRegister is 
	port
	(
		-- Input ports
      Data    : in  std_logic;
      Clk     : in  std_logic;
      Enable  : in  std_logic;
		Reset	  : in  std_logic;
		
		-- Output ports
      D       : out std_logic_vector(4 downto 0)
	);
end component;

component SerialReceiverCounter IS
port 
	(
		-- Input ports
		Clk 	: in std_logic;
		Ce  	: in std_logic;
		Clr	: in std_logic;

      -- Output ports
      O   	: out std_logic_vector(3 downto 0)
    	);
end component;


signal Clr_X, Wr_X, Eq5_X, Ce_X	: std_logic;
signal O_X 								: std_logic_vector(3 downto 0);

begin

Eq5_X <= not O_X(3) and O_X(2) and not O_X(1) and O_X(0);
Ce_X <= not nSS;

U0: SerialControl 			port map (Clk => Clk, EnRx => nSS, Eq5 => Eq5_X, Accept => Accept, Reset => Reset, 
												 Wr => Wr_X, Clr => Clr_X, DXval => DXval);
													
U1: ShiftRegister      		port map (Clk => SClk, Reset => Reset, Data => SDX, Enable => Wr_X, 
												 D => D);

U2: SerialReceiverCounter	port map (Clk => SClk , Clr => Clr_X, Ce => '1', 
												 O => O_X);

end structural;