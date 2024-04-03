library ieee;
use ieee.std_logic_1164.all;

entity Registers is
    port
    (
        SerialData : in  std_logic_vector(3 downto 0);
        Clk        : in  std_logic;
        Reset      : in  std_logic; -- Added Reset port
        ParallelData : out std_logic_vector(7 downto 0)
    );
end entity Registers;

architecture behavioral of Registers is

signal RegLow: std_logic_vector(3 downto 0);
signal RegHigh: std_logic_vector(3 downto 0);
signal BitCount: integer range 0 to 1;				--Low(0) or High(1)

begin

    process(Clk, Reset)
    begin
        if Reset = '1' then
            RegLow <= (others => '0');
            RegHigh <= (others => '0');
            BitCount <= 0;
        elsif rising_edge(Clk) then
            if BitCount = 0 then
                RegLow <= SerialData;
            else
                RegHigh <= SerialData;
            end if;
            BitCount <= BitCount + 1;
            if BitCount = 1 then
                BitCount <= 0;
            end if;
        end if;
    end process;

    ParallelData <= RegHigh & RegLow;

end architecture behavioral;