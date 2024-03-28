library ieee;
use ieee.std_logic_1164.all;

entity RingBufferControl_TB is 
end RingBufferControl_TB;

architecture behavioral of RingBufferControl_TB is

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

--UUT signals
constant MClk_PERIOD 		: time := 20 ns;
constant MClk_HALF_PERIOD	: time := MClk_PERIOD /2 ;

signal Clk_TB, Reset_TB, DAV_TB, CTS_TB, Full_TB, Empty_TB, Wr_TB, Wreg_TB,
selPnG_TB, incPut_TB, incGet_TB, DAC_TB: std_logic;

begin

-- UNIT UNDER TEST
UUT: RingBufferControl port map (Clk => Clk_TB, Reset => Reset_TB, 
			  DAV => DAV_TB, CTS => CTS_TB, Full => Full_TB, Empty => Empty_TB,
			  Wr => Wr_TB, Wreg => Wreg_TB, selPnG => selPnG_TB, incPut => incPut_TB,
			  incGet => incGet_TB, DAC => DAC_TB);

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
CTS_TB <= '0';
Full_TB <= '0';
Empty_TB <= '1';

wait for MClk_PERIOD;

Reset_TB <= '0';

wait for MClk_PERIOD;
--Testing the case when we want to write a key 
--Test 1: Write a key successfully -> full = 0
DAV_TB <= '1';

wait for MClk_PERIOD;

Full_TB <= '0';

wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;

DAV_TB <= '1';

wait for MClk_PERIOD;

DAV_TB <= '0';

wait for MClk_PERIOD;

--Test 2: Write a key unsuccessfully, proceed to read key -> full = 1 and DAV = 1
--Test 2.1. Read a key successfully -> empty = 0
DAV_TB <= '1';
Full_TB <= '1';
Empty_TB <= '0';

wait for MClk_PERIOD;

CTS_TB <= '1';

wait for MClk_PERIOD;

--CTS = 1, returns to state READ_KEY

wait for MClk_PERIOD;
wait for MClk_PERIOD;

CTS_TB <= '0';

wait for MClk_PERIOD;
wait for Mclk_PERIOD;

--Test 2.2. Read a key unsuccessfully -> empty = 1
Empty_TB <= '1';

wait for MClk_PERIOD;
wait for MClk_PERIOD;

--Test 3: Read a key unsuccessfully, Ring Buffer not clear to send -> empty = 0 and DAV = 0
DAV_TB <= '0';
Full_TB <= '0';
Empty_TB <= '0';

wait for MClk_PERIOD;

wait;

end process;

end behavioral;
