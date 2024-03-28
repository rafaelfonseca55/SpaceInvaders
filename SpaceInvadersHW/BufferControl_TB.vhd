library ieee;
use ieee.std_logic_1164.all;

entity BufferControl_TB is 
end BufferControl_TB;

architecture behavioral of BufferControl_TB is

component BufferControl is
	port
	(
		-- Input ports
		Clk		: in std_logic;
		Load		: in std_logic;
		Ack   	: in std_logic;
		Reset		: in std_logic;
		
	
		-- Output ports
		Wreg		: out std_logic;
		OBfree	: out std_logic;
		Dval		: out std_logic
	);
end component;

--UUT signals
constant MClk_PERIOD 		: time := 20 ns;
constant MClk_HALF_PERIOD	: time := MClk_PERIOD /2 ;

signal Clk_TB, Load_TB, Ack_TB, Reset_TB, Dval_TB, OBfree_TB,Wreg_TB: std_logic;


begin


-- UNIT UNDER TEST
UUT: BufferControl port map (Load => Load_TB, Clk => Clk_TB, Reset => Reset_TB , Ack => Ack_TB, Wreg => Wreg_TB, Dval => Dval_TB,
OBfree => OBfree_TB);

											 
clk_gen : process 

begin

clk_tb <= '0';

wait for MClk_HALF_PERIOD;

clk_tb <= '1';

wait for MClk_HALF_PERIOD;

end process;

stimulus : process
begin

-- Reset

Reset_TB <= '1';

wait for MClk_PERIOD;

Reset_TB <= '0';

wait for MClk_PERIOD;

Load_TB <= '0';

wait for MClk_PERIOD;

Load_TB <= '1';

wait for MClk_PERIOD;

Load_TB <= '0';
Ack_TB  <= '0';

wait for MClk_PERIOD;

Ack_TB <= '1';

wait for MClk_PERIOD;

Ack_TB <= '0';

wait for MClk_PERIOD;

wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;

end process;

end behavioral;