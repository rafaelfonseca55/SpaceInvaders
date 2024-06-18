library ieee;
use ieee.std_logic_1164.all;

entity Mux_TB is
end Mux_TB;

architecture behavior of Mux_TB is
    -- Component Declaration for Mux
    component Mux is
        port (
            I0, I1, I2, I3 : in std_logic;
            S             : in std_logic_vector(1 downto 0);
            Y             : out std_logic
        );
    end component;

    -- Signals for the Testbench
    signal I0, I1, I2, I3, Y : std_logic;
    signal S : std_logic_vector(1 downto 0);

begin

    -- Instantiate the Mux
    UUT: Mux 
        port map (
            I0 => I0,
            I1 => I1,
            I2 => I2,
            I3 => I3,
            S  => S,
            Y  => Y
        );

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test all possible input combinations
        for i in 0 to 3 loop  -- Iterate through all values of S
            S <= std_logic_vector(to_unsigned(i, 2));  -- Convert loop index to std_logic_vector
            for j in 0 to 15 loop  -- Iterate through all combinations of I0, I1, I2, I3
                I0 <= std_logic(j mod 2);
                I1 <= std_logic((j/2) mod 2);
                I2 <= std_logic((j/4) mod 2);
                I3 <= std_logic((j/8) mod 2);
                wait for 10 ns; -- Wait (adjust as needed)

                -- Check the output
                case i is
                    when 0 => assert Y = I0 report "Incorrect output for S = 00" severity error;
                    when 1 => assert Y = I1 report "Incorrect output for S = 01" severity error;
                    when 2 => assert Y = I2 report "Incorrect output for S = 10" severity error;
                    when 3 => assert Y = I3 report "Incorrect output for S = 11" severity error;
                end case;
            end loop;
        end loop;

        -- End simulation
        report "Testbench completed successfully";
        wait;
    end process;

end behavior;
