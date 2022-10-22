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
  constant SKP  : std_logic_vector(3 downto 0) := "1101";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
  

-- LABEL Setup
tmp(0) := "0101" & "000" & "010000000" ;	-- LDI R0, $128
tmp(1) := "0110" & "000" & "000111111" ;	-- STA @63, R0
tmp(2) := "0101" & "000" & "000000000" ;	-- LDI R0, $0
tmp(3) := "0110" & "000" & "000000000" ;	-- STA @0, R0
tmp(4) := "0101" & "001" & "000000001" ;	-- LDI R1, $1
tmp(5) := "0110" & "001" & "000000001" ;	-- STA @1, R1
tmp(6) := "0101" & "001" & "000000010" ;	-- LDI R1, $2
tmp(7) := "0110" & "001" & "000000010" ;	-- STA @2, R1
tmp(8) := "0101" & "001" & "000000011" ;	-- LDI R1, $3
tmp(9) := "0110" & "001" & "000000011" ;	-- STA @3, R1
tmp(10) := "0101" & "001" & "000000100" ;	-- LDI R1, $4
tmp(11) := "0110" & "001" & "000000100" ;	-- STA @4, R1
tmp(12) := "0101" & "001" & "000000101" ;	-- LDI R1, $5
tmp(13) := "0110" & "001" & "000000101" ;	-- STA @5, R1
tmp(14) := "0101" & "001" & "000001010" ;	-- LDI R1, $10
tmp(15) := "0110" & "001" & "000001010" ;	-- STA @10, R1
tmp(16) := "0101" & "001" & "000001001" ;	-- LDI R1, $9
tmp(17) := "0110" & "000" & "000010111" ;	-- STA @FLAG, R0
tmp(18) := "0110" & "001" & "000001011" ;	-- STA @LIM0, R1
tmp(19) := "0110" & "001" & "000001100" ;	-- STA @LIM1, R1
tmp(20) := "0110" & "001" & "000001101" ;	-- STA @LIM2, R1
tmp(21) := "0110" & "001" & "000001110" ;	-- STA @LIM3, R1
tmp(22) := "0110" & "001" & "000001111" ;	-- STA @LIM4, R1
tmp(23) := "0110" & "001" & "000010000" ;	-- STA @LIM5, R1
tmp(24) := "0110" & "000" & "000010001" ;	-- STA @MEM0, R0
tmp(25) := "0101" & "001" & "000001000" ;	-- LDI R1, $8
tmp(26) := "0110" & "001" & "000010010" ;	-- STA @MEM1, R1
tmp(27) := "0101" & "001" & "000001001" ;	-- LDI R1, $9
tmp(28) := "0110" & "001" & "000010011" ;	-- STA @MEM2, R1
tmp(29) := "0110" & "001" & "000010100" ;	-- STA @MEM3, R1
tmp(30) := "0110" & "001" & "000010101" ;	-- STA @MEM4, R1
tmp(31) := "0110" & "001" & "000010110" ;	-- STA @MEM5, R1
tmp(32) := "0110" & "000" & "100100000" ;	-- STA @HEX0, R0
tmp(33) := "0110" & "000" & "100100001" ;	-- STA @HEX1, R0
tmp(34) := "0110" & "000" & "100100010" ;	-- STA @HEX2, R0
tmp(35) := "0110" & "000" & "100100011" ;	-- STA @HEX3, R0
tmp(36) := "0110" & "000" & "100100100" ;	-- STA @HEX4, R0
tmp(37) := "0110" & "000" & "100100101" ;	-- STA @HEX5, R0
tmp(38) := "0001" & "111" & "000000000" ;	-- LDA R7, @0
tmp(39) := "0001" & "110" & "000000000" ;	-- LDA R6, @0
tmp(40) := "0001" & "101" & "000000000" ;	-- LDA R5, @0
tmp(41) := "0001" & "100" & "000000000" ;	-- LDA R4, @0
tmp(42) := "0001" & "011" & "000000000" ;	-- LDA R3, @0
tmp(43) := "0001" & "010" & "000000000" ;	-- LDA R2, @0
tmp(44) := "0001" & "001" & "000000000" ;	-- LDA R1, @0
tmp(45) := "0001" & "000" & "000000000" ;	-- LDA R0, @0

-- LABEL Contador
tmp(46) := "0001" & "011" & "000010001" ;	-- LDA R3, @MEM0
tmp(47) := "0110" & "011" & "100100000" ;	-- STA @HEX0, R3
tmp(48) := "0001" & "011" & "000010010" ;	-- LDA R3, @MEM1
tmp(49) := "0110" & "011" & "100100001" ;	-- STA @HEX1, R3
tmp(50) := "0001" & "011" & "000010011" ;	-- LDA R3, @MEM2
tmp(51) := "0110" & "011" & "100100010" ;	-- STA @HEX2, R3
tmp(52) := "0001" & "011" & "000010100" ;	-- LDA R3, @MEM3
tmp(53) := "0110" & "011" & "100100011" ;	-- STA @HEX3, R3
tmp(54) := "0001" & "011" & "000010101" ;	-- LDA R3, @MEM4
tmp(55) := "0110" & "011" & "100100100" ;	-- STA @HEX4, R3
tmp(56) := "0001" & "011" & "000010110" ;	-- LDA R3, @MEM5
tmp(57) := "0110" & "011" & "100100101" ;	-- STA @HEX5, R3
tmp(58) := "0111" & "000" & "000111011" ;	-- JMP @IncCont

-- LABEL IncCont
tmp(59) := "0001" & "111" & "101100010" ;	-- LDA R7, @KEY2
tmp(60) := "0100" & "111" & "000000001" ;	-- AND R7, @1
tmp(61) := "1001" & "111" & "000000001" ;	-- CEQ R7, @1
tmp(62) := "1000" & "000" & "001000000" ;	-- JEQ @IncMem
tmp(63) := "0111" & "000" & "010001110" ;	-- JMP @Limits

-- LABEL IncMem
tmp(64) := "0110" & "000" & "111111101" ;	-- CLR @KEY2
tmp(65) := "0001" & "000" & "000010001" ;	-- LDA R0, @MEM0
tmp(66) := "0010" & "000" & "000000001" ;	-- SOMA R0, @1
tmp(67) := "1001" & "000" & "000001010" ;	-- CEQ R0, @10
tmp(68) := "1000" & "000" & "001001000" ;	-- JEQ @ResetMem0
tmp(69) := "0110" & "000" & "000010001" ;	-- STA @MEM0, R0
tmp(70) := "0110" & "000" & "100100000" ;	-- STA @HEX0, R0
tmp(71) := "0111" & "000" & "010001110" ;	-- JMP @Limits

-- LABEL ResetMem0
tmp(72) := "0001" & "000" & "000000000" ;	-- LDA R0, @0
tmp(73) := "0110" & "000" & "000010001" ;	-- STA @MEM0, R0
tmp(74) := "0110" & "000" & "100100000" ;	-- STA @HEX0, R0
tmp(75) := "0001" & "001" & "000010010" ;	-- LDA R1, @MEM1
tmp(76) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(77) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(78) := "1000" & "000" & "001010010" ;	-- JEQ @ResetMem1
tmp(79) := "0110" & "001" & "000010010" ;	-- STA @MEM1, R1
tmp(80) := "0110" & "001" & "100100001" ;	-- STA @HEX1, R1
tmp(81) := "0111" & "000" & "010001110" ;	-- JMP @Limits

-- LABEL ResetMem1
tmp(82) := "0001" & "001" & "000000000" ;	-- LDA R1, @0
tmp(83) := "0110" & "001" & "000010010" ;	-- STA @MEM1, R1
tmp(84) := "0110" & "001" & "100100001" ;	-- STA @HEX1, R1
tmp(85) := "0001" & "010" & "000010011" ;	-- LDA R2, @MEM2
tmp(86) := "0010" & "010" & "000000001" ;	-- SOMA R2, @1
tmp(87) := "1001" & "010" & "000001010" ;	-- CEQ R2, @10
tmp(88) := "1000" & "000" & "001011100" ;	-- JEQ @ResetMem2
tmp(89) := "0110" & "010" & "000010011" ;	-- STA @MEM2, R2
tmp(90) := "0110" & "010" & "100100010" ;	-- STA @HEX2, R2
tmp(91) := "0111" & "000" & "010001110" ;	-- JMP @Limits

-- LABEL ResetMem2
tmp(92) := "0001" & "010" & "000000000" ;	-- LDA R2, @0
tmp(93) := "0110" & "010" & "000010011" ;	-- STA @MEM2, R2
tmp(94) := "0110" & "010" & "100100010" ;	-- STA @HEX2, R2
tmp(95) := "0001" & "011" & "000010100" ;	-- LDA R3, @MEM3
tmp(96) := "0010" & "011" & "000000001" ;	-- SOMA R3, @1
tmp(97) := "1001" & "011" & "000001010" ;	-- CEQ R3, @10
tmp(98) := "1000" & "000" & "001100110" ;	-- JEQ @ResetMem3
tmp(99) := "0110" & "011" & "000010100" ;	-- STA @MEM3, R3
tmp(100) := "0110" & "011" & "100100011" ;	-- STA @HEX3, R3
tmp(101) := "0111" & "000" & "010001110" ;	-- JMP @Limits

-- LABEL ResetMem3
tmp(102) := "0001" & "011" & "000000000" ;	-- LDA R3, @0
tmp(103) := "0110" & "011" & "000010100" ;	-- STA @MEM3, R3
tmp(104) := "0110" & "011" & "100100011" ;	-- STA @HEX3, R3
tmp(105) := "0001" & "100" & "000010101" ;	-- LDA R4, @MEM4
tmp(106) := "0010" & "100" & "000000001" ;	-- SOMA R4, @1
tmp(107) := "1001" & "100" & "000001010" ;	-- CEQ R4, @10
tmp(108) := "1000" & "000" & "001110000" ;	-- JEQ @ResetMem4
tmp(109) := "0110" & "100" & "000010101" ;	-- STA @MEM4, R4
tmp(110) := "0110" & "100" & "100100100" ;	-- STA @HEX4, R4
tmp(111) := "0111" & "000" & "010001110" ;	-- JMP @Limits

-- LABEL ResetMem4
tmp(112) := "0001" & "100" & "000000000" ;	-- LDA R4, @0
tmp(113) := "0110" & "100" & "000010101" ;	-- STA @MEM4, R4
tmp(114) := "0110" & "100" & "100100100" ;	-- STA @HEX4, R4
tmp(115) := "0001" & "101" & "000010110" ;	-- LDA R5, @MEM5
tmp(116) := "0010" & "101" & "000000001" ;	-- SOMA R5, @1
tmp(117) := "0110" & "101" & "000010110" ;	-- STA @MEM5, R5
tmp(118) := "0110" & "101" & "100100101" ;	-- STA @HEX5, R5
tmp(119) := "0111" & "000" & "010001110" ;	-- JMP @Limits

-- LABEL WaitLimit
tmp(120) := "0001" & "111" & "101100011" ;	-- LDA R7, @KEY3
tmp(121) := "0100" & "111" & "000000001" ;	-- AND R7, @1
tmp(122) := "1001" & "111" & "000000001" ;	-- CEQ R7, @1
tmp(123) := "1000" & "000" & "011000110" ;	-- JEQ @SetLimit
tmp(124) := "0001" & "111" & "101100100" ;	-- LDA R7, @FPGA_RESET
tmp(125) := "0100" & "111" & "000000001" ;	-- AND R7, @1
tmp(126) := "1001" & "111" & "000000001" ;	-- CEQ R7, @1
tmp(127) := "1000" & "000" & "010000001" ;	-- JEQ @ResetCount
tmp(128) := "0111" & "000" & "000111011" ;	-- JMP @IncCont

-- LABEL ResetCount
tmp(129) := "0110" & "000" & "111111011" ;	-- CLR @FPGA_RESET
tmp(130) := "0001" & "111" & "000000000" ;	-- LDA R7, @0
tmp(131) := "0110" & "111" & "000010001" ;	-- STA @MEM0, R7
tmp(132) := "0110" & "111" & "000010010" ;	-- STA @MEM1, R7
tmp(133) := "0110" & "111" & "000010011" ;	-- STA @MEM2, R7
tmp(134) := "0110" & "111" & "000010100" ;	-- STA @MEM3, R7
tmp(135) := "0110" & "111" & "000010101" ;	-- STA @MEM4, R7
tmp(136) := "0110" & "111" & "000010110" ;	-- STA @MEM5, R7
tmp(137) := "0110" & "111" & "000010111" ;	-- STA @FLAG, R7
tmp(138) := "0110" & "111" & "100000001" ;	-- STA @LED8, R7
tmp(139) := "0110" & "111" & "100000010" ;	-- STA @LED9, R7
tmp(140) := "0110" & "111" & "100000000" ;	-- STA @LEDb, R7
tmp(141) := "0111" & "000" & "000101110" ;	-- JMP @Contador

-- LABEL Limits
tmp(142) := "1010" & "000" & "010010001" ;	-- JSR @Limiter5
tmp(143) := "1010" & "000" & "010101110" ;	-- JSR @VerificaFlag
tmp(144) := "0111" & "000" & "001111000" ;	-- JMP @WaitLimit

-- LABEL Limiter5
tmp(145) := "0001" & "000" & "000010000" ;	-- LDA R0, @LIM5
tmp(146) := "1001" & "000" & "000010110" ;	-- CEQ R0, @MEM5
tmp(147) := "1000" & "000" & "010010101" ;	-- JEQ @Limiter4
tmp(148) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Limiter4
tmp(149) := "0001" & "000" & "000001111" ;	-- LDA R0, @LIM4
tmp(150) := "1001" & "000" & "000010101" ;	-- CEQ R0, @MEM4
tmp(151) := "1000" & "000" & "010011001" ;	-- JEQ @Limiter3
tmp(152) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Limiter3
tmp(153) := "0001" & "000" & "000001110" ;	-- LDA R0, @LIM3
tmp(154) := "1001" & "000" & "000010100" ;	-- CEQ R0, @MEM3
tmp(155) := "1000" & "000" & "010011101" ;	-- JEQ @Limiter2
tmp(156) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Limiter2
tmp(157) := "0001" & "000" & "000001101" ;	-- LDA R0, @LIM2
tmp(158) := "1001" & "000" & "000010011" ;	-- CEQ R0, @MEM2
tmp(159) := "1000" & "000" & "010100001" ;	-- JEQ @Limiter1
tmp(160) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Limiter1
tmp(161) := "0001" & "000" & "000001100" ;	-- LDA R0, @LIM1
tmp(162) := "1001" & "000" & "000010010" ;	-- CEQ R0, @MEM1
tmp(163) := "1000" & "000" & "010100101" ;	-- JEQ @Limiter0
tmp(164) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Limiter0
tmp(165) := "0001" & "000" & "000001011" ;	-- LDA R0, @LIM0
tmp(166) := "1001" & "000" & "000010001" ;	-- CEQ R0, @MEM0
tmp(167) := "1000" & "000" & "010101001" ;	-- JEQ @AcionaFlag
tmp(168) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL AcionaFlag
tmp(169) := "0001" & "000" & "000000001" ;	-- LDA R0, @1
tmp(170) := "0110" & "000" & "000010111" ;	-- STA @FLAG, R0
tmp(171) := "0110" & "000" & "100000010" ;	-- STA @LED9, R0
tmp(172) := "0110" & "000" & "100000001" ;	-- STA @LED8, R0
tmp(173) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL VerificaFlag
tmp(174) := "0001" & "000" & "000000001" ;	-- LDA R0, @1
tmp(175) := "1001" & "000" & "000010111" ;	-- CEQ R0, @FLAG
tmp(176) := "1000" & "000" & "010110010" ;	-- JEQ @Parado
tmp(177) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Parado
tmp(178) := "0001" & "000" & "101100011" ;	-- LDA R0, @KEY3
tmp(179) := "0100" & "000" & "000000001" ;	-- AND R0, @1
tmp(180) := "1001" & "000" & "000000001" ;	-- CEQ R0, @1
tmp(181) := "1000" & "000" & "011000110" ;	-- JEQ @SetLimit
tmp(182) := "0001" & "000" & "101100100" ;	-- LDA R0, @FPGA_RESET
tmp(183) := "0100" & "000" & "000000001" ;	-- AND R0, @1
tmp(184) := "1001" & "000" & "000000001" ;	-- CEQ R0, @1
tmp(185) := "1000" & "000" & "010000001" ;	-- JEQ @ResetCount
tmp(186) := "0001" & "000" & "101100010" ;	-- LDA R0, @KEY2
tmp(187) := "0100" & "000" & "000000001" ;	-- AND R0, @1
tmp(188) := "1001" & "000" & "000000001" ;	-- CEQ R0, @1
tmp(189) := "1000" & "000" & "010111111" ;	-- JEQ @AllLEDs
tmp(190) := "0111" & "000" & "010110010" ;	-- JMP @Parado

-- LABEL AllLEDs
tmp(191) := "0110" & "000" & "111111101" ;	-- CLR @KEY2
tmp(192) := "0101" & "001" & "011111111" ;	-- LDI R1, $255
tmp(193) := "0110" & "001" & "100000000" ;	-- STA @LEDb, R1
tmp(194) := "0101" & "001" & "000000001" ;	-- LDI R1, $1
tmp(195) := "0110" & "001" & "100000001" ;	-- STA @LED8, R1
tmp(196) := "0110" & "001" & "100000010" ;	-- STA @LED9, R1
tmp(197) := "0111" & "000" & "010110010" ;	-- JMP @Parado

-- LABEL SetLimit
tmp(198) := "0110" & "000" & "111111100" ;	-- CLR @KEY3
tmp(199) := "0001" & "011" & "000001011" ;	-- LDA R3, @LIM0
tmp(200) := "0110" & "011" & "100100000" ;	-- STA @HEX0, R3
tmp(201) := "0001" & "011" & "000001100" ;	-- LDA R3, @LIM1
tmp(202) := "0110" & "011" & "100100001" ;	-- STA @HEX1, R3
tmp(203) := "0001" & "011" & "000001101" ;	-- LDA R3, @LIM2
tmp(204) := "0110" & "011" & "100100010" ;	-- STA @HEX2, R3
tmp(205) := "0001" & "011" & "000001110" ;	-- LDA R3, @LIM3
tmp(206) := "0110" & "011" & "100100011" ;	-- STA @HEX3, R3
tmp(207) := "0001" & "011" & "000001111" ;	-- LDA R3, @LIM4
tmp(208) := "0110" & "011" & "100100100" ;	-- STA @HEX4, R3
tmp(209) := "0001" & "011" & "000010000" ;	-- LDA R3, @LIM5
tmp(210) := "0110" & "011" & "100100101" ;	-- STA @HEX5, R3
tmp(211) := "0001" & "000" & "000000000" ;	-- LDA R0, @0
tmp(212) := "0001" & "110" & "000000000" ;	-- LDA R6, @0
tmp(213) := "0001" & "111" & "000000000" ;	-- LDA R7, @0
tmp(214) := "0110" & "000" & "100000001" ;	-- STA @LED8, R0
tmp(215) := "0110" & "000" & "100000010" ;	-- STA @LED9, R0
tmp(216) := "0001" & "010" & "000000001" ;	-- LDA R2, @1
tmp(217) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(218) := "0110" & "000" & "111111111" ;	-- CLR @KEY0
tmp(219) := "0110" & "000" & "111111110" ;	-- CLR @KEY1
tmp(220) := "0111" & "000" & "011011101" ;	-- JMP @VerificaK0

-- LABEL VerificaK0
tmp(221) := "0001" & "110" & "101100000" ;	-- LDA R6, @KEY0
tmp(222) := "0100" & "110" & "000000001" ;	-- AND R6, @1
tmp(223) := "1001" & "110" & "000000000" ;	-- CEQ R6, @0
tmp(224) := "1000" & "000" & "011100010" ;	-- JEQ @VerificaK1
tmp(225) := "1010" & "000" & "011101000" ;	-- JSR @IncLim

-- LABEL VerificaK1
tmp(226) := "0001" & "111" & "101100001" ;	-- LDA R7, @KEY1
tmp(227) := "0100" & "111" & "000000001" ;	-- AND R7, @1
tmp(228) := "1001" & "111" & "000000000" ;	-- CEQ R7, @0
tmp(229) := "1000" & "000" & "011011101" ;	-- JEQ @VerificaK0
tmp(230) := "1010" & "000" & "100101011" ;	-- JSR @Set0
tmp(231) := "0111" & "000" & "011011101" ;	-- JMP @VerificaK0

-- LABEL IncLim
tmp(232) := "0110" & "000" & "111111111" ;	-- CLR @KEY0
tmp(233) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(234) := "1000" & "000" & "011110101" ;	-- JEQ @IncLim0
tmp(235) := "1001" & "000" & "000000001" ;	-- CEQ R0, @1
tmp(236) := "1000" & "000" & "011111110" ;	-- JEQ @IncLim1
tmp(237) := "1001" & "000" & "000000010" ;	-- CEQ R0, @2
tmp(238) := "1000" & "000" & "100000111" ;	-- JEQ @IncLim2
tmp(239) := "1001" & "000" & "000000011" ;	-- CEQ R0, @3
tmp(240) := "1000" & "000" & "100010000" ;	-- JEQ @IncLim3
tmp(241) := "1001" & "000" & "000000100" ;	-- CEQ R0, @4
tmp(242) := "1000" & "000" & "100011001" ;	-- JEQ @IncLim4
tmp(243) := "1001" & "000" & "000000101" ;	-- CEQ R0, @5
tmp(244) := "1000" & "000" & "100100010" ;	-- JEQ @IncLim5

-- LABEL IncLim0
tmp(245) := "0001" & "001" & "000001011" ;	-- LDA R1, @LIM0
tmp(246) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(247) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(248) := "1000" & "000" & "011111010" ;	-- JEQ @ResetLim0
tmp(249) := "0111" & "000" & "011111011" ;	-- JMP @StaLim0

-- LABEL ResetLim0
tmp(250) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim0
tmp(251) := "0110" & "001" & "000001011" ;	-- STA @LIM0, R1
tmp(252) := "0110" & "001" & "100100000" ;	-- STA @HEX0, R1
tmp(253) := "0111" & "000" & "011100010" ;	-- JMP @VerificaK1

-- LABEL IncLim1
tmp(254) := "0001" & "001" & "000001100" ;	-- LDA R1, @LIM1
tmp(255) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(256) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(257) := "1000" & "000" & "100000011" ;	-- JEQ @ResetLim1
tmp(258) := "0111" & "000" & "100000100" ;	-- JMP @StaLim1

-- LABEL ResetLim1
tmp(259) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim1
tmp(260) := "0110" & "001" & "000001100" ;	-- STA @LIM1, R1
tmp(261) := "0110" & "001" & "100100001" ;	-- STA @HEX1, R1
tmp(262) := "0111" & "000" & "011100010" ;	-- JMP @VerificaK1

-- LABEL IncLim2
tmp(263) := "0001" & "001" & "000001101" ;	-- LDA R1, @LIM2
tmp(264) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(265) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(266) := "1000" & "000" & "100001100" ;	-- JEQ @ResetLim2
tmp(267) := "0111" & "000" & "100001101" ;	-- JMP @StaLim2

-- LABEL ResetLim2
tmp(268) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim2
tmp(269) := "0110" & "001" & "000001101" ;	-- STA @LIM2, R1
tmp(270) := "0110" & "001" & "100100010" ;	-- STA @HEX2, R1
tmp(271) := "0111" & "000" & "011100010" ;	-- JMP @VerificaK1

-- LABEL IncLim3
tmp(272) := "0001" & "001" & "000001110" ;	-- LDA R1, @LIM3
tmp(273) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(274) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(275) := "1000" & "000" & "100010101" ;	-- JEQ @ResetLim3
tmp(276) := "0111" & "000" & "100010110" ;	-- JMP @StaLim3

-- LABEL ResetLim3
tmp(277) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim3
tmp(278) := "0110" & "001" & "000001110" ;	-- STA @LIM3, R1
tmp(279) := "0110" & "001" & "100100011" ;	-- STA @HEX3, R1
tmp(280) := "0111" & "000" & "011100010" ;	-- JMP @VerificaK1

-- LABEL IncLim4
tmp(281) := "0001" & "001" & "000001111" ;	-- LDA R1, @LIM4
tmp(282) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(283) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(284) := "1000" & "000" & "100011110" ;	-- JEQ @ResetLim4
tmp(285) := "0111" & "000" & "100011111" ;	-- JMP @StaLim4

-- LABEL ResetLim4
tmp(286) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim4
tmp(287) := "0110" & "001" & "000001111" ;	-- STA @LIM4, R1
tmp(288) := "0110" & "001" & "100100100" ;	-- STA @HEX4, R1
tmp(289) := "0111" & "000" & "011100010" ;	-- JMP @VerificaK1

-- LABEL IncLim5
tmp(290) := "0001" & "001" & "000010000" ;	-- LDA R1, @LIM5
tmp(291) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(292) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(293) := "1000" & "000" & "100100111" ;	-- JEQ @ResetLim5
tmp(294) := "0111" & "000" & "100101000" ;	-- JMP @StaLim5

-- LABEL ResetLim5
tmp(295) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim5
tmp(296) := "0110" & "001" & "000010000" ;	-- STA @LIM5, R1
tmp(297) := "0110" & "001" & "100100101" ;	-- STA @HEX5, R1
tmp(298) := "0111" & "000" & "011100010" ;	-- JMP @VerificaK1

-- LABEL Set0
tmp(299) := "0110" & "000" & "111111110" ;	-- CLR @KEY1
tmp(300) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(301) := "1000" & "000" & "101000101" ;	-- JEQ @Set1
tmp(302) := "1001" & "000" & "000000001" ;	-- CEQ R0, @1
tmp(303) := "1000" & "000" & "101001001" ;	-- JEQ @Set2
tmp(304) := "1001" & "000" & "000000010" ;	-- CEQ R0, @2
tmp(305) := "1000" & "000" & "101001101" ;	-- JEQ @Set3
tmp(306) := "1001" & "000" & "000000011" ;	-- CEQ R0, @3
tmp(307) := "1000" & "000" & "101010001" ;	-- JEQ @Set4
tmp(308) := "1001" & "000" & "000000100" ;	-- CEQ R0, @4
tmp(309) := "1000" & "000" & "101010101" ;	-- JEQ @Set5
tmp(310) := "0101" & "010" & "000000000" ;	-- LDI R2, @0
tmp(311) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(312) := "0001" & "111" & "000000000" ;	-- LDA R7, @0
tmp(313) := "0001" & "110" & "000000000" ;	-- LDA R6, @0
tmp(314) := "0001" & "101" & "000000000" ;	-- LDA R5, @0
tmp(315) := "0001" & "100" & "000000000" ;	-- LDA R4, @0
tmp(316) := "0001" & "011" & "000000000" ;	-- LDA R3, @0
tmp(317) := "0001" & "010" & "000000000" ;	-- LDA R2, @0
tmp(318) := "0001" & "001" & "000000000" ;	-- LDA R1, @0
tmp(319) := "0001" & "000" & "000000000" ;	-- LDA R0, @0
tmp(320) := "0110" & "000" & "111111101" ;	-- CLR @KEY2
tmp(321) := "0110" & "000" & "111111100" ;	-- CLR @KEY3
tmp(322) := "0110" & "000" & "111111011" ;	-- CLR @FPGA_RESET
tmp(323) := "0110" & "000" & "000010111" ;	-- STA @FLAG, R0
tmp(324) := "0111" & "000" & "101011001" ;	-- JMP @VerificaOF5

-- LABEL Set1
tmp(325) := "0101" & "010" & "000000010" ;	-- LDI R2, $2
tmp(326) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(327) := "0101" & "000" & "000000001" ;	-- LDI R0, @1
tmp(328) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Set2
tmp(329) := "0101" & "010" & "000000100" ;	-- LDI R2, $4
tmp(330) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(331) := "0101" & "000" & "000000010" ;	-- LDI R0, @2
tmp(332) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Set3
tmp(333) := "0101" & "010" & "000001000" ;	-- LDI R2, $8
tmp(334) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(335) := "0101" & "000" & "000000011" ;	-- LDI R0, @3
tmp(336) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Set4
tmp(337) := "0101" & "010" & "000010000" ;	-- LDI R2, $16
tmp(338) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(339) := "0101" & "000" & "000000100" ;	-- LDI R0, @4
tmp(340) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Set5
tmp(341) := "0101" & "010" & "000100000" ;	-- LDI R2, $32
tmp(342) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(343) := "0101" & "000" & "000000101" ;	-- LDI R0, @5
tmp(344) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL VerificaOF5
tmp(345) := "0001" & "000" & "000010000" ;	-- LDA R0, @LIM5
tmp(346) := "0011" & "000" & "000010110" ;	-- SUB R0, @MEM5
tmp(347) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(348) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(349) := "1000" & "000" & "101011111" ;	-- JEQ @OF5
tmp(350) := "0111" & "000" & "101100001" ;	-- JMP @OFIgual5

-- LABEL OF5
tmp(351) := "1010" & "000" & "010101001" ;	-- JSR @AcionaFlag
tmp(352) := "1000" & "000" & "010111111" ;	-- JEQ @AllLEDs

-- LABEL OFIgual5
tmp(353) := "0001" & "000" & "000010000" ;	-- LDA R0, @LIM5
tmp(354) := "0011" & "000" & "000010110" ;	-- SUB R0, @MEM5
tmp(355) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(356) := "1000" & "000" & "101100110" ;	-- JEQ @VerificaOF4
tmp(357) := "0111" & "000" & "000101110" ;	-- JMP @Contador

-- LABEL VerificaOF4
tmp(358) := "0001" & "000" & "000001111" ;	-- LDA R0, @LIM4
tmp(359) := "0011" & "000" & "000010101" ;	-- SUB R0, @MEM4
tmp(360) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(361) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(362) := "1000" & "000" & "101101100" ;	-- JEQ @OF4
tmp(363) := "0111" & "000" & "101101110" ;	-- JMP @OFIgual4

-- LABEL OF4
tmp(364) := "1010" & "000" & "010101001" ;	-- JSR @AcionaFlag
tmp(365) := "1000" & "000" & "010111111" ;	-- JEQ @AllLEDs

-- LABEL OFIgual4
tmp(366) := "0001" & "000" & "000001111" ;	-- LDA R0, @LIM4
tmp(367) := "0011" & "000" & "000010101" ;	-- SUB R0, @MEM4
tmp(368) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(369) := "1000" & "000" & "101110011" ;	-- JEQ @VerificaOF3
tmp(370) := "0111" & "000" & "000101110" ;	-- JMP @Contador

-- LABEL VerificaOF3
tmp(371) := "0001" & "000" & "000001110" ;	-- LDA R0, @LIM3
tmp(372) := "0011" & "000" & "000010100" ;	-- SUB R0, @MEM3
tmp(373) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(374) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(375) := "1000" & "000" & "101111001" ;	-- JEQ @OF3
tmp(376) := "0111" & "000" & "101111011" ;	-- JMP @OFIgual3

-- LABEL OF3
tmp(377) := "1010" & "000" & "010101001" ;	-- JSR @AcionaFlag
tmp(378) := "1000" & "000" & "010111111" ;	-- JEQ @AllLEDs

-- LABEL OFIgual3
tmp(379) := "0001" & "000" & "000001110" ;	-- LDA R0, @LIM3
tmp(380) := "0011" & "000" & "000010100" ;	-- SUB R0, @MEM3
tmp(381) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(382) := "1000" & "000" & "110000000" ;	-- JEQ @VerificaOF2
tmp(383) := "0111" & "000" & "000101110" ;	-- JMP @Contador

-- LABEL VerificaOF2
tmp(384) := "0001" & "000" & "000001101" ;	-- LDA R0, @LIM2
tmp(385) := "0011" & "000" & "000010011" ;	-- SUB R0, @MEM2
tmp(386) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(387) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(388) := "1000" & "000" & "110000110" ;	-- JEQ @OF2
tmp(389) := "0111" & "000" & "110001000" ;	-- JMP @OFIgual2

-- LABEL OF2
tmp(390) := "1010" & "000" & "010101001" ;	-- JSR @AcionaFlag
tmp(391) := "1000" & "000" & "010111111" ;	-- JEQ @AllLEDs

-- LABEL OFIgual2
tmp(392) := "0001" & "000" & "000001101" ;	-- LDA R0, @LIM2
tmp(393) := "0011" & "000" & "000010011" ;	-- SUB R0, @MEM2
tmp(394) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(395) := "1000" & "000" & "110001101" ;	-- JEQ @VerificaOF1
tmp(396) := "0111" & "000" & "000101110" ;	-- JMP @Contador

-- LABEL VerificaOF1
tmp(397) := "0001" & "000" & "000001100" ;	-- LDA R0, @LIM1
tmp(398) := "0011" & "000" & "000010010" ;	-- SUB R0, @MEM1
tmp(399) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(400) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(401) := "1000" & "000" & "110010011" ;	-- JEQ @OF1
tmp(402) := "0111" & "000" & "110010101" ;	-- JMP @OFIgual1

-- LABEL OF1
tmp(403) := "1010" & "000" & "010101001" ;	-- JSR @AcionaFlag
tmp(404) := "1000" & "000" & "010111111" ;	-- JEQ @AllLEDs

-- LABEL OFIgual1
tmp(405) := "0001" & "000" & "000001100" ;	-- LDA R0, @LIM1
tmp(406) := "0011" & "000" & "000010010" ;	-- SUB R0, @MEM1
tmp(407) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(408) := "1000" & "000" & "110011010" ;	-- JEQ @VerificaOF0
tmp(409) := "0111" & "000" & "000101110" ;	-- JMP @Contador

-- LABEL VerificaOF0
tmp(410) := "0001" & "000" & "000001011" ;	-- LDA R0, @LIM0
tmp(411) := "0011" & "000" & "000010001" ;	-- SUB R0, @MEM0
tmp(412) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(413) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(414) := "1000" & "000" & "110100000" ;	-- JEQ @OF0
tmp(415) := "0111" & "000" & "110100010" ;	-- JMP @OFIgual0

-- LABEL OF0
tmp(416) := "1010" & "000" & "010101001" ;	-- JSR @AcionaFlag
tmp(417) := "1000" & "000" & "010111111" ;	-- JEQ @AllLEDs

-- LABEL OFIgual0
tmp(418) := "0111" & "000" & "000101110" ;	-- JMP @Contador

		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;