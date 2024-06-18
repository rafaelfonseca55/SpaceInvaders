library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiverScore_tb is
end SerialReceiverScore_tb;

architecture behavioral of SerialReceiverScore_tb is

    component SerialReceiverScore is
        port (
            MCLK    : in  std_logic;
            reset   : in  std_logic;
            SS      : in  std_logic;
            SDX     : in  std_logic;
            SCLK    : in  std_logic;
            accept  : in  std_logic;
            DXval   : out std_logic;
            D       : out std_logic_vector(6 downto 0)
        );
    end component;

    
    constant MCLK_PERIOD : time := 20 ns;
    constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

    signal MCLK_tb : std_logic;
    signal reset_tb : std_logic;
    signal SCLK_tb : std_logic;
    signal SS_tb : std_logic;
    signal SDX_tb : std_logic;
    signal accept_tb : std_logic;
    signal DXval_tb : std_logic;
    signal D_tb : std_logic_vector(6 downto 0);

begin

    -- Unit Under Test
    UUT: SerialReceiverScore port map (
        reset => reset_tb,
        SCLK => SCLK_tb, 
        SDX => SDX_tb,
        MCLK => MCLK_tb,
        SS => SS_tb, 
        accept => accept_tb,
        DXval => DXval_tb,
        D => D_tb
    );

    
    clk_gen : process
    begin
        MCLK_tb <= '0';
        wait for MCLK_HALF_PERIOD;
        MCLK_tb <= '1';
        wait for MCLK_HALF_PERIOD;
    end process;

    stimulus : process
    begin
        
        reset_tb <= '1';
        SS_tb <= '1';
        SDX_tb <= '0';
        accept_tb <= '0';
        Sclk_tb <= '0';
        wait for MCLK_PERIOD;

        reset_tb <= '0';
        SS_tb <= '0';
        wait for MCLK_PERIOD;

        for i in 0 to 6 loop
            SCLK_tb <= '0';
            SDX_tb <= '1';
            wait for MCLK_PERIOD;

            SCLK_tb <= '1';
            wait for MCLK_PERIOD;
        end loop;

        -- Stop bit
        SCLK_tb <= '0';
        wait for MCLK_PERIOD;

        wait;
    end process;
end architecture behavioral;
