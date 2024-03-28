library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SerialReceiverCounter is 
	port 
	(
		-- Input ports
		Clk 	: in std_logic;
		Ce  	: in std_logic;
		Clr	: in std_logic;

      -- Output ports
      O   	: out std_logic_vector(3 downto 0)
    );
end SerialReceiverCounter;

architecture behavioral of SerialReceiverCounter is

signal Count: integer := 0;
	 
begin

	process(Clk)
   begin
		if rising_edge(Clk) then
         if (Ce = '1' and Clr = '0') then
            if (Count = 15) then
					Count <= 0;
            else
               Count <= Count + 1;
            end if;
			else if (Clr = '1') then
				Count <= 0;
			end if;
			end if;
       end if;
	end process;

   O <= std_logic_vector(to_signed(Count, O'length));
end architecture behavioral;