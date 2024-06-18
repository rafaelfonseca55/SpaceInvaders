library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CounterLimit is 
	port 
	(
		-- Input ports
		Clk 	: in std_logic;
		Ce  	: in std_logic;
		Clr   : in std_logic;
		Limit	: in integer;

      -- Output ports
      O   	: out std_logic_vector(3 downto 0)
    );
end CounterLimit;

architecture behavioral of CounterLimit is

signal Count: integer := 0;
	 
begin

    process(Clk, Ce, Limit)
    begin
		if (Clr = '1') then
				Count <= 0;		
	
		elsif rising_edge(Clk) then
            if (Ce = '1') then
                if (Count = Limit) then
                    Count <= 0;
                else
                    Count <= Count + 1;
                end if;
            end if;
        end if;
    end process;

    O <= std_logic_vector(to_signed(Count, O'length));
end architecture behavioral;