library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_lights_tb is
end seven_lights_tb;

architecture testbench of seven_lights_tb is
    signal X, Y, Z : STD_LOGIC := '0';
    signal a, b, c, d, e, f, g : STD_LOGIC;
--
--    -- Component declaration
--    component seven_lights
--        Port (
--            X : in STD_LOGIC;
--            Y : in STD_LOGIC;
--            Z : in STD_LOGIC;
--            a : out STD_LOGIC;
--            b : out STD_LOGIC;
--            c : out STD_LOGIC;
--            d : out STD_LOGIC;
--            e : out STD_LOGIC;
--            f : out STD_LOGIC;
--            g : out STD_LOGIC
--        );
--    end component;
--
begin
    -- Instantiate the design
    UUT: entity work.seven_lights
        port map (
            X => X,
            Y => Y,
            Z => Z,
            a => a,
            b => b,
            c => c,
            d => d,
            e => e,
            f => f,
            g => g
        );

    -- Apply test inputs
   STIMULUS :  process
    begin
        -- Input 1: 001
        X <= '0'; Y <= '0'; Z <= '1';
        wait for 10 ns;

        -- Input 2: 010
        X <= '0'; Y <= '1'; Z <= '0';
        wait for 10 ns;

        -- Input 3: 011
        X <= '0'; Y <= '1'; Z <= '1';
        wait for 10 ns;

        -- Input 4: 100
        X <= '1'; Y <= '0'; Z <= '0';
        wait for 10 ns;

        -- Input 5: 101
        X <= '1'; Y <= '0'; Z <= '1';
        wait for 10 ns;

        -- Input 6: 110
        X <= '1'; Y <= '1'; Z <= '0';
        wait for 10 ns;

        wait;
    end process;



end testbench;

