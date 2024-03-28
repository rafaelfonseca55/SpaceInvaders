library ieee;
use ieee.std_logic_1164.all;

entity RingBufferMux_TB is 
end RingBufferMux_TB;

architecture behavioral of RingBufferMux_TB is

component RingBufferMux is 
    port
    (
        -- Input ports
        I	: in std_logic_vector(2 downto 0);
		  I2	: in std_logic_vector(2 downto 0);
        S	: in std_logic;

        -- Output ports
        O   : out std_logic_vector(2 downto 0)
    );
end component;

--UUT signals
constant MCLK_PERIOD	: time := 20 ns;
constant MCLK_HALF_PERIOD	: time := MCLK_PERIOD /2 ;

signal I_TB, I2_TB, O_TB : std_logic_vector(2 downto 0);
signal S_TB	: std_logic;

begin

-- UNIT UNDER TEST
UUT: RingBufferMux port map (I => I_TB, I2 => I2_TB, S => S_TB, 
		   O => O_TB);

stimulus : process
begin

I_TB <= "001";
I2_TB <= "010";
S_TB <= '0';

wait for MCLK_PERIOD;
wait for MCLK_PERIOD;

I_TB <= "001";
I2_TB <= "100";
S_TB <= '1';

wait for MCLK_PERIOD;
wait for MCLK_PERIOD;

I_TB <= "111";
I2_TB <= "110";
S_TB <= '0';

wait for MCLK_PERIOD;

wait;

end process;

end behavioral;
