LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY registro_1 IS
    PORT (
        entrada : IN std_logic;
        reset : IN std_logic;
        clk : IN std_logic;
        salida : OUT std_logic
    );
END registro_1;

ARCHITECTURE behavioral OF registro_1 IS
SIGNAL reg : std_logic;
BEGIN
    PROCESS (clk, entrada) BEGIN
        IF rising_edge(clk) THEN
            IF reset = '1' THEN
                reg <= 'Z';
            ELSE
                reg <= entrada;
            END IF;
        END IF;
        salida <= reg;
    END PROCESS;
END behavioral;
