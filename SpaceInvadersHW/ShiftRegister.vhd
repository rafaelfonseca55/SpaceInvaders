library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister is
    port (
        -- Input ports
        Sin   : in  std_logic;
        Clk   : in  std_logic;
        En    : in  std_logic;
        Reset : in  std_logic;

        -- Output ports
        D     : out std_logic_vector(8 downto 0)
    );
end entity ShiftRegister;

architecture behavioral of ShiftRegister is
    signal D_X : std_logic_vector(8 downto 0);
begin
    process(Clk, Reset, En)
    begin
        if (Reset = '1') then
            D_X <= "000000000";
        elsif rising_edge(Clk) then
            if (En = '1') then
                D_X(0) <= Sin;
                D_X(1) <= D_X(0);
                D_X(2) <= D_X(1);
                D_X(3) <= D_X(2);
                D_X(4) <= D_X(3);
                D_X(5) <= D_X(4);
                D_X(6) <= D_X(5);
                D_X(7) <= D_X(6);
                D_X(8) <= D_X(7);
            end if;
        end if;
    end process;

    D <= D_X;
end architecture behavioral;
