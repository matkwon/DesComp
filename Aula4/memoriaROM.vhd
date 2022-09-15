library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
        tmp(0)  := LDI  & '0' & "00000100";   -- LDI $4, acumulador = 4
        tmp(1)  := STA  & '1' & "00000001";   -- STA @257, armazena em endereco = 257
        tmp(2)  := LDI  & '0' & "00000011";   -- LDI $3, acumulador = 3
        tmp(3)  := STA  & '1' & "00000000";   -- STA @256, armazena em endereco = 256
        tmp(4)  := SOMA & '1' & "00000000";   -- SOMA @256, acumulador = 3 + 3
        tmp(5)  := SOMA & '1' & "00000000";   -- SOMA @256, acumulador = 6 + 3
        tmp(6)  := SUB  & '1' & "00000001";   -- SUB @257, acumulador = 9 - 4
        tmp(7)  := STA  & '1' & "00000010";   -- STA @258, armazena em endereco = 258
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;