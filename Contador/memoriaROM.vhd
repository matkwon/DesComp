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
  constant ANDD : std_logic_vector(3 downto 0) := "0100";
  constant LDI  : std_logic_vector(3 downto 0) := "0101";
  constant STA  : std_logic_vector(3 downto 0) := "0110";
  constant JMP  : std_logic_vector(3 downto 0) := "0111";
  constant JEQ  : std_logic_vector(3 downto 0) := "1000";
  constant CEQ  : std_logic_vector(3 downto 0) := "1001";
  constant JSR  : std_logic_vector(3 downto 0) := "1010";
  constant RET  : std_logic_vector(3 downto 0) := "1011";

  constant HEX0 : std_logic_vector(8 downto 0) := "100100000";
  constant HEX1 : std_logic_vector(8 downto 0) := "100100001";
  constant HEX2 : std_logic_vector(8 downto 0) := "100100010";
  constant HEX3 : std_logic_vector(8 downto 0) := "100100011";
  constant HEX4 : std_logic_vector(8 downto 0) := "100100100";
  constant HEX5 : std_logic_vector(8 downto 0) := "100100101";
  constant LEDR : std_logic_vector(8 downto 0) := "100000000";
  constant LED8 : std_logic_vector(8 downto 0) := "100000001";
  constant LED9 : std_logic_vector(8 downto 0) := "100000010";

  constant LIM0 : std_logic_vector(8 downto 0) := "000000010";
  constant LIM1 : std_logic_vector(8 downto 0) := "000000011";
  constant LIM2 : std_logic_vector(8 downto 0) := "000000100";
  constant LIM3 : std_logic_vector(8 downto 0) := "000000101";
  constant LIM4 : std_logic_vector(8 downto 0) := "000000110";
  constant LIM5 : std_logic_vector(8 downto 0) := "000000111";

  constant MEM0 : std_logic_vector(8 downto 0) := "000001000";
  constant MEM1 : std_logic_vector(8 downto 0) := "000001001";
  constant MEM2 : std_logic_vector(8 downto 0) := "000001011";
  constant MEM3 : std_logic_vector(8 downto 0) := "000001100";
  constant MEM4 : std_logic_vector(8 downto 0) := "000001101";
  constant MEM5 : std_logic_vector(8 downto 0) := "000001110";

  constant FLAG : std_logic_vector(8 downto 0) := "000001111";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
  
  
        tmp(0)   := LDA   & "101000000";
		  tmp(1)   := STA   & "100100000";
        tmp(2)   := LDA   & "101000001";
        tmp(3)   := STA   & "100100001";
        tmp(4)   := LDA   & "101000010";
        tmp(5)   := STA   & "100100010";
        tmp(6)   := LDA   & "101100000";
        tmp(7)   := STA   & "100100011";
        tmp(8)   := LDA   & "101100001";
        tmp(9)   := STA   & "100100100";
        tmp(10)  := LDA   & "101100010";
        tmp(11)  := STA   & "100100101";
        tmp(12)  := LDA   & "101100011";
        tmp(13)  := STA   & "100000001";
        tmp(14)  := LDA   & "101100100";
        tmp(15)  := STA   & "100000010";
        tmp(16)  := JMP   & "000000000";
  
--	  -- SETUP
--	  
--		  -- Carrega 0 e 1 na RAM
--		  tmp(0)   := LDI  & "000000001";
--		  tmp(1)   := STA  & "000000001";
--		  tmp(2)   := LDI  & "000001010";
--		  tmp(3)   := STA  & "000001010";
--		  tmp(4)   := LDI  & "000000000";
--		  tmp(5)   := STA  & "000000000";
--		  
--		  -- Zera LEDs e Displays
--		  tmp(6)   := STA  & HEX0;
--		  tmp(7)   := STA  & HEX1;
--		  tmp(8)   := STA  & HEX2;
--		  tmp(9)   := STA  & HEX3;
--		  tmp(10)  := STA  & HEX4;
--		  tmp(11)  := STA  & HEX5;
--		  tmp(12)  := STA  & LEDR;
--		  tmp(13)  := STA  & LED8;
--		  tmp(14)  := STA  & LED9;
--		  
--		  -- Memória dos displays
--		  tmp(15)  := STA  & MEM0;
--		  tmp(16)  := STA  & MEM1;
--		  tmp(17)  := STA  & MEM2;
--		  tmp(18)  := STA  & MEM3;
--		  tmp(19)  := STA  & MEM4;
--		  tmp(20)  := STA  & MEM5;
--		  
--		  -- Flag inibe contador
--		  tmp(21)  := STA  & FLAG;
--		  
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;