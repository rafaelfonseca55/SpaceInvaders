library ieee;
use ieee.std_logic_1164.all;

entity Keyboard_Reader is 
	port 
    (
    Mclk: in std_logic;
    reset: in std_logic;
	 Kack: in std_logic;
    Lines: in std_logic_vector(3 downTo 0);
    Columns : out std_logic_vector (2 downTo 0);
    Dval: out std_logic;
    D : out std_logic_vector(3 downTo 0)
);
end Keyboard_Reader;

architecture Structure of Keyboard_Reader is
    component Key_Decode is 
    port
    (
        Mclk : in std_logic;
        reset: in std_logic;
        Kack : in std_logic;
        Kval: out std_logic;
        Lines: in std_logic_vector(3 downTo 0);
        Columns : out std_logic_vector (2 downTo 0);
        K: out std_logic_vector(3 downTo 0)
    );
end component;

begin

    U0 : Key_Decode port map(Mclk => Mclk, reset =>reset, Kack => Kack, Lines=>Lines, Columns=>Columns, Kval=>Dval, K=>D);


end Structure;