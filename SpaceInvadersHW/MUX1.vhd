LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity MUX is
Port( A : in std_logic;
        B : in std_logic;
        S : in std_logic;
        Y : out std_logic);
End MUX; 

Architecture logicFunction of MUX is

Begin
 
Y <= (A and not S) or (B and S);

End logicFunction;