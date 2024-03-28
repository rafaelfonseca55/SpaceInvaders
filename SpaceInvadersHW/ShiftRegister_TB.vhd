LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity ShiftRegister_TB is 
end ShiftRegister_TB;

architecture behavioral of ShiftRegister_TB is

component ShiftRegister is 
	port 
	(
		-- Input ports
      Data    : in  std_logic;
      Clk     : in  std_logic;
      Enable  : in  std_logic;
		Reset	  : in  std_logic;
		
		-- Output ports
      D       : out std_logic_vector(4 downto 0)
	);
end component;

--UUT signals
constant MClk_PERIOD : time := 20 ns;
constant MClk_HALF_PERIOD : time := MClk_PERIOD /2 ;

signal Clk_TB, Reset_TB, Enable_TB, Data_TB: std_logic;
signal D_TB: std_logic_vector (4 downto 0);

begin

-- UNIT UNDER TEST
UUT: ShiftRegister port map (Clk => Clk_TB, Reset => Reset_TB, Enable => Enable_TB, Data => Data_TB, 
									  D => D_TB);

Clk_gen : process 

begin

Clk_TB <= '0';

wait for MClk_HALF_PERIOD;

Clk_TB <= '1';

wait for MClk_HALF_PERIOD;

end process;

stimulus : process

begin

-- Reset
Reset_TB <= '1';
Enable_TB <= '0';

wait for MClk_PERIOD;

Reset_TB <= '0';

wait for MClk_PERIOD;

Enable_TB <= '1';
Data_TB <= '0';

wait for MClk_PERIOD;

wait for MClk_PERIOD;

Data_TB <= '0';

wait for MClk_PERIOD;

Data_TB <= '0';

wait for MClk_PERIOD;

Data_TB <= '1';

wait for MClk_PERIOD;

Data_TB <= '1';

wait for MClk_PERIOD;

Enable_TB <= '0';


wait;

end process;

end behavioral;