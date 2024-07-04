LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity FULL_EMPTY is
Port( CD, CU, CLK, RESET : in std_logic;
		empty, full : out std_logic
        );
End FULL_EMPTY;

Architecture structure of FULL_EMPTY is
Component EQUAL_8 is
Port( D : in std_logic_vector( 3 downto 0);
		Y : out std_logic
		);
End Component;

Component EQUAL_0 is
Port( D : in std_logic_vector( 3 downto 0);
		Y : out std_logic
		);
End Component;

Component COUNTER_UP_DOWN is
Port( CU, CD, RESET, CLK : in std_logic;
		Q : out std_logic_vector
        );
End Component;

signal carry_equals, carry_Q : std_logic_vector(3 downto 0);

begin

U1 : COUNTER_UP_DOWN port map (CU => CU, CD => CD, RESET => RESET, CLK => CLK, Q => carry_Q);

U2 : EQUAL_8 port map (D => carry_equals, Y => full);

U3 : EQUAL_0 port map (D => carry_equals, Y => empty);

carry_equals(2 downto 0) <= carry_Q(2 downto 0);
carry_equals(3) <= '0';

end architecture;
