library ieee;
use ieee.std_logic_1164.all;

entity FA_TB is
end FA_TB;

architecture behavior of FA_TB is
    -- Component Declaration for Full Adder
    component FA is
        port (
            A    : in std_logic;
            B    : in std_logic;
            Cin  : in std_logic;
            R    : out std_logic;
            Cout : out std_logic
        );
    end component;

    -- Signals for the Testbench
    signal A, B, Cin, R, Cout : std_logic;

begin

    -- Instantiate the Full Adder
    UUT: FA 
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
        -- Test all possible input combinations (8 in total)
        for i in 0 to 7 loop
            A <= std_logic(i mod 2);       -- Extract LSB for A
            B <= std_logic((i/2) mod 2);   -- Extract middle bit for B
            Cin <= std_logic(i/4);        -- Extract MSB for Cin
            wait for 10 ns; -- Allow time for the adder to compute (adjust as needed)

            -- Check the outputs based on the truth table
            case i is
                when 0 => assert R = '0' and Cout = '0';
                when 1 => assert R = '1' and Cout = '0';
                when 2 => assert R = '1' and Cout = '0';
                when 3 => assert R = '0' and Cout = '1';
                when 4 => assert R = '1' and Cout = '0';
                when 5 => assert R = '0' and Cout = '1';
                when 6 => assert R = '0' and Cout = '1';
                when 7 => assert R = '1' and Cout = '1';
            end case;
        end loop;

        -- End simulation
        report "Testbench completed successfully";
        wait;
    end process;

end behavior;
