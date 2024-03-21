library ieee;
use ieee.std_logic_1164.all;

entity KeyControl_tb is
end KeyControl_tb;

architecture behavioral of KeyControl_tb is

component KeyControlME is
port(
	reset		: in std_logic;
	clk		: in std_logic;
	KAck		: in std_logic;
	KPress	: in std_logic;
	KScan		: out std_logic;
	KVal		: out std_logic
);
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal clk_tb 	: std_logic;
signal reset_tb 	: std_logic;
signal KAck_tb 	: std_logic;
signal KVal_tb 	: std_logic;
signal KScan_tb 	: std_logic;
signal KPress_tb : std_logic;

begin

--Unit Under Test
UUT: KeyControlME port map(	reset => reset_tb,
										clk => clk_tb, 
										KAck => KAck_tb,
										KPress => KPress_tb,
										KScan => KScan_tb, 
										KVal=> KVal_tb);


clk_gen : process
begin
		clk_tb <= '0';
		wait for MCLK_HALF_PERIOD;
		clk_tb <= '1';
		wait for MCLK_HALF_PERIOD;
end process;

stimulus : process
begin
--reset
    reset_tb <= '1';
	 KAck_tb <= '0';
	 KPress_tb <= '0';
    wait for MCLK_PERIOD;
    
    reset_tb <= '0';
	 KPress_tb <='0';
    wait for MCLK_PERIOD;
	 
	 KPress_tb <= '1';
    wait for MCLK_PERIOD;
	 
	 KAck_tb <= '0';
    wait for MCLK_PERIOD;

    KAck_tb <= '1';
    wait for MCLK_PERIOD;

    KAck_tb <= '1';
	 KPress_tb <= '1';
    wait for MCLK_PERIOD;

    KAck_tb <= '1';
	 KPress_tb <= '0';
    wait for MCLK_PERIOD;

    KAck_tb <= '0';
	 KPress_tb <= '1';
    wait for MCLK_PERIOD;
	 
	 KAck_tb <= '0';
	 KPress_tb <= '0';
    wait for MCLK_PERIOD;
	 
	 KPress_tb <= '0';
	 wait for MCLK_PERIOD;
	
	wait;
end process;
end;