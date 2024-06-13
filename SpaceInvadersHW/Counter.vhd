library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter is
    port (
        CLK    : in std_logic;
        clr    : in std_logic;
        Q      : out std_logic_vector(3 downto 0)
    );
end Counter;

architecture Behavioral of Counter is
    signal count_value : std_logic_vector(3 downto 0);
begin
    process(CLK, clr)
    begin
        if clr = '1' then
            count_value <= "0000";
        elsif rising_edge(CLK) then
                count_value <= std_logic_vector(unsigned(count_value) + 1); 
        end if;
    end process;

    Q <= count_value;
end Behavioral;