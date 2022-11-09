library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity Aula14 is
    generic ( larguraDados : natural := 32 );
    port (
		CLOCK_50 : in std_logic;
		KEY: in std_logic_vector(3 downto 0);
		ram_out, reg_1_out, reg_2_out, pc_out: out std_logic_vector(larguraDados-1 downto 0)
	 );
end entity;

architecture comportamento of Aula14 is
   signal 	sig_pc, sig_pc_inc_4, sig_dado, 
				sig_rd, sig_rs, sig_rt, sig_reg_1, sig_reg_2,
				sig_ram_out, sig_pc_inc_4_im, sig_prox_pc,
				sig_estendido, sig_ula_out: STD_LOGIC_VECTOR((larguraDados-1) downto 0);
				
	signal	sinais_de_controle: STD_LOGIC_VECTOR(4 downto 0);
		
	signal 	CLK : STD_LOGIC;
	
	signal 	sig_ula_op, sig_hab_escrita_reg, 
				sig_hab_leitura_memoria, sig_flag_zero,
				sig_hab_escrita_memoria, sig_beq : STD_LOGIC;
   
	begin
		CLK <= KEY(0);
		
		decoder_instru: entity work.decoderInstru port map (
			opcode => sig_dado(31 downto 26),
			saida => sinais_de_controle
		);
		
		soma_constante: entity work.somaConstante port map (
			entrada => sig_pc,
			saida => sig_pc_inc_4
		);
		
		program_counter: entity work.registradorGenerico generic map (larguraDados => larguraDados)
																		 port map (
																			DIN => sig_prox_pc, 
																			DOUT => sig_pc, 
																			ENABLE => '1', 
																			CLK => CLK, 
																			RST => '0'
																		 );
																		 
		rom : entity work.ROMMIPS port map (
			Endereco => sig_pc,
			Dado => sig_dado
		);
		
		ula : entity work.ULASomaSub 	generic map(larguraDados => larguraDados)
												port map (
													entradaA => sig_reg_1, 
													entradaB => sig_estendido, 
													saida => sig_ula_out, 
													seletor => sig_ula_op,
													flag_zero => sig_flag_zero
												);
		
		banco_reg : entity work.bancoReg port map (
			clk => CLK,
			endereco1 => sig_dado(25 downto 21),
			endereco2 => sig_dado(20 downto 16),
			endereco3 => sig_dado(20 downto 16),
			dadoEscrita3 => sig_ram_out,
			habEscritaReg => sig_hab_escrita_reg,
			saidaA => sig_reg_1,
			saidaB => sig_reg_2
		);
		
		estensor_de_sinal : entity work.estendeSinalGenerico 	generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
																				port map (
																					estendeSinal_IN => sig_dado(15 downto 0), 
																					estendeSinal_OUT => sig_estendido
																				);
																				
		ram : entity work.RAMMIPS port map (
			clk => CLK,
			Endereco => sig_ula_out,
			Dado_in => sig_reg_2,
			Dado_out => sig_ram_out,
			we => sig_hab_leitura_memoria, 
			re => sig_hab_escrita_memoria, 
			habilita => '1'
		);
		
		mux_pc : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
													port map( 	
														entradaA_MUX => sig_pc_inc_4,
														entradaB_MUX =>  sig_pc_inc_4_im,
														seletor_MUX => (sig_beq and sig_flag_zero),
														saida_MUX => sig_prox_pc
													);
													
		somador_beq : entity work.somadorGenerico  generic map (larguraDados => larguraDados)
																 port map( 
																	entradaA => sig_pc_inc_4, 
																	entradaB => sig_estendido(29 downto 0) & "00", 
																	saida => sig_pc_inc_4_im
																 );
																 
																 
		
		sig_hab_escrita_reg  	<= sinais_de_controle(0);
		sig_ula_op					<= sinais_de_controle(1);
		sig_beq						<= sinais_de_controle(2);
		sig_hab_leitura_memoria <= sinais_de_controle(3);
		sig_hab_escrita_memoria <= sinais_de_controle(4);
		pc_out 						<= sig_pc;
		ram_out						<= sig_ram_out;
		reg_1_out					<= sig_reg_1;
		reg_2_out					<= sig_reg_2;


      
end architecture;