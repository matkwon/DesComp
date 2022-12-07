library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity MEMORY is
    generic ( larguraDados : natural := 32 );
    port (
		CLK, flag_zero : in std_logic;
		ctrlM : in std_logic_vector(3 downto 0);
		addr, data_write : in std_logic_vector(larguraDados-1 downto 0);
		sel_mux_beq : out std_logic;
		DOUT : out std_logic_vector(larguraDados-1 downto 0)
	);
end entity;

architecture comportamento of MEMORY is
	
	signal 	sig_mux_ula_zero: STD_LOGIC;
   
	begin
        
        ram : entity work.RAMMIPS port map (
			clk => CLK,
			Endereco => addr,
			Dado_in => data_write,
			Dado_out => DOUT,
			re => ctrlM(3), 
			we => ctrlM(2), 
			habilita => '1'
		);
													
		mux_ula_zero : entity work.mux2x1 port map ( 	
            entradaA_MUX => not flag_zero,
            entradaB_MUX => flag_zero,
            seletor_MUX => ctrlM(1),
            saida_MUX => sig_mux_ula_zero
        );

        sel_mux_beq <= sig_mux_ula_zero and (ctrlM(1) or ctrlM(0));

      
end architecture;