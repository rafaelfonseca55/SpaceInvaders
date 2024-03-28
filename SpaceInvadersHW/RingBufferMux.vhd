library ieee;
use ieee.std_logic_1164.all;

entity RingBufferMux is 
    port
    (
        -- Input ports
        I	: in std_logic_vector(2 downto 0);
		  I2	: in std_logic_vector(2 downto 0);
        S	: in std_logic;

        -- Output ports
        O   : out std_logic_vector(2 downto 0)
    );
end RingBufferMux;

architecture structural of RingBufferMux is
begin

O(0) <= ((not S and I(0)) or (S and I2(0)));
O(1) <= ((not S and I(1)) or (S and I2(1)));
O(2) <= ((not S and I(2)) or (S and I2(2)));

end structural;