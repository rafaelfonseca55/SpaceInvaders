library ieee;
use ieee.std_logic_1164.all;

entity SerialLCDController_TB is 
end SerialLCDController_TB;

architecture behavioral of SerialLCDController_TB is

component SerialLCDController is
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
end component;

--UUT signals
constant MClk_PERIOD 		: time := 20 ns;
constant MClk_HALF_PERIOD	: time := MClk_PERIOD /2 ;

signal nLCDsel_TB, SClk_TB, Clk_TB, SDX_TB, Reset_TB, WrL_TB	: std_logic;
signal D_X : std_logic_vector(4 downto 0);

begin


-- UNIT UNDER TEST
UUT: SerialLCDController port map (nLCDsel => nLCDsel_TB, Clk => Clk_TB, SClk => SClk_TB, Reset => Reset_TB , SDX => SDX_TB, D => D_X, 
WrL => WrL_TB);

											 
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
SClk_TB <= '0';

wait for MClk_PERIOD;

nLCDsel_TB <= '0';
SDX_TB <= '1';

wait for MClk_PERIOD;

SClk_TB <= '1';

wait for MClk_PERIOD;

SClk_TB <= '0';

wait for MClk_PERIOD;

SClk_TB <= '1';

wait for MClk_PERIOD;

SClk_TB <= '0';

wait for MClk_PERIOD;

SClk_TB <= '1';

wait for MClk_PERIOD;

SClk_TB <= '0';

wait for MClk_PERIOD;

SClk_TB <= '1';

wait for MClk_PERIOD;

SClk_TB <= '0';

wait for MClk_PERIOD;

SClk_TB <= '1';

wait for MClk_PERIOD;

nLCDsel_TB <= '1';
SClk_TB <= '0';

wait for MClk_PERIOD;

wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;

end process;

end behavioral;