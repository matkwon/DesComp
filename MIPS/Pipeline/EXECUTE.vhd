library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity EXECUTE is
    generic ( larguraDados : natural := 32 );
    port (
		CLK : in std_logic;
		rt, rd : in std_logic_vector(4 downto 0);
		ctrlEX : in std_logic_vector(9 downto 0);
		ULA_in_A, mux_in_A, im_ext, pc_inc_4 : in std_logic_vector(larguraDados-1 downto 0);
		flag_zero : out std_logic;
		ula_out, pc_inc_4_im : out std_logic_vector(larguraDados-1 downto 0);
		mux_out_rt_rd : out std_logic_vector(4 downto 0)
	);
end entity;

architecture comportamento of EXECUTE is

    signal 	sig_entrada_ula_b : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal	sig_saida_ula_ctrl: STD_LOGIC_VECTOR(4 downto 0);
	signal 	V : STD_LOGIC;
   
	begin
		
		ULActrl : entity work.ULActrl port map (
			opcode => ctrlEX(5 downto 0),
			funct => im_ext(5 downto 0),
			tipoR => ctrlEX(6),
			saida => sig_saida_ula_ctrl
		);
		
		ula : entity work.ULA 	generic map(larguraDados => larguraDados)
        port map (
            A => ULA_in_A, 
            B => sig_entrada_ula_b, 
            sel => sig_saida_ula_ctrl(1 downto 0),
            inverte_A => sig_saida_ula_ctrl(3),
            inverte_B => sig_saida_ula_ctrl(2),
            sel_slt => sig_saida_ula_ctrl(4),
            resultado => ula_out,
            zero => flag_zero,
            overflow => V
        );
								
		mux_rt_im : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map ( 	
            entradaA_MUX => mux_in_A,
            entradaB_MUX => im_ext,
            seletor_MUX => ctrlEX(7),
            saida_MUX => sig_entrada_ula_b
        );
													
		mux_rt_rd : entity work.muxGenerico4x1 generic map (larguraDados => 5)
        port map ( 	
            entradaA_MUX => rt,
            entradaB_MUX => rd,
            entradaC_MUX => 5x"1f",
            entradaD_MUX => 5x"0",
            seletor_MUX => ctrlEX(9 downto 8),
            saida_MUX => mux_out_rt_rd
        );
													
        somador_beq : entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map ( 
            entradaA => pc_inc_4, 
            entradaB => im_ext(29 downto 0) & "00", 
            saida => pc_inc_4_im
        );

      
end architecture;