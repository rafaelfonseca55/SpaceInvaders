library ieee;
use ieee.std_logic_1164.all;
entity Key_Control is
port
(
	reset	:	in std_logic;
	clk	:	in std_logic;
	Kack	:	in	std_logic;
	Kpress	:	in std_logic;
	Kval	:	out std_logic;
	Kscan	:	out std_logic
);
end Key_Control;

architecture behavorial of Key_Control is

type STATE_TYPE is (STATE_1, STATE_2, STATE_3);

signal currentState, nextState : STATE_TYPE;

begin

currentState <= STATE_1 when RESET = '1' else NextState when rising_edge(clk);

generateNextState:
process (currentState, Kack, Kpress)
	begin
		case currentState is
			when STATE_1			=>	if (Kpress = '1') then 
												nextState <= STATE_2;
											else
												nextState <= STATE_1;
											end if;
											
			when STATE_2			=>	if (Kack = '1') then
												nextState <= STATE_3;
											else
												nextState <= STATE_2;
											end if;
											
			when STATE_3			=>	if (Kack = '0') then
												if(Kpress = '0') then
												nextState <= STATE_1;
												else
												nextState <= STATE_3;
												end if;
											else
											nextState <= STATE_3;
											end if;
			end case;
	end process;


Kscan <= '1' when (CurrentState = State_1) else '0';
Kval <= '1' when (CurrentState = State_2) else '0';

end behavorial;							