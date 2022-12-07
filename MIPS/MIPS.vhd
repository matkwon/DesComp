library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity MIPS is
    generic ( larguraDados : natural := 32 );
    port (
		CLOCK_50 : in std_logic;
		KEY: in std_logic_vector(3 downto 0);
		SW: in std_logic_vector(9 downto 0);
		
		-- portas para waveform:
--		pc_out, ula_out, regt0: out std_logic_vector(larguraDados-1 downto 0);
		
		LEDR: out std_logic_vector(9 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0)
	);
end entity;

architecture comportamento of MIPS is

	signal	CLK, sig_sel_mux_jr, sig_sel_mux_jmp, sig_sel_mux_beq,
			flag_zero_EX, flag_zero_M : std_logic;

	signal	pc_inc_4_im_M, sig_pc_jmp, reg_1_out_ID, data_IF, data_ID,
			sig_pc_out, pc_inc_4_IF, pc_inc_4_ID, sig_reg_wr, reg_2_out_ID,
			im_ext_ID, reg_1_out_EX, reg_2_out_EX, im_ext_EX, pc_inc_4_EX,
			pc_inc_4_im_EX, ula_out_EX, ula_out_M, reg_2_out_M, DOUT_M, DOUT_WB,
			pc_inc_4_M, pc_inc_4_WB, ula_out_WB, sig_mux_display : std_logic_vector(larguraDados-1 downto 0);

	signal	rt_ID, rd_ID, rt_EX, rd_EX, mux_out_rt_rd_EX, mux_out_rt_rd_M, mux_out_rt_rd_WB : std_logic_vector(4 downto 0);

	signal	ctrlEX_ID, ctrlEX_EX : std_logic_vector(9 downto 0);

	signal	ctrlM_ID, ctrlM_EX, ctrlM_M, ctrlWB_ID, ctrlWB_EX, ctrlWB_M, ctrlWB_WB : std_logic_vector(3 downto 0);

	signal	im_M, im_WB : std_logic_vector(15 downto 0);
	
	signal	out_IF_ID : std_logic_vector(63 downto 0);
	
	signal	out_ID_EX : std_logic_vector(155 downto 0);
	
	signal	out_EX_MEM : std_logic_vector(157 downto 0);
	
	signal	out_MEM_WB : std_logic_vector(120 downto 0);

	begin
		CLK <= KEY(0);
		
		FETCH : entity work.FETCH generic map (larguraDados => larguraDados) 
		port map (
			CLK => CLK,
			sel_mux_jr => sig_sel_mux_jr,
			sel_mux_jmp => sig_sel_mux_jmp,
			sel_mux_beq => sig_sel_mux_beq,
			pc_inc_4_im => pc_inc_4_im_M,
			pc_jmp => sig_pc_jmp,
			reg_1_out => reg_1_out_ID,
			DOUT => data_IF,
			pc_out => sig_pc_out,
			pc_out_inc_4 => pc_inc_4_IF
		);
		
		IF_ID: entity work.registradorGenerico generic map (larguraDados => 64) 
		port map (
			DIN => pc_inc_4_IF & data_IF, 
			DOUT => out_IF_ID, 
			ENABLE => '1', 
			CLK => CLK, 
			RST => '0'
		);
		
		pc_inc_4_ID <= out_IF_ID(63 downto 32);
		data_ID <= out_IF_ID(31 downto 0);
		
		DECODE : entity work.DECODE generic map (larguraDados => larguraDados) 
		port map (
			CLK => CLK,
			hab_reg => ctrlWB_WB(3),
			pc_inc_4_4u => pc_inc_4_ID(larguraDados-1 downto larguraDados-4),
			reg_sel => mux_out_rt_rd_WB,
			DIN => data_ID,
			reg_wr => sig_reg_wr,
			sel_mux_jr => sig_sel_mux_jr,
			sel_mux_jmp => sig_sel_mux_jmp,
			reg_1_out => reg_1_out_ID,
			reg_2_out => reg_2_out_ID,
			im_ext => im_ext_ID,
			pc_jmp => sig_pc_jmp,
			rt => rt_ID,
			rd => rd_ID,
			ctrlEX => ctrlEX_ID,
			ctrlM => ctrlM_ID,
			ctrlWB => ctrlWB_ID
		);
		
		ID_EX: entity work.registradorGenerico generic map (larguraDados => 156) 
		port map (
			DIN => ctrlEX_ID & ctrlM_ID & ctrlWB_ID & pc_inc_4_ID & reg_1_out_ID & reg_2_out_ID & im_ext_ID & rt_ID & rd_ID, 
			DOUT => out_ID_EX, 
			ENABLE => '1', 
			CLK => CLK, 
			RST => '0'
		);
		
		ctrlEX_EX <= out_ID_EX(155 downto 146);
		ctrlM_EX <= out_ID_EX(145 downto 142);
		ctrlWB_EX <= out_ID_EX(141 downto 138);
		pc_inc_4_EX <= out_ID_EX(137 downto 106);
		reg_1_out_EX <= out_ID_EX(105 downto 74);
		reg_2_out_EX <= out_ID_EX(73 downto 42);
		im_ext_EX <= out_ID_EX(41 downto 10);
		rt_EX <= out_ID_EX(9 downto 5);
		rd_EX <= out_ID_EX(4 downto 0);
		
		EXECUTE : entity work.EXECUTE generic map (larguraDados => larguraDados) 
		port map (
			CLK => CLK,
			rt => rt_EX,
			rd => rd_EX,
			ctrlEX => ctrlEX_EX,
			ULA_in_A => reg_1_out_EX,
			mux_in_A => reg_2_out_EX,
			im_ext => im_ext_EX,
			pc_inc_4 => pc_inc_4_EX,
			flag_zero => flag_zero_EX,
			ula_out => ula_out_EX,
			pc_inc_4_im => pc_inc_4_im_EX,
			mux_out_rt_rd => mux_out_rt_rd_EX
		);
		
		EX_MEM: entity work.registradorGenerico generic map (larguraDados => 158) 
		port map (
			DIN => ctrlM_EX & ctrlWB_EX & pc_inc_4_EX & pc_inc_4_im_EX & flag_zero_EX & ula_out_EX & reg_2_out_EX & mux_out_rt_rd_EX & im_ext_EX(15 downto 0), 
			DOUT => out_EX_MEM, 
			ENABLE => '1', 
			CLK => CLK, 
			RST => '0'
		);
		
		ctrlM_M <= out_EX_MEM(157 downto 154);
		ctrlWB_M <= out_EX_MEM(153 downto 150);
		pc_inc_4_M <= out_EX_MEM(149 downto 118);
		pc_inc_4_im_M <= out_EX_MEM(117 downto 86);
		flag_zero_M <= out_EX_MEM(85);
		ula_out_M <= out_EX_MEM(84 downto 53);
		reg_2_out_M <= out_EX_MEM(52 downto 21);
		mux_out_rt_rd_M <= out_EX_MEM(20 downto 16);
		im_M <= out_EX_MEM(15 downto 0);
		
		MEMORY : entity work.MEMORY generic map (larguraDados => larguraDados) 
		port map (
			CLK => CLK,
			flag_zero => flag_zero_M,
			ctrlM => ctrlM_M,
			addr => ula_out_M,
			data_write => reg_2_out_M,
			sel_mux_beq => sig_sel_mux_beq,
			DOUT => DOUT_M
		);
		
		MEM_WB: entity work.registradorGenerico generic map (larguraDados => 121) 
		port map (
			DIN => ctrlWB_M & pc_inc_4_M & ula_out_M & DOUT_M & mux_out_rt_rd_M & im_M, 
			DOUT => out_MEM_WB, 
			ENABLE => '1', 
			CLK => CLK, 
			RST => '0'
		);
		
		ctrlWB_WB <= out_MEM_WB(120 downto 117);
		pc_inc_4_WB <= out_MEM_WB(116 downto 85);
		ula_out_WB <= out_MEM_WB(84 downto 53);
		DOUT_WB <= out_MEM_WB(52 downto 21);
		mux_out_rt_rd_WB <= out_MEM_WB(20 downto 16);
		im_WB <= out_MEM_WB(15 downto 0);
		
		WRITEBACK : entity work.WRITEBACK generic map (larguraDados => larguraDados) 
		port map (
			CLK => CLK,
			ctrlWB => ctrlWB_WB,
			im => im_WB,
			data_read => DOUT_WB,
			ula_out => ula_out_WB,
			pc_inc_4 => pc_inc_4_WB,
			mux_out_ula_mem => sig_reg_wr
		);
													
		mux_display : entity work.muxGenerico4x1 generic map (larguraDados => larguraDados) 
		port map (
			entradaA_MUX => sig_pc_out,
			entradaB_MUX => pc_inc_4_EX,
			entradaC_MUX => ula_out_EX,
			entradaD_MUX => sig_reg_wr,
			seletor_MUX => SW(1 downto 0),
			saida_MUX => sig_mux_display
		);
		
		
		-- portas de teste waveform:
--		pc_out 						<= sig_pc;
--		ula_out						<= sig_ula_out;
		
		LEDR(9)						<= flag_zero_EX;
		LEDR(8)						<= ctrlWB_WB(3);
		
		LEDR(7)						<= sig_mux_display(31);
		LEDR(6)						<= sig_mux_display(30);
		LEDR(5)						<= sig_mux_display(29);
		LEDR(4)						<= sig_mux_display(28);
		LEDR(3)						<= sig_mux_display(27);
		LEDR(2)						<= sig_mux_display(26);
		LEDR(1)						<= sig_mux_display(25);
		LEDR(0)						<= sig_mux_display(24);
		
		DispHex5 : entity work.conversorHex7Seg port map (dadoHex => sig_mux_display(23 downto 20), saida7seg => HEX5);
		DispHex4 : entity work.conversorHex7Seg port map (dadoHex => sig_mux_display(19 downto 16), saida7seg => HEX4);
		DispHex3 : entity work.conversorHex7Seg port map (dadoHex => sig_mux_display(15 downto 12), saida7seg => HEX3);
		DispHex2 : entity work.conversorHex7Seg port map (dadoHex => sig_mux_display(11 downto 8), saida7seg => HEX2);
		DispHex1 : entity work.conversorHex7Seg port map (dadoHex => sig_mux_display(7 downto 4), saida7seg => HEX1);
		DispHex0 : entity work.conversorHex7Seg port map (dadoHex => sig_mux_display(3 downto 0), saida7seg => HEX0);

      
end architecture;