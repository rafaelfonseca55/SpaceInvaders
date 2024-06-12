library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiverScore is
port (
SS      : in std_logic;
SDX     : in std_logic;
SCLK    : in std_logic;
accept  : in std_logic;
reset   : in std_logic;
MCLK       : in std_logic;
DXval   : out std_logic;
D       : out std_logic_vector(6 downto 0)
);
end SerialReceiverScore;

architecture  Structure of SerialReceiverScore is

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

component ShiftRegisterScore is
PORT(    CLK : in std_logic;
        RESET : in STD_LOGIC;
        Sin : IN STD_LOGIC;
        EN : IN STD_LOGIC;
        D : out std_logic_vector (6 downto 0)
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

signal s1,s2,s3 :std_logic;
signal s4 :std_logic_vector(3 downto 0);
signal Dflag_signal, Pflag_signal : std_logic;

Begin

UO : SerialControl port map( clk => MCLK, reset => reset, enRx=>SS,
accept=>accept , Pflag=>Pflag_signal , Dflag=>Dflag_signal,
RXerror=> s2 ,Dxval=>Dxval , init=>s1, wr=>s3);

U1 : Parity_Check port map(init=>s1 , CLK=>SCLK , Data=>SDX,Err=>s2);

U2 : Counter port map ( CLK=>SCLK , clr=>s1 , Q=>s4);

U3 : ShiftRegisterScore port map (En =>s3,CLK=>SCLK,Sin=>SDX,RESET=>reset,D=>D); 

Dflag_signal <= S4(3) and not s4(2) and s4(1) and not s4(0);
PFlag_signal <= s4(3) and not s4(2) and s4(1) and s4(0);
end Structure;