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
tmp(25) := "0110" & "000" & "000010011" ;	-- STA @MEM2, R0
tmp(26) := "0110" & "000" & "000010010" ;	-- STA @MEM1, R0
tmp(27) := "0110" & "000" & "000010100" ;	-- STA @MEM3, R0
tmp(28) := "0110" & "000" & "000010101" ;	-- STA @MEM4, R0
tmp(29) := "0110" & "000" & "000010110" ;	-- STA @MEM5, R0
tmp(30) := "0110" & "000" & "100100000" ;	-- STA @HEX0, R0
tmp(31) := "0110" & "000" & "100100001" ;	-- STA @HEX1, R0
tmp(32) := "0110" & "000" & "100100010" ;	-- STA @HEX2, R0
tmp(33) := "0110" & "000" & "100100011" ;	-- STA @HEX3, R0
tmp(34) := "0110" & "000" & "100100100" ;	-- STA @HEX4, R0
tmp(35) := "0110" & "000" & "100100101" ;	-- STA @HEX5, R0
tmp(36) := "0001" & "111" & "000000000" ;	-- LDA R7, @0
tmp(37) := "0001" & "110" & "000000000" ;	-- LDA R6, @0
tmp(38) := "0001" & "101" & "000000000" ;	-- LDA R5, @0
tmp(39) := "0001" & "100" & "000000000" ;	-- LDA R4, @0
tmp(40) := "0001" & "011" & "000000000" ;	-- LDA R3, @0
tmp(41) := "0001" & "010" & "000000000" ;	-- LDA R2, @0
tmp(42) := "0001" & "001" & "000000000" ;	-- LDA R1, @0
tmp(43) := "0001" & "000" & "000000000" ;	-- LDA R0, @0

-- LABEL Contador
tmp(44) := "0001" & "011" & "000010001" ;	-- LDA R3, @MEM0
tmp(45) := "0110" & "011" & "100100000" ;	-- STA @HEX0, R3
tmp(46) := "0001" & "011" & "000010010" ;	-- LDA R3, @MEM1
tmp(47) := "0110" & "011" & "100100001" ;	-- STA @HEX1, R3
tmp(48) := "0001" & "011" & "000010011" ;	-- LDA R3, @MEM2
tmp(49) := "0110" & "011" & "100100010" ;	-- STA @HEX2, R3
tmp(50) := "0001" & "011" & "000010100" ;	-- LDA R3, @MEM3
tmp(51) := "0110" & "011" & "100100011" ;	-- STA @HEX3, R3
tmp(52) := "0001" & "011" & "000010101" ;	-- LDA R3, @MEM4
tmp(53) := "0110" & "011" & "100100100" ;	-- STA @HEX4, R3
tmp(54) := "0001" & "011" & "000010110" ;	-- LDA R3, @MEM5
tmp(55) := "0110" & "011" & "100100101" ;	-- STA @HEX5, R3
tmp(56) := "0111" & "000" & "000111001" ;	-- JMP @IncCont

-- LABEL IncCont
tmp(57) := "0001" & "111" & "101100000" ;	-- LDA R7, @KEY0
tmp(58) := "0100" & "111" & "000000001" ;	-- AND R7, @1
tmp(59) := "1001" & "111" & "000000001" ;	-- CEQ R7, @1
tmp(60) := "1100" & "000" & "010001010" ;	-- JNE @Limits
tmp(61) := "0110" & "000" & "111111111" ;	-- CLR @KEY0
tmp(62) := "0001" & "000" & "000010001" ;	-- LDA R0, @MEM0
tmp(63) := "0010" & "000" & "000000001" ;	-- SOMA R0, @1
tmp(64) := "1001" & "000" & "000001010" ;	-- CEQ R0, @10
tmp(65) := "1000" & "000" & "001000101" ;	-- JEQ @ResetMem0
tmp(66) := "0110" & "000" & "000010001" ;	-- STA @MEM0, R0
tmp(67) := "0110" & "000" & "100100000" ;	-- STA @HEX0, R0
tmp(68) := "0111" & "000" & "010001010" ;	-- JMP @Limits

-- LABEL ResetMem0
tmp(69) := "0001" & "000" & "000000000" ;	-- LDA R0, @0
tmp(70) := "0110" & "000" & "000010001" ;	-- STA @MEM0, R0
tmp(71) := "0110" & "000" & "100100000" ;	-- STA @HEX0, R0
tmp(72) := "0001" & "001" & "000010010" ;	-- LDA R1, @MEM1
tmp(73) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(74) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(75) := "1000" & "000" & "001001111" ;	-- JEQ @ResetMem1
tmp(76) := "0110" & "001" & "000010010" ;	-- STA @MEM1, R1
tmp(77) := "0110" & "001" & "100100001" ;	-- STA @HEX1, R1
tmp(78) := "0111" & "000" & "010001010" ;	-- JMP @Limits

-- LABEL ResetMem1
tmp(79) := "0001" & "001" & "000000000" ;	-- LDA R1, @0
tmp(80) := "0110" & "001" & "000010010" ;	-- STA @MEM1, R1
tmp(81) := "0110" & "001" & "100100001" ;	-- STA @HEX1, R1
tmp(82) := "0001" & "010" & "000010011" ;	-- LDA R2, @MEM2
tmp(83) := "0010" & "010" & "000000001" ;	-- SOMA R2, @1
tmp(84) := "1001" & "010" & "000001010" ;	-- CEQ R2, @10
tmp(85) := "1000" & "000" & "001011001" ;	-- JEQ @ResetMem2
tmp(86) := "0110" & "010" & "000010011" ;	-- STA @MEM2, R2
tmp(87) := "0110" & "010" & "100100010" ;	-- STA @HEX2, R2
tmp(88) := "0111" & "000" & "010001010" ;	-- JMP @Limits

-- LABEL ResetMem2
tmp(89) := "0001" & "010" & "000000000" ;	-- LDA R2, @0
tmp(90) := "0110" & "010" & "000010011" ;	-- STA @MEM2, R2
tmp(91) := "0110" & "010" & "100100010" ;	-- STA @HEX2, R2
tmp(92) := "0001" & "011" & "000010100" ;	-- LDA R3, @MEM3
tmp(93) := "0010" & "011" & "000000001" ;	-- SOMA R3, @1
tmp(94) := "1001" & "011" & "000001010" ;	-- CEQ R3, @10
tmp(95) := "1000" & "000" & "001100011" ;	-- JEQ @ResetMem3
tmp(96) := "0110" & "011" & "000010100" ;	-- STA @MEM3, R3
tmp(97) := "0110" & "011" & "100100011" ;	-- STA @HEX3, R3
tmp(98) := "0111" & "000" & "010001010" ;	-- JMP @Limits

-- LABEL ResetMem3
tmp(99) := "0001" & "011" & "000000000" ;	-- LDA R3, @0
tmp(100) := "0110" & "011" & "000010100" ;	-- STA @MEM3, R3
tmp(101) := "0110" & "011" & "100100011" ;	-- STA @HEX3, R3
tmp(102) := "0001" & "100" & "000010101" ;	-- LDA R4, @MEM4
tmp(103) := "0010" & "100" & "000000001" ;	-- SOMA R4, @1
tmp(104) := "1001" & "100" & "000001010" ;	-- CEQ R4, @10
tmp(105) := "1000" & "000" & "001101101" ;	-- JEQ @ResetMem4
tmp(106) := "0110" & "100" & "000010101" ;	-- STA @MEM4, R4
tmp(107) := "0110" & "100" & "100100100" ;	-- STA @HEX4, R4
tmp(108) := "0111" & "000" & "010001010" ;	-- JMP @Limits

-- LABEL ResetMem4
tmp(109) := "0001" & "100" & "000000000" ;	-- LDA R4, @0
tmp(110) := "0110" & "100" & "000010101" ;	-- STA @MEM4, R4
tmp(111) := "0110" & "100" & "100100100" ;	-- STA @HEX4, R4
tmp(112) := "0001" & "101" & "000010110" ;	-- LDA R5, @MEM5
tmp(113) := "0010" & "101" & "000000001" ;	-- SOMA R5, @1
tmp(114) := "0110" & "101" & "000010110" ;	-- STA @MEM5, R5
tmp(115) := "0110" & "101" & "100100101" ;	-- STA @HEX5, R5
tmp(116) := "0111" & "000" & "010001010" ;	-- JMP @Limits

-- LABEL WaitLimit
tmp(117) := "0001" & "111" & "101100011" ;	-- LDA R7, @KEY3
tmp(118) := "0100" & "111" & "000000001" ;	-- AND R7, @1
tmp(119) := "1001" & "111" & "000000001" ;	-- CEQ R7, @1
tmp(120) := "1000" & "000" & "010111101" ;	-- JEQ @SetLimit
tmp(121) := "0001" & "111" & "101100100" ;	-- LDA R7, @FPGA_RESET
tmp(122) := "0100" & "111" & "000000001" ;	-- AND R7, @1
tmp(123) := "1001" & "111" & "000000001" ;	-- CEQ R7, @1
tmp(124) := "1100" & "000" & "000111001" ;	-- JNE @IncCont

-- LABEL ResetCount
tmp(125) := "0110" & "000" & "111111011" ;	-- CLR @FPGA_RESET
tmp(126) := "0001" & "111" & "000000000" ;	-- LDA R7, @0
tmp(127) := "0110" & "111" & "000010001" ;	-- STA @MEM0, R7
tmp(128) := "0110" & "111" & "000010010" ;	-- STA @MEM1, R7
tmp(129) := "0110" & "111" & "000010011" ;	-- STA @MEM2, R7
tmp(130) := "0110" & "111" & "000010100" ;	-- STA @MEM3, R7
tmp(131) := "0110" & "111" & "000010101" ;	-- STA @MEM4, R7
tmp(132) := "0110" & "111" & "000010110" ;	-- STA @MEM5, R7
tmp(133) := "0110" & "111" & "000010111" ;	-- STA @FLAG, R7
tmp(134) := "0110" & "111" & "100000001" ;	-- STA @LED8, R7
tmp(135) := "0110" & "111" & "100000010" ;	-- STA @LED9, R7
tmp(136) := "0110" & "111" & "100000000" ;	-- STA @LEDb, R7
tmp(137) := "0111" & "000" & "000101100" ;	-- JMP @Contador

-- LABEL Limits
tmp(138) := "1010" & "000" & "010001101" ;	-- JSR @Limiter
tmp(139) := "1010" & "000" & "010100101" ;	-- JSR @VerificaFlag
tmp(140) := "0111" & "000" & "001110101" ;	-- JMP @WaitLimit

-- LABEL Limiter
tmp(141) := "0001" & "000" & "000010000" ;	-- LDA R0, @LIM5
tmp(142) := "1001" & "000" & "000010110" ;	-- CEQ R0, @MEM5
tmp(143) := "1100" & "000" & "010011111" ;	-- JNE @LimiterRet
tmp(144) := "0001" & "000" & "000001111" ;	-- LDA R0, @LIM4
tmp(145) := "1001" & "000" & "000010101" ;	-- CEQ R0, @MEM4
tmp(146) := "1100" & "000" & "010011111" ;	-- JNE @LimiterRet
tmp(147) := "0001" & "000" & "000001110" ;	-- LDA R0, @LIM3
tmp(148) := "1001" & "000" & "000010100" ;	-- CEQ R0, @MEM3
tmp(149) := "1100" & "000" & "010011111" ;	-- JNE @LimiterRet
tmp(150) := "0001" & "000" & "000001101" ;	-- LDA R0, @LIM2
tmp(151) := "1001" & "000" & "000010011" ;	-- CEQ R0, @MEM2
tmp(152) := "1100" & "000" & "010011111" ;	-- JNE @LimiterRet
tmp(153) := "0001" & "000" & "000001100" ;	-- LDA R0, @LIM1
tmp(154) := "1001" & "000" & "000010010" ;	-- CEQ R0, @MEM1
tmp(155) := "1100" & "000" & "010011111" ;	-- JNE @LimiterRet
tmp(156) := "0001" & "000" & "000001011" ;	-- LDA R0, @LIM0
tmp(157) := "1001" & "000" & "000010001" ;	-- CEQ R0, @MEM0
tmp(158) := "1000" & "000" & "010100000" ;	-- JEQ @AcionaFlag

-- LABEL LimiterRet
tmp(159) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL AcionaFlag
tmp(160) := "0001" & "000" & "000000001" ;	-- LDA R0, @1
tmp(161) := "0110" & "000" & "000010111" ;	-- STA @FLAG, R0
tmp(162) := "0110" & "000" & "100000010" ;	-- STA @LED9, R0
tmp(163) := "0110" & "000" & "100000001" ;	-- STA @LED8, R0
tmp(164) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL VerificaFlag
tmp(165) := "0001" & "000" & "000000001" ;	-- LDA R0, @1
tmp(166) := "1001" & "000" & "000010111" ;	-- CEQ R0, @FLAG
tmp(167) := "1000" & "000" & "010101001" ;	-- JEQ @Parado
tmp(168) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Parado
tmp(169) := "0001" & "000" & "101100011" ;	-- LDA R0, @KEY3
tmp(170) := "0100" & "000" & "000000001" ;	-- AND R0, @1
tmp(171) := "1001" & "000" & "000000001" ;	-- CEQ R0, @1
tmp(172) := "1000" & "000" & "010111101" ;	-- JEQ @SetLimit
tmp(173) := "0001" & "000" & "101100100" ;	-- LDA R0, @FPGA_RESET
tmp(174) := "0100" & "000" & "000000001" ;	-- AND R0, @1
tmp(175) := "1001" & "000" & "000000001" ;	-- CEQ R0, @1
tmp(176) := "1000" & "000" & "001111101" ;	-- JEQ @ResetCount
tmp(177) := "0001" & "000" & "101100000" ;	-- LDA R0, @KEY0
tmp(178) := "0100" & "000" & "000000001" ;	-- AND R0, @1
tmp(179) := "1001" & "000" & "000000001" ;	-- CEQ R0, @1
tmp(180) := "1000" & "000" & "010110110" ;	-- JEQ @AllLEDs
tmp(181) := "0111" & "000" & "010101001" ;	-- JMP @Parado

-- LABEL AllLEDs
tmp(182) := "0110" & "000" & "111111111" ;	-- CLR @KEY0
tmp(183) := "0101" & "001" & "011111111" ;	-- LDI R1, $255
tmp(184) := "0110" & "001" & "100000000" ;	-- STA @LEDb, R1
tmp(185) := "0101" & "001" & "000000001" ;	-- LDI R1, $1
tmp(186) := "0110" & "001" & "100000001" ;	-- STA @LED8, R1
tmp(187) := "0110" & "001" & "100000010" ;	-- STA @LED9, R1
tmp(188) := "0111" & "000" & "010101001" ;	-- JMP @Parado

-- LABEL SetLimit
tmp(189) := "0110" & "000" & "111111100" ;	-- CLR @KEY3
tmp(190) := "0001" & "011" & "000001011" ;	-- LDA R3, @LIM0
tmp(191) := "0110" & "011" & "100100000" ;	-- STA @HEX0, R3
tmp(192) := "0001" & "011" & "000001100" ;	-- LDA R3, @LIM1
tmp(193) := "0110" & "011" & "100100001" ;	-- STA @HEX1, R3
tmp(194) := "0001" & "011" & "000001101" ;	-- LDA R3, @LIM2
tmp(195) := "0110" & "011" & "100100010" ;	-- STA @HEX2, R3
tmp(196) := "0001" & "011" & "000001110" ;	-- LDA R3, @LIM3
tmp(197) := "0110" & "011" & "100100011" ;	-- STA @HEX3, R3
tmp(198) := "0001" & "011" & "000001111" ;	-- LDA R3, @LIM4
tmp(199) := "0110" & "011" & "100100100" ;	-- STA @HEX4, R3
tmp(200) := "0001" & "011" & "000010000" ;	-- LDA R3, @LIM5
tmp(201) := "0110" & "011" & "100100101" ;	-- STA @HEX5, R3
tmp(202) := "0001" & "000" & "000000000" ;	-- LDA R0, @0
tmp(203) := "0001" & "110" & "000000000" ;	-- LDA R6, @0
tmp(204) := "0001" & "111" & "000000000" ;	-- LDA R7, @0
tmp(205) := "0110" & "000" & "100000001" ;	-- STA @LED8, R0
tmp(206) := "0110" & "000" & "100000010" ;	-- STA @LED9, R0
tmp(207) := "0001" & "010" & "000000001" ;	-- LDA R2, @1
tmp(208) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(209) := "0110" & "000" & "111111111" ;	-- CLR @KEY0
tmp(210) := "0110" & "000" & "111111100" ;	-- CLR @KEY3
tmp(211) := "0111" & "000" & "011010100" ;	-- JMP @VerificaK0

-- LABEL VerificaK0
tmp(212) := "0001" & "110" & "101100000" ;	-- LDA R6, @KEY0
tmp(213) := "0100" & "110" & "000000001" ;	-- AND R6, @1
tmp(214) := "1001" & "110" & "000000000" ;	-- CEQ R6, @0
tmp(215) := "1000" & "000" & "011011001" ;	-- JEQ @VerificaK1
tmp(216) := "1010" & "000" & "011011110" ;	-- JSR @IncLim

-- LABEL VerificaK1
tmp(217) := "0001" & "111" & "101100011" ;	-- LDA R7, @KEY3
tmp(218) := "0100" & "111" & "000000001" ;	-- AND R7, @1
tmp(219) := "1001" & "111" & "000000000" ;	-- CEQ R7, @0
tmp(220) := "1100" & "000" & "100011011" ;	-- JNE @Set0
tmp(221) := "0111" & "000" & "011010100" ;	-- JMP @VerificaK0

-- LABEL IncLim
tmp(222) := "0110" & "000" & "111111111" ;	-- CLR @KEY0
tmp(223) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(224) := "1000" & "000" & "011101011" ;	-- JEQ @IncLim0
tmp(225) := "1001" & "000" & "000000001" ;	-- CEQ R0, @1
tmp(226) := "1000" & "000" & "011110011" ;	-- JEQ @IncLim1
tmp(227) := "1001" & "000" & "000000010" ;	-- CEQ R0, @2
tmp(228) := "1000" & "000" & "011111011" ;	-- JEQ @IncLim2
tmp(229) := "1001" & "000" & "000000011" ;	-- CEQ R0, @3
tmp(230) := "1000" & "000" & "100000011" ;	-- JEQ @IncLim3
tmp(231) := "1001" & "000" & "000000100" ;	-- CEQ R0, @4
tmp(232) := "1000" & "000" & "100001011" ;	-- JEQ @IncLim4
tmp(233) := "1001" & "000" & "000000101" ;	-- CEQ R0, @5
tmp(234) := "1000" & "000" & "100010011" ;	-- JEQ @IncLim5

-- LABEL IncLim0
tmp(235) := "0001" & "001" & "000001011" ;	-- LDA R1, @LIM0
tmp(236) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(237) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(238) := "1100" & "000" & "011110000" ;	-- JNE @StaLim0
tmp(239) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim0
tmp(240) := "0110" & "001" & "000001011" ;	-- STA @LIM0, R1
tmp(241) := "0110" & "001" & "100100000" ;	-- STA @HEX0, R1
tmp(242) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL IncLim1
tmp(243) := "0001" & "001" & "000001100" ;	-- LDA R1, @LIM1
tmp(244) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(245) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(246) := "1100" & "000" & "011111000" ;	-- JNE @StaLim1
tmp(247) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim1
tmp(248) := "0110" & "001" & "000001100" ;	-- STA @LIM1, R1
tmp(249) := "0110" & "001" & "100100001" ;	-- STA @HEX1, R1
tmp(250) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL IncLim2
tmp(251) := "0001" & "001" & "000001101" ;	-- LDA R1, @LIM2
tmp(252) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(253) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(254) := "1100" & "000" & "100000000" ;	-- JNE @StaLim2
tmp(255) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim2
tmp(256) := "0110" & "001" & "000001101" ;	-- STA @LIM2, R1
tmp(257) := "0110" & "001" & "100100010" ;	-- STA @HEX2, R1
tmp(258) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL IncLim3
tmp(259) := "0001" & "001" & "000001110" ;	-- LDA R1, @LIM3
tmp(260) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(261) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(262) := "1100" & "000" & "100001000" ;	-- JNE @StaLim3
tmp(263) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim3
tmp(264) := "0110" & "001" & "000001110" ;	-- STA @LIM3, R1
tmp(265) := "0110" & "001" & "100100011" ;	-- STA @HEX3, R1
tmp(266) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL IncLim4
tmp(267) := "0001" & "001" & "000001111" ;	-- LDA R1, @LIM4
tmp(268) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(269) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(270) := "1100" & "000" & "100010000" ;	-- JNE @StaLim4
tmp(271) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim4
tmp(272) := "0110" & "001" & "000001111" ;	-- STA @LIM4, R1
tmp(273) := "0110" & "001" & "100100100" ;	-- STA @HEX4, R1
tmp(274) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL IncLim5
tmp(275) := "0001" & "001" & "000010000" ;	-- LDA R1, @LIM5
tmp(276) := "0010" & "001" & "000000001" ;	-- SOMA R1, @1
tmp(277) := "1001" & "001" & "000001010" ;	-- CEQ R1, @10
tmp(278) := "1100" & "000" & "100011000" ;	-- JNE @StaLim5
tmp(279) := "0001" & "001" & "000000000" ;	-- LDA R1, $0

-- LABEL StaLim5
tmp(280) := "0110" & "001" & "000010000" ;	-- STA @LIM5, R1
tmp(281) := "0110" & "001" & "100100101" ;	-- STA @HEX5, R1
tmp(282) := "1011" & "000" & "000000000" ;	-- RET

-- LABEL Set0
tmp(283) := "0110" & "000" & "111111100" ;	-- CLR @KEY3
tmp(284) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(285) := "1000" & "000" & "100110101" ;	-- JEQ @Set1
tmp(286) := "1001" & "000" & "000000001" ;	-- CEQ R0, @1
tmp(287) := "1000" & "000" & "100111001" ;	-- JEQ @Set2
tmp(288) := "1001" & "000" & "000000010" ;	-- CEQ R0, @2
tmp(289) := "1000" & "000" & "100111101" ;	-- JEQ @Set3
tmp(290) := "1001" & "000" & "000000011" ;	-- CEQ R0, @3
tmp(291) := "1000" & "000" & "101000001" ;	-- JEQ @Set4
tmp(292) := "1001" & "000" & "000000100" ;	-- CEQ R0, @4
tmp(293) := "1000" & "000" & "101000101" ;	-- JEQ @Set5
tmp(294) := "0101" & "010" & "000000000" ;	-- LDI R2, @0
tmp(295) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(296) := "0001" & "111" & "000000000" ;	-- LDA R7, @0
tmp(297) := "0001" & "110" & "000000000" ;	-- LDA R6, @0
tmp(298) := "0001" & "101" & "000000000" ;	-- LDA R5, @0
tmp(299) := "0001" & "100" & "000000000" ;	-- LDA R4, @0
tmp(300) := "0001" & "011" & "000000000" ;	-- LDA R3, @0
tmp(301) := "0001" & "010" & "000000000" ;	-- LDA R2, @0
tmp(302) := "0001" & "001" & "000000000" ;	-- LDA R1, @0
tmp(303) := "0001" & "000" & "000000000" ;	-- LDA R0, @0
tmp(304) := "0110" & "000" & "111111111" ;	-- CLR @KEY0
tmp(305) := "0110" & "000" & "111111100" ;	-- CLR @KEY3
tmp(306) := "0110" & "000" & "111111011" ;	-- CLR @FPGA_RESET
tmp(307) := "0110" & "000" & "000010111" ;	-- STA @FLAG, R0
tmp(308) := "0111" & "000" & "101001001" ;	-- JMP @VerificaOF5

-- LABEL Set1
tmp(309) := "0101" & "010" & "000000010" ;	-- LDI R2, $2
tmp(310) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(311) := "0101" & "000" & "000000001" ;	-- LDI R0, @1
tmp(312) := "0111" & "000" & "011010100" ;	-- JMP @VerificaK0

-- LABEL Set2
tmp(313) := "0101" & "010" & "000000100" ;	-- LDI R2, $4
tmp(314) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(315) := "0101" & "000" & "000000010" ;	-- LDI R0, @2
tmp(316) := "0111" & "000" & "011010100" ;	-- JMP @VerificaK0

-- LABEL Set3
tmp(317) := "0101" & "010" & "000001000" ;	-- LDI R2, $8
tmp(318) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(319) := "0101" & "000" & "000000011" ;	-- LDI R0, @3
tmp(320) := "0111" & "000" & "011010100" ;	-- JMP @VerificaK0

-- LABEL Set4
tmp(321) := "0101" & "010" & "000010000" ;	-- LDI R2, $16
tmp(322) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(323) := "0101" & "000" & "000000100" ;	-- LDI R0, @4
tmp(324) := "0111" & "000" & "011010100" ;	-- JMP @VerificaK0

-- LABEL Set5
tmp(325) := "0101" & "010" & "000100000" ;	-- LDI R2, $32
tmp(326) := "0110" & "010" & "100000000" ;	-- STA @LEDb, R2
tmp(327) := "0101" & "000" & "000000101" ;	-- LDI R0, @5
tmp(328) := "0111" & "000" & "011010100" ;	-- JMP @VerificaK0

-- LABEL VerificaOF5
tmp(329) := "0001" & "011" & "000010001" ;	-- LDA R3, @MEM0
tmp(330) := "0110" & "011" & "100100000" ;	-- STA @HEX0, R3
tmp(331) := "0001" & "011" & "000010010" ;	-- LDA R3, @MEM1
tmp(332) := "0110" & "011" & "100100001" ;	-- STA @HEX1, R3
tmp(333) := "0001" & "011" & "000010011" ;	-- LDA R3, @MEM2
tmp(334) := "0110" & "011" & "100100010" ;	-- STA @HEX2, R3
tmp(335) := "0001" & "011" & "000010100" ;	-- LDA R3, @MEM3
tmp(336) := "0110" & "011" & "100100011" ;	-- STA @HEX3, R3
tmp(337) := "0001" & "011" & "000010101" ;	-- LDA R3, @MEM4
tmp(338) := "0110" & "011" & "100100100" ;	-- STA @HEX4, R3
tmp(339) := "0001" & "011" & "000010110" ;	-- LDA R3, @MEM5
tmp(340) := "0110" & "011" & "100100101" ;	-- STA @HEX5, R3
tmp(341) := "0001" & "000" & "000010000" ;	-- LDA R0, @LIM5
tmp(342) := "0011" & "000" & "000010110" ;	-- SUB R0, @MEM5
tmp(343) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(344) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(345) := "1100" & "000" & "101011100" ;	-- JNE @OFIgual5
tmp(346) := "1010" & "000" & "010100000" ;	-- JSR @AcionaFlag
tmp(347) := "0111" & "000" & "010110110" ;	-- JMP @AllLEDs

-- LABEL OFIgual5
tmp(348) := "0001" & "000" & "000010000" ;	-- LDA R0, @LIM5
tmp(349) := "0011" & "000" & "000010110" ;	-- SUB R0, @MEM5
tmp(350) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(351) := "1100" & "000" & "000101100" ;	-- JNE @Contador
tmp(352) := "0001" & "000" & "000001111" ;	-- LDA R0, @LIM4
tmp(353) := "0011" & "000" & "000010101" ;	-- SUB R0, @MEM4
tmp(354) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(355) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(356) := "1100" & "000" & "101100111" ;	-- JNE @OFIgual4
tmp(357) := "1010" & "000" & "010100000" ;	-- JSR @AcionaFlag
tmp(358) := "0111" & "000" & "010110110" ;	-- JMP @AllLEDs

-- LABEL OFIgual4
tmp(359) := "0001" & "000" & "000001111" ;	-- LDA R0, @LIM4
tmp(360) := "0011" & "000" & "000010101" ;	-- SUB R0, @MEM4
tmp(361) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(362) := "1100" & "000" & "000101100" ;	-- JNE @Contador
tmp(363) := "0001" & "000" & "000001110" ;	-- LDA R0, @LIM3
tmp(364) := "0011" & "000" & "000010100" ;	-- SUB R0, @MEM3
tmp(365) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(366) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(367) := "1100" & "000" & "101110010" ;	-- JNE @OFIgual3
tmp(368) := "1010" & "000" & "010100000" ;	-- JSR @AcionaFlag
tmp(369) := "0111" & "000" & "010110110" ;	-- JMP @AllLEDs

-- LABEL OFIgual3
tmp(370) := "0001" & "000" & "000001110" ;	-- LDA R0, @LIM3
tmp(371) := "0011" & "000" & "000010100" ;	-- SUB R0, @MEM3
tmp(372) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(373) := "1100" & "000" & "000101100" ;	-- JNE @Contador
tmp(374) := "0001" & "000" & "000001101" ;	-- LDA R0, @LIM2
tmp(375) := "0011" & "000" & "000010011" ;	-- SUB R0, @MEM2
tmp(376) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(377) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(378) := "1100" & "000" & "101111101" ;	-- JNE @OFIgual2
tmp(379) := "1010" & "000" & "010100000" ;	-- JSR @AcionaFlag
tmp(380) := "0111" & "000" & "010110110" ;	-- JMP @AllLEDs

-- LABEL OFIgual2
tmp(381) := "0001" & "000" & "000001101" ;	-- LDA R0, @LIM2
tmp(382) := "0011" & "000" & "000010011" ;	-- SUB R0, @MEM2
tmp(383) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(384) := "1100" & "000" & "000101100" ;	-- JNE @Contador
tmp(385) := "0001" & "000" & "000001100" ;	-- LDA R0, @LIM1
tmp(386) := "0011" & "000" & "000010010" ;	-- SUB R0, @MEM1
tmp(387) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(388) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(389) := "1100" & "000" & "110001000" ;	-- JNE @OFIgual1
tmp(390) := "1010" & "000" & "010100000" ;	-- JSR @AcionaFlag
tmp(391) := "0111" & "000" & "010110110" ;	-- JMP @AllLEDs

-- LABEL OFIgual1
tmp(392) := "0001" & "000" & "000001100" ;	-- LDA R0, @LIM1
tmp(393) := "0011" & "000" & "000010010" ;	-- SUB R0, @MEM1
tmp(394) := "1001" & "000" & "000000000" ;	-- CEQ R0, @0
tmp(395) := "1100" & "000" & "000101100" ;	-- JNE @Contador
tmp(396) := "0001" & "000" & "000001011" ;	-- LDA R0, @LIM0
tmp(397) := "0011" & "000" & "000010001" ;	-- SUB R0, @MEM0
tmp(398) := "0100" & "000" & "000111111" ;	-- AND R0, @63
tmp(399) := "1001" & "000" & "000111111" ;	-- CEQ R0, @63
tmp(400) := "1100" & "000" & "000101100" ;	-- JNE @Contador
tmp(401) := "1010" & "000" & "010100000" ;	-- JSR @AcionaFlag
tmp(402) := "0111" & "000" & "010110110" ;	-- JMP @AllLEDs

		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;