LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ShiftRegisterScore IS
    PORT(
		  -- Input ports
        CLK   : in std_logic;
        RESET : in std_logic;
        Sin   : in std_logic;
        EN    : in std_logic;
		  -- Output port
        D     : out std_logic_vector(6 downto 0)
    );
END ShiftRegisterScore;

ARCHITECTURE logicFunction OF ShiftRegisterScore IS
    component FFD is
        port (
            CLK   : in std_logic;
            RESET : in std_logic;
            SET   : in std_logic;
            D     : in std_logic;
            EN    : in std_logic;
            Q     : out std_logic
        );
    end component;

    signal R : std_logic_vector(6 downto 0);

BEGIN
    Sc0 : FFD port map (CLK => CLK, D => Sin, RESET => RESET, SET => '0', EN => EN, Q => R(0));
    Sc1 : FFD port map (CLK => CLK, D => R(0), RESET => RESET, SET => '0', EN => EN, Q => R(1));
    Sc2 : FFD port map (CLK => CLK, D => R(1), RESET => RESET, SET => '0', EN => EN, Q => R(2));
    Sc3 : FFD port map (CLK => CLK, D => R(2), RESET => RESET, SET => '0', EN => EN, Q => R(3));
    Sc4 : FFD port map (CLK => CLK, D => R(3), RESET => RESET, SET => '0', EN => EN, Q => R(4));
    Sc5 : FFD port map (CLK => CLK, D => R(4), RESET => RESET, SET => '0', EN => EN, Q => R(5));
    Sc6 : FFD port map (CLK => CLK, D => R(5), RESET => RESET, SET => '0', EN => EN, Q => R(6));

    D(0) <= R(6);
	 D(1) <= R(5);
	 D(2) <= R(4);
	 D(3) <= R(3);
	 D(4) <= R(2);
	 D(5) <= R(1);
	 D(6) <= R(0);

END logicFunction;
