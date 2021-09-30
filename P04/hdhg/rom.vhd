LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY rom IS
    PORT (
        addr : IN std_logic_vector(2 DOWNTO 0);
        data : OUT std_logic_vector(17 DOWNTO 0)
    );
END rom;

ARCHITECTURE behavioral OF rom IS
    TYPE mem_rom IS ARRAY(0 TO 7) OF std_logic_vector(17 DOWNTO 0);
    SIGNAL data_out : mem_rom;
BEGIN
    data_out(0) <= "000010010000011000";
    data_out(1) <= "110101000100111001";
    data_out(2) <= "000110110000011000";
    data_out(3) <= "011011100110000100";
    data_out(4) <= "000010101101001010";
    data_out(5) <= "000110111000001000";
    data_out(6) <= "101010100000111011";
    PROCESS (addr) BEGIN
        data <= data_out(conv_integer(unsigned(addr)));
    END PROCESS;
END behavioral;
