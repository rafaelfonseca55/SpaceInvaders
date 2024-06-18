library ieee;
use ieee.std_logic_1164.all;

entity Somador_TB is
end Somador_TB;

architecture behavior of Somador_TB is
    -- Component Declaration for Somador (Adder)
    component Somador is
        port (
            A    : in std_logic_vector(3 downto 0);
            B    : in std_logic_vector(3 downto 0);
            Cin  : in std_logic;
            R    : out std_logic_vector(3 downto 0);
            Cout : out std_logic
        );
    end component;

    -- Signals for the Testbench
    signal A, B, R : std_logic_vector(3 downto 0);
    signal Cin, Cout : std_logic;

begin

    -- Instantiate the Somador (Adder)
    UUT: Somador 
        port map (
            A    => A,
            B    => B,
            Cin  => Cin,
            R    => R,
            Cout => Cout
        );

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test Case 1: Simple Addition
        A <= "0011";  -- 3
        B <= "0101";  -- 5
        Cin <= '0';
        wait for 10 ns; -- Allow time for the adder to compute (adjust as needed)
        assert R = "1000" and Cout = '0' 
            report "Test Case 1 Failed: 3 + 5 = 8" severity error;

        -- Test Case 2: Addition with Carry
        A <= "1010";  -- 10
        B <= "1100";  -- 12
        Cin <= '0';
        wait for 10 ns;
        assert R = "0110" and Cout = '1'
            report "Test Case 2 Failed: 10 + 12 = 22" severity error;

        -- Test Case 3: All Ones
        A <= "1111";
        B <= "1111";
        Cin <= '1';
        wait for 10 ns;
        assert R = "1111" and Cout = '1'
            report "Test Case 3 Failed: 15 + 15 + 1 = 31" severity error;

        -- Add more test cases as needed...

        -- End simulation
        report "Testbench completed successfully";
        wait;
    end process;

end behavior;
