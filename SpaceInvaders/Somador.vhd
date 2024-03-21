library ieee;
use ieee.std_logic_1164.all;
entity Somador is
port
(
--input ports
A : in std_logic_vector (3 downto 0);
B : in std_logic_vector (3 downto 0);
Cin : in std_logic;
--output ports
R : out std_logic_vector (3 downto 0);
Cout : out std_logic
);
end Somador;
architecture structural of Somador is
component FA is
port
(
--input ports
A : in std_logic;
B : in std_logic;
Cin : in std_logic;
--output ports
R : out std_logic;
Cout : out std_logic

);
end component;

signal c1,c2,c3 : std_logic;

Begin

U1 : FA port map (A => A(0), B => B(0), Cin => Cin, R=>R(0), Cout=>c1);
U2 : FA port map (A => A(1), B => B(1), Cin => c1, R=>R(1), Cout=>c2);
U3 : FA port map (A => A(2), B => B(2), Cin => c2, R=>R(2), Cout=>c3);
U4 : FA port map (A => A(3), B => B(3), Cin => c3, R=>R(3), Cout=>Cout);


end structural;