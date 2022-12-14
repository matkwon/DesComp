library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA is
    generic ( larguraDados : natural := 8 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flagZero: out STD_LOGIC
    );
end entity;

architecture comportamento of ULA is
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal soma 	  : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal passa 	  : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal andd 	  : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    begin
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      passa     <= STD_LOGIC_VECTOR(unsigned(entradaB));
		andd		 <= STD_LOGIC_VECTOR(unsigned(entradaA) and unsigned(entradaB));
      saida <= subtracao when (seletor = "00") else
					soma when (seletor = "01") else
					passa when (seletor = "10") else
					andd;
		flagZero <= '1' when unsigned(saida) = 0 else '0';
end architecture;