library ieee;
use ieee.std_logic_1164.all;

entity Serial_Control is
port(
	reset		: in std_logic;
	clk		: in std_logic;
	SS			: in std_logic;
	accept	: in std_logic;
	pFlag		: in std_logic;
	dFlag		: in std_logic;
	RXError	: in std_logic;
	wr			: out std_logic;
	init		: out std_logic;
	DXval		: out std_logic;
	busy		: out std_logic
);
end Serial_Control;

architecture behavioral of Serial_Control is

type STATE_TYPE is (STATE_1 , STATE_2 , STATE_3 , STATE_4, STATE_5);

signal CurrentState, NextState : STATE_TYPE;

begin

--FlipFlop's
currentState <= STATE_1 when RESET = '1' else NextState when rising_edge(clk);

--Generate Next State 
GenerateNextState:
process (CurrentState, SS, accept, pFlag, dFlag, RXError)
	begin
		case CurrentState is
			when STATE_1			=> if (SS = '0') then
												NextState <= STATE_2;
											else
												NextState <= STATE_1;
											end if;

			when STATE_2			=> if (SS='0') then
												if (dFlag = '1') then
												NextState <= STATE_3;
												else
												NextState <= STATE_2;
											end if;
											else
												NextState <= STATE_2;
											end if;	
											
			when STATE_3			=> if (SS = '1') then
												if (pFlag = '1') then
													if (RXError = '0') then
													NextState <= State_4;
													else
													NextState <= STATE_1;
													end if;
												else
												NextState <= STATE_1;
												end if;
											else
											NextState <= STATE_3;
											end if;
											
			when STATE_4			=> if (accept = '1') then
												NextState <= STATE_1;
											else
												NextState <= STATE_4;
											end if;
											
			when STATE_5			=> if(accept='0') then
												NextState <= STATE_1;
											else
												NextState <= STATE_5;
											end if;	
		end case;
	end process;

--Generate Outputs
init <= '1' when (CurrentState = State_1) else '0';
wr <= '1' when (CurrentState = State_2) else '0';
DXval <= '1' when (CurrentState = State_4) else '0';
busy <= '1' when (CurrentState = State_4) else '0';

end behavioral;