library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 16;
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
  constant ANDD : std_logic_vector(3 downto 0) := "0100";
  constant LDI  : std_logic_vector(3 downto 0) := "0101";
  constant STA  : std_logic_vector(3 downto 0) := "0110";
  constant JMP  : std_logic_vector(3 downto 0) := "0111";
  constant JEQ  : std_logic_vector(3 downto 0) := "1000";
  constant CEQ  : std_logic_vector(3 downto 0) := "1001";
  constant JSR  : std_logic_vector(3 downto 0) := "1010";
  constant RET  : std_logic_vector(3 downto 0) := "1011";
  constant JNE  : std_logic_vector(3 downto 0) := "1100";
  constant JLT  : std_logic_vector(3 downto 0) := "1101";
  constant CLT  : std_logic_vector(3 downto 0) := "1110";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
  
tmp(0) := "0101" & "000" & "000001000" ;	-- LDI R0, $8
tmp(1) := LDI & "001" & "000000001" ;	-- LDI R1, $1
tmp(2) := STA & "001" & "000000001" ;	-- STA @1, R1
tmp(3) := "0110" & "000" & "100000000" ;	-- STA @LEDb, R0
tmp(4) := SOMA & "000" & "000000001" ;	-- SOMA R0, $1
tmp(5) := "0110" & "000" & "100000000" ;	-- STA @LEDb, R0
tmp(6) := "0110" & "000" & "000000000" ;	-- STA @0, R0
tmp(7) := "0101" & "001" & "000010000" ;	-- LDI R1, $16
tmp(8) := CLT & "001" & "000000000" ;	-- CLT R1, @0
tmp(9) := JLT & "000" & "000000100" ;	-- JLT @4
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;