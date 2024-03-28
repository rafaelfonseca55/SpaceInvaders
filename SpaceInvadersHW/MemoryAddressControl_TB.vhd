library ieee;
use ieee.std_logic_1164.all;

entity MemoryAddressControl_TB is 
end MemoryAddressControl_TB;

architecture behavioral of MemoryAddressControl_TB is

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

--UUT signals
constant MClk_PERIOD 		: time := 20 ns;
constant MClk_HALF_PERIOD	: time := MClk_PERIOD /2 ;

signal Clk_TB, Reset_TB, PutNGet_TB, IncPut_TB, IncGet_TB, Full_TB, Empty_TB: std_logic;
signal D_TB: std_logic_vector (2 downto 0);

begin

-- UNIT UNDER TEST
UUT: MemoryAddressControl port map (Clk => Clk_TB, Reset => Reset_TB, PutNGet => PutNGet_TB, 
			  IncPut => IncPut_TB, IncGet => IncGet_TB, D => D_TB, Full => Full_TB, Empty => Empty_TB);

Clk_gen : process 

begin

Clk_tb <= '0';

wait for MClk_HALF_PERIOD;

Clk_tb <= '1';

wait for MClk_HALF_PERIOD;

end process;

stimulus : process
begin

-- Reset
Reset_TB <= '1';
PutNGet_TB <= '0';
IncPut_TB <= '0';
IncGet_TB <= '0';

wait for MClk_PERIOD;

Reset_TB <= '0';

wait for MClk_PERIOD;
--Test 1: PUT - send "Write" to RAM - stop before "full" = 1
IncPut_TB <= '1';
PutNGet_TB <= '1';

wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;

--Test 2: GET - send "Read" to RAM - until "full" = 1

IncGet_TB <= '1';
PutNGet_TB <= '0';

wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;


wait for MClk_PERIOD;

wait;

end process;

end behavioral;
