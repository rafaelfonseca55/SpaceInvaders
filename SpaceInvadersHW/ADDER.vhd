LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity ADDER is
Port( A, B : in std_logic_vector(3 downto 0);
		Cin : in std_logic;
		Cout : out std_logic;
		S : out std_logic_vector(3 downto 0));
End ADDER;

ARCHITECTURE structural of ADDER is
Component FA is
Port( A, B, Cin : in std_logic;
		Cout, R : out std_logic);
End component;

signal carry : std_logic_vector(3 downto 0);

Begin

U1: FA port map (A => A(0), B=> B(0), Cin => Cin, R => S(0), Cout => carry(0));

U2: FA port map (A => A(1), B=> B(1), Cin => carry(0), R => S(1), Cout => carry(1));

U3: FA port map (A => A(2), B=> B(2), Cin => carry(1), R => S(2), Cout => carry(2));

U4: FA port map (A => A(3), B=> B(3), Cin => carry(2), R => S(3), Cout => carry(3));

Cout <= carry(3);

End structural;