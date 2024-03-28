library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CounterBuffer is 
	port 
	(
		-- Input ports
		Clk 		: in std_logic;
		Ce  		: in std_logic;
		Clr		: in std_logic;
		UpDown	: in std_logic;

      -- Output ports
      O   		: out std_logic_vector(2 downto 0)
    );
end CounterBuffer;

architecture behavioral of CounterBuffer is

signal Count: integer := 0;
	 
begin

	process(Clk, Ce, Clr, UpDown)
	
   begin
		if (Clr = '1') then
				Count <= 0;		
	
		elsif rising_edge(Clk) then
         if (Ce = '1') then
            if (Count = 7) then
					Count <= 0;
				end if;
            if (UpDown = '1') then
               Count <= Count + 1;
				else
					Count <= Count - 1;
            end if;
			end if;
		end if;
	end process;

   O <= std_logic_vector(to_signed(Count, O'length));
end architecture behavioral;