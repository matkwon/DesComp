library ieee;
use ieee.std_logic_1164.all;

entity ULALastBit is port (
	carry_in, A, B, slt, inverte_B: in std_logic;
	sel: in std_logic_vector(1 downto 0);
	resultado, overflow, carry_out, slt_in: out std_logic
);
end entity;

architecture comportamento of ULALastBit is
   signal	sig_carry_out, sig_soma, sig_or, sig_and, sig_inversor, sig_overflow: std_logic;
   
	begin
		
		mux_seletor: entity work.mux4x1 port map (
			entradaA_MUX => sig_and,
			entradaB_MUX => sig_or,
			entradaC_MUX => sig_soma,
			entradaD_MUX => slt,
			seletor_MUX => sel, 
			saida_MUX => resultado
		);
		
		mux_inversor: entity work.mux2x1 port map (
			entradaA_MUX => B,
			entradaB_MUX => not B,
			seletor_MUX => inverte_B,
			saida_MUX => sig_inversor
		);
		
		somador: entity work.fullAdder port map (
			carry_in => carry_in,
			A => A,
			B => sig_inversor,
			soma => sig_soma,
			carry_out => sig_carry_out
		);
		
		carry_out <= sig_carry_out;
		sig_overflow <= sig_carry_out xor carry_in;
		slt_in <= sig_overflow xor sig_soma;
		sig_and <= sig_inversor and A;
		sig_or <= sig_inversor or A;
		overflow <= sig_overflow;
end architecture;