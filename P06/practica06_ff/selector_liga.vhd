LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY selector_liga IS PORT (
    selector : IN std_logic;
    liga_incremento : IN std_logic_vector(3 DOWNTO 0);
    liga_carga : IN std_logic_vector(3 DOWNTO 0);
    liga_presente : OUT std_logic_vector(3 DOWNTO 0)
);
END selector_liga;
ARCHITECTURE Behavioral OF selector_liga IS
BEGIN
    PROCESS (selector) BEGIN
        IF selector = '1' THEN
            liga_presente <= liga_carga;
        ELSE
            liga_presente <= liga_incremento;
        END IF;
    END PROCESS;
END Behavioral;
