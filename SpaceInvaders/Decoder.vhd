LIBRARY ieee;
USE ieee.std_logic_1164.all;
entity Decoder is
port
(
	S	:	in std_logic_vector (1 downto 0);
	O0, O1, O2, O3	:	out std_logic
);
end Decoder;	
ARCHITECTURE LogicFunction OF Decoder IS
BEGIN
O0 <= not (not S(0) and not S(1));
O1 <= not (S(0) and not S(1));
O2 <= not (not S(0) and S(1));
O3 <= not (S(0) and S(1)); 
END LogicFunction;