library ieee;
use ieee.std_logic_1164.all;

entity FFD_TB is
end FFD_TB;

architecture behavior of FFD_TB is
    -- Component Declaration for FFD
    component FFD is
        port (
            CLK, RESET, SET, D, EN : in std_logic;
            Q                       : out std_logic
        );
    end component;

    -- Signals for the Testbench
    signal CLK, RESET, SET, D, EN, Q : std_logic := '0';

begin

    -- Instantiate the FFD
    UUT: FFD 
        port map (
            CLK    => CLK,
            RESET  => RESET,
            SET    => SET,
            D      => D,
            EN     => EN,
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
        assert Q = '0' report "Reset failed" severity error;

        -- Test Case 2: Set
        RESET <= '0';
        SET <= '1';
        wait for 20 ns;
        assert Q = '1' report "Set failed" severity error;

        -- Test Case 3: Data Transfer with Enable
        SET <= '0';
        EN <= '1';
        for i in 0 to 1 loop
            D <= std_logic(i);  -- Toggle D between '0' and '1'
            wait for 20 ns;    -- Wait for one clock cycle
            assert Q = D report "Data transfer failed" severity error;
        end loop;

        -- Test Case 4: Data Hold with Enable Low
        EN <= '0';
        D <= '1';
        wait for 20 ns;
        assert Q = '0' report "Data hold failed" severity error;

        -- End simulation
        report "Testbench completed successfully";
        wait;
    end process;

end behavior;
