LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY selector_entrada IS PORT (
    prueba : IN std_logic_vector (1 DOWNTO 0);
    X : IN std_logic;
    Y : IN std_logic;
    INT : IN std_logic;
    AUX : IN std_logic;
    valor_entrada : OUT std_logic);
END selector_entrada;
ARCHITECTURE Behavioral OF selector_entrada IS
BEGIN
    PROCESS (prueba) BEGIN
        CASE(prueba) IS
            WHEN "00" =>
            valor_entrada <= X;
            WHEN "01" =>
            valor_entrada <= Y;
            WHEN "10" =>
            valor_entrada <= INT;
            WHEN OTHERS =>
            valor_entrada <= AUX;
        END CASE;
    END PROCESS;
END Behavioral;
