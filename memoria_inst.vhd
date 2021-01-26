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
--		memoria(0) <= x"00860000"; --	LDAA	#$0000	(A <- 0)
--		memoria(1) <= x"00A50001"; --	LDAB	#$0002	(B <- 2)
--		memoria(2) <= x"00010000"; --	NOP				(Nops de salto)
--		memoria(3) <= x"00010000"; --	NOP
--		memoria(4) <= x"001B0000"; --	ABA			(A <- A + B)
--		memoria(5) <= x"005C0000"; --	INCB	#$0002	(Salto a dir 2)
--		memoria(6) <= x"007E0002"; --	JMP
--		memoria(7) <= x"00010000"; --	NOP				(Nops de salto)
--		memoria(8) <= x"00010000"; --	NOP
	
--	attribute ram_init_file : string;
--   attribute ram_init_file of mem : signal is "mem_prog.mif";

		memoria(0)  <= x"00860005"; --	LDAA	#0000	(A <- 5)
		memoria(1)  <= x"00B70004"; --	STAA	#0004	(SUMA <- A)
		memoria(2) <= x"00860000"; --	LDAA	#$0000	(A <- 0)
		memoria(3) <= x"00A50001"; --	LDAB	#$0002	(B <- 2)
		memoria(4) <= x"00680004"; --	GTAA	#0004	(A <- SUMA)
		memoria(5) <= x"00110000"; --	CBA 
		memoria(6) <= x"00120014"; --	BLO	#0012	(salto a dir 18 si N = 1)
		memoria(7) <= x"00680003"; --	GTAA	#0004	(A <- SUMA)
		memoria(8) <= x"00010000"; --	NOP				(Nops de salto)
		memoria(9) <= x"00010000"; --	NOP
		memoria(10) <= x"001B0000"; --	ABA			(A <- A + B)
		memoria(11)  <= x"00B70003"; --	STAA	#0003	(A <- A)
		memoria(12) <= x"005C0000"; --	INCB	#$0002	(Salto a dir 2)
		memoria(13) <= x"007E0002"; --	JMP
		memoria(14) <= x"00010000"; --	NOP				(Nops de salto)
		memoria(15) <= x"00010000"; --	NOP
		
	
	
		process(direccion)
		begin			
			datos <= memoria(conv_integer(unsigned(direccion)));
		end process;
end Behavioral;
