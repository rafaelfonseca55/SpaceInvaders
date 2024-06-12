library ieee;
use ieee.std_logic_1164.all;

entity Decoder_TB is
end Decoder_TB;

architecture behavior of Decoder_TB is
    -- Component Declaration for Decoder
    component Decoder is
        port (
            S  : in std_logic_vector(1 downto 0);
            O0, O1, O2, O3 : out std_logic
        );
    end component;

    -- Signals for the Testbench
    signal S : std_logic_vector(1 downto 0);
    signal O0, O1, O2, O3 : std_logic;

begin
    -- Instantiate the Decoder
    UUT: Decoder 
        port map (
            S  => S,
            O0 => O0,
            O1 => O1,
            O2 => O2,
            O3 => O3
        );

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test all possible input combinations
        for i in 0 to 3 loop
            S <= std_logic_vector(to_unsigned(i, 2));  -- Convert integer to std_logic_vector
            wait for 10 ns; -- Wait for a short time (adjust as needed)

            -- Check the outputs
            case i is
                when 0 => assert O0 = '1' and O1 = '0' and O2 = '0' and O3 = '0'
                    report "Incorrect output for S = 00" severity error;
                when 1 => assert O0 = '0' and O1 = '1' and O2 = '0' and O3 = '0'
                    report "Incorrect output for S = 01" severity error;
                when 2 => assert O0 = '0' and O1 = '0' and O2 = '1' and O3 = '0'
                    report "Incorrect output for S = 10" severity error;
                when 3 => assert O0 = '0' and O1 = '0' and O2 = '0' and O3 = '1'
                    report "Incorrect output for S = 11" severity error;
            end case;
        end loop;

        -- End simulation
        report "Testbench completed successfully";
        wait;
    end process;

end behavior;
