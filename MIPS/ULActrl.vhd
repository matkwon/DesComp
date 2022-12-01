library ieee;
use ieee.std_logic_1164.all;

entity ULActrl is
  port ( opcode, funct : in std_logic_vector(5 downto 0);
			tipoR : in std_logic;
         saida  : out std_logic_vector(2 downto 0)
  );
end entity;

architecture comportamento of ULActrl is

  constant OP_LW   : std_logic_vector(5 downto 0) := "100011";
  constant OP_SW   : std_logic_vector(5 downto 0) := "101011";
  constant OP_BEQ  : std_logic_vector(5 downto 0) := "000100";
  constant OP_J 	 : std_logic_vector(5 downto 0) := "000010";
  constant OP_R 	 : std_logic_vector(5 downto 0) := "000000";
  constant OP_ADDI : std_logic_vector(5 downto 0) := "001000";
  
  constant FN_ADD  : std_logic_vector(5 downto 0) := "100000";
  constant FN_SUB  : std_logic_vector(5 downto 0) := "100010";
  constant FN_AND  : std_logic_vector(5 downto 0) := "100100";
  constant FN_OR   : std_logic_vector(5 downto 0) := "100101";
  constant FN_SLT  : std_logic_vector(5 downto 0) := "101010";
  
  signal decode_op, decode_fn : std_logic_vector(2 downto 0);
  
  begin
  
  decode_op(0) <= '0';

  decode_op(1) <= '1' when (opcode = OP_LW) or
                           (opcode = OP_SW) or
                           (opcode = OP_ADDI) or
                           (opcode = OP_BEQ) else '0';

  decode_op(2) <= '1' when (opcode = OP_BEQ) else '0';
  

  decode_fn(0) <= '1' when (funct = FN_OR) or
									         (funct = FN_SLT) else '0';

  decode_fn(1) <= '1' when (funct = FN_ADD) or
									         (funct = FN_SUB) or
									         (funct = FN_SLT) else '0';
									
  decode_fn(2) <= '1' when (funct = FN_SUB) or
									         (funct = FN_SLT) else '0';
									
									
  saida <= decode_op when (tipoR = '0') else decode_fn;
  
  
end architecture;