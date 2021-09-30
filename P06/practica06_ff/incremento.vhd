LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY incremento IS PORT (
    liga_presente : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    liga_incremento : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
);
END incremento;
ARCHITECTURE Behavioral OF incremento IS
BEGIN
    PROCESS(liga_presente) BEGIN
        liga_incremento <= liga_presente + 1;
    END PROCESS;
END Behavioral;