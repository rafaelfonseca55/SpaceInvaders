library ieee;
use ieee.std_logic_1164.all;

entity Key_Decode_tb is
end Key_Decode_tb;

architecture behavioral of Key_Decode_tb is

component Key_Decode is
port(
	Mclk		:	in std_logic;
	reset		:	in std_logic;
	Kack		:	in	std_logic;
	Lines		:	in std_logic_vector(3 downto 0);	
	Kval		:	out	std_logic;
	Columns	:	out   std_logic_vector(2 downto 0);
	K			:	out	std_logic_vector(3 downto 0)
);
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal Mclk_tb 	: std_logic;
signal reset_tb 	: std_logic;
signal KAck_tb 	: std_logic;
signal KVal_tb 	: std_logic;
signal Lines_tb 	: std_logic_vector(3 downto 0);
signal Columns_tb : std_logic_vector(2 downto 0);
signal K_tb 	: std_logic_vector(3 downto 0);

begin

--Unit Under Test
UUT: Key_Decode port map(reset => reset_tb,
								 Mclk => Mclk_tb, 
						  		 KAck => KAck_tb,
								 KVal => KVal_tb,
								 Lines => Lines_tb, 
								 Columns => Columns_tb,
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
		reset_tb<='1';
	KAck_Tb <='0';
	wait for MCLK_PERIOD;
	
	reset_tb<='0';
	Lines_tb<="0001";
	wait for 200 ns;
	
	Lines_tb<="0101";
	KAck_tb<='1';
	wait for MCLK_PERIOD;
	
	KAck_tb<='0';
	wait for MCLK_PERIOD;
	
	reset_tb<='1';
	KAck_Tb <='0';
	wait for MCLK_PERIOD;
	
	reset_tb<='0';
	Lines_tb<="0110";
	wait for 200 ns;
	
	Lines_tb<="0111";
	KAck_tb<='1';
	wait for MCLK_PERIOD;
	
	KAck_tb<='0';
	
	wait;
end process;
end;