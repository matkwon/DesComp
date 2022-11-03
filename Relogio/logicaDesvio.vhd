library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logicaDesvio is
    port (JMP, RET, JSR, JEQ, JNE, JLT, FlagIgual, FlagMenor : in std_logic;
       DOUT : out std_logic_vector(1 downto 0)
    );
end entity;

architecture comportamento of logicaDesvio is
begin

   DOUT(1) <= NOT JMP AND
						RET AND
				  NOT JSR AND
				  NOT JEQ AND
				  NOT JNE AND
				  NOT JLT;
	
	DOUT(0) <= (JMP AND NOT RET AND NOT JSR AND NOT JEQ AND NOT JNE AND NOT JLT) OR 
				  (NOT JMP AND NOT RET AND NOT JSR AND JEQ AND NOT JNE AND NOT JLT AND FlagIgual AND NOT FlagMenor) OR 
				  (NOT JMP AND NOT RET AND NOT JSR AND NOT JEQ AND JNE AND NOT JLT AND NOT FlagIgual AND NOT FlagMenor) OR 
				  (NOT JMP AND NOT RET AND NOT JSR AND NOT JEQ AND NOT JNE AND JLT AND NOT FlagIgual AND FlagMenor) OR 
				  (NOT JMP AND NOT RET AND JSR AND NOT JEQ AND NOT JNE AND NOT JLT);
				  
end architecture;