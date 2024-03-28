library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer_TB is 
end RingBuffer_TB;

architecture behavioral of RingBuffer_TB is

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

--UUT signals
constant MClk_PERIOD 		: time := 20 ns;
constant MClk_HALF_PERIOD	: time := MClk_PERIOD /2 ;

signal Clk_TB, Reset_TB, DAV_TB, CTS_TB, Wreg_TB, DAC_TB: std_logic;
signal D_TB, Q_TB: std_logic_vector(3 downto 0);

begin

-- UNIT UNDER TEST
UUT: RingBuffer port map (Clk => Clk_TB, Reset => Reset_TB, D => D_TB, 
			  DAV => DAV_TB, CTS => CTS_TB, Q => Q_TB, Wreg => Wreg_TB, DAC => DAC_TB);

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
DAV_TB <= '0';
CTS_TB <= '1';
D_TB <= "0000";

wait for MClk_PERIOD;

Reset_TB <= '0';
D_TB <= "0100";
DAV_TB <= '1';

wait for MClk_PERIOD;

--Testing the case when we want to write a key 

wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;

DAV_TB <= '0';

wait for MClk_PERIOD;

--Testing the case when we want to read a key 

wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;

CTS_TB <= '0';

wait for MClk_PERIOD;
wait for MClk_PERIOD;

wait;

end process;

end behavioral;
