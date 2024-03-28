library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer is 
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
end OutputBuffer;

architecture structural of OutputBuffer is

component BufferControl is 
	port
	(
		-- Input ports
		Clk		: in std_logic;
		Load 		: in std_logic;
		Ack 		: in std_logic;
		Reset		: in std_logic;
		
	
		-- Output ports
		Wreg		: out std_logic;
		OBfree	: out std_logic;
		Dval		: out std_logic
		);
end component;

component OutputRegister is 
	port 
	(
		-- Input ports
      Clk     : in  std_logic;
      Enable  : in  std_logic;
		Reset	  : in  std_logic;
		Data    : in  std_logic_vector(3 downto 0);
		
		-- Output ports
      D       : out std_logic_vector(3 downto 0)
	);
end component;


signal Wreg_X		: std_logic;
signal O_X 			: std_logic_vector(3 downto 0);

begin



U0: BufferControl		port map (Load => Load, Ack => Ack, OBfree => OBfree, Dval => Dval, Wreg => Wreg_X, Clk => Clk, Reset => Reset);
													
U1: OutputRegister   port map (Clk => Wreg_X, Reset => Reset, Data => D, Enable => '1', 
										 D => Q);

end structural;