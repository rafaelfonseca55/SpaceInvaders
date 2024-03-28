library ieee;
use ieee.std_logic_1164.all;

entity RingBufferControl is 
	port
	(
		-- Input ports
		Clk 		: in std_logic;
		Reset    : in std_logic;
		DAV 		: in std_logic;
		CTS	 	: in std_logic;
		Full		: in std_logic;
		Empty		: in std_logic; 
	
		-- Output ports
		Wr			: out std_logic;
		Wreg		: out std_logic;
		selPnG 	: out std_logic;
		incPut 	: out std_logic;
		incGet 	: out std_logic;
		DAC		: out std_logic
	);
end RingBufferControl;

architecture behavioral of RingBufferControl is

type STATE_TYPE is (STATE_WAITING, STATE_ACTIVATE_PUT, STATE_WRITE_KEY, STATE_INC_PUT, STATE_END_WRITE, STATE_READ_KEY,
							STATE_INC_GET);

signal CurrentState, NextState: STATE_TYPE;

begin

--FLIP-FLOP'S
CurrentState <= STATE_WAITING when Reset = '1' else NextState when rising_edge(Clk);

--GENERATE NEXT STATE
GenerateNextState:

process (CurrentState, DAV, CTS, Full, Empty)

begin

	case CurrentState is
		
		when STATE_WAITING  => 			if (DAV = '1') then
													if (Full = '0') then
														NextState <= STATE_ACTIVATE_PUT;
													elsif (Empty = '0' and CTS = '1') then
														NextState <= STATE_READ_KEY;
													else
														NextState <= STATE_WAITING;
													end if;
															
												elsif (Empty = '0' and CTS = '1') then
														NextState <= STATE_READ_KEY;
													else
														NextState <= STATE_WAITING;
												end if;
								
		when STATE_ACTIVATE_PUT  => 	NextState <= STATE_WRITE_KEY;
		
		when STATE_WRITE_KEY  => 		NextState <= STATE_INC_PUT;
		
		when STATE_INC_PUT  => 			NextState <= STATE_END_WRITE;
											
		when STATE_END_WRITE  => 		if (DAV = '0') then
													NextState <= STATE_WAITING;
												else
													NextState <= STATE_END_WRITE;
												end if;
												
	   when STATE_READ_KEY  => 		if (CTS = '0') then
													NextState <= STATE_INC_GET;
												else
													NextState <= STATE_READ_KEY;
												end if;	
												
		when STATE_INC_GET  => 			NextState <= STATE_WAITING;												
												
	end case;
	
end process;

-- GENERATE OUTPUTS
Wr			<= '1'	when (CurrentState = STATE_WRITE_KEY) else '0';	
Wreg		<= '1'	when (CurrentState = STATE_READ_KEY) else '0';	
selPnG 	<= '1'	when (CurrentState = STATE_WRITE_KEY) else '0';	
incPut 	<= '1'	when (CurrentState = STATE_INC_PUT) else '0';	
incGet	<= '1'	when (CurrentState = STATE_INC_GET) else '0';	
DAC		<= '1'	when (CurrentState = STATE_END_WRITE) else '0';	

end behavioral;