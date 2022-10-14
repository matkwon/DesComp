library ieee;
use ieee.std_logic_1164.all;

entity Contador is
  -- Total de bits das entradas e saidas
	generic (
		larguraDados 	  : natural := 8;
		larguraEnderecos : natural := 9;
		larguraInstru 	  : natural := 13;
		larguraRAM		  : natural := 6;
		simulacao 		  : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
	);
	port (
		CLOCK_50   	 : in std_logic;
		KEY		  	 : in std_logic_vector(3 downto 0);
		FPGA_RESET_N : in std_logic;
		SW			  	 : in std_logic_vector(9 downto 0);
		LEDR		  	 : out std_logic_vector(9 downto 0);
		PC_OUT	  	 : out std_logic_vector(larguraEnderecos-1 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5	: out std_logic_vector(6 downto 0)
	);
end entity;


architecture arquitetura of Contador is

  signal CLK, RD, WR			  : std_logic;
  signal HabLR, HabL8, HabL9,
			HabHex0, HabHex1, HabHex2,
			HabHex3, HabHex4, HabHex5,
			HabSWb, HabSW8, HabSW9,
			HabKEY0, HabKEY1, HabKEY2,
			HabKEY3, HabFPGAReset : std_logic;
  signal SWb					  : std_logic_vector(7 downto 0);
  signal DATA_RD, DATA_WR	  : std_logic_vector(larguraDados-1 downto 0);
  signal Endereco, EndROM	  : std_logic_vector(larguraEnderecos-1 downto 0);
  signal Instrucao 		 	  : std_logic_vector(larguraInstru-1 downto 0);
  signal EndPerif, Bloco 	  : std_logic_vector(larguraDados-1 downto 0);
  signal limpa_leitura_KEY0,
			limpa_leitura_KEY1,
			limpa_leitura_FPGA_RESET : std_logic;
  
  signal LED8, LED9 : std_logic;
  signal LEDb		  : std_logic_vector(larguraDados-1 downto 0);
  signal KEY0, KEY1, KEY2, KEY3, FPGA_RESET : std_logic;
  
  signal FF_TRI0, FF_TRI1, FF_TRI2, FF_TRI3, FF_TRI_FPGA_RESET : std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
CLK <= CLOCK_50;
--detectorSub0: work.edgeDetector(bordaSubida)
--        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
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
																	   DOUT => LEDb,
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
												 
BORDA_KEY0 : entity work.edgeDetector(bordaDescida)
        port map (clk => CLK, entrada => KEY(0), saida => KEY0);
												 
BORDA_KEY1 : entity work.edgeDetector(bordaDescida)
        port map (clk => CLK, entrada => KEY(1), saida => KEY1);
												 
BORDA_KEY2 : entity work.edgeDetector(bordaDescida)
        port map (clk => CLK, entrada => KEY(2), saida => KEY2);
												 
BORDA_KEY3 : entity work.edgeDetector(bordaDescida)
        port map (clk => CLK, entrada => KEY(3), saida => KEY3);
												 
BORDA_FPGA_RESET : entity work.edgeDetector(bordaDescida)
        port map (clk => CLK, entrada => FPGA_RESET_N, saida => FPGA_RESET);
												 
FF_KEY0 : entity work.flipflop port map (DIN => '1',
												 DOUT => FF_TRI0,
												 ENABLE => '1',
												 CLK => KEY0,
												 RST => limpa_leitura_KEY0);
												 
FF_KEY1 : entity work.flipflop port map (DIN => '1',
												 DOUT => FF_TRI1,
												 ENABLE => '1',
												 CLK => KEY1,
												 RST => limpa_leitura_KEY1);
												 
FF_KEY2 : entity work.flipflop port map (DIN => '1',
												 DOUT => FF_TRI2,
												 ENABLE => '1',
												 CLK => KEY2,
												 RST => '0');
												 
FF_KEY3 : entity work.flipflop port map (DIN => '1',
												 DOUT => FF_TRI3,
												 ENABLE => '1',
												 CLK => KEY3,
												 RST => '0');
												 
FF_FPGA_RESET : entity work.flipflop port map (DIN => '1',
												 DOUT => FF_TRI_FPGA_RESET,
												 ENABLE => '1',
												 CLK => FPGA_RESET,
												 RST => limpa_leitura_FPGA_RESET);
												 


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

TristateSWb : entity work.buffer_3_state_8x8
				  port map(entrada => SWb, habilita => HabSWb, saida => DATA_RD);

TristateSW8 : entity work.buffer_3_state_1x8
				  port map(entrada => SW(8), habilita => HabSW8, saida => DATA_RD);

TristateSW9 : entity work.buffer_3_state_1x8
				  port map(entrada => SW(9), habilita => HabSW9, saida => DATA_RD);

TristateKEY0 : entity work.buffer_3_state_1x8
					port map(entrada => FF_TRI0, habilita => HabKEY0, saida => DATA_RD);

TristateKEY1 : entity work.buffer_3_state_1x8
					port map(entrada => FF_TRI1, habilita => HabKEY1, saida => DATA_RD);

TristateKEY2 : entity work.buffer_3_state_1x8
					port map(entrada => FF_TRI2, habilita => HabKEY2, saida => DATA_RD);

TristateKEY3 : entity work.buffer_3_state_1x8
					port map(entrada => FF_TRI3, habilita => HabKEY3, saida => DATA_RD);

TristateFPGAReset : entity work.buffer_3_state_1x8
						  port map(entrada => FF_TRI_FPGA_RESET, habilita => HabFPGAReset, saida => DATA_RD);

limpa_leitura_KEY0 <= WR when (Endereco = "111111111") else '0';
limpa_leitura_KEY1 <= WR when (Endereco = "111111110") else '0';
limpa_leitura_FPGA_RESET <= WR when (Endereco = "111111101") else '0';
	 
HabLR <= WR and Bloco(4) and EndPerif(0) and not Endereco(5);
HabL8 <= WR and Bloco(4) and EndPerif(1) and not Endereco(5);
HabL9 <= WR and Bloco(4) and EndPerif(2) and not Endereco(5);

HabHex0 <= WR and Bloco(4) and EndPerif(0) and Endereco(5);
HabHex1 <= WR and Bloco(4) and EndPerif(1) and Endereco(5);
HabHex2 <= WR and Bloco(4) and EndPerif(2) and Endereco(5);
HabHex3 <= WR and Bloco(4) and EndPerif(3) and Endereco(5);
HabHex4 <= WR and Bloco(4) and EndPerif(4) and Endereco(5);
HabHex5 <= WR and Bloco(4) and EndPerif(5) and Endereco(5);

SWb <= SW(7) & SW(6) & SW(5) & SW(4) & SW(3) & SW(2) & SW(1) & SW(0);
HabSWb <= RD and Bloco(5) and EndPerif(0) and not Endereco(5);
HabSW8 <= RD and Bloco(5) and EndPerif(1) and not Endereco(5);
HabSW9 <= RD and Bloco(5) and EndPerif(2) and not Endereco(5);

HabKEY0 <= RD and Bloco(5) and EndPerif(0) and Endereco(5);
HabKEY1 <= RD and Bloco(5) and EndPerif(1) and Endereco(5);
HabKEY2 <= RD and Bloco(5) and EndPerif(2) and Endereco(5);
HabKEY3 <= RD and Bloco(5) and EndPerif(3) and Endereco(5);
HabFPGAReset <= RD and Bloco(5) and EndPerif(4) and Endereco(5);


LEDR <= LED9 & LED8 & LEDb;
PC_OUT <= EndROM;

end architecture;