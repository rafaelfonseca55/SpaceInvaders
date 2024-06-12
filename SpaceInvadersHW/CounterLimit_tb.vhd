library ieee;
use ieee.std_logic_1164.all;

entity CounterLimit_TB is 
end CounterLimit_TB;

architecture behavioral of CounterLimit_TB is

component CounterLimit is 
	port
	(
		-- Input ports
		Clk : in std_logic;
		Ce	 : in std_logic;
		
		-- Output ports
		O : out std_logic_vector(3 downto 0)
	);
end component;

--UUT signals
constant MCLK_PERIOD 		: time := 20 ns;
constant MCLK_HALF_PERIOD	: time := MCLK_PERIOD /2 ;

signal Clk_tb, Ce_TB	: std_logic;
signal O_TB				: std_logic_vector (3 downto 0);

begin

-- UNIT UNDER TEST
UUT: CounterLimit port map (Clk => Clk_TB, Ce => Ce_TB,
							  O => O_TB);

clk_gen : process 

begin

Clk_TB <= '0';

wait for MCLK_HALF_PERIOD;

Clk_TB <= '1';

wait for MCLK_HALF_PERIOD; 

end process;

stimulus : process

begin

-- reset
Ce_TB <= '0';

wait for MCLK_PERIOD;

Ce_TB <= '1';

wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;
wait for MCLK_PERIOD;

Ce_TB <= '0';

wait;

end process;

end behavioral;