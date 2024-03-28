library ieee;
use ieee.std_logic_1164.all;

entity SerialControl_TB is 
end SerialControl_TB;

architecture behavioral of SerialControl_TB is

component SerialControl is 
port
	(
		-- Input ports
		Clk 		: in std_logic;
		enRx 		: in std_logic;
		Accept 	: in std_logic;
		Eq5	 	: in std_logic;
		Reset    : in std_logic;
	
		-- Output ports
		Clr		: out std_logic;
		Wr			: out std_logic;
		DXval		: out std_logic
	);
end component;

--UUT signals
constant MClk_PERIOD 		: time := 20 ns;
constant MClk_HALF_PERIOD	: time := MClk_PERIOD /2 ;

signal Clk_TB, enRx_TB, Accept_TB, Reset_TB, Eq5_TB, Clr_TB, Wr_TB, DXval_TB: std_logic;

begin

-- UNIT UNDER TEST
UUT: SerialControl port map (Clk => Clk_TB, enRX => enRX_TB, Accept => Accept_TB, Eq5 => Eq5_TB, Reset => Reset_TB ,
									  Clr => Clr_TB, Wr => Wr_TB, DXval => DXval_TB);

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

wait for MClk_PERIOD;

Reset_TB <= '0';

wait for MClk_PERIOD;

enRX_TB <= '0';

wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;

enRX_TB <= '1';
Eq5_TB  <= '1';

wait for MClk_PERIOD;

Accept_TB <= '1';

wait for MClk_PERIOD;

Accept_TB <= '0';

wait for MClk_PERIOD;

wait;

end process;

end behavioral;