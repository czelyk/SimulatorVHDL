library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_lights is
    Port (
        X : in STD_LOGIC; -- MSB
        Y : in STD_LOGIC;
        Z : in STD_LOGIC; -- LSB
        a : out STD_LOGIC;
        b : out STD_LOGIC;
        c : out STD_LOGIC;
        d : out STD_LOGIC;
        e : out STD_LOGIC;
        f : out STD_LOGIC;
        g : out STD_LOGIC
    );
end seven_lights;

architecture Behavioral of seven_lights is
begin
    -- Light a: ON for 2, 4, 5, 6
    a <= (not X and Y and not Z) or (X and not Y and not Z) or (X and not Y and Z) or (X and Y and not Z);

    -- Light b: ON for 6
    b <= (X and Y and not Z);

    -- Light c: ON for 3, 4, 5, 6
    c <= (not X and Y and not Z) or (X and not Y and not Z) or (X and not Y and Z) or (X and Y and not Z);

    -- Light d: ON for 1, 3, 5
    d <= (not X and not Y and Z) or (not X and Y and Z) or (X and not Y and Z);

    -- Light e: ON for 3, 4, 5, 6
    e <= (not X and Y and Z) or (X and not Y and not Z) or (X and not Y and Z) or (X and Y and not Z);

    -- Light f: ON for 6
    f <= (X and Y and not Z);

    -- Light g: ON for 2, 4, 5, 6
    g <= (not X and Y and not Z) or (X and not Y and not Z) or (X and not Y and Z) or (X and Y and not Z);
end Behavioral;

