library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
			funct  : in std_logic_vector(5 downto 0);
         saida  : out std_logic_vector(13 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant OP_LW   : std_logic_vector(5 downto 0) := "100011";
  constant OP_SW   : std_logic_vector(5 downto 0) := "101011";
  constant OP_BEQ  : std_logic_vector(5 downto 0) := "000100";
  
  constant OP_R 	 : std_logic_vector(5 downto 0) := "000000";
  
  constant OP_ADDI : std_logic_vector(5 downto 0) := "001000";
  constant OP_LUI	 : std_logic_vector(5 downto 0) := "001111";
  constant OP_ANDI : std_logic_vector(5 downto 0) := "001100";
  constant OP_ORI	 : std_logic_vector(5 downto 0) := "001101";
  constant OP_SLTI : std_logic_vector(5 downto 0) := "001010";
  constant OP_BNE  : std_logic_vector(5 downto 0) := "000101";
  constant OP_JAL  : std_logic_vector(5 downto 0) := "000011";
  constant FN_JR   : std_logic_vector(5 downto 0) := "001000";
  
  constant OP_J 	 : std_logic_vector(5 downto 0) := "000010";
  
  alias selMuxJr		 : std_logic is saida(0);
  alias selMuxJmp		 : std_logic is saida(1);
  alias selMuxRtRd	 : std_logic_vector is saida(3 downto 2);
  alias ORIANDI		 : std_logic is saida(4);
  alias habEscritaReg : std_logic is saida(5);
  alias selMuxRtIm	 : std_logic is saida(6);
  alias tipoR			 : std_logic is saida(7);
  alias selMuxUlaMem  : std_logic_vector is saida(9 downto 8);
  alias beqc 			 : std_logic is saida(10);
  alias bnec			 : std_logic is saida(11);
  alias habLeituraMem : std_logic is saida(12);
  alias habEscritaMem : std_logic is saida(13);

  
  begin
  
  selMuxJr			<= '1' when  (opcode = OP_R) and (funct = FN_JR) else '0';
  
  selMuxJmp			<= '1' when (opcode = OP_J) or
										(opcode = OP_JAL) else 
										'0';
  
  selMuxRtRd		<= "01" when (opcode = OP_R) 	else 
							"10" when (opcode = OP_JAL)else "00";
  
  ORIANDI			<= '1' when (opcode = OP_ANDI) or
										(opcode = OP_ORI) else
										'0';
  
  habEscritaReg 	<= '1' when (opcode = OP_LW) or
										(opcode = OP_R) or
									   (opcode = OP_ADDI) or
									   (opcode = OP_LUI) or
									   (opcode = OP_ANDI) or
									   (opcode = OP_ORI) or
									   (opcode = OP_SLTI) or
									   (opcode = OP_JAL) else
									   '0';
  
  selMuxRtIm		<= '1' when (opcode = OP_LW) or
									   (opcode = OP_SW) or
									   (opcode = OP_ADDI) or
									   (opcode = OP_ANDI) or
									   (opcode = OP_ORI) or
									   (opcode = OP_SLTI) else
									   '0';
  
  tipoR 				<= '1' when (opcode = OP_R) 	else '0';
										
  selMuxUlaMem		<= "01" when (opcode = OP_LW) else
							"11" when (opcode = OP_LUI) else
							"10" when (opcode = OP_JAL) else
							"00";
  
  beqc 				<= '1' when (opcode = OP_BEQ)	else '0';
  
  bnec 				<= '1' when (opcode = OP_BNE)	else '0';
					  
  habLeituraMem 	<= '1' when (opcode = OP_LW) 	else '0';

  habEscritaMem 	<= '1' when (opcode = OP_SW) 	else '0';
  
end architecture;