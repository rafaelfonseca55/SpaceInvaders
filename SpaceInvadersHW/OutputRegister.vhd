library ieee;
use ieee.std_logic_1164.all;

entity OutputRegister is
	port 
	(
		-- Input ports
      Clk     : in  std_logic;
      Enable  : in  std_logic;
		Reset	  : in  std_logic;
		Data    : in  std_logic_vector(3 downto 0);
		
		-- Output ports
      D       : out std_logic_vector(3 downto 0)
	);
end entity OutputRegister;

architecture behavioral of OutputRegister is

signal D_X: std_logic_vector(3 downto 0);

begin

	process(Clk, Reset, Enable)
	begin
		if (Reset = '1') then
			D_X <= "0000";

		elsif rising_edge(Clk) then

			if (Enable = '1') then
				D_X(0) <= Data(0);
				D_X(1) <= Data(1);
				D_X(2) <= Data(2);
				D_X(3) <= Data(3);
				
			end if;
		end if;
	end process;
	
	D <= D_X;
end architecture behavioral;