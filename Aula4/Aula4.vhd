library ieee;
use ieee.std_logic_1164.all;

entity Aula4 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
	 LED_INSTRU  : out std_logic_vector(12 downto 0);
	 LED_OUT		 : out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;


architecture arquitetura of Aula4 is

-- Faltam alguns sinais:
  signal MUX_OUT : std_logic_vector (larguraDados-1 downto 0);
  signal RAM_OUT : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Endereco : std_logic_vector (7 downto 0);
  signal proxPC : std_logic_vector (7 downto 0);
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal habLeituraMEM : std_logic;
  signal habEscritaMEM : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal ROM_decoder : std_logic_vector (12 downto 0);
  signal Opcode : std_logic_vector (3 downto 0);
  signal RAM_addr_Valor : std_logic_vector (7 downto 0);
  signal Habilita_RAM : std_logic;
  signal Sinais_Controle : std_logic_vector (5 downto 0);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSub	ida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do decoder.
decoder :  entity work.decoderInstru
			  port map( opcode => Opcode,
							saida => Sinais_Controle);

RAM : entity work.memoriaRAM generic map (dataWidth => larguraDados, 
														addrWidth => larguraEnderecos)
          port map (addr => RAM_addr_Valor,
						  we => habEscritaMEM,
						  re => habLeituraMEM,
						  habilita => Habilita_RAM,
						  dado_in => REG1_ULA_A,
						  dado_out => RAM_OUT,
						  clk => CLK);

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => RAM_OUT,
                 entradaB_MUX =>  RAM_addr_Valor,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_OUT);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico generic map (larguraDados => larguraDados)
       port map (DIN => Saida_ULA,
					  DOUT => REG1_ULA_A,
					  ENABLE => Habilita_A,
					  CLK => CLK,
					  RST => Reset_A);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico generic map (larguraDados => larguraEnderecos)
     port map (DIN => proxPC,
					DOUT => Endereco,
					ENABLE => '1',
					CLK => CLK,
					RST => '0');

incrementaPC :  entity work.somaConstante generic map (larguraDados => larguraEnderecos,
																		 constante => 1)
					 port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSubPassa  generic map(larguraDados => larguraDados)
       port map (entradaA => REG1_ULA_A,
						  entradaB => MUX_OUT,
						  saida => Saida_ULA,
						  seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (addrWidth => larguraEnderecos)
		 port map (Endereco => Endereco, Dado => ROM_decoder);

RAM_addr_Valor <= ROM_decoder(7 downto 0);
Habilita_RAM <= ROM_decoder(8);
Reset_A <= '0';
Opcode <= ROM_decoder(12 downto 9);
SelMUX <= Sinais_Controle(5);
Habilita_A <= Sinais_Controle(4);
Operacao_ULA <= Sinais_Controle(3 downto 2);
habLeituraMEM <= Sinais_Controle(1);
habEscritaMEM <= Sinais_Controle(0);

LED_INSTRU <= ROM_decoder;
LED_OUT <= REG1_ULA_A;

PC_OUT <= Endereco;

end architecture;