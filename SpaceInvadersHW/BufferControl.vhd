library ieee;
use ieee.std_logic_1164.all;

entity BufferControl is 
	port
	(
		-- Input ports
		Clk		: in std_logic;
		Load 		: in std_logic;
		Ack 		: in std_logic;
		Reset		: in std_logic;
		
	
		-- Output ports
		Wreg		: out std_logic;
		OBfree	: out std_logic;
		Dval		: out std_logic
	);
end BufferControl;

architecture behavioral of BufferControl is

type STATE_TYPE is (STATE_WAITING, STATE_RECEIVING, STATE_ACKNOWLEDGED, STATE_END);

signal CurrentState, NextState: STATE_TYPE;

begin 

CurrentState <= STATE_WAITING when Reset = '1' else NextState when rising_edge(Clk);

GenerateNextState:

process (CurrentState, Ack,Load)

begin

			case CurrentState is
			
			when STATE_WAITING    =>      if(Load = '1') then     
														NextState <= STATE_RECEIVING;																			
													else 
														NextState <= STATE_WAITING;
													end if;	
																					
			
			when STATE_RECEIVING  =>	  	if(load = '1') then		
														NextState <= STATE_RECEIVING; 			
													else 
														NextState <= STATE_ACKNOWLEDGED;
													end if;
													
			when STATE_ACKNOWLEDGED 	 =>	  		if(Ack = '0') then      
																	NextState <= STATE_ACKNOWLEDGED;
																else 
																	NextState <= STATE_END;
																end if;													
																				
			when STATE_END 	 =>	  		if(Ack = '0') then      
														NextState <= STATE_WAITING;
													else 
														NextState <= STATE_END;
													end if;
																					
			end case;

end process;

--Generate Outputs

OBfree <= '1' when (CurrentState = STATE_WAITING)			else '0';
Wreg 	 <= '1' when (CurrentState = STATE_RECEIVING)		else '0';
Dval   <= '1' when (CurrentState = STATE_ACKNOWLEDGED)	else '0';

end behavioral;																					