LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity REG is
port
(
CLK : in std_logic;
D : IN STD_LOGIC_vector(3 downto 0);
CE : IN STD_LOGIC;
RESET : in STD_LOGIC;
Q : out std_logic_vector(3 downto 0)
);
end REG;

architecture Structure of REG is
component FFD is
port
(
CLK : in std_logic;
RESET : in STD_LOGIC;
SET : in std_logic;
D : IN STD_LOGIC;
EN : IN STD_LOGIC;
Q : out std_logic
);
end component;

begin

U1 : FFD port map (D=>D(0),CLK=>CLK,RESET=>RESET,SET=>'0',EN=>CE,Q=>Q(0));
U2 : FFD port map(D=>D(1),CLK=>CLK,RESET=>RESET,SET=>'0',EN=>CE,Q=>Q(1));
U3 : FFD port map(D=>D(2),CLK=>CLK,RESET=>RESET,SET=>'0',EN=>CE,Q=>Q(2));
U4 : FFD port map(D=>D(3),CLK=>CLK,RESET=>RESET,SET=>'0',EN=>CE,Q=>Q(3));

end Structure;