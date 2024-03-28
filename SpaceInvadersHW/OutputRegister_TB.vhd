LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity OutputRegister_TB is 
end OutputRegister_TB;

architecture behavioral of OutputRegister_TB is

component OutputRegister is
	  port 
	(
		-- Input ports
      Clk     : in  std_logic;
      Enable  : in  std_logic;
		Reset	  : in  std_logic;
		Data    : in  std_logic_vector(3 downto 0);
		
		-- Output ports
      D       : out std_logic_vector(3 downto 0)
	);
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD /2 ;

signal Clk_TB, Reset_TB, Enable_TB: std_logic;
signal D_TB, Data_TB: std_logic_vector (3 downto 0);

begin

-- UNIT UNDER TEST
UUT: OutputRegister port map (Clk => Clk_TB, Reset => Reset_TB, Enable => Enable_TB, Data => Data_TB, D => D_TB);

clk_gen : process 

begin

clk_TB <= '0';

wait for MCLK_HALF_PERIOD;

clk_TB <= '1';

wait for MCLK_HALF_PERIOD;

end process;

stimulus : process

begin

-- reset
reset_TB <= '1';
enable_TB <= '0';

wait for MCLK_PERIOD;

reset_TB <= '0';

wait for MCLK_PERIOD;

enable_TB <= '1';
data_TB(0) <= '0';
data_TB(1) <= '0';
data_TB(2) <= '0';
data_TB(3) <= '0';

wait for MCLK_PERIOD;

wait for MCLK_PERIOD;

data_TB(0) <= '0';
data_TB(1) <= '0';
data_TB(2) <= '0';
data_TB(3) <= '1';

wait for MCLK_PERIOD;

data_TB(0) <= '0';
data_TB(1) <= '0';
data_TB(2) <= '1';
data_TB(3) <= '0';

wait for MCLK_PERIOD;

data_TB(0) <= '0';
data_TB(1) <= '0';
data_TB(2) <= '1';
data_TB(3) <= '1';
wait for MCLK_PERIOD;

data_TB(0) <= '0';
data_TB(1) <= '0';
data_TB(2) <= '0';
data_TB(3) <= '0';

wait for MCLK_PERIOD;

enable_TB <= '0';


wait;

end process;

end behavioral;