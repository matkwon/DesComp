library ieee;
use ieee.std_logic_1164.all;

entity fullAdder is port (
	carry_in, A, B 	: in std_logic;
	soma, carry_out: out std_logic
);
end entity;

architecture comportamento of fullAdder is   
	begin
		soma <= (A xor B) xor carry_in;
		carry_out <= (A and B) or (carry_in and (A xor B));
end architecture;