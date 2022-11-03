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
  constant CLT  : std_logic_vector(3 downto 0) := "1101";
  constant JLT  : std_logic_vector(3 downto 0) := "1110";
  constant ADDI : std_logic_vector(3 downto 0) := "1111";
  
  constant R0   : std_logic_vector(2 downto 0) := "000";
  constant R1   : std_logic_vector(2 downto 0) := "001";
  constant R2   : std_logic_vector(2 downto 0) := "010";
  constant R3   : std_logic_vector(2 downto 0) := "011";
  constant R4   : std_logic_vector(2 downto 0) := "100";
  constant R5   : std_logic_vector(2 downto 0) := "101";
  constant R6   : std_logic_vector(2 downto 0) := "110";
  constant R7   : std_logic_vector(2 downto 0) := "111";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
 
tmp(0) := LDI  & R0 & "010000000" ;	-- LDI R0, $128
tmp(1) := STA  & R0 & "100000000" ;	-- STA @LEDb, R0
tmp(2) := ADDI & R0 & "000000001" ;	-- ADDI R0, $1
tmp(3) := STA  & R0 & "100000000" ;	-- STA @LEDb, R0
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;