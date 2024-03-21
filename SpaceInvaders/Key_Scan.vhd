library ieee;
use ieee.std_logic_1164.all;
entity Key_Scan is
port (
	reset		:  in std_logic;
	Mclk		:	in std_logic;
	Kscan		:	in std_logic;
	Min_0, Min_1, Min_2, Min_3 : in std_logic;
	Dec_0, Dec_1, Dec_2 : out std_logic;
	KPress	: out std_logic;
	K			: out std_logic_vector(3 downto 0)
);
end Key_Scan;

architecture Structure of Key_Scan is
component Decoder is
port
(
	S	:	in std_logic_vector (1 downto 0);
	O0, O1, O2, O3:	out std_logic
);
end component; 

component Mux is
port
(
	I0, I1, I2, I3 : in std_logic;
	S : in std_logic_vector(1 downto 0);
	Y : out std_logic
);
end component;

component Counter_KeyScan is
port
(
	CE	:	in std_logic;
	CLK : in std_logic;
	clr : in std_logic;
	Q : out std_logic_vector(3 downto 0)
);
end component;


component CLKDIV is
generic(div: natural := 50000000);
port ( clk_in: in std_logic;
		 clk_out: out std_logic);
end component;

signal out_counter0,out_counter1,out_counter2,out_counter3, clk_signal  : std_logic;

begin
U0	:	Decoder port map(O0 => Dec_0, O1 => Dec_1,O2 => Dec_2, O3 => open,S(1) => out_counter3, S(0)=> out_counter2);
U1	:	Mux	port map(I0 => Min_0,I1 => Min_1,I2 => Min_2,I3 => Min_3, S(1)=> out_counter1, S(0)=> out_counter0, Y=> KPress);
U2	:	Counter_KeyScan port map(CE => Kscan, CLK=>MCLK, clr=> reset, Q(0)=>out_counter0, Q(1)=>out_counter1, Q(2)=> out_counter2, Q(3) => out_counter3);
U3	:	CLKDIV generic map(2) port map (clk_in=>MCLK, clk_out=>clk_signal);
K(0) <= out_counter0;
K(1) <= out_counter1;
K(2) <= out_counter2;
K(3) <= out_counter3;
end Structure;


