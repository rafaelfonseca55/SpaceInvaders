library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister is
    port (
        -- Input ports
        Clk   : in  std_logic;
        Reset : in  std_logic;
        Sin   : in  std_logic;
        En    : in  std_logic;

        -- Output port
        D     : out std_logic_vector(8 downto 0)
    );
end entity ShiftRegister;

architecture logicFunction of ShiftRegister is
    component FFD is
        port (
            Clk   : in  std_logic;
            Reset : in  std_logic;
            Set   : in  std_logic;
            D     : in  std_logic;
            En    : in  std_logic;
            Q     : out std_logic
        );
    end component;

    signal R : std_logic_vector(8 downto 0);

begin
    
    Sc0 : FFD port map (Clk => Clk, D => Sin, Reset => Reset, Set => '0', En => En, Q => R(0));
    Sc1 : FFD port map (Clk => Clk, D => R(0), Reset => Reset, Set => '0', En => En, Q => R(1));
    Sc2 : FFD port map (Clk => Clk, D => R(1), Reset => Reset, Set => '0', En => En, Q => R(2));
    Sc3 : FFD port map (Clk => Clk, D => R(2), Reset => Reset, Set => '0', En => En, Q => R(3));
    Sc4 : FFD port map (Clk => Clk, D => R(3), Reset => Reset, Set => '0', En => En, Q => R(4));
    Sc5 : FFD port map (Clk => Clk, D => R(4), Reset => Reset, Set => '0', En => En, Q => R(5));
    Sc6 : FFD port map (Clk => Clk, D => R(5), Reset => Reset, Set => '0', En => En, Q => R(6));
    Sc7 : FFD port map (Clk => Clk, D => R(6), Reset => Reset, Set => '0', En => En, Q => R(7));
    Sc8 : FFD port map (Clk => Clk, D => R(7), Reset => Reset, Set => '0', En => En, Q => R(8));

    D(0) <= R(8);
	 D(1) <= R(7);
	 D(2) <= R(6);
	 D(3) <= R(5);
	 D(4) <= R(4);
	 D(5) <= R(3);
	 D(6) <= R(2);
	 D(7) <= R(1);
	 D(8) <= R(0);

end architecture logicFunction;
