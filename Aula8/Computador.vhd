library ieee;
use ieee.std_logic_1164.all;

entity Computador is
  -- Total de bits das entradas e saidas
	generic (
		larguraDados 	  : natural := 8;
		larguraEnderecos : natural := 9;
		larguraInstru 	  : natural := 13;
		larguraRAM		  : natural := 6;
		simulacao 		  : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
	);
	port (
		CLOCK_50   : in std_logic;
		KEY		  : in std_logic_vector(3 downto 0);
		LED8, LED9 : out std_logic;
		LEDR		  : out std_logic_vector(larguraDados-1 downto 0);
		PC_OUT	  : out std_logic_vector(larguraInstru-1 downto 0)
	);
end entity;


architecture arquitetura of Computador is

  signal CLK, RD, WR			  : std_logic;
  signal HabLR, HabL8, HabL9 : std_logic;
  signal DATA_RD, DATA_WR	  : std_logic_vector(larguraDados-1 downto 0);
  signal Endereco, EndROM	  : std_logic_vector(larguraEnderecos-1 downto 0);
  signal Instrucao 		 	  : std_logic_vector(larguraInstru-1 downto 0);
  signal EndPerif, Bloco 	  : std_logic_vector(larguraDados-1 downto 0);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSub	ida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

CPU : entity work.CPU generic map (larguraDados => larguraDados,
											  larguraEnderecos => larguraEnderecos,
											  larguraInstru => larguraInstru)
								 port map (CLK => CLK,
											  RST => '0',
											  INSTRU => Instrucao,
											  DIN => DATA_RD,
											  DOUT => DATA_WR,
											  ADDR => Endereco,
											  ROM_ADDR => EndROM,
											  RD => RD,
											  WR => WR);

RAM : entity work.memoriaRAM generic map (dataWidth => larguraDados, 
														addrWidth => larguraRAM)
										  port map (addr => Endereco(larguraRAM-1 downto 0),
														we => WR,
														re => RD,
														habilita => Bloco(0),
														dado_in => DATA_WR,
														dado_out => DATA_RD,
														clk => CLK);

ROM : entity work.memoriaROM generic map (addrWidth => larguraEnderecos)
										  port map (Endereco => EndROM, Dado => Instrucao);

DataAddr : entity work.dataAddresser port map (blk => Endereco(8 downto 6),
															  addr => Endereco(2 downto 0),
															  bloco => Bloco,
															  endereco => EndPerif);
															  
REGLED : entity work.registradorGenerico generic map (larguraDados => larguraDados)
														  port map (DIN => DATA_WR,
																	   DOUT => LEDR,
																	   ENABLE => HabLR,
																	   CLK => CLK,
																	   RST => '0');

FF1 : entity work.flipflop port map (DIN => DATA_WR(0),
												 DOUT => LED8,
												 ENABLE => HabL8,
												 CLK => CLK,
												 RST => '0');

FF2 : entity work.flipflop port map (DIN => DATA_WR(0),
												 DOUT => LED9,
												 ENABLE => HabL9,
												 CLK => CLK,
												 RST => '0');
        
															  
HabLR <= WR and Bloco(4) and EndPerif(0);
HabL8 <= WR and Bloco(4) and EndPerif(1);
HabL9 <= WR and Bloco(4) and EndPerif(2);
															  
end architecture;