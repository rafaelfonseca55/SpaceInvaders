library ieee;
use ieee.std_logic_1164.all;

entity FourBitRegister is
    port
    (
        DataIn : in  std_logic_vector(3 downto 0);
        Clk    : in  std_logic;
        Reset  : in  std_logic;
        DataOut: out std_logic_vector(3 downto 0)
    );
end entity FourBitRegister;

architecture behavioral of FourBitRegister is
begin
    process(Clk, Reset)
    begin
        if Reset = '1' then
            DataOut <= (others => '0');
        elsif rising_edge(Clk) then
            DataOut <= DataIn;
        end if;
    end process;
end architecture behavioral;