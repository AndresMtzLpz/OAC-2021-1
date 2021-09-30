LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY registro_salida IS PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    data_in : IN std_logic_vector (4 DOWNTO 0);
    salidas : OUT std_logic_vector (4 DOWNTO 0));
END registro_salida;
ARCHITECTURE Behavioral OF registro_salida IS
    SIGNAL internal_value : std_logic_vector(4 DOWNTO 0) := B"00000";
BEGIN
    PROCESS (clk, reset, data_in) BEGIN
        IF reset = '1' THEN
            internal_value <= B"00000";
        ELSIF rising_edge (clk) THEN
            internal_value <= data_in;
        END IF;
    END PROCESS;
    PROCESS (internal_value) BEGIN
        salidas <= internal_value;
    END PROCESS;
END Behavioral;
