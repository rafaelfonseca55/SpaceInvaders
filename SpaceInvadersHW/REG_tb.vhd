library ieee;
use ieee.std_logic_1164.all;

entity REG_TB is
end REG_TB;

architecture behavior of REG_TB is
    -- Component Declaration for REG
    component REG is
        port (
            CLK, RESET, CE : in std_logic;
            D             : in std_logic_vector(3 downto 0);
            Q             : out std_logic_vector(3 downto 0)
        );
    end component;

    -- Signals for the Testbench
    signal CLK, RESET, CE : std_logic := '0';
    signal D, Q : std_logic_vector(3 downto 0);

begin

    -- Instantiate the REG
    UUT: REG 
        port map (
            CLK    => CLK,
            RESET  => RESET,
            CE     => CE,
            D      => D,
            Q      => Q
        );

    -- Clock Generation Process
    CLK_process: process
    begin
        CLK <= '0';
        wait for 10 ns; -- Half clock cycle period (adjust as needed)
        CLK <= '1';
        wait for 10 ns; -- Half clock cycle period
    end process;

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test Case 1: Reset
        RESET <= '1';
        wait for 20 ns; -- Ensure reset is stable
        assert Q = "0000" report "Reset failed" severity error;

        -- Test Case 2: Data Load with Enable
        RESET <= '0';
        CE <= '1';
        for i in 0 to 15 loop
            D <= std_logic_vector(to_unsigned(i, 4)); -- Load data (0 to 15)
            wait for 20 ns; -- Wait for one clock cycle
            assert Q = D report "Data load failed" severity error;
        end loop;

        -- Test Case 3: Data Hold with Enable Low
        CE <= '0';
        D <= "1010";  -- New data
        wait for 20 ns;
        assert Q = "1111" report "Data hold failed" severity error; -- Q should hold previous value (15)

        -- End simulation
        report "Testbench completed successfully";
        wait;
    end process;

end behavior;
