LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY registro_entrada IS PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    estado_siguiente : IN std_logic_vector (2 DOWNTO 0);
    data_out : OUT std_logic_vector (2 DOWNTO 0));
END registro_entrada;
ARCHITECTURE Behavioral OF registro_entrada IS
    SIGNAL internal_value : std_logic_vector(2 DOWNTO 0) := B"000";
BEGIN
    PROCESS (clk, reset, estado_siguiente) BEGIN
        IF reset = '1' THEN
            internal_value <= B"000";
        ELSIF rising_edge (clk) THEN
            internal_value(2 downto 0) <= estado_siguiente;
        END IF;
    END PROCESS;
    PROCESS (internal_value) BEGIN
        data_out <= internal_value;
    END PROCESS;
END Behavioral;