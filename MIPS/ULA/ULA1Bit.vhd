library ieee;
use ieee.std_logic_1164.all;

entity ULA1Bit is port (
	carry_in, A, B, slt, inverte_A, inverte_B: in std_logic;
	sel: in std_logic_vector(1 downto 0);
	resultado, carry_out: out std_logic
);
end entity;

architecture comportamento of ULA1Bit is
   signal	sig_soma, sig_or, sig_and, sig_inversor_A, sig_inversor_B: std_logic;
   
	begin
		
		mux_seletor: entity work.mux4x1 port map (
			entradaA_MUX => sig_and,
			entradaB_MUX => sig_or,
			entradaC_MUX => sig_soma,
			entradaD_MUX => slt,
			seletor_MUX => sel, 
			saida_MUX => resultado
		);
		
		mux_inversorA: entity work.mux2x1 port map (
			entradaA_MUX => A,
			entradaB_MUX => not A,
			seletor_MUX => inverte_A,
			saida_MUX => sig_inversor_A
		);
		
		mux_inversorB: entity work.mux2x1 port map (
			entradaA_MUX => B,
			entradaB_MUX => not B,
			seletor_MUX => inverte_B,
			saida_MUX => sig_inversor_B
		);
		
		somador: entity work.fullAdder port map (
			carry_in => carry_in,
			A => sig_inversor_A,
			B => sig_inversor_B,
			soma => sig_soma,
			carry_out => carry_out
		);
		
		sig_and <= sig_inversor_A and sig_inversor_B;
		sig_or <= sig_inversor_A or sig_inversor_B;
end architecture;