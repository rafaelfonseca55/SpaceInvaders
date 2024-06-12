library ieee;
use ieee.std_logic_1164.all;

entity Counter_KeyScan_TB is
end Counter_KeyScan_TB;

architecture behavior of Counter_KeyScan_TB is
    -- Component Declaration for Counter_KeyScan
    component Counter_KeyScan is
        port (
            CE  : in std_logic;
            CLK : in std_logic;
            clr : in std_logic;
            Q   : out std_logic_vector(3 downto 0)
        );
    end component;

    -- Signals for the Testbench
    signal CE, CLK, clr : std_logic := '0';
    signal Q : std_logic_vector(3 downto 0);

begin

    -- Instantiate the Counter_KeyScan
    UUT: Counter_KeyScan 
        port map (
            CE  => CE,
            CLK => CLK,
            clr => clr,
            Q   => Q
        );

    -- Clock Generation Process
    CLK_process: process
    begin
        CLK <= '0';
        wait for 10 ns; -- Half clock cycle period
        CLK <= '1';
        wait for 10 ns; -- Half clock cycle period
    end process;

    -- Stimulus Process
    stim_proc: process
    begin
        -- Reset the counter
        clr <= '1';
        wait for 20 ns; -- Hold reset for a while

        -- Disable reset and enable the counter
        clr <= '0';
        CE  <= '1';
        wait for 160 ns;  -- Wait for 8 clock cycles to count from 0 to 7
        assert Q = "0111" report "Unexpected Q value after 8 cycles" severity error;
 
        -- Disable the counter
        CE <= '0';
        wait for 40 ns; -- Wait for 2 clock cycles, Q should remain at 7
        assert Q = "0111" report "Unexpected Q value with CE disabled" severity error;

        -- Enable the counter again and let it count to 15
        CE <= '1';
        wait for 160 ns; -- Wait for 8 more clock cycles
        assert Q = "1111" report "Unexpected Q value after counting to 15" severity error;

        -- End simulation
        wait;
    end process;

end behavior;
