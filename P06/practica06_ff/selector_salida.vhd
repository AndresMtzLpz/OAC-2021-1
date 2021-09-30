LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY selector_salida IS PORT (
    ccn : IN std_logic;
    salida_incremento : IN std_logic_vector (5 DOWNTO 0);
    salida_carga : IN std_logic_vector (5 DOWNTO 0);
    salida : OUT std_logic_vector (5 DOWNTO 0));
END selector_salida;
ARCHITECTURE Behavioral OF selector_salida IS
BEGIN
    PROCESS (salida_carga, salida_incremento) BEGIN
        IF ccn = '1' THEN
            salida <= salida_carga;
        ELSE
            salida <= salida_incremento;
        END IF;
    END PROCESS;
END Behavioral;