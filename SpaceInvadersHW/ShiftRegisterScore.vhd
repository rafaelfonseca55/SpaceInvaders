LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ShiftRegisterScore IS
PORT(    CLK : in std_logic;
        RESET : in STD_LOGIC;
        Sin : IN STD_LOGIC;
        EN : IN STD_LOGIC;
        D : out std_logic_vector (6 downto 0)
        );
END ShiftRegisterScore;
ARCHITECTURE logicFunction OF ShiftRegisterScore IS
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
END component;

signal R : std_logic_vector(6 downto 0);

BEGIN
Sc0 : FFD port map( CLK => CLK , D => Sin , RESET=> RESET , SET => '0' , EN => EN , Q => R(6));
Sc1 : FFD port map( CLK => CLK , D => R(6) , RESET=> RESET , SET => '0' , EN => EN , Q => R(5));
Sc2 : FFD port map( CLK => CLK , D => R(5) , RESET=> RESET , SET => '0' , EN => EN , Q => R(4));
Sc3 : FFD port map( CLK => CLK , D => R(4) , RESET=> RESET , SET => '0' , EN => EN , Q => R(3));
Sc4 : FFD port map( CLK => CLK , D => R(3) , RESET=> RESET , SET => '0' , EN => EN , Q => R(2));
Sc5 : FFD port map( CLK => CLK , D => R(2) , RESET=> RESET , SET => '0' , EN => EN , Q => R(1));
Sc6 : FFD port map( CLK => CLK , D => R(1) , RESET=> RESET , SET => '0' , EN => EN , Q => R(0));
D<=R;

END logicFunction;