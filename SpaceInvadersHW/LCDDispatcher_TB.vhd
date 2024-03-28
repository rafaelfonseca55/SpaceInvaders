library ieee;
use ieee.std_logic_1164.all;

entity LCDDispatcher_TB is 
end LCDDispatcher_TB;

architecture behavioral of LCDDispatcher_TB is

component LCDDispatcher is 
	port
	(
		-- Input ports
		Clk 		: in std_logic;
		Reset    : in std_logic;
		DXval 	: in std_logic;
		Din	 	: in std_logic_vector(4 downto 0);
	
		-- Output ports
		WrL		: out std_logic;
		Dout		: out std_logic_vector(4 downto 0);
		Done		: out std_logic
	);
end component;

--UUT signals
constant MClk_PERIOD 		: time := 20 ns;
constant MClk_HALF_PERIOD	: time := MClk_PERIOD /2 ;

signal Clk_TB, Reset_TB, DXval_TB, WrL_TB, Dout_TB, Done_TB: std_logic;
signal Din_TB : std_logic_vector(4 downto 0);

begin

-- UNIT UNDER TEST
UUT: LCDDispatcher port map (Clk => Clk_TB, Reset => Reset_TB , DXval => DXval_TB, Din => Din_TB, 
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

wait for MClk_PERIOD;

DXval_TB <= '0';

wait for MClk_PERIOD;

DXval_TB <= '1';

wait for MClk_PERIOD;
wait for MClk_PERIOD;

DXval_TB <= '0';

wait for MClk_PERIOD;

wait;

end process;

end behavioral;