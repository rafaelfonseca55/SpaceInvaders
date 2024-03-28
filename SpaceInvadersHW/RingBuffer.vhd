library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer is 
	port
	(
		-- Input ports
		Clk		: in std_logic;
		Reset		: in std_logic;
		D			: in std_logic_vector(3 downto 0);
		DAV		: in std_logic;
		CTS		: in std_logic;
	
		-- Output ports
		Q     	: out std_logic_vector(3 downto 0);
		Wreg 		: out std_logic;
		DAC		: out std_logic
	);
end RingBuffer;

architecture structural of RingBuffer is

component RingBufferControl is 
	port
	(
		-- Input ports
		Clk 		: in std_logic;
		Reset    : in std_logic;
		DAV 		: in std_logic;
		CTS	 	: in std_logic;
		Full		: in std_logic;
		Empty		: in std_logic; 
	
		-- Output ports
		Wr			: out std_logic;
		Wreg		: out std_logic;
		selPnG 	: out std_logic;
		incPut 	: out std_logic;
		incGet 	: out std_logic;
		DAC		: out std_logic
	);
end component;

component MemoryAddressControl is 
	port 
	(
		-- Input ports
		Clk		: in std_logic;
		PutNGet  : in std_logic;
		IncPut   : in std_logic;
		IncGet   : in std_logic;
		Reset		: in std_logic;
	
		-- Output ports
		D     	: out std_logic_vector(2 downto 0);
		Full 		: out std_logic;
		Empty		: out std_logic
	);
end component;

component RAM is 
	generic
	(
		ADDRESS_WIDTH 	: natural := 3;
		DATA_WIDTH 		: natural := 4
	);
	port 
	(
		-- Input ports
		address	: in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
		wr			: in std_logic;
		din		: in std_logic_vector(DATA_WIDTH - 1 downto 0);
		
		-- Output ports
		dout		: out std_logic_vector(DATA_WIDTH - 1 downto 0)
	);
end component;


signal Full_X, Empty_X, Wr_X, selPnG_X, incPut_X, incGet_X	: std_logic;
signal Address_X 															: std_logic_vector(2 downto 0);

begin


U0: RingBufferControl		port map (Clk => Clk, Reset => Reset, DAV => DAV, CTS => CTS, Full => Full_X, Empty => Empty_X, 
												 Wr => Wr_X, Wreg => Wreg, selPnG => selPnG_X, incPut => incPut_X, incGet => incGet_X, DAC => DAC);
													
U1: MemoryAddressControl   port map (Clk => Clk, Reset => Reset, PutnGet => selPnG_X, IncPut => incPut_X, IncGet => incGet_X,
												 D => Address_X, Full => Full_X, Empty => Empty_X);
										 
U2: RAM							port map (address => Address_X, wr => Wr_X, din => D, 
												 dout => Q);
													
end structural;