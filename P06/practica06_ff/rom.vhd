LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY rom IS
    PORT (
        addr : IN std_logic_vector(3 DOWNTO 0);
        prueba : OUT std_logic_vector(1 DOWNTO 0);
        vf : OUT std_logic;
        mi : OUT std_logic_vector(1 DOWNTO 0);
        liga : OUT std_logic_vector(3 DOWNTO 0);
        salida_incremento : OUT std_logic_vector(5 DOWNTO 0);
        salida_carga : OUT std_logic_vector(5 DOWNTO 0)

    );
END rom;

ARCHITECTURE behavioral OF rom IS
    TYPE mem_rom IS ARRAY(0 TO 14) OF std_logic_vector(20 DOWNTO 0);
    SIGNAL data_out : mem_rom;
    SIGNAL data : std_logic_vector(20 DOWNTO 0);
BEGIN
    data_out(0) <= "110000001000001000001";
    data_out(1) <= "000010111001111001111";
    data_out(2) <= "110000011000011000011";
    data_out(3) <= "110000100001010001010";
    data_out(4) <= "110100000010000010000";
    data_out(5) <= "010011010110010010010";
    data_out(6) <= "110010010001001001001";
    data_out(7) <= "100110111010001010000";
    data_out(8) <= "110010001100000100000";
    data_out(9) <= "100111001101011001010";
    data_out(10) <= "110010000000000000000";
    data_out(11) <= "110100000000100000100";
    data_out(12) <= "110010000000100000100";
    data_out(13) <= "110010000101000101000";
    data_out(14) <= "110010000010011010011";
    PROCESS (addr) BEGIN
        data <= data_out(conv_integer(unsigned(addr)));
        prueba <= data(20 DOWNTO 19);
        vf <= data(18);
        mi <= data(17 DOWNTO 16);
        liga <= data(15 DOWNTO 12);
        salida_incremento <= data(11 DOWNTO 6);
        salida_carga <= data(5 DOWNTO 0);
    END PROCESS;
END behavioral;
