library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        larguraInstru : natural := 16;
		  larguraEndRegs : natural := 3
  );
  port   (
    CLK : in std_logic;
    RST : in std_logic;
    INSTRU: in std_logic_vector(larguraInstru-1 downto 0);
    DIN: in std_logic_vector(larguraDados-1 downto 0);
	 DOUT: out std_logic_vector(larguraDados-1 downto 0);
    ADDR, ROM_ADDR: out std_logic_vector(larguraEnderecos-1 downto 0);
	 RD, WR: out std_logic
  );
end entity;


architecture arquitetura of CPU is

-- Faltam alguns sinais:
  signal MUX_OUT, Saida_ULA, RegULA : std_logic_vector (larguraDados-1 downto 0);
  signal proxPC, MUXPC, lastAddr : std_logic_vector (larguraEnderecos-1 downto 0);
  signal SelMUX, FlagZero : std_logic;
  signal SelMUX2 : std_logic_vector(1 downto 0);
  signal JMP, JEQ, RET, JSR, JNE, FlagIgual : std_logic;
  signal HabilitaRegs, HabilitaFlag, HabEscritaEnd : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal Opcode : std_logic_vector (3 downto 0);
  signal Sinais_Controle : std_logic_vector (12 downto 0);
  signal EndRet_MUX : std_logic_vector (larguraEnderecos-1 downto 0);

begin

-- O port map completo do decoder.
decoder :  entity work.decoderInstru
			  port map(opcode => Opcode,
						  saida => Sinais_Controle);

-- O port map completo do MUX1.
MUXULA :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
													 port map (entradaA_MUX => DIN,
																  entradaB_MUX => INSTRU(larguraDados-1 downto 0),
																  seletor_MUX => SelMUX,
																  saida_MUX => MUX_OUT);

-- O port map completo do MUX2.
MUX_PC :  entity work.muxGenerico4x1 generic map (larguraDados => larguraEnderecos)
													 port map (entradaA_MUX => proxPC,
																  entradaB_MUX => INSTRU(larguraEnderecos-1 downto 0),
																  entradaC_MUX => EndRet_MUX,
																  entradaD_MUX => "000000000",
																  seletor_MUX => SelMUX2,
																  saida_MUX => MUXPC);
					  
-- O port map completo dos Registradores acumuladores.
REGs : entity work.bancoRegistradoresArqRegMem generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraEndRegs)
																  port map (clk => CLK,
																				endereco => INSTRU(larguraInstru-4-1 downto larguraInstru-4-larguraEndRegs),
																				dadoEscrita => Saida_ULA,
																				habilitaEscrita => HabilitaRegs,
																				saida  => RegULA);

-- O port map completo do Flag de Igual.
FF_Zero : entity work.flipflop port map (DIN => FlagZero,
													  DOUT => FlagIgual,
													  ENABLE => HabilitaFlag,
													  CLK => CLK,
													  RST => RST);

-- O port map completo do registrador End Retorno.
REGRet : entity work.registradorGenerico generic map (larguraDados => larguraEnderecos)
														  port map (DIN => proxPC,
														  			   DOUT => EndRet_MUX,
														  			   ENABLE => HabEscritaEnd,
														  			   CLK => CLK,
														  			   RST => RST);

-- O port map completo da L??gica de Desvio.
LogicaDesvio : entity work.logicaDesvio
       port map (JMP => JMP,
					  RET => RET,
					  JSR => JSR,
					  JEQ => JEQ,
					  JNE => JNE,
					  FlagIgual => FlagIgual,
					  DOUT => SelMux2);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico generic map (larguraDados => larguraEnderecos)
     port map (DIN => MUXPC,
					DOUT => lastAddr,
					ENABLE => '1',
					CLK => CLK,
					RST => '0');

incrementaPC : entity work.somaConstante generic map (larguraDados => larguraEnderecos,
																		constante => 1)
														  port map (entrada => lastAddr, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULA generic map (larguraDados => larguraDados)
								  port map (entradaA => RegULA,
								  			   entradaB => MUX_OUT,
								  			   saida => Saida_ULA,
								  			   seletor => Operacao_ULA,
												flagZero => FlagZero);


Opcode <= INSTRU(larguraInstru-1 downto larguraInstru-4);

JNE <= Sinais_Controle(12);
HabEscritaEnd <= Sinais_Controle(11);
JMP <= Sinais_Controle(10);
RET <= Sinais_Controle(9);
JSR <= Sinais_Controle(8);
JEQ <= Sinais_Controle(7);
SelMUX <= Sinais_Controle(6);
HabilitaRegs <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
HabilitaFlag <= Sinais_Controle(2);

DOUT <= RegULA;
ROM_ADDR <= lastAddr;
ADDR <= INSTRU(larguraEnderecos-1 downto 0);
RD <= Sinais_Controle(1);
WR <= Sinais_Controle(0);



end architecture;