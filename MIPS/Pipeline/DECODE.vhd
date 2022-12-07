library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity DECODE is
    generic ( larguraDados : natural := 32 );
    port (
		CLK, hab_reg, sel_mux_jr, sel_mux_jmp : in std_logic;
		pc_inc_4_4u : in std_logic_vector(3 downto 0);
		reg_sel : in std_logic_vector(4 downto 0);
		DIN, reg_wr : in std_logic_vector(larguraDados-1 downto 0);
		reg_1_out, reg_2_out, im_ext, pc_jmp : out std_logic_vector(larguraDados-1 downto 0);
		rt, rd : out std_logic_vector(4 downto 0);
		ctrlEX : out std_logic_vector(9 downto 0);
		ctrlM, ctrlWB : out std_logic_vector(3 downto 0)
	);
end entity;

architecture comportamento of DECODE is
								
	signal	sinais_de_controle: STD_LOGIC_VECTOR(14 downto 0);
	
	signal 	sig_tipo_r, sig_hab_escrita_reg, sig_beq,
			sig_hab_leitura_memoria, sig_lbu, sig_bne,
			sig_hab_escrita_memoria, sig_sel_mux_rt_im : STD_LOGIC;
	
	signal	sig_sel_mux_ula_mem, sig_sel_mux_rt_rd: STD_LOGIC_VECTOR(1 downto 0);
   
	begin
		
		decoder_instru: entity work.decoderInstru 
		port map (
			opcode => DIN(31 downto 26),
			funct => DIN(5 downto 0),
			saida  => sinais_de_controle
		);
		
		banco_reg : entity work.bancoReg 
		port map (
			clk => CLK,
			endereco1 => DIN(25 downto 21),
			endereco2 => DIN(20 downto 16),
			endereco3 => reg_sel,
			dadoEscrita3 => reg_wr,
			habEscritaReg => hab_reg,
			saida1 => reg_1_out,
			saida2 => reg_2_out
		);
		
		estensor_de_sinal : entity work.estendeSinalGenerico 
		generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
		port map (
			estendeSinal_IN => DIN(15 downto 0), 
			oriandi => sinais_de_controle(4),
			estendeSinal_OUT => im_ext
		);

		pc_jmp <= pc_inc_4_4u & DIN(25 downto 0) & "00";

        rt <= DIN(20 downto 16);
        rd <= DIN(15 downto 11);

        ctrlEX <= sig_sel_mux_rt_rd & sig_sel_mux_rt_im & sig_tipo_r & DIN(31 downto 26);

		sig_sel_mux_rt_rd		<= sinais_de_controle(3 downto 2);
		sig_sel_mux_rt_im  		<= sinais_de_controle(6);
		sig_tipo_r				<= sinais_de_controle(7);

        ctrlM <= sig_hab_leitura_memoria & sig_hab_escrita_memoria & sig_beq & sig_bne;
        
		sig_hab_leitura_memoria <= sinais_de_controle(13);
		sig_hab_escrita_memoria <= sinais_de_controle(14);
		sig_beq					<= sinais_de_controle(10);
		sig_bne					<= sinais_de_controle(11);
            
        ctrlWB <= sig_hab_escrita_reg & sig_sel_mux_ula_mem & sig_lbu;

		sig_hab_escrita_reg  	<= sinais_de_controle(5);
		sig_sel_mux_ula_mem		<= sinais_de_controle(9 downto 8);
		sig_lbu					<= sinais_de_controle(12);

		sel_mux_jr <= sinais_de_controle(0);
		sel_mux_jmp	<= sinais_de_controle(1);
      
end architecture;