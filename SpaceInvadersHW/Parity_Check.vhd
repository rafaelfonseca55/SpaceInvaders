library ieee;
use ieee.std_logic_1164.all;

entity Parity_Check is

port
(
CLK : in std_logic;
Data : in std_logic;
init : in std_logic;
Err : out std_logic
);
end Parity_Check;

architecture Structure of Parity_Check is

signal sr : std_logic := '0';

begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            if init = '1' then
                sr <= '0';
            else
                sr <= sr xor Data;
            end if;
        end if;
    end process;  
    
    Err <= sr;
end Structure;