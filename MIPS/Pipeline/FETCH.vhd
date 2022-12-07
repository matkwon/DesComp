library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity FETCH is
    generic ( larguraDados : natural := 32 );
    port (
		CLK, sel_mux_jr, sel_mux_jmp, sel_mux_beq : in std_logic;
        pc_inc_4_im, pc_jmp, reg_1_out: in std_logic_vector(larguraDados-1 downto 0);
        DOUT, pc_out, pc_out_inc_4: out std_logic_vector(larguraDados-1 downto 0)
	);
end entity;

architecture comportamento of FETCH is
  	signal 	sig_pc, sig_pc_inc_4, sig_prox_pc, sig_saida_mux_jmp,
			sig_saida_mux_beq : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
	signal 	sig_beq, sig_bne, sig_mux_ula_zero : STD_LOGIC;
   
	begin
		
		pc_inc_4: entity work.somaConstante port map (
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
																		 
		rom : entity work.ROMMIPS port map (Endereco => sig_pc, Dado => DOUT);
		
		mux_beq : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados) 
		port map ( 	
			entradaA_MUX => sig_pc_inc_4,
			entradaB_MUX => pc_inc_4_im,
			seletor_MUX => sel_mux_beq,
			saida_MUX => sig_saida_mux_beq
		);
													
		mux_jmp : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados) 
		port map ( 	
			entradaA_MUX => sig_saida_mux_beq,
			entradaB_MUX => pc_jmp,
			seletor_MUX => sel_mux_jmp,
			saida_MUX => sig_saida_mux_jmp
		);
													
		mux_jr : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados) 
		port map ( 	
			entradaA_MUX => sig_saida_mux_jmp,
			entradaB_MUX => reg_1_out,
			seletor_MUX => sel_mux_jr,
			saida_MUX => sig_prox_pc
		);
        
        pc_out <= sig_pc;
        pc_out_inc_4 <= sig_pc_inc_4;
      
end architecture;