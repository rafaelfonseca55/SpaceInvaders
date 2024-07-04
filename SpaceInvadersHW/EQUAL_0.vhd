library ieee;
use ieee.std_logic_1164.all;

entity EQUAL_0 is
Port( D : in std_logic_vector( 3 downto 0);
		Y : out std_logic
		);
end EQUAL_0;


Architecture logicFunction of EQUAL_0 is

Begin
 
Y <= (D(0) xnor '0') and (D(1) xnor '0') and (D(2) xnor '0') and (D(3) xnor '0');

End logicFunction;