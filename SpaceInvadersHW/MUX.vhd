LIBRARY ieee;
USE ieee.std_logic_1164.all;
entity Mux is
	port
	(
		I0, I1, I2, I3 : in std_logic;
		S : in std_logic_vector(1 downto 0);
		Y : out std_logic
	);
end Mux;	
ARCHITECTURE LogicFunction OF Mux IS
BEGIN
Y <= not ((I0 and not S(1) and not S(0)) or (I1 and not S(1) and S(0)) or (I2 and S(1) and not S(0)) or (I3 and S(1) and S(0)));
END LogicFunction;

