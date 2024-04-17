library ieee;
use ieee.std_logic_1164.all;

entity Counter is
port
(
CLK : in std_logic;
clr : in std_logic;
Q : out std_logic_vector(3 downto 0)
);
end Counter;

architecture Structure of Counter is

component Somador is
port
(
A : in std_logic_vector (3 downto 0);
B : in std_logic_vector (3 downto 0);
Cin : in std_logic;
R : out std_logic_vector (3 downto 0);
Cout : out std_logic
);
end component;

component REG is
port
(
CLK : in std_logic;
D : IN STD_LOGIC_vector(3 downto 0);
CE : IN STD_LOGIC;
RESET : in STD_LOGIC;
Q : out std_logic_vector(3 downto 0)
);
end component;

signal ss,sr,Data_in : std_logic_vector(3 downto 0);
signal bc : std_logic_vector(3 downto 0);
signal ci,se,c2 : std_logic;

begin

c2 <= '1';
bc <= "0001";
ci <= '0';
U1 : Somador port map(A=>sr,B=>bc,Cin => ci,R=>ss,Cout => open);

U2 : REG port map(D=>ss,CLK=>CLK,CE=>c2,RESET=>clr,Q=>sr);
Q<=sr;

end Structure;