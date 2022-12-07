library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity WRITEBACK is
    generic ( larguraDados : natural := 32 );
    port (
		CLK : in std_logic;
        ctrlWB : in std_logic_vector(3 downto 0);
        im : in std_logic_vector(15 downto 0);
        data_read, ula_out, pc_inc_4 : in std_logic_vector(larguraDados-1 downto 0);
        mux_out_ula_mem : out std_logic_vector(larguraDados-1 downto 0)
	);
end entity;

architecture comportamento of WRITEBACK is

    signal 	sig_saida_mux_lbu : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   
	begin
													
		mux_ula_mem : entity work.muxGenerico4x1 generic map (larguraDados => larguraDados) port map (
			entradaA_MUX => ula_out,
			entradaB_MUX => sig_saida_mux_lbu,
			entradaC_MUX => pc_inc_4,
			entradaD_MUX => im & 16x"0",
			seletor_MUX => ctrlWB(2 downto 1),
			saida_MUX => mux_out_ula_mem
		);
				
		mux_lbu : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados) port map ( 	
			entradaA_MUX => data_read,
			entradaB_MUX => 24x"0" & data_read(7 downto 0),
			seletor_MUX => ctrlWB(0),
			saida_MUX => sig_saida_mux_lbu
		);

      
end architecture;