LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Shift_Register IS
PORT(    CLK : in std_logic;
        RESET : in STD_LOGIC;
        Sin : IN STD_LOGIC;
        EN : IN STD_LOGIC;
        D : out std_logic_vector (8 downto 0)
        );
END Shift_Register;
ARCHITECTURE logicFunction OF Shift_Register IS
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

signal R : std_logic_vector(8 downto 0);

BEGIN

Sc0 : FFD port map( CLK => CLK , D => Sin , RESET=> RESET , SET => '0' , EN => EN , Q => R(8);
Sc1 : FFD port map( CLK => CLK , D => R(8) , RESET=> RESET , SET => '0' , EN => EN , Q => R(7));
Sc2 : FFD port map( CLK => CLK , D => R(7) , RESET=> RESET , SET => '0' , EN => EN , Q => R(6));
Sc3 : FFD port map( CLK => CLK , D => R(6) , RESET=> RESET , SET => '0' , EN => EN , Q => R(5));
Sc4 : FFD port map( CLK => CLK , D => R(5) , RESET=> RESET , SET => '0' , EN => EN , Q => R(4));
Sc5 : FFD port map( CLK => CLK , D => R(4) , RESET=> RESET , SET => '0' , EN => EN , Q => R(3));
Sc6 : FFD port map( CLK => CLK , D => R(3) , RESET=> RESET , SET => '0' , EN => EN , Q => R(2));
Sc7 : FFD port map( CLK => CLK , D => R(2) , RESET=> RESET , SET => '0' , EN => EN , Q => R(1));
Sc8 : FFD port map( CLK => CLK , D => R(1) , RESET=> RESET , SET => '0' , EN => EN , Q => R(0));
D<=R;

END logicFunction;