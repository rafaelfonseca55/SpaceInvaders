LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity REGK is
Port( clk : in std_logic;
		EN : in std_logic;
		D : in std_logic_vector(3 downto 0);
		Q : out std_logic_vector(3 downto 0));
End REGK;

Architecture structural of REGK is
component FFD is
PORT(	CLK : in std_logic;
		RESET : in std_logic;
		SET : in std_logic;
		D : in std_logic;
		EN : in std_logic;
		Q : out std_logic
		);
End component;

Begin

U1 : FFD port map (CLK => clk, RESET => '0', SET => '0', D => D(0), EN => EN, Q => Q(0));
U2 : FFD port map (CLK => clk, RESET => '0', SET => '0', D => D(1), EN => EN, Q => Q(1));
U3 : FFD port map (CLK => clk, RESET => '0', SET => '0', D => D(2), EN => EN, Q => Q(2));
U4 : FFD port map (CLK => clk, RESET => '0', SET => '0', D => D(3), EN => EN, Q => Q(3));

end structural;