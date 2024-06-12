library ieee;
use ieee.std_logic_1164.all;

entity MemoryAddressControl is 
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
end MemoryAddressControl;

architecture structural of MemoryAddressControl is

component Counter is 
	port
	(
		-- Input ports
		Clk 	: in std_logic;
		Clr		: in std_logic;
		Ce  	: in std_logic;
		Limit	: in integer;

      -- Output ports
      O   	: out std_logic_vector(3 downto 0)
    	);
end component;

component CounterBuffer is 
	port
	(
		-- Input ports
		Clk 		: in std_logic;
		Ce  		: in std_logic;
		Clr		: in std_logic;
		UpDown	: in std_logic;

      -- Output ports
      O   		: out std_logic_vector(2 downto 0)
    );
end component;

component RingBufferMux IS
	port
   (
		-- Input ports
      I	: in std_logic_vector(2 downto 0);
		I2	: in std_logic_vector(2 downto 0);
      S	: in std_logic;

      -- Output ports
      O   : out std_logic_vector(2 downto 0)
	);
end component;


signal O_Buffer_X, O_Put_X, O_Get_X							: std_logic_vector(2 downto 0); 	
signal O_Put_Dummy_X, O_Get_Dummy_X, Ce_X, UpDown_X	: std_logic;				

begin

Full <= O_Buffer_X(2) and O_Buffer_X(1) and O_Buffer_X(0);
empty <= not O_Buffer_X(2) and not O_Buffer_X(1) and not O_Buffer_X(0);

Ce_X		<= IncPut or IncGet;
UpDown_X <= not IncGet;

U0: RingBufferMux port map (I => O_Get_X, I2 => O_Put_X, S => PutNGet, O => D);
												
U1: CounterBuffer port map (Clk => Clk, Ce => Ce_X, Clr => Reset, UpDown => UpDown_X, O => O_Buffer_X);

U3: Counter			port map (Clk => Clk, Ce => IncPut, Clr => Reset, Limit => 7, O(3) => O_Put_Dummy_X,
									 O(2) => O_Put_X(2), O(1) => O_Put_X(1), O(0) => O_Put_X(0));
												 
U4: Counter			port map (Clk => Clk, Ce => IncGet, Clr => Reset, Limit => 7, O(3) => O_Get_Dummy_X,
									 O(2) => O_Get_X(2), O(1) => O_Get_X(1), O(0) => O_Get_X(0));												 

end structural;