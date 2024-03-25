library ieee;
use ieee.std_logic_1164.all;
entity FA is
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
end FA;
architecture LogicFunction of FA is
Begin
R <= (A xor B) xor Cin;
Cout <= (A and B) or (Cin and (A xor B));
end LogicFunction;