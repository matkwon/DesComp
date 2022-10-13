library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registradorFlagIgual is
    generic (
        larguraDados : natural := 8
    );
    port (DIN : in std_logic_vector(larguraDados-1 downto 0);
       DOUT : out std_logic;
       ENABLE : in std_logic;
       CLK,RST : in std_logic
        );
end entity;

architecture comportamento of registradorFlagIgual is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
            DOUT <= '0';    -- Código reconfigurável.
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
                        DOUT <= (not DIN(7)) and (not DIN(6)) and
										  (not DIN(5)) and (not DIN(4)) and 
										  (not DIN(3)) and (not DIN(2)) and
										  (not DIN(1)) and (not DIN(0));
                end if;
            end if;
        end if;
    end process;
end architecture;