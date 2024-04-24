library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiver is
    port
    (
        -- Input ports
        Clk     : in std_logic;
        SDX     : in std_logic;
        SClk    : in std_logic;
        nSS     : in std_logic;
        Accept  : in std_logic;
        Reset   : in std_logic;

        -- Output ports
        D_RCV       : out std_logic_vector(8 downto 0);
        DXval   : out std_logic;
        Busy    : out std_logic
    );
end SerialReceiver;

architecture structural of SerialReceiver is

component SerialControl is
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
		DXval		: out std_logic
);
end component;

component ShiftRegister is
    port
    (
        -- Input ports
        Data    : in  std_logic;
        Clk     : in  std_logic;
        Enable  : in  std_logic;
        Reset   : in  std_logic;

        -- Output ports
        D       : out std_logic_vector(8 downto 0)
    );
end component;

component Counter IS
port
    (
        -- Input ports
        Clk     : in std_logic;
        Clr     : in std_logic;

        -- Output ports
        Q       : out std_logic_vector(3 downto 0)
    );
end component;

component Parity_Check is
port
(
CLK : in std_logic;
Data : in std_logic;
init : in std_logic;
Err : out std_logic
);
end component;

signal Wr_X, pFlag_signal, dFlag_signal, init_signal, err_signal : std_logic;
signal Q_X : std_logic_vector(3 downto 0);

begin

pFlag_signal <= '1' when Q_X = "1001" else '0';  -- pFlag is 1 when Q_X is 9
dFlag_signal <= '1' when Q_X = "1010" else '0';  -- dFlag is 1 when Q_X is 10

U0: SerialControl   port map (reset => reset, clk => clk, ss => nSS, accept => accept, pFlag => pFlag_signal,
										dFlag => dFlag_signal, RXerror => err_signal, wr => WR_X, init => init_signal,
										DXval => DXval);

U1: ShiftRegister   port map ( Data =>SDX, Clk => SClk,  Enable => Wr_X, reset => reset, D => D_RCV );

U2: Counter   port map (Clk => SClk , Clr => init_signal,
                                                 Q => Q_X);
																 
U3: Parity_Check port map(Clk => SClk, Data => SDX, init => init_signal, err => err_signal);

end structural;