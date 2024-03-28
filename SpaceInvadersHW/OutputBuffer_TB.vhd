library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer_TB is 
end OutputBuffer_TB;

architecture behavioral of OutputBuffer_TB is

component OutputBuffer is
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
end component;

--UUT signals
constant MClk_PERIOD 		: time := 20 ns;
constant MClk_HALF_PERIOD	: time := MClk_PERIOD /2 ;

signal Clk_TB, Load_TB, Ack_TB, Reset_TB, Dval_TB, OBfree_TB: std_logic;
signal D_X,Q_X : std_logic_vector(3 downto 0);


begin


-- UNIT UNDER TEST
UUT: OutputBuffer port map (Load => Load_TB, Clk => Clk_TB, Reset => Reset_TB , Ack => Ack_TB, Dval => Dval_TB,
OBfree => OBfree_TB, Q => Q_X, D => D_X);

											 
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
D_X(3) <= '0';
D_X(2) <= '0';
D_X(1) <= '1';
D_X(0) <= '0';



wait for MClk_PERIOD;

Load_TB <= '1';

wait for MClk_PERIOD;

Load_TB <= '0';
Ack_TB  <= '0';

wait for MClk_PERIOD;

Ack_TB <= '1';
D_X(3) <= '1';
D_X(2) <= '1';
D_X(1) <= '1';
D_X(0) <= '1';

wait for MClk_PERIOD;

Ack_TB <= '0';

wait for MClk_PERIOD;

wait for MClk_PERIOD;
wait for MClk_PERIOD;
wait for MClk_PERIOD;

end process;

end behavioral;