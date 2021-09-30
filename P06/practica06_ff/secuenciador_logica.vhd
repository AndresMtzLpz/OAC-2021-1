LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY secuenciador_logica IS
    PORT (
        mi : IN std_logic_vector(1 DOWNTO 0);
        ccn : IN std_logic;
        mapn : OUT std_logic;
        pln : OUT std_logic;
        selector: OUT std_logic;
        vectn : OUT std_logic
    );
END secuenciador_logica;

ARCHITECTURE behavioral OF secuenciador_logica IS
	 BEGIN
    PROCESS (mi, ccn) BEGIN
            mapn <= '0';
            pln <= '0';
            vectn <= '0';
            CASE mi IS
                WHEN "00" =>
                    selector <= '0';
                WHEN "01" =>
                    IF ccn = '1' THEN
                        selector <= '0';
                    ELSE
                        selector <= '1';
                        pln <= '1';
                    END IF;
                WHEN "10" =>
                    selector <= '0';
                    mapn <= '1';
                WHEN OTHERS =>
                    IF ccn = '1' THEN
                        selector <= '0';
                    ELSE
                        selector <= '1';
                        vectn <= '1';
                    END IF;
            END CASE;
    END PROCESS;
END behavioral;
