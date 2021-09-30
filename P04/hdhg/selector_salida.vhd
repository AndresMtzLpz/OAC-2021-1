LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY selector_salida IS PORT (
    valor_entrada : IN std_logic;
    salida_falsa : IN std_logic_vector (4 DOWNTO 0);
    salida_verdadera : IN std_logic_vector (4 DOWNTO 0);
    salida : OUT std_logic_vector (4 DOWNTO 0));
END selector_salida;
ARCHITECTURE Behavioral OF selector_salida IS
BEGIN
    PROCESS (valor_entrada) BEGIN
        CASE(valor_entrada) IS
            WHEN '1' =>
            salida <= salida_verdadera;
            WHEN '0' =>
            salida <= salida_falsa;
        END CASE;
    END PROCESS;
END Behavioral;
