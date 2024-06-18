library ieee;
use ieee.std_logic_1164.all;

entity SerialControl_TB is
end SerialControl_TB;

architecture behavior of SerialControl_TB is
    -- Component Declaration for SerialControl
    component SerialControl is
        port (
            reset, clk, enRx, accept, pFlag, dFlag, RXError : in std_logic;
            wr, init, DXval                               : out std_logic
        );
    end component;

    -- Signals for the Testbench
    signal reset, clk, enRx, accept, pFlag, dFlag, RXError : std_logic := '0';
    signal wr, init, DXval : std_logic;

begin

    -- Instantiate the SerialControl
    UUT: SerialControl
        port map (
            reset   => reset,
            clk     => clk,
            enRx    => enRx,
            accept  => accept,
            pFlag   => pFlag,
            dFlag   => dFlag,
            RXError => RXError,
            wr      => wr,
            init    => init,
            DXval   => DXval
        );

    -- Clock Generation Process
    CLK_process: process
    begin
        clk <= '0';
        wait for 5 ns;  -- Half clock cycle period (adjust as needed)
        clk <= '1';
        wait for 5 ns;
    end process;

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test Case 1: Reset
        reset <= '1';
        wait for 20 ns; -- Ensure reset is stable
        assert init = '1' and wr = '0' and DXval = '0'
            report "Reset failed" severity error;

        -- Test Case 2: Normal Operation
        reset <= '0';
        enRx <= '0';  -- Enable receiver
        wait for 20 ns; -- Wait for state transition
        assert init = '0' and wr = '1' and DXval = '0'
            report "State 2 failed" severity error;

        dFlag <= '1'; -- Data flag
        wait for 20 ns;
        assert init = '0' and wr = '0' and DXval = '0'
            report "State 3 failed" severity error;

        enRx <= '1';
        pFlag <= '1'; -- Parity flag
        RXError <= '0'; -- No error
        wait for 20 ns;
        assert init = '0' and wr = '0' and DXval = '1'
            report "State 4 failed" severity error;

        accept <= '1'; -- Accept data
        wait for 20 ns;
        assert init = '1' and wr = '0' and DXval = '0'
            report "Return to State 1 failed" severity error;

        -- End simulation
        report "Testbench completed successfully";
        wait;
    end process;

end behavior;
