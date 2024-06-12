LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity SERIALCONTROL is
Port(	enRx, accept, CLK, pFlag, dFlag, RXerror, RESET : in std_logic;
		wr, init, DXval : out std_logic
		);
end SERIALCONTROL;

architecture behavioral of SERIALCONTROL is

type STATE_TYPE is (STATE_1, STATE_2, STATE_3, STATE_4);

signal CURRENT_STATE, NEXT_STATE : STATE_TYPE;

begin
CURRENT_STATE<= STATE_1 when RESET='1' else NEXT_STATE when rising_edge(CLK);

GENERATENEXTSTATE:
process (CURRENT_STATE,enRx, accept, pFlag, dFlag, RXerror)
	begin
	case CURRENT_STATE is
		when STATE_1 => if (enRx='0') then 
			                NEXT_STATE<= STATE_2;
							 else 
								 NEXT_STATE <= STATE_1;
							 end if;
		when STATE_2 => if (dFlag='1') then 
			                NEXT_STATE<= STATE_3;
							 else 
								 NEXT_STATE <= STATE_2;
							 end if;
		when STATE_3 => if(pFlag='1' and RXerror='0') then
								NEXT_STATE<= STATE_4;
								end if;
							 if(pFlag='1' and RXerror='1') then
								NEXT_STATE<= STATE_1;
							 end if;
							 if(pFlag='0') then
								NEXT_STATE<= STATE_3;
							end if;
		when STATE_4 => if(accept='1') then 
								NEXT_STATE <= STATE_1;
								else 
								NEXT_STATE <= STATE_4;
								end if;
		end case;
end process;    
init<= '1' 		when ((CURRENT_STATE = STATE_1))
					else '0';
wr<= '1' 		when ((CURRENT_STATE = STATE_2))
					else '0';
Dxval<= '1' 	when ((CURRENT_STATE = STATE_4))
					else '0';
end behavioral;