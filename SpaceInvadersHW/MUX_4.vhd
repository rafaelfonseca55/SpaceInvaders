LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity MUX_4 is
Port( A, B : IN STD_LOGIC_VECTOR(3 Downto 0);
		S : In STD_LOGIC;
		Y : Out STD_LOGIC_VECTOR(3 Downto 0));
End MUX_4;

architecture logicFunction of MUX_4 is

signal SEL : std_logic_vector(3 Downto 0);

Begin

SEL <= (others => S);

Y <= (A and not SEL) or (SEL and B);

--Y(0) <= (A(0) and not S) or (B(0) and S);
--Y(1) <= (A(1) and not S) or (B(1) and S);
--Y(2) <= (A(2) and not S) or (B(2) and S);
--Y(3) <= (A(3) and not S) or (B(3) and S);

END LogicFunction;