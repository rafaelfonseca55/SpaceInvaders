library ieee;
use ieee.std_logic_1164.all;

entity ScoreDispatcher_TB is
end ScoreDispatcher_TB;

architecture behavior of ScoreDispatcher_TB is
    component ScoreDispatcher is
        port (
            Clk, Reset, DXval : in std_logic;
            Din             : in std_logic_vector(6 downto 0);
            WrD             : out std_logic;
            Dout            : out std_logic_vector(6 downto 0);
            Done            : out std_logic
        );
    end component;

    signal Clk, Reset, DXval : std_logic := '0';
    signal Din : std_logic_vector(6 downto 0);
    signal WrD, Done : std_logic;
    signal Dout : std_logic_vector(6 downto 0);

begin

    UUT: ScoreDispatcher
        port map (
            Clk => Clk,
            Reset => Reset,
            DXval => DXval,
            Din => Din,
            WrD => WrD,
            Dout => Dout,
            Done => Done
        );

    Clk_process: process
    begin
        Clk <= '0';
        wait for 5 ns;
        Clk <= '1';
        wait for 5 ns;
    end process;

    stim_proc: process
    begin
        Reset <= '1';
        wait for 20 ns;
        Reset <= '0';

        Din <= "1010101";
        wait for 10 ns;

        DXval <= '1';
        wait for 10 ns;
       

        wait for 10 ns;
        

        DXval <= '0';
        wait for 10 ns;
    
    end process;
end behavior;
