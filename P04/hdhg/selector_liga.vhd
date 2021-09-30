LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY selector_liga IS PORT (
    valor_entrada : IN std_logic;
    liga_falsa : IN std_logic_vector (2 DOWNTO 0);
    liga_verdadera : IN std_logic_vector (2 DOWNTO 0);
    liga : OUT std_logic_vector (2 DOWNTO 0));
END selector_liga;
ARCHITECTURE Behavioral OF selector_liga IS
BEGIN
    PROCESS (valor_entrada) BEGIN
        CASE(valor_entrada) IS
            WHEN '1' =>
            liga <= liga_verdadera;
            WHEN '0' =>
            liga <= liga_falsa;
        END CASE;
    END PROCESS;
END Behavioral;
