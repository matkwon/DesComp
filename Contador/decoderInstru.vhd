library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(11 downto 0)
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
  
  alias WR : std_logic is saida(0);
  alias RD : std_logic is saida(1);
  alias HabFlag : std_logic is saida(2);
  alias OP : std_logic_vector(1 downto 0) is saida(4 downto 3);
  alias HabRegs : std_logic is saida(5);
  alias SelMUXULA : std_logic is saida(6);
  alias JEQC : std_logic is saida(7);
  alias JSRC : std_logic is saida(8);
  alias RETC : std_logic is saida(9);
  alias JMPC : std_logic is saida(10);
  alias HabWrRET : std_logic is saida(11);
  
  begin
  
  WR <= '1' when (opcode = STA) else '0';
  
  RD <= '1' when (opcode = LDA) or 
					  (opcode = SOMA) or 
					  (opcode = SUB) or 
					  (opcode = ANDD) or 
					  (opcode = CEQ) else '0';
					  
  HabFlag <= '1' when (opcode = CEQ) else '0';
  
  OP <= "01" when (opcode = SOMA) else
		  "10" when (opcode = LDA) or
						(opcode = LDI) or
						(opcode = STA) else
		  "11" when (opcode = ANDD) else
		  "00";

  HabRegs <= '1' when (opcode = LDA) or
							 (opcode = SOMA) or
							 (opcode = SUB) or
							 (opcode = ANDD) or
							 (opcode = LDI) else '0';

  SelMUXULA <= '1' when (opcode = LDI) else '0';
  JEQC <= '1' when (opcode = JEQ) else '0';
  JSRC <= '1' when (opcode = JSR) else '0';
  RETC <= '1' when (opcode = RET) else '0';
  JMPC <= '1' when (opcode = JMP) else '0';
  HabWrRET <= '1' when (opcode = JSR) else '0';
  
end architecture;