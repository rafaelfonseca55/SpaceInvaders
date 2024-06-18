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

component FFD is
port
(    
CLK : in std_logic;
RESET : in STD_LOGIC;
SET : in std_logic;
D : IN STD_LOGIC;
EN : IN STD_LOGIC;
Q : out std_logic
);
end component;

signal sr,entry_signal :std_logic;

begin

entry_signal<= data xor sr;
U3 : FFD port map(clk=>clk, reset=>init, set=> '0',D=>entry_signal, en=>'1', Q=>sr);
Err <= sr;

end structure;