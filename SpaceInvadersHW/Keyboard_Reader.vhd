library ieee;
use ieee.std_logic_1164.all;

entity Keyboard_Reader is 
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
end Keyboard_Reader;

architecture Structure of Keyboard_Reader is
    component Key_Decode is 
    port
    (
        Mclk : in std_logic;
        reset: in std_logic;
        Kack : in std_logic;
        Kval: out std_logic;
        Lines: in std_logic_vector(3 downTo 0);
        Columns : out std_logic_vector (2 downTo 0);
        K: out std_logic_vector(3 downTo 0)
    );
end component;

	component RingBuffer is
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
end component;

	component OutputBuffer is
	port
	(
		-- Input ports
		Clk		: in std_logic;
		Load		: in std_logic;
		Ack   	: in std_logic;
		Reset		: in std_logic;
		D			: in std_logic_vector(3 downto 0);
	
		-- Output ports
		Q     	: out std_logic_vector(3 downto 0);
		Dval 		: out std_logic;
		OBfree	: out std_logic
	);
end component;

signal valid, Reg, keyAck, free : std_logic;
signal keyData, bufferData : std_logic_vector(3 downTo 0);

begin

    U0 : Key_Decode port map(Mclk => Mclk, 
									  reset =>reset, 
									  Kack => keyAck, 
									  Lines=>Lines, 
									  Columns=>Columns, 
									  Kval=>valid, 
									  K=>keyData);
									  
	 U1: RingBuffer port map(Clk => MClk,
									 reset => reset,
									 D => keyData,
									 DAV => valid,
									 CTS => free,
									 Q => bufferData,
									 Wreg => Reg,
									 DAC => keyAck);
									 
	 U2: OutputBuffer port map(Clk => MClk,
										Reset => Reset,
										Load => Reg,
										Ack => Kack,
										D => bufferData,
										Q => D,
										Dval => Dval,
										OBfree => free);
	 

end Structure;