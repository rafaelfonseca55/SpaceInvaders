library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;  -- For unsigned conversions

entity RAM_TB is
end RAM_TB;

architecture behavior of RAM_TB is
    -- Component Declaration for RAM
    component RAM is
        generic (
            ADDRESS_WIDTH : natural := 3;
            DATA_WIDTH    : natural := 4
        );
        port (
            address : in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
            wr      : in std_logic;
            din     : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            dout    : out std_logic_vector(DATA_WIDTH - 1 downto 0)
        );
    end component;

    -- Signals for the Testbench
    signal address : std_logic_vector(2 downto 0); -- Assuming ADDRESS_WIDTH = 3
    signal wr, din, dout : std_logic_vector(3 downto 0); -- Assuming DATA_WIDTH = 4

begin

    -- Instantiate the RAM
    UUT: RAM
        generic map (
            ADDRESS_WIDTH => 3,
            DATA_WIDTH    => 4
        )
        port map (
            address => address,
            wr      => wr,
            din     => din,
            dout    => dout
        );

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test Case 1: Write and Read
        for i in 0 to 7 loop  -- Iterate through all addresses
            address <= std_logic_vector(to_unsigned(i, 3)); -- Convert i to std_logic_vector
            din <= std_logic_vector(to_unsigned(i + 10, 4)); -- Write data (i + 10)
            wr <= '1';
            wait for 10 ns; -- Allow time for write (adjust as needed)
            wr <= '0';
            wait for 10 ns; -- Allow time for read
            assert dout = din report "Write/Read failed at address " & integer'image(i) severity error;
        end loop;

        -- Test Case 2: Overwrite and Read
        address <= "001";  -- Address 1
        din <= "1100";     -- New data
        wr <= '1';
        wait for 10 ns;
        wr <= '0';
        wait for 10 ns;
        assert dout = "1100" report "Overwrite failed" severity error;

        -- Add more test cases as needed...

        -- End simulation
        report "Testbench completed successfully";
        wait;
    end process;

end behavior;
