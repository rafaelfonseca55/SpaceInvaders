library ieee;
use ieee.std_logic_1164.all;

entity ScoreDispatcher is 
    port
    (
        -- Input ports
        Clk         : in std_logic;
        Reset       : in std_logic;
        DXval       : in std_logic;
        Din         : in std_logic_vector(6 downto 0);
    
        -- Output ports
        WrD         : out std_logic;
        Dout        : out std_logic_vector(6 downto 0);
        Done        : out std_logic
    );
end ScoreDispatcher;

architecture behavioral of ScoreDispatcher is

type STATE_TYPE is (STATE_WAITING, STATE_TRAMA_RECEBIDA, STATE_DONE);

signal CurrentState, NextState: STATE_TYPE;

begin

--FLIP-FLOP'S
CurrentState <= STATE_WAITING when Reset = '1' else NextState when rising_edge(Clk);

--GENERATE NEXT STATE
GenerateNextState:

process (CurrentState, DXval)

begin

    case CurrentState is
        when STATE_WAITING           => if (Dxval = '1') then
                                                NextState <= STATE_TRAMA_RECEBIDA;
                                            else
                                                NextState <= STATE_WAITING;
                                            end if;                                    
                                            
        when STATE_TRAMA_RECEBIDA  => NextState <= STATE_DONE;                                                    
                                                 
        when STATE_DONE            => if (Dxval = '1') then
                                                NextState <= STATE_DONE;
                                            else
                                                NextState <= STATE_WAITING;
                                            end if;
    end case;
    
end process;

-- GENERATE OUTPUTS
WrD     <= '1' when (CurrentState = STATE_TRAMA_RECEBIDA) else '0';
Dout    <= Din;
Done    <= '1' when (CurrentState = STATE_DONE) else '0';

end behavioral;