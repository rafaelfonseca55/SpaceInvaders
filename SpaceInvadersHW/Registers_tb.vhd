library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity FourBitRegister_tb is
end FourBitRegister_tb;

architecture behavioral of FourBitRegister_tb is
    signal DataIn : std_logic_vector(3 downto 0);
    signal Clk    : std_logic := '0';
    signal Reset  : std_logic := '1';
    signal DataOut: std_logic_vector(3 downto 0);

    component FourBitRegister is
        port
        (
            DataIn : in  std_logic_vector(3 downto 0);
            Clk    : in  std_logic;
            Reset  : in  std_logic;
            DataOut: out std_logic_vector(3 downto 0)
        );
    end component FourBitRegister;

begin
    uut: FourBitRegister port map (
        DataIn => DataIn,
        Clk => Clk,
        Reset => Reset,
        DataOut => DataOut
    );

    stimulus : process
begin
    Reset <= '1';
    wait for 20 ns;
    Reset <= '0';

    for i in 0 to 15 loop
        DataIn <= std_logic_vector(to_unsigned(i, 4));
        wait for 20 ns;
        Clk <= '1';
        wait for 20 ns;
        Clk <= '0';
        wait for 20 ns;
    end loop;

    wait;
end process stimulus;
end architecture behavioral;