library ieee;
use ieee.std_logic_1164.all;

entity Key_Scan_tb is
end Key_Scan_tb;

architecture behavioral of Key_Scan_tb is

component Key_Scan is
port (
	reset : in std_logic;
	Mclk		:	in std_logic;
	KScan		: in std_logic;
	Min_0, Min_1, Min_2, Min_3 : in std_logic;
	Dec_0, Dec_1, Dec_2 : out std_logic;
	KPress	: out std_logic;
	K			: out std_logic_vector(3 downto 0)
);
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal Mclk_tb : std_logic;
signal reset_tb :Std_logic;
signal KScan_tb 	: std_logic;
signal Min_0_tb, Min_1_tb, Min_2_tb, Min_3_tb : std_logic;
signal Dec_0_tb, Dec_1_tb, Dec_2_tb : std_logic;
signal KPress_tb : std_logic;
signal K_tb  : std_logic_vector(3 downto 0);

begin

--Unit Under Test
UUT: Key_Scan port map(  Mclk => Mclk_tb, 
						  		 KScan => KScan_tb,
								 reset => reset_tb,
								 Min_0 => Min_0_tb,
								 Min_1 => Min_1_tb,
								 Min_2 => Min_2_tb,
								 Min_3 => Min_3_tb,
								 Dec_0 => Dec_0_tb,
								 Dec_1 => Dec_1_tb,
								 Dec_2 => Dec_2_tb,
								 KPress => KPress_tb,
								 K => K_tb);
								 
clk_gen : process
begin
		Mclk_tb <= '0';
		wait for MCLK_HALF_PERIOD;
		Mclk_tb <= '1';
		wait for MCLK_HALF_PERIOD;
end process;

stimulus : process
begin
		 reset_tb <= '1';
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='0';
    wait for MCLK_PERIOD;
	 
		 reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='0';
    wait for MCLK_PERIOD;
	 
	  reset_tb <= '0';	
		 KScan_tb <='0';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	  reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	   reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	   reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	   reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	   reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	   reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	   reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	   reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	   reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	   reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	 
	   reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
	 
	 
	   reset_tb <= '0';	
		 KScan_tb <='1';
		 Min_0_tb <='0';
		 Min_1_tb <='0';
		 Min_2_tb <='0';
  		 Min_3_tb <='1';
    wait for MCLK_PERIOD;
		 
	wait;
end process;
end;