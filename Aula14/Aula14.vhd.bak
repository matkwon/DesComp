library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity aula13 is
    generic ( larguraDados : natural := 32 );
    port (
		CLOCK_50 : in std_logic;
		KEY: in std_logic_vector(3 downto 0);
		WR_rd: in std_logic;
		ula_op: in std_logic;
		out_rd, out_rs, out_rt: out std_logic_vector(larguraDados-1 downto 0)
	 );
end entity;

architecture comportamento of aula13 is
   signal sig_pc, sig_pc_inc_4, sig_dado, sig_rd, sig_rs, sig_rt :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal CLK : STD_LOGIC;
   
	begin
		CLK <= KEY(0);
		
		soma_constante: entity work.somaConstante port map (
			entrada => sig_pc,
			saida => sig_pc_inc_4
		);
		
		program_counter: entity work.registradorGenerico generic map (larguraDados => larguraDados)
																		 port map (
																			DIN => sig_pc_inc_4, 
																			DOUT => sig_pc, 
																			ENABLE => '1', 
																			CLK => CLK, 
																			RST => '0'
																		 );
																		 
		rom : entity work.ROMMIPS port map (
			Endereco => sig_pc,
			Dado => sig_dado
		);
		
		ula : entity work.ULASomaSub generic map(larguraDados => larguraDados)
          port map (entradaA => sig_rs, entradaB =>  sig_rt, saida => sig_rd, seletor => ula_op);
			 
		banco_reg : entity work.bancoReg port map (
			clk => CLK,
			enderecoA => sig_dado(20 downto 16),
			enderecoB => sig_dado(15 downto 11),
			enderecoC => sig_dado(25 downto 21),
			dadoEscritaC => sig_rd,
			escreveC => WR_rd,
			saidaA => sig_rs,
			saidaB => sig_rt,
			saidaC => out_rd
		);
		
--		out_rd <= sig_rd;
		out_rs <= sig_rs;
		out_rt <= sig_rt;
      
end architecture;