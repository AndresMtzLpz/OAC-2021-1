-- memoria de solo lectura

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria_inst is
	Port( direccion : in STD_LOGIC_VECTOR (15 downto 0);
			datos : out STD_LOGIC_VECTOR (31 downto 0));
end memoria_inst;

architecture Behavioral of memoria_inst is
   	
	type memory is array(0 to 50) of std_logic_vector(31 downto 0);
	signal memoria : memory;
		begin
		
		--Código Ejemplo
--		memoria(0) <= x"00A50002"; --	LDAB	#$0001	(B <- 1)
--		memoria(1) <= x"00860000"; --	LDAA	#$0000	(A <- 0)
--		memoria(2) <= x"00010000"; --	NOP				(Nops de salto)
--		memoria(3) <= x"00010000"; --	NOP
--		memoria(4) <= x"001B0000"; --	ABA			(A <- A + B)
--		memoria(5) <= x"007E0002"; --	JMP
--		memoria(6) <= x"00010000"; --	NOP				(Nops de salto)
--		memoria(7) <= x"00010000"; --	NOP
		
		--Código - Suma de numeros naturales 1 hasta n
		
		memoria(0) <= x"00860005"; --	LDAA	#$0000	(A <- 8)
		memoria(1) <= x"00010000"; --	NOP				(Nops de salto)
		memoria(2) <= x"00010000"; --	NOP
		memoria(3) <= x"00B70004"; --	STAA	#0004	(SUMA <- A=5)
		memoria(4) <= x"00010000"; --	NOP				(Nops de salto)
		memoria(5) <= x"00010000"; --	NOP
		memoria(6) <= x"00860000"; --	LDAA	#$0000	(A <- 0)
		memoria(7) <= x"00A50000"; --	LDAB	#$0001	(B <- 1)
		memoria(8) <= x"00010000"; --	NOP				(Nops de salto)
		memoria(9) <= x"00010000"; --	NOP
		memoria(10) <= x"00010000"; --	NOP
		memoria(11) <= x"00010000"; --	NOP
		memoria(12) <= x"005C0000"; --	INCB	#$0002	(Salto a dir 2)
		memoria(13) <= x"00010000"; --	NOP				(Nops de salto)
		memoria(14) <= x"00010000"; --	NOP
		memoria(15) <= x"001B0000"; --	ABA			(A <- A + B)
		memoria(16) <= x"00010000"; --	NOP				(Nops de salto)
		memoria(17) <= x"00D10004"; --	CMPB (B>=5) SIGUE
		memoria(18) <= x"0012000C"; --	BLO
		memoria(19) <= x"00010000"; --	NOP				(Nops de salto)
		memoria(20) <= x"00010000"; --	NOP
		memoria(21) <= x"007E0013"; --	JMP
		memoria(22) <= x"00010000"; --	NOP				(Nops de salto)
		memoria(23) <= x"00010000"; --	NOP

	

	
		process(direccion)
		begin			
			datos <= memoria(conv_integer(unsigned(direccion)));
		end process;
end Behavioral;
