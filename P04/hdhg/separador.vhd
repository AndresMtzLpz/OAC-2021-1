LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY separador IS PORT (
    data_in : IN std_logic_vector (17 DOWNTO 0);
    prueba: OUT std_logic_vector (1 DOWNTO 0);
    liga_falsa : OUT std_logic_vector (2 DOWNTO 0);
    liga_verdadera : OUT std_logic_vector (2 DOWNTO 0);
    salida_falsa : OUT std_logic_vector (4 DOWNTO 0);
    salida_verdadera : OUT std_logic_vector (4 DOWNTO 0));
END separador;
ARCHITECTURE Behavioral OF separador IS
BEGIN
    PROCESS (data_in) BEGIN
        prueba <= data_in(17 downto 16);
        liga_falsa <= data_in(15 downto 13);
        liga_verdadera <= data_in(12 downto 10);
        salida_falsa <=  data_in(9 downto 5);
        salida_verdadera <=  data_in(4 downto 0);
    END PROCESS;
END Behavioral;
