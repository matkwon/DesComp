library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
			funct	 : in std_logic_vector(5 downto 0);
         saida  : out std_logic_vector(7 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant OP_LW   : std_logic_vector(5 downto 0) := "100011";
  constant OP_SW   : std_logic_vector(5 downto 0) := "101011";
  constant OP_BEQ  : std_logic_vector(5 downto 0) := "000100";
  
  constant OP_R 	 : std_logic_vector(5 downto 0) := "000000";
  
  constant FN_ADD	 : std_logic_vector(5 downto 0) := "000000";
  constant FN_SUB	 : std_logic_vector(5 downto 0) := "000000";
  
  alias selMuxRtRd	 : std_logic is saida(0);
  alias habEscritaReg : std_logic is saida(1);
  alias selMuxRtIm	 : std_logic is saida(2);
  alias op 				 : std_logic is saida(3);
  alias selMuxUlaMem  : std_logic is saida(4);
  alias beqc 			 : std_logic is saida(5);
  alias habLeituraMem : std_logic is saida(6);
  alias habEscritaMem : std_logic is saida(7);

  
  begin
  selMuxRtRd		<= '1' when (opcode = OP_R) 	else '0';
  
  habEscritaReg 	<= '1' when (opcode = OP_LW)  					  or
										(opcode = OP_R and funct = FN_ADD) or
										(opcode = OP_R and funct = FN_SUB) else
										'0';
  
  selMuxRtIm		<= '1' when (opcode = OP_LW)  or
										(opcode = OP_SW)  else
										'0';
  
  op 					<= '1' when (opcode = OP_LW)  					  or 
										(opcode = OP_SW)  					  or
										(opcode = OP_R and funct = FN_ADD) else
										'0';
										
  selMuxUlaMem		<= '1' when (opcode = OP_LW) else
										'0';
  
  beqc 				<= '1' when (opcode = OP_BEQ)	else '0';
					  
  habLeituraMem 	<= '1' when (opcode = OP_LW) 	else '0';

  habEscritaMem 	<= '1' when (opcode = OP_SW) 	else '0';
  
end architecture;