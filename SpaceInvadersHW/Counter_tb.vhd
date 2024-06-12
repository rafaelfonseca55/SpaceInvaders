library ieee;
use ieee.std_logic_1164.all;

entity Counter_TB is
end Counter_TB;

architecture behavior of Counter_TB is
    -- Component Declaration for Counter
    component Counter is
        port (
            CLK : in std_logic;
            clr : in std_logic;
            Q   : out std_logic_vector(3 downto 0)
        );
    end component;

    -- Signals for the Testbench
    signal CLK, clr : std_logic := '0';
    signal Q : std_logic_vector(3 downto 0);

begin

    -- Instantiate the Counter
    UUT: Counter 
        port map (
            CLK => CLK,
            clr => clr,
            Q   => Q
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
        -- Reset the counter
        clr <= '1';
        wait for 20 ns; -- Hold reset for a while

        -- Release reset and let it count
        clr <= '0';
        wait for 160 ns;  -- Wait for 8 clock cycles to count from 0 to 7
        assert Q = "0111" report "Unexpected Q value after 8 cycles" severity error;

        -- Let it count to 15
        wait for 160 ns; -- Wait for 8 more clock cycles
        assert Q = "1111" report "Unexpected Q value after counting to 15" severity error;

        -- Reset again and check
        clr <= '1';
        wait for 20 ns;
        assert Q = "0000" report "Reset failed after counting" severity error;

        -- End simulation
        report "Testbench completed successfully";
        wait;
    end process;

end behavior;
