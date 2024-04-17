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
        D       : out std_logic_vector(7 downto 0);
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
        Q       : out std_logic_vector(4 downto 0)
    );
end component;

signal Clr_X, Wr_X, pFlag_signal, dFlag_signal : std_logic;
signal Q_X : std_logic_vector(4 downto 0);

begin

pFlag <= '1' when O_X = "1001" else '0';  -- pFlag is 1 when O_X is 9
dFlag <= '1' when O_X = "1010" else '0';  -- dFlag is 1 when O_X is 10

U0: SerialControl           port map (Clk => Clk, EnRx => nSS, pFlag => pFlag_signal, dFlag => dFlag_signal, Accept => Accept, Reset => Reset,
                                                 Wr => Wr_X, Clr => Clr_X, DXval => DXval);

U1: ShiftRegister           port map (Clk => SClk, Reset => Reset, Data => SDX, Enable => Wr_X,
                                                 D => D);

U2: Counter   port map (Clk => SClk , Clr => Clr_X,
                                                 Q => Q_X);

end structural;