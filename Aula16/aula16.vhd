library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity aula16 is
    generic ( larguraDados : natural := 32 );
    port (
		A, B 			: in std_logic_vector(larguraDados-1 downto 0);
		inverte_B 	: in std_logic;
		sel	 		: in std_logic_vector(1 downto 0);
		resultado 	: out std_logic_vector(larguraDados-1 downto 0);
		zero 			: out std_logic
	 );
end entity;

architecture comportamento of aula16 is
   signal 	carry0, carry1, carry2, carry3, carry4, carry5, carry6, carry7, carry8,
	carry9, carry10, carry11, carry12, carry13, carry14, carry15, carry16, carry17,
	carry18, carry19, carry20, carry21, carry22, carry23, carry24, carry25, carry26,
	carry27, carry28, carry29, carry30, carry_out, overflow: std_logic;
   
	begin
		ULA0: entity work.ULA1Bit port map (
			A => A(0),
			B => B(0),
			carry_in => inverte_B,
			carry_out => carry0,
			inverte_B => inverte_B,
			sel => sel,
			slt => overflow,
			resultado => resultado(0)
		);
		
		ULA1: entity work.ULA1Bit port map (
			A => A(1),
			B => B(1),
			carry_in => carry0,
			carry_out => carry1,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(1)
		);
		
		ULA2: entity work.ULA1Bit port map (
			A => A(2),
			B => B(2),
			carry_in => carry1,
			carry_out => carry2,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(2)
		);
		
		ULA3: entity work.ULA1Bit port map (
			A => A(3),
			B => B(3),
			carry_in => carry2,
			carry_out => carry3,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(3)
		);
		
		ULA4: entity work.ULA1Bit port map (
			A => A(4),
			B => B(4),
			carry_in => carry3,
			carry_out => carry4,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(4)
		);
		
		ULA5: entity work.ULA1Bit port map (
			A => A(5),
			B => B(5),
			carry_in => carry4,
			carry_out => carry5,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(5)
		);
		
		ULA6: entity work.ULA1Bit port map (
			A => A(6),
			B => B(6),
			carry_in => carry5,
			carry_out => carry6,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(6)
		);
		
		ULA7: entity work.ULA1Bit port map (
			A => A(7),
			B => B(7),
			carry_in => carry6,
			carry_out => carry7,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(7)
		);
		
		ULA8: entity work.ULA1Bit port map (
			A => A(8),
			B => B(8),
			carry_in => carry7,
			carry_out => carry8,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(8)
		);
		
		ULA9: entity work.ULA1Bit port map (
			A => A(9),
			B => B(9),
			carry_in => carry8,
			carry_out => carry9,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(9)
		);
		
		ULA10: entity work.ULA1Bit port map (
			A => A(10),
			B => B(10),
			carry_in => carry9,
			carry_out => carry10,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(10)
		);
		
		ULA11: entity work.ULA1Bit port map (
			A => A(11),
			B => B(11),
			carry_in => carry10,
			carry_out => carry11,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(11)
		);
		
		ULA12: entity work.ULA1Bit port map (
			A => A(12),
			B => B(12),
			carry_in => carry11,
			carry_out => carry12,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(12)
		);
		
		ULA13: entity work.ULA1Bit port map (
			A => A(13),
			B => B(13),
			carry_in => carry12,
			carry_out => carry13,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(13)
		);
		
		ULA14: entity work.ULA1Bit port map (
			A => A(14),
			B => B(14),
			carry_in => carry13,
			carry_out => carry14,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(14)
		);
		
		ULA15: entity work.ULA1Bit port map (
			A => A(15),
			B => B(15),
			carry_in => carry14,
			carry_out => carry15,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(15)
		);
		
		ULA16: entity work.ULA1Bit port map (
			A => A(16),
			B => B(16),
			carry_in => carry15,
			carry_out => carry16,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(16)
		);
		
		ULA17: entity work.ULA1Bit port map (
			A => A(17),
			B => B(17),
			carry_in => carry16,
			carry_out => carry17,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(17)
		);
		
		ULA18: entity work.ULA1Bit port map (
			A => A(18),
			B => B(18),
			carry_in => carry17,
			carry_out => carry18,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(18)
		);
		
		ULA19: entity work.ULA1Bit port map (
			A => A(19),
			B => B(19),
			carry_in => carry18,
			carry_out => carry19,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(19)
		);
		
		ULA20: entity work.ULA1Bit port map (
			A => A(20),
			B => B(20),
			carry_in => carry19,
			carry_out => carry20,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(20)
		);
		
		ULA21: entity work.ULA1Bit port map (
			A => A(21),
			B => B(21),
			carry_in => carry20,
			carry_out => carry21,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(21)
		);
		
		ULA22: entity work.ULA1Bit port map (
			A => A(22),
			B => B(22),
			carry_in => carry21,
			carry_out => carry22,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(22)
		);
		
		ULA23: entity work.ULA1Bit port map (
			A => A(23),
			B => B(23),
			carry_in => carry22,
			carry_out => carry23,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(23)
		);
		
		ULA24: entity work.ULA1Bit port map (
			A => A(24),
			B => B(24),
			carry_in => carry23,
			carry_out => carry24,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(24)
		);
		
		ULA25: entity work.ULA1Bit port map (
			A => A(25),
			B => B(25),
			carry_in => carry24,
			carry_out => carry25,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(25)
		);
		
		ULA26: entity work.ULA1Bit port map (
			A => A(26),
			B => B(26),
			carry_in => carry25,
			carry_out => carry26,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(26)
		);
		
		ULA27: entity work.ULA1Bit port map (
			A => A(27),
			B => B(27),
			carry_in => carry26,
			carry_out => carry27,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(27)
		);
		
		ULA28: entity work.ULA1Bit port map (
			A => A(28),
			B => B(28),
			carry_in => carry27,
			carry_out => carry28,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(28)
		);
		
		ULA29: entity work.ULA1Bit port map (
			A => A(29),
			B => B(29),
			carry_in => carry28,
			carry_out => carry29,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(29)
		);
		
		ULA30: entity work.ULA1Bit port map (
			A => A(30),
			B => B(30),
			carry_in => carry29,
			carry_out => carry30,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(30)
		);
		
		ULA31: entity work.ULALastBit port map (
			A => A(31),
			B => B(31),
			carry_in => carry30,
			carry_out => carry_out,
			inverte_B => inverte_B,
			sel => sel,
			slt => '0',
			resultado => resultado(31),
			overflow => overflow
		);
		
		zero <= not (resultado(0)  or resultado(1)  or resultado(2)  or resultado(3)  or resultado(4)  or
						 resultado(5)  or resultado(6)  or resultado(7)  or resultado(8)  or resultado(9)  or
						 resultado(10) or resultado(11) or resultado(12) or resultado(13) or resultado(14) or
						 resultado(15) or resultado(16) or resultado(17) or resultado(18) or resultado(19) or
						 resultado(20) or resultado(21) or resultado(22) or resultado(23) or resultado(24) or
						 resultado(25) or resultado(26) or resultado(27) or resultado(28) or resultado(29) or
						 resultado(30) or resultado(31));
		
end architecture;