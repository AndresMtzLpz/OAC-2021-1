LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY registro_6 IS
    PORT (
        entrada : IN std_logic_vector(5 downto 0);
        reset : IN std_logic;
        clk : IN std_logic;
        salida : OUT std_logic_vector(5 downto 0)
    );
END registro_6;

ARCHITECTURE behavioral OF registro_6 IS
SIGNAL reg : std_logic_vector(5 downto 0);
BEGIN
    PROCESS (clk, entrada) BEGIN
        IF rising_edge(clk) THEN
            IF reset = '1' THEN
                reg <= "ZZZZZZ";
            ELSE
                reg <= entrada;
            END IF;
        END IF;
        salida <= reg;
    END PROCESS;
END behavioral;
