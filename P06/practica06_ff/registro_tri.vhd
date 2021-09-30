LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY registro_tri IS
    PORT (
        entrada : IN std_logic_vector(3 DOWNTO 0);
        activado : IN std_logic;
		  reset: IN std_logic;
        clk : IN std_logic;
		  salida : OUT std_logic_vector(3 DOWNTO 0)
    );
END registro_tri;

ARCHITECTURE behavioral OF registro_tri IS
BEGIN
    PROCESS (clk, entrada, activado) BEGIN
        IF rising_edge(clk) THEN
            IF activado = '0' or reset = '1' THEN
                salida <= "ZZZZ";
            ELSE
                salida <= entrada;
            END IF;
        END IF;
    END PROCESS;
END behavioral;