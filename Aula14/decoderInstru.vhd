library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(4 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  
  alias habEscritaReg : std_logic is saida(0);
  alias op 				 : std_logic is saida(1);
  alias beqc 			 : std_logic is saida(2);
  alias habLeituraMem : std_logic is saida(3);
  alias habEscritaMem : std_logic is saida(4);

  
  begin
  
  habEscritaReg 	<= '1' when (opcode = LW)  or 
										(opcode = SW)  or 
										(opcode = BEQ) else 
										'0';
  
  op 					<= '1' when (opcode = LW)  or 
										(opcode = SW)  else 
										'0';
  
  beqc 				<= '1' when (opcode = BEQ)	else '0';
					  
  habLeituraMem 	<= '1' when (opcode = LW) 	else '0';

  habEscritaMem 	<= '1' when (opcode = SW) 	else '0';
  
end architecture;