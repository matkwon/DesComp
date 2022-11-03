library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(14 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant ANDD : std_logic_vector(3 downto 0) := "0100";
  constant LDI  : std_logic_vector(3 downto 0) := "0101";
  constant STA  : std_logic_vector(3 downto 0) := "0110";
  constant JMP  : std_logic_vector(3 downto 0) := "0111";
  constant JEQ  : std_logic_vector(3 downto 0) := "1000";
  constant CEQ  : std_logic_vector(3 downto 0) := "1001";
  constant JSR  : std_logic_vector(3 downto 0) := "1010";
  constant RET  : std_logic_vector(3 downto 0) := "1011";
  constant JNE  : std_logic_vector(3 downto 0) := "1100";
  constant CLT  : std_logic_vector(3 downto 0) := "1101";
  constant JLT  : std_logic_vector(3 downto 0) := "1110";
  constant ADDI : std_logic_vector(3 downto 0) := "1111";
  
  alias WR : std_logic is saida(0);
  alias RD : std_logic is saida(1);
  alias HabFlagIgual : std_logic is saida(2);
  alias HabFlagMenor : std_logic is saida(3);
  alias OP : std_logic_vector(1 downto 0) is saida(5 downto 4);
  alias HabRegs : std_logic is saida(6);
  alias SelMUXULA : std_logic is saida(7);
  alias JEQC : std_logic is saida(8);
  alias JSRC : std_logic is saida(9);
  alias RETC : std_logic is saida(10);
  alias JMPC : std_logic is saida(11);
  alias HabWrRET : std_logic is saida(12);
  alias JNEC : std_logic is saida(13);
  alias JLTC : std_logic is saida(14);
  
  begin
  
  WR <= '1' when (opcode = STA) else '0';
  
  RD <= '1' when (opcode = LDA) or 
					  (opcode = SOMA) or 
					  (opcode = SUB) or 
					  (opcode = ANDD) or 
					  (opcode = CLT) or 
					  (opcode = CEQ) else '0';
					  
  HabFlagIgual <= '1' when (opcode = CEQ) else '0';
					  
  HabFlagMenor <= '1' when (opcode = CLT) else '0';
  
  OP <= "01" when (opcode = SOMA) or
						(opcode = ADDI) else
		  "10" when (opcode = LDA) or
						(opcode = LDI) or
						(opcode = STA) else
		  "11" when (opcode = ANDD) else
		  "00";

  HabRegs <= '1' when (opcode = LDA) or
							 (opcode = SOMA) or
							 (opcode = SUB) or
							 (opcode = ANDD) or
							 (opcode = ADDI) or
							 (opcode = LDI) else '0';

  SelMUXULA <= '1' when (opcode = LDI) or
								(opcode = ADDI) else '0';
  JEQC <= '1' when (opcode = JEQ) else '0';
  JSRC <= '1' when (opcode = JSR) else '0';
  RETC <= '1' when (opcode = RET) else '0';
  JMPC <= '1' when (opcode = JMP) else '0';
  HabWrRET <= '1' when (opcode = JSR) else '0';
  JNEC <= '1' when (opcode = JNE) else '0';
  JLTC <= '1' when (opcode = JLT) else '0';
  
end architecture;