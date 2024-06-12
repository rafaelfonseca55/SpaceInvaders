library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiver is
port (
SS      : in std_logic;
SDX     : in std_logic;
SCLK    : in std_logic;
accept  : in std_logic;
reset   : in std_logic;
MCLK       : in std_logic;
DATA : out std_logic;
PARITY : out std_logic;
DXval   : out std_logic;
D       : out std_logic_vector(8 downto 0)
);
end SerialReceiver;

architecture  Structure of SerialReceiver is

component SerialControl is
port(
    reset        : in std_logic;
    clk        : in std_logic;
    enRx            : in std_logic;
    accept    : in std_logic;
    pFlag        : in std_logic;
    dFlag        : in std_logic;
    RXError    : in std_logic;
    wr            : out std_logic;
    init        : out std_logic;
    DXval        : out std_logic
);
end component;

component ShiftRegister is
PORT(    CLK : in std_logic;
        RESET : in STD_LOGIC;
        Sin : IN STD_LOGIC;
        EN : IN STD_LOGIC;
        D : out std_logic_vector (8 downto 0)
        );
end component;

component Counter is
port
(
--input ports
CLK : in std_logic;
clr : in std_logic;
--output ports
Q : out std_logic_vector(3 downto 0)
);
end component;

component Parity_Check is
port
(
CLK : in std_logic;
Data : in std_logic;
init : in std_logic;
Err : out std_logic
);
end component;

signal init_sr,err_sr,enable_sr :std_logic;
signal count :std_logic_vector(3 downto 0);
signal Dflag_signal, Pflag_signal : std_logic;

Begin

UO : SerialControl port map( clk => MCLK, reset => reset, enRx=>SS,
									  accept=>accept , Pflag=>Pflag_signal , Dflag=>Dflag_signal,
									  RXerror=> err_sr ,Dxval=>Dxval , init=>init_sr, wr=>enable_sr);

U1 : Parity_Check port map(init=>init_sr , CLK=>SCLK , Data=>SDX,Err=>err_sr);

U2 : Counter port map ( CLK=>SCLK , clr=>init_sr , Q=>count);

U3 : ShiftRegister port map (En =>enable_sr,CLK=>SCLK,Sin=>SDX,RESET=>reset,D=>D); 

Dflag_signal <= count(3) and not count(2) and not count(1) and count(0);
Data <= Dflag_signal;
PFlag_signal <= count(3) and not count(2) and  count(1) and not count(0);
Parity <= PFlag_signal;
end Structure;