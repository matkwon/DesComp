library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida  : out std_logic_vector(8 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant OP_LW   : std_logic_vector(5 downto 0) := "100011";
  constant OP_SW   : std_logic_vector(5 downto 0) := "101011";
  constant OP_BEQ  : std_logic_vector(5 downto 0) := "000100";
  
  constant OP_R 	 : std_logic_vector(5 downto 0) := "000000";
  
  constant OP_J 	 : std_logic_vector(5 downto 0) := "000010";
  
  alias selMuxJmp		 : std_logic is saida(0);
  alias selMuxRtRd	 : std_logic is saida(1);
  alias habEscritaReg : std_logic is saida(2);
  alias selMuxRtIm	 : std_logic is saida(3);
  alias tipoR			 : std_logic is saida(4);
  alias selMuxUlaMem  : std_logic is saida(5);
  alias beqc 			 : std_logic is saida(6);
  alias habLeituraMem : std_logic is saida(7);
  alias habEscritaMem : std_logic is saida(8);

  
  begin
  
  selMuxJmp			<= '1' when (opcode = OP_J)	else '0';
  
  selMuxRtRd		<= '1' when (opcode = OP_R) 	else '0';
  
  habEscritaReg 	<= '1' when (opcode = OP_LW) or
  (opcode = OP_R) else
  '0';
  
  selMuxRtIm		<= '1' when (opcode = OP_LW)  or
  (opcode = OP_SW)  else
  '0';
  
  tipoR 				<= '1' when (opcode = OP_R) 	else '0';
										
  selMuxUlaMem		<= '1' when (opcode = OP_LW) else
										'0';
  
  beqc 				<= '1' when (opcode = OP_BEQ)	else '0';
					  
  habLeituraMem 	<= '1' when (opcode = OP_LW) 	else '0';

  habEscritaMem 	<= '1' when (opcode = OP_SW) 	else '0';
  
end architecture;