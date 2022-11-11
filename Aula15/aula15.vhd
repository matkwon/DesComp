library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity aula15 is
    generic ( larguraDados : natural := 32 );
    port (
		CLOCK_50 : in std_logic;
		KEY: in std_logic_vector(3 downto 0);
		flagZero : out std_logic;
		ram_out, reg_1_out, reg_2_out,
		pc_out, ula_out, ula_in_1, ula_in_2: out std_logic_vector(larguraDados-1 downto 0)
	 );
end entity;

architecture comportamento of aula15 is
   signal 	sig_pc, sig_pc_inc_4, sig_dado, 
				sig_reg_1, sig_reg_2,
				sig_ram_out, sig_pc_inc_4_im, sig_prox_pc, sig_entrada_ula_b, sig_saida_mux_ula_mem,
				sig_estendido, sig_ula_out: STD_LOGIC_VECTOR((larguraDados-1) downto 0);
				
	signal	sinais_de_controle: STD_LOGIC_VECTOR(7 downto 0);

	signal 	sig_saida_mux_rt_rd: STD_LOGIC_VECTOR(4 downto 0);
		
	signal 	CLK : STD_LOGIC;
	
	signal 	sig_ula_op, sig_hab_escrita_reg, sig_sel_mux_ula_mem,
				sig_hab_leitura_memoria, sig_flag_zero, sig_sel_mux_rt_rd,
				sig_hab_escrita_memoria, sig_beq,
				sig_sel_mux_rt_im : STD_LOGIC;
   
	begin
		CLK <= KEY(0);
		
		decoder_instru: entity work.decoderInstru port map (
			opcode => sig_dado(31 downto 26),
			funct  => sig_dado(5 downto 0),
			saida  => sinais_de_controle
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
													entradaB => sig_entrada_ula_b, 
													saida => sig_ula_out, 
													seletor => sig_ula_op,
													flag_zero => sig_flag_zero
												);
		
		banco_reg : entity work.bancoReg port map (
			clk => CLK,
			endereco1 => sig_dado(25 downto 21),
			endereco2 => sig_dado(20 downto 16),
			endereco3 => sig_saida_mux_rt_rd,
			dadoEscrita3 => sig_saida_mux_ula_mem,
			habEscritaReg => sig_hab_escrita_reg,
			saida1 => sig_reg_1,
			saida2 => sig_reg_2
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
			we => sig_hab_escrita_memoria, 
			re => sig_hab_leitura_memoria, 
			habilita => '1'
		);
		
		mux_pc : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
													port map( 	
														entradaA_MUX => sig_pc_inc_4,
														entradaB_MUX =>  sig_pc_inc_4_im,
														seletor_MUX => (sig_beq and sig_flag_zero),
														saida_MUX => sig_prox_pc
													);
								
		mux_rt_im : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
													port map( 	
														entradaA_MUX => sig_reg_2,
														entradaB_MUX =>  sig_estendido,
														seletor_MUX => sig_sel_mux_rt_im,
														saida_MUX => sig_entrada_ula_b
													);
													
		mux_ula_mem : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
													port map( 	
														entradaA_MUX => sig_ula_out,
														entradaB_MUX =>  sig_ram_out,
														seletor_MUX => sig_sel_mux_ula_mem,
														saida_MUX => sig_saida_mux_ula_mem
													);
													
		mux_rt_rd : entity work.muxGenerico2x1 generic map (larguraDados => 5)
													port map( 	
														entradaA_MUX => sig_dado(20 downto 16),
														entradaB_MUX => sig_dado(15 downto 11),
														seletor_MUX => sig_sel_mux_rt_rd,
														saida_MUX => sig_saida_mux_rt_rd
													);
													
		somador_beq : entity work.somadorGenerico  generic map (larguraDados => larguraDados)
													 port map( 
														entradaA => sig_pc_inc_4, 
														entradaB => sig_estendido(29 downto 0) & "00", 
														saida => sig_pc_inc_4_im
													 );
																 
																 
		sig_sel_mux_rt_rd			<= sinais_de_controle(0);
		sig_hab_escrita_reg  	<= sinais_de_controle(1);
		sig_sel_mux_rt_im  		<= sinais_de_controle(2);
		sig_ula_op					<= sinais_de_controle(3);
		sig_sel_mux_ula_mem		<= sinais_de_controle(4);
		sig_beq						<= sinais_de_controle(5);
		sig_hab_leitura_memoria <= sinais_de_controle(6);
		sig_hab_escrita_memoria <= sinais_de_controle(7);
		
		
		pc_out 						<= sig_pc;
		ram_out						<= sig_ram_out;
		reg_1_out					<= sig_reg_1;
		reg_2_out					<= sig_reg_2;
		flagZero						<= sig_flag_zero;
		ula_out						<= sig_ula_out;
		ula_in_1						<= sig_reg_1;
		ula_in_2						<= sig_estendido;


      
end architecture;