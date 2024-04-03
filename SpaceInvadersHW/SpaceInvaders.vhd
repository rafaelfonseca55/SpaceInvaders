library ieee;
use ieee.std_logic_1164.all;

entity SpaceInvaders is
	port (
	Mclk : in std_logic;
    reset : in std_logic;
    ack : in std_logic;
    Lines : in std_logic_vector(3 downTo 0);
    Columns : out std_logic_vector(2 downTo 0);
    Dval : out std_logic;
    ds : out std_logic_vector(3 downTo 0);
	 Dout : out std_logic_vector(7 downTo 0);
	 e : out std_logic;
	 rs : out std_logic
    );
end SpaceInvaders;

architecture Structure of SpaceInvaders is
component Keyboard_Reader is 
port 
(
Mclk: in std_logic;
reset: in std_logic;
 Kack: in std_logic;
Lines: in std_logic_vector(3 downTo 0);
Columns : out std_logic_vector (2 downTo 0);
Dval: out std_logic;
D : out std_logic_vector(3 downTo 0)	
);
end component;

component Registers is
port
    (
		  Reset : in std_logic;
        SerialData : in  std_logic_vector(3 downto 0);
        Clk        : in  std_logic;
        ParallelData : out std_logic_vector(7 downto 0)
    );
end component;

component UsbPort IS 
PORT
(
    inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
    outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END component;

signal Dval_signal : std_logic;
signal inputPort_signal : std_logic_vector(7 downTo 0);
signal D_signal : std_logic_vector(3 downTo 0);
signal ack_signal : std_logic;
signal outputPort_signal : std_logic_vector(7 downTo 0);
signal SerialData_signal : std_logic_vector(3 downTo 0);

begin

    U0: Keyboard_Reader port map (Mclk => Mclk, reset => reset, Kack => ack_signal, Lines => Lines, Columns => Columns, Dval => Dval_signal, D => d_signal);
    U1: UsbPort port map(inputPort(3 downTo 0) => d_signal, inputPort(4) => Dval_signal, outputPort => outputPort_signal);
	 U2: Registers port map (Reset => reset, Serialdata => Serialdata_signal, Clk => outputPort_signal(4), Paralleldata => Dout);
	 
	 Serialdata_signal <= outputPort_signal(3 downTo 0);
	 
	 e <= outputPort_signal(5);
	 
	 rs <= outputPort_signal(6);
    
    ack_signal <= outputPort_signal(7);

end Structure;