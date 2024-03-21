library ieee;
use ieee.std_logic_1164.all;

entity Key_Decode is
port
(
	Mclk	:	in std_logic;
	reset	:	in std_logic;
	Kack	:	in	std_logic;
	Kval	:	out	std_logic;
	Lines	:	in std_logic_vector(3 downto 0);		
	Columns	:	out std_logic_vector(2 downto 0);
	K	:	out	std_logic_vector(3 downto 0)
);
end Key_Decode;

architecture Structure of Key_Decode is
component Key_Scan is
port (
	Mclk		:	in std_logic;
	Kscan		:	in std_logic;
	Min_0, Min_1, Min_2, Min_3 : in std_logic;
	Dec_0, Dec_1, Dec_2 : out std_logic;
	KPress	: out std_logic;
	K			: out std_logic_vector(3 downto 0)
);
end component;

component Key_Control is
port
(
	reset	:	in std_logic;
	clk	:	in std_logic;
	Kack	:	in	std_logic;
	Kpress	:	in std_logic;
	Kval	:	out std_logic;
	Kscan	:	out std_logic
);
end component;

signal Kscan_signal, KPress_signal	:	std_logic;
signal K_signal	:	std_logic_vector(3 downto 0);
signal Column_signal	:	std_logic_vector(2 downto 0);

begin

U0	:	Key_Scan port map(Mclk=>Mclk,Kscan=>Kscan_signal,Min_0=>Lines(0),
Min_1=>Lines(1),Min_2=>Lines(2),Min_3=>Lines(3),
Dec_0=>Column_signal(0),Dec_1=>Column_signal(1),Dec_2=>Column_signal(2),
KPress=>KPress_signal,K=>K_signal);

U1	:	Key_Control	port map(reset=>reset, clk=>Mclk, Kack=>Kack, Kval=>kval, 
Kpress=>KPress_signal, Kscan=>Kscan_signal);

K<=K_signal;
Columns(0)<=Column_signal(0);
Columns(1)<=Column_signal(1);
Columns(2)<=Column_signal(2);

end Structure;