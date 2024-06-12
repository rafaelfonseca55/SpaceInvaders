LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity COUNTER_UP is
Port( dataIn : in std_logic_vector(3 downto 0);
        RESET : in std_logic;
        PL : in std_logic;
        CE : in std_logic;
        CLK : in std_logic;
        Q : out std_logic_vector(3 downto 0));
End COUNTER_UP;

Architecture structural of COUNTER_UP is
Component MUX_4 is
Port(A, B : IN STD_LOGIC_VECTOR(3 Downto 0);
 S : In STD_LOGIC;
 Y : Out STD_LOGIC_VECTOR(3 Downto 0));
End Component;

Component REG is
Port( clk : in std_logic;
        EN : in std_logic;
        D : in std_logic_vector(3 downto 0);
        Q : out std_logic_vector(3 downto 0));
End Component;

Component ADDER is
Port(A, B : in std_logic_vector(3 downto 0);
    Ci : in std_logic;
    Co : out std_logic;
    S : out std_logic_vector(3 downto 0));
End Component;

signal carry_Q : std_logic_vector(3 downto 0);
signal carry_ADDER : std_logic_vector(3 downto 0);
signal carry_MUX : std_logic_vector(3 downto 0);

Begin

U1 : ADDER port map (A => carry_Q, B => "0000", Ci => CE, S => carry_ADDER);
U2 : MUX_4 port map (A => carry_ADDER, B => dataIn, S => PL, Y => carry_MUX);
U3 : REG port map (clk => CLK, EN => '1', D => carry_MUX, Q => carry_Q);

Q <= carry_Q;

end structural;