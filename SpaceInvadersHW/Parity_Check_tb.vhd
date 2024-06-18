library ieee;
use ieee.std_logic_1164.all;

entity Parity_Check_tb is
end Parity_Check_tb;

architecture behavioral of Parity_Check_tb is

component Parity_Check is
port
(
--input ports
CLK: in std_logic;
data : in std_logic;
init : in std_logic;
--output ports
err : out std_logic
);
end component;

constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

--Signals
signal CLK_tb : std_logic;
signal init_tb : std_logic;
signal data_tb : std_logic;
signal err_tb : std_logic;

begin

UUT : Parity_Check port map(init => init_tb , CLK => CLK_tb , data => data_tb , err => err_tb );

clk_gen : process
begin
	clk_tb <= '0';
	wait for MCLK_HALF_PERIOD;
	clk_tb <= '1';
	wait for MCLK_HALF_PERIOD;
end process;

stimulus: process
begin
	--reset
	init_tb <= '1';
	data_tb <= '1';
	wait for MCLK_PERIOD;
	
	init_tb <= '0';
	data_tb <= '1';
	wait for MCLK_PERIOD*3;
	
	init_tb <= '0';
	data_tb <= '0';
	wait for MCLK_PERIOD*2;
	
	init_tb <= '0';
	data_tb <= '1';
	wait for MCLK_PERIOD*6;
	
	data_tb <= '1';
	init_tb <= '1';
	wait for MCLK_PERIOD;
	
	wait;
end process;	


end behavioral;