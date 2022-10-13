library ieee;
use ieee.std_logic_1164.all;

entity dataAddresser is
	port (
		blk, addr		 : in std_logic_vector(2 downto 0);
		bloco, endereco : out std_logic_vector(7 downto 0)
	);
end entity;

architecture comportamento of dataAddresser is

begin
	
decBloco		: entity work.decoder3x8 port map (entrada => blk, saida => bloco);
decEndereco : entity work.decoder3x8 port map (entrada => addr, saida => endereco);

end architecture;