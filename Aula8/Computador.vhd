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
		SW0, SW1, SW2,
		SW3, SW4, SW5,
		SW6, SW7, SW8,
		SW9, KEY0, KEY1,
		KEY2, KEY3, FPGA_RESET : in std_logic;
		LED8, LED9 : out std_logic;
		LEDR		  : out std_logic_vector(larguraDados-1 downto 0);
		PC_OUT	  : out std_logic_vector(larguraEnderecos-1 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5	: out std_logic_vector(6 downto 0)
	);
end entity;


architecture arquitetura of Computador is

  signal CLK, RD, WR			  : std_logic;
  signal HabLR, HabL8, HabL9,
			HabHex0, HabHex1, HabHex2,
			HabHex3, HabHex4, HabHex5,
			HabSWR, HabSW8, HabSW9,
			HabKEY0, HabKEY1, HabKEY2,
			HabKEY3, HabFPGAReset : std_logic;
  signal SWR					  : std_logic_vector(7 downto 0);
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

Display0 : entity work.reg7Seg port map(Dado => DATA_WR(3 downto 0),
													 Habilita => HabHex0,
													 CLK => CLK,
													 saida7seg => HEX0);

Display1 : entity work.reg7Seg port map(Dado => DATA_WR(3 downto 0),
													 Habilita => HabHex1,
													 CLK => CLK,
													 saida7seg => HEX1);

Display2 : entity work.reg7Seg port map(Dado => DATA_WR(3 downto 0),
													 Habilita => HabHex2,
													 CLK => CLK,
													 saida7seg => HEX2);

Display3 : entity work.reg7Seg port map(Dado => DATA_WR(3 downto 0),
													 Habilita => HabHex3,
													 CLK => CLK,
													 saida7seg => HEX3);

Display4 : entity work.reg7Seg port map(Dado => DATA_WR(3 downto 0),
													 Habilita => HabHex4,
													 CLK => CLK,
													 saida7seg => HEX4);

Display5 : entity work.reg7Seg port map(Dado => DATA_WR(3 downto 0),
													 Habilita => HabHex5,
													 CLK => CLK,
													 saida7seg => HEX5);


SWR <= SW7 & SW6 & SW5 & SW4 & SW3 & SW2 & SW1 & SW0;
DATA_RD <= "ZZZZZZZZ" when (HabSWR = '0') else SWR;
DATA_RD <= "ZZZZZZZZ" when (HabSW8 = '0') else "0000000" & SW8;
DATA_RD <= "ZZZZZZZZ" when (HabSW9 = '0') else "0000000" & SW9;
DATA_RD <= "ZZZZZZZZ" when (HabKEY0 = '0') else "0000000" & KEY0;
DATA_RD <= "ZZZZZZZZ" when (HabKEY1 = '0') else "0000000" & KEY1;
DATA_RD <= "ZZZZZZZZ" when (HabKEY2 = '0') else "0000000" & KEY2;
DATA_RD <= "ZZZZZZZZ" when (HabKEY3 = '0') else "0000000" & KEY3;
DATA_RD <= "ZZZZZZZZ" when (HabFPGAReset = '0') else "0000000" & FPGA_RESET;
	 
HabLR <= WR and Bloco(4) and EndPerif(0) and not Endereco(5);
HabL8 <= WR and Bloco(4) and EndPerif(1) and not Endereco(5);
HabL9 <= WR and Bloco(4) and EndPerif(2) and not Endereco(5);

HabHex0 <= WR and Bloco(4) and EndPerif(0) and Endereco(5);
HabHex1 <= WR and Bloco(4) and EndPerif(1) and Endereco(5);
HabHex2 <= WR and Bloco(4) and EndPerif(2) and Endereco(5);
HabHex3 <= WR and Bloco(4) and EndPerif(3) and Endereco(5);
HabHex4 <= WR and Bloco(4) and EndPerif(4) and Endereco(5);
HabHex5 <= WR and Bloco(4) and EndPerif(5) and Endereco(5);

HabSWR <= RD and Bloco(5) and EndPerif(0) and not Endereco(5);
HabSW8 <= RD and Bloco(5) and EndPerif(1) and not Endereco(5);
HabSW9 <= RD and Bloco(5) and EndPerif(2) and not Endereco(5);

HabKEY0 <= RD and Bloco(5) and EndPerif(0) and Endereco(5);
HabKEY1 <= RD and Bloco(5) and EndPerif(1) and Endereco(5);
HabKEY2 <= RD and Bloco(5) and EndPerif(2) and Endereco(5);
HabKEY3 <= RD and Bloco(5) and EndPerif(3) and Endereco(5);
HabFPGAReset <= RD and Bloco(5) and EndPerif(4) and Endereco(5);



PC_OUT <= EndROM;

end architecture;