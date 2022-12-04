library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity bancoReg is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
        endereco1,
		  endereco2,
		  endereco3       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        dadoEscrita3    : in std_logic_vector((larguraDados-1) downto 0);
        habEscritaReg   : in std_logic := '0';
        saida1,
		  saida2				: out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of bancoReg is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

function initMemory
        return memoria_t is variable tmp : memoria_t := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
		  
        tmp(8)  := 32x"00";  -- $t0 = 0x00
        tmp(9)  := 32x"0A";  -- $t1 = 0x0A
        tmp(10) := 32x"0B";  -- $t2 = 0x0B
        tmp(11) := 32x"0C";  -- $t3 = 0x0C
        tmp(12) := 32x"0D";  -- $t4 = 0x0D
        tmp(13) := 32x"16";  -- $t5 = 0x16
        tmp(14) := 32x"FFFFFFFF";  -- $t6 = 0xFFFFFFFF
        return tmp;
    end initMemory;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t := initMemory;
    constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');
begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (habEscritaReg = '1') then
                registrador(to_integer(unsigned(endereco3))) := dadoEscrita3;
            end if;
        end if;
    end process;
    -- Se endereco = 0 : retorna ZERO
	 saida1 <= zero when to_integer(unsigned(endereco1)) = to_integer(unsigned(zero)) else registrador(to_integer(unsigned(endereco1)));
    saida2 <= zero when to_integer(unsigned(endereco2)) = to_integer(unsigned(zero)) else registrador(to_integer(unsigned(endereco2)));
--    saida3 <= zero when to_integer(unsigned(endereco3)) = to_integer(unsigned(zero)) else registrador(to_integer(unsigned(endereco3)));
end architecture;