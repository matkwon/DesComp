-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/07/2022 01:00:12"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	A : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
	C : OUT std_logic_vector(7 DOWNTO 0);
	FN : OUT std_logic;
	FM : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END relogio;

ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_FN : std_logic;
SIGNAL ww_FM : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \C[2]~output_o\ : std_logic;
SIGNAL \C[3]~output_o\ : std_logic;
SIGNAL \C[4]~output_o\ : std_logic;
SIGNAL \C[5]~output_o\ : std_logic;
SIGNAL \C[6]~output_o\ : std_logic;
SIGNAL \C[7]~output_o\ : std_logic;
SIGNAL \FN~output_o\ : std_logic;
SIGNAL \FM~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal8~5_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal8~1_combout\ : std_logic;
SIGNAL \CPU|decoder|OP~0_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal8~3_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal8~4_combout\ : std_logic;
SIGNAL \CPU|decoder|saida[5]~0_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal8~0_combout\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \CPU|decoder|HabRegs~0_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~85_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~12_q\ : std_logic;
SIGNAL \CPU|ULA1|res[0]~0_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \BORDA_KEY0|saidaQ~0_combout\ : std_logic;
SIGNAL \BORDA_KEY0|saidaQ~q\ : std_logic;
SIGNAL \BORDA_KEY0|saida~combout\ : std_logic;
SIGNAL \limpa_leitura_KEY0~1_combout\ : std_logic;
SIGNAL \FF_KEY0|DOUT~q\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[0]~11_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[0]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[0]~1_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~84_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~68_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~76_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|res[1]~3_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~69_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~13_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~77_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|res[2]~5_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~70_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~14_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~78_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[3]~7_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~71_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~15_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~79_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|res[4]~9_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~72_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~16_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~80_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|res[5]~11_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~73_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~17_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~81_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|res[6]~13_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~74_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~18_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~82_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|REGs|registrador~75_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~19_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~83_combout\ : std_logic;
SIGNAL \CPU|ULA1|flagNeg~0_combout\ : std_logic;
SIGNAL \CPU|FF_Neg|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FF_Neg|DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|res[6]~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|flagNeg~1_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal8~2_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[0]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[1]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[2]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[3]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[4]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[5]~12_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \HabHex0~0_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \limpa_leitura_KEY1~0_combout\ : std_logic;
SIGNAL \HabHex4~0_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \limpa_leitura_KEY0~0_combout\ : std_logic;
SIGNAL \HabHex5~0_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Display0|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display4|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display5|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display4|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display0|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|FF_Neg|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_flagNeg~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_flagNeg~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[6]~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[6]~13_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[5]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[4]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[3]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[2]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[1]~3_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_saida[5]~0_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal8~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[0]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[0]~0_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal8~3_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_OP~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_HabRegs~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \FF_KEY0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~83_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~82_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~81_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~80_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~79_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~78_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~77_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~76_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~75_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~74_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~73_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~72_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~71_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~70_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[0]~11_combout\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[0]~10_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_limpa_leitura_KEY0~1_combout\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \BORDA_KEY0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ALT_INV_limpa_leitura_KEY1~0_combout\ : std_logic;
SIGNAL \ALT_INV_limpa_leitura_KEY0~0_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal8~5_combout\ : std_logic;
SIGNAL \Display5|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_SW <= SW;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
A <= ww_A;
B <= ww_B;
C <= ww_C;
FN <= ww_FN;
FM <= ww_FM;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Display4|REG|ALT_INV_DOUT\(0) <= NOT \Display4|REG|DOUT\(0);
\Display0|REG|ALT_INV_DOUT\(2) <= NOT \Display0|REG|DOUT\(2);
\Display0|REG|ALT_INV_DOUT\(1) <= NOT \Display0|REG|DOUT\(1);
\Display0|REG|ALT_INV_DOUT\(3) <= NOT \Display0|REG|DOUT\(3);
\Display0|REG|ALT_INV_DOUT\(0) <= NOT \Display0|REG|DOUT\(0);
\CPU|FF_Neg|ALT_INV_DOUT~q\ <= NOT \CPU|FF_Neg|DOUT~q\;
\CPU|ULA1|ALT_INV_flagNeg~1_combout\ <= NOT \CPU|ULA1|flagNeg~1_combout\;
\CPU|ULA1|ALT_INV_flagNeg~0_combout\ <= NOT \CPU|ULA1|flagNeg~0_combout\;
\CPU|ULA1|ALT_INV_res[6]~14_combout\ <= NOT \CPU|ULA1|res[6]~14_combout\;
\CPU|ULA1|ALT_INV_res[6]~13_combout\ <= NOT \CPU|ULA1|res[6]~13_combout\;
\CPU|ULA1|ALT_INV_res[5]~11_combout\ <= NOT \CPU|ULA1|res[5]~11_combout\;
\CPU|ULA1|ALT_INV_res[4]~9_combout\ <= NOT \CPU|ULA1|res[4]~9_combout\;
\CPU|ULA1|ALT_INV_res[3]~7_combout\ <= NOT \CPU|ULA1|res[3]~7_combout\;
\CPU|ULA1|ALT_INV_res[2]~5_combout\ <= NOT \CPU|ULA1|res[2]~5_combout\;
\CPU|ULA1|ALT_INV_res[1]~3_combout\ <= NOT \CPU|ULA1|res[1]~3_combout\;
\CPU|decoder|ALT_INV_saida[5]~0_combout\ <= NOT \CPU|decoder|saida[5]~0_combout\;
\CPU|decoder|ALT_INV_Equal8~4_combout\ <= NOT \CPU|decoder|Equal8~4_combout\;
\CPU|ULA1|ALT_INV_res[0]~1_combout\ <= NOT \CPU|ULA1|res[0]~1_combout\;
\CPU|ULA1|ALT_INV_res[0]~0_combout\ <= NOT \CPU|ULA1|res[0]~0_combout\;
\CPU|decoder|ALT_INV_Equal8~3_combout\ <= NOT \CPU|decoder|Equal8~3_combout\;
\CPU|decoder|ALT_INV_OP~0_combout\ <= NOT \CPU|decoder|OP~0_combout\;
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\CPU|MUXULA|ALT_INV_saida_MUX[7]~8_combout\ <= NOT \CPU|MUXULA|saida_MUX[7]~8_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\CPU|MUXULA|ALT_INV_saida_MUX[6]~7_combout\ <= NOT \CPU|MUXULA|saida_MUX[6]~7_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\CPU|MUXULA|ALT_INV_saida_MUX[5]~6_combout\ <= NOT \CPU|MUXULA|saida_MUX[5]~6_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\CPU|MUXULA|ALT_INV_saida_MUX[4]~5_combout\ <= NOT \CPU|MUXULA|saida_MUX[4]~5_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\CPU|MUXULA|ALT_INV_saida_MUX[3]~4_combout\ <= NOT \CPU|MUXULA|saida_MUX[3]~4_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\CPU|MUXULA|ALT_INV_saida_MUX[2]~3_combout\ <= NOT \CPU|MUXULA|saida_MUX[2]~3_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\CPU|MUXULA|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \CPU|MUXULA|saida_MUX[1]~2_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|MUXULA|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \CPU|MUXULA|saida_MUX[0]~1_combout\;
\CPU|decoder|ALT_INV_HabRegs~0_combout\ <= NOT \CPU|decoder|HabRegs~0_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\CPU|decoder|ALT_INV_Equal8~2_combout\ <= NOT \CPU|decoder|Equal8~2_combout\;
\CPU|decoder|ALT_INV_Equal8~1_combout\ <= NOT \CPU|decoder|Equal8~1_combout\;
\FF_KEY0|ALT_INV_DOUT~q\ <= NOT \FF_KEY0|DOUT~q\;
\CPU|MUXULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUXULA|saida_MUX[0]~0_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\CPU|decoder|ALT_INV_Equal8~0_combout\ <= NOT \CPU|decoder|Equal8~0_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\CPU|REGs|ALT_INV_registrador~83_combout\ <= NOT \CPU|REGs|registrador~83_combout\;
\CPU|REGs|ALT_INV_registrador~82_combout\ <= NOT \CPU|REGs|registrador~82_combout\;
\CPU|REGs|ALT_INV_registrador~81_combout\ <= NOT \CPU|REGs|registrador~81_combout\;
\CPU|REGs|ALT_INV_registrador~80_combout\ <= NOT \CPU|REGs|registrador~80_combout\;
\CPU|REGs|ALT_INV_registrador~79_combout\ <= NOT \CPU|REGs|registrador~79_combout\;
\CPU|REGs|ALT_INV_registrador~78_combout\ <= NOT \CPU|REGs|registrador~78_combout\;
\CPU|REGs|ALT_INV_registrador~77_combout\ <= NOT \CPU|REGs|registrador~77_combout\;
\CPU|REGs|ALT_INV_registrador~76_combout\ <= NOT \CPU|REGs|registrador~76_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\CPU|PC|ALT_INV_DOUT[3]~0_combout\ <= NOT \CPU|PC|DOUT[3]~0_combout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|REGs|ALT_INV_registrador~19_q\ <= NOT \CPU|REGs|registrador~19_q\;
\CPU|REGs|ALT_INV_registrador~75_q\ <= NOT \CPU|REGs|registrador~75_q\;
\CPU|REGs|ALT_INV_registrador~18_q\ <= NOT \CPU|REGs|registrador~18_q\;
\CPU|REGs|ALT_INV_registrador~74_q\ <= NOT \CPU|REGs|registrador~74_q\;
\CPU|REGs|ALT_INV_registrador~17_q\ <= NOT \CPU|REGs|registrador~17_q\;
\CPU|REGs|ALT_INV_registrador~73_q\ <= NOT \CPU|REGs|registrador~73_q\;
\CPU|REGs|ALT_INV_registrador~16_q\ <= NOT \CPU|REGs|registrador~16_q\;
\CPU|REGs|ALT_INV_registrador~72_q\ <= NOT \CPU|REGs|registrador~72_q\;
\CPU|REGs|ALT_INV_registrador~15_q\ <= NOT \CPU|REGs|registrador~15_q\;
\CPU|REGs|ALT_INV_registrador~71_q\ <= NOT \CPU|REGs|registrador~71_q\;
\CPU|REGs|ALT_INV_registrador~14_q\ <= NOT \CPU|REGs|registrador~14_q\;
\CPU|REGs|ALT_INV_registrador~70_q\ <= NOT \CPU|REGs|registrador~70_q\;
\CPU|REGs|ALT_INV_registrador~13_q\ <= NOT \CPU|REGs|registrador~13_q\;
\CPU|REGs|ALT_INV_registrador~69_q\ <= NOT \CPU|REGs|registrador~69_q\;
\CPU|REGs|ALT_INV_registrador~12_q\ <= NOT \CPU|REGs|registrador~12_q\;
\CPU|REGs|ALT_INV_registrador~68_q\ <= NOT \CPU|REGs|registrador~68_q\;
\CPU|MUXULA|ALT_INV_saida_MUX[0]~11_combout\ <= NOT \CPU|MUXULA|saida_MUX[0]~11_combout\;
\CPU|MUXULA|ALT_INV_saida_MUX[0]~10_combout\ <= NOT \CPU|MUXULA|saida_MUX[0]~10_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\ALT_INV_limpa_leitura_KEY0~1_combout\ <= NOT \limpa_leitura_KEY0~1_combout\;
\CPU|MUXULA|ALT_INV_saida_MUX[3]~9_combout\ <= NOT \CPU|MUXULA|saida_MUX[3]~9_combout\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\BORDA_KEY0|ALT_INV_saidaQ~q\ <= NOT \BORDA_KEY0|saidaQ~q\;
\CPU|FF_Zero|ALT_INV_DOUT~3_combout\ <= NOT \CPU|FF_Zero|DOUT~3_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FF_Zero|DOUT~2_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FF_Zero|DOUT~1_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FF_Zero|DOUT~0_combout\;
\ALT_INV_limpa_leitura_KEY1~0_combout\ <= NOT \limpa_leitura_KEY1~0_combout\;
\ALT_INV_limpa_leitura_KEY0~0_combout\ <= NOT \limpa_leitura_KEY0~0_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~q\ <= NOT \CPU|FF_Zero|DOUT~q\;
\CPU|decoder|ALT_INV_Equal8~5_combout\ <= NOT \CPU|decoder|Equal8~5_combout\;
\Display5|REG|ALT_INV_DOUT\(2) <= NOT \Display5|REG|DOUT\(2);
\Display5|REG|ALT_INV_DOUT\(1) <= NOT \Display5|REG|DOUT\(1);
\Display5|REG|ALT_INV_DOUT\(3) <= NOT \Display5|REG|DOUT\(3);
\Display5|REG|ALT_INV_DOUT\(0) <= NOT \Display5|REG|DOUT\(0);
\Display4|REG|ALT_INV_DOUT\(2) <= NOT \Display4|REG|DOUT\(2);
\Display4|REG|ALT_INV_DOUT\(1) <= NOT \Display4|REG|DOUT\(1);
\Display4|REG|ALT_INV_DOUT\(3) <= NOT \Display4|REG|DOUT\(3);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGs|registrador~76_combout\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

\A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGs|registrador~77_combout\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

\A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGs|registrador~78_combout\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

\A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGs|registrador~79_combout\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

\A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGs|registrador~80_combout\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

\A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGs|registrador~81_combout\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

\A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGs|registrador~82_combout\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

\A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGs|registrador~83_combout\,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

\B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXULA|saida_MUX[0]~1_combout\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

\B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXULA|saida_MUX[1]~2_combout\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

\B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXULA|saida_MUX[2]~3_combout\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

\B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXULA|saida_MUX[3]~4_combout\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

\B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXULA|saida_MUX[4]~5_combout\,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

\B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXULA|saida_MUX[5]~6_combout\,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

\B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXULA|saida_MUX[6]~7_combout\,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

\B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXULA|saida_MUX[7]~8_combout\,
	devoe => ww_devoe,
	o => \B[7]~output_o\);

\C[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|res[0]~2_combout\,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

\C[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|res[1]~4_combout\,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

\C[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|res[2]~6_combout\,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

\C[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|res[3]~8_combout\,
	devoe => ww_devoe,
	o => \C[3]~output_o\);

\C[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|res[4]~10_combout\,
	devoe => ww_devoe,
	o => \C[4]~output_o\);

\C[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|res[5]~12_combout\,
	devoe => ww_devoe,
	o => \C[5]~output_o\);

\C[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|res[6]~14_combout\,
	devoe => ww_devoe,
	o => \C[6]~output_o\);

\C[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|flagNeg~1_combout\,
	devoe => ww_devoe,
	o => \C[7]~output_o\);

\FN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|flagNeg~1_combout\,
	devoe => ww_devoe,
	o => \FN~output_o\);

\FM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|FF_Neg|DOUT~q\,
	devoe => ww_devoe,
	o => \FM~output_o\);

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display0|Conv|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display0|Conv|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display0|Conv|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display0|Conv|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display0|Conv|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display0|Conv|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display0|Conv|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|Conv|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|Conv|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|Conv|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|Conv|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|Conv|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|Conv|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|Conv|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|Conv|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|Conv|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|Conv|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|Conv|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|Conv|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|Conv|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|Conv|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001010000100000000101000010000000010100001000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\ROM|memROM~0_combout\) # (!\ROM|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000111100010101000011110001010100001111000101010000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~19_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (!\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100010101010101010001010101010101000101010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~20_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000110000000001100011000000000110001100000000011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~17_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001001000000101100100100000010110010010000001011001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~14_combout\);

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (\ROM|memROM~0_combout\ & !\ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	combout => \ROM|memROM~18_combout\);

\CPU|decoder|Equal8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal8~5_combout\ = (\ROM|memROM~19_combout\ & (\ROM|memROM~20_combout\ & (\ROM|memROM~17_combout\ & !\ROM|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	combout => \CPU|decoder|Equal8~5_combout\);

\CPU|decoder|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal8~1_combout\ = ( !\ROM|memROM~14_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~11_combout\ & (!\ROM|memROM~12_combout\ & \ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|decoder|Equal8~1_combout\);

\CPU|decoder|OP~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|OP~0_combout\ = (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~19_combout\ & ((\ROM|memROM~20_combout\))) # (\ROM|memROM~19_combout\ & (\ROM|memROM~18_combout\ & !\ROM|memROM~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100000000000101010000000000010101000000000001010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	combout => \CPU|decoder|OP~0_combout\);

\CPU|decoder|Equal8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal8~3_combout\ = (\ROM|memROM~19_combout\ & (!\ROM|memROM~20_combout\ & (!\ROM|memROM~17_combout\ & !\ROM|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	combout => \CPU|decoder|Equal8~3_combout\);

\CPU|decoder|Equal8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal8~4_combout\ = (!\ROM|memROM~19_combout\ & (!\ROM|memROM~20_combout\ & (!\ROM|memROM~17_combout\ & \ROM|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	combout => \CPU|decoder|Equal8~4_combout\);

\CPU|decoder|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida[5]~0_combout\ = (!\CPU|decoder|Equal8~3_combout\ & ((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_OP~0_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~4_combout\,
	combout => \CPU|decoder|saida[5]~0_combout\);

\CPU|decoder|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal8~0_combout\ = ( !\ROM|memROM~14_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~11_combout\ & (\ROM|memROM~12_combout\ & !\ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|decoder|Equal8~0_combout\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( \CPU|PC|DOUT\(0) & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \RAM|ram~552_combout\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~83_combout\,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000010000000001100001000000000110000100000000011000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~544_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \CPU|PC|DOUT\(0) & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \RAM|ram~551_combout\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~83_combout\,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~10_combout\ & \RAM|ram~30_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~30_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~546_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~545_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~545_combout\,
	datac => \RAM|ALT_INV_ram~546_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~547_combout\);

\CPU|MUXULA|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[7]~8_combout\ = (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~547_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~547_combout\,
	combout => \CPU|MUXULA|saida_MUX[7]~8_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010000000000100001000000000010000100000000001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~15_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~16_combout\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~82_combout\,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~82_combout\,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~29_q\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~29_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM|ram~541_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~541_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~542_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~543_combout\);

\CPU|MUXULA|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[6]~7_combout\ = (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~543_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \RAM|ALT_INV_ram~543_combout\,
	combout => \CPU|MUXULA|saida_MUX[6]~7_combout\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~81_combout\,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~537_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~81_combout\,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~9_combout\ & ( (\RAM|ram~28_q\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~539_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~538_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~538_combout\,
	datac => \RAM|ALT_INV_ram~539_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~540_combout\);

\CPU|MUXULA|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[5]~6_combout\ = (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~540_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~540_combout\,
	combout => \CPU|MUXULA|saida_MUX[5]~6_combout\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~80_combout\,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~80_combout\,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111000000101110011100000010111001110000001011100111000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~5_combout\ & ( (\RAM|ram~19_q\ & !\ROM|memROM~0_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~19_q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~5_combout\ & ( (\RAM|ram~19_q\ & !\ROM|memROM~0_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~0_combout\ & (\RAM|ram~19_q\)) # (\ROM|memROM~0_combout\ & ((\RAM|ram~27_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000000001010101010101010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datac => \RAM|ALT_INV_ram~27_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM|ram~534_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~534_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~535_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~535_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~536_combout\);

\CPU|MUXULA|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[4]~5_combout\ = (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~536_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~536_combout\,
	combout => \CPU|MUXULA|saida_MUX[4]~5_combout\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~79_combout\,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = (\ROM|memROM~9_combout\ & (\RAM|ram~26_q\ & !\ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \RAM|ALT_INV_ram~26_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~79_combout\,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = (!\ROM|memROM~2_combout\ & (((\ROM|memROM~9_combout\ & \RAM|ram~18_q\)) # (\ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101010001000100010101000100010001010100010001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~18_q\,
	combout => \RAM|ram~549_combout\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \RAM|ram~549_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~549_combout\,
	combout => \RAM|ram~550_combout\);

\CPU|MUXULA|saida_MUX[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[3]~9_combout\ = (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100110001001100010011000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|MUXULA|saida_MUX[3]~9_combout\);

\CPU|MUXULA|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[3]~4_combout\ = ( \RAM|ram~550_combout\ & ( \CPU|MUXULA|saida_MUX[3]~9_combout\ & ( (!\CPU|decoder|Equal8~0_combout\ & (((!\ROM|memROM~6_combout\) # (\RAM|ram~548_combout\)))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (!\ROM|memROM~9_combout\)) ) ) ) # ( !\RAM|ram~550_combout\ & ( \CPU|MUXULA|saida_MUX[3]~9_combout\ & ( (\CPU|decoder|Equal8~0_combout\ & !\ROM|memROM~9_combout\) ) ) ) # ( \RAM|ram~550_combout\ & ( !\CPU|MUXULA|saida_MUX[3]~9_combout\ & ( 
-- (!\ROM|memROM~9_combout\ & ((\ROM|memROM~6_combout\) # (\CPU|decoder|Equal8~0_combout\))) ) ) ) # ( !\RAM|ram~550_combout\ & ( !\CPU|MUXULA|saida_MUX[3]~9_combout\ & ( (\CPU|decoder|Equal8~0_combout\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011000100110001000100010001001110010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~548_combout\,
	datae => \RAM|ALT_INV_ram~550_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[3]~9_combout\,
	combout => \CPU|MUXULA|saida_MUX[3]~4_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( (!\CPU|decoder|Equal8~3_combout\ & (!\CPU|decoder|OP~0_combout\ & !\CPU|decoder|Equal8~4_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datad => \CPU|decoder|ALT_INV_Equal8~4_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REGs|registrador~76_combout\ ) + ( !\CPU|MUXULA|saida_MUX[0]~1_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REGs|registrador~76_combout\ ) + ( !\CPU|MUXULA|saida_MUX[0]~1_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|MUXULA|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~76_combout\,
	dataf => \CPU|decoder|ALT_INV_Equal8~4_combout\,
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \ROM|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~21_combout\);

\CPU|decoder|HabRegs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|HabRegs~0_combout\ = (!\ROM|memROM~17_combout\ & (!\ROM|memROM~18_combout\ $ (((!\ROM|memROM~19_combout\ & !\ROM|memROM~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010001000001010001000100000101000100010000010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	combout => \CPU|decoder|HabRegs~0_combout\);

\CPU|REGs|registrador~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~85_combout\ = (!\ROM|memROM~21_combout\ & ((\CPU|decoder|HabRegs~0_combout\) # (\CPU|decoder|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~21_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datac => \CPU|decoder|ALT_INV_HabRegs~0_combout\,
	combout => \CPU|REGs|registrador~85_combout\);

\CPU|REGs|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|res[0]~1_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~12_q\);

\CPU|ULA1|res[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[0]~0_combout\ = ( \CPU|decoder|Equal8~3_combout\ & ( (!\ROM|memROM~21_combout\ & ((!\CPU|REGs|registrador~12_q\))) # (\ROM|memROM~21_combout\ & (!\CPU|REGs|registrador~68_q\)) ) ) # ( !\CPU|decoder|Equal8~3_combout\ & ( 
-- (!\CPU|decoder|OP~0_combout\ & ((!\ROM|memROM~21_combout\ & ((!\CPU|REGs|registrador~12_q\))) # (\ROM|memROM~21_combout\ & (!\CPU|REGs|registrador~68_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001000000000111000101110001011100010000000001110001011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~68_q\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \CPU|REGs|ALT_INV_registrador~12_q\,
	datad => \CPU|decoder|ALT_INV_OP~0_combout\,
	datae => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	combout => \CPU|ULA1|res[0]~0_combout\);

\CPU|MUXULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[0]~0_combout\ = (!\CPU|decoder|Equal8~0_combout\ & !\ROM|memROM~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|MUXULA|saida_MUX[0]~0_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\BORDA_KEY0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BORDA_KEY0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \BORDA_KEY0|saidaQ~0_combout\);

\BORDA_KEY0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \BORDA_KEY0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BORDA_KEY0|saidaQ~q\);

\BORDA_KEY0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \BORDA_KEY0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\BORDA_KEY0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \BORDA_KEY0|ALT_INV_saidaQ~q\,
	combout => \BORDA_KEY0|saida~combout\);

\limpa_leitura_KEY0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \limpa_leitura_KEY0~1_combout\ = ( \CPU|PC|DOUT\(0) & ( (\ROM|memROM~0_combout\ & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \limpa_leitura_KEY0~1_combout\);

\FF_KEY0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BORDA_KEY0|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_limpa_leitura_KEY0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_KEY0|DOUT~q\);

\CPU|MUXULA|saida_MUX[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[0]~11_combout\ = ( \ROM|memROM~0_combout\ & ( \FF_KEY0|DOUT~q\ & ( (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0))))) ) ) ) # ( 
-- \ROM|memROM~0_combout\ & ( !\FF_KEY0|DOUT~q\ & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000010000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \FF_KEY0|ALT_INV_DOUT~q\,
	combout => \CPU|MUXULA|saida_MUX[0]~11_combout\);

\CPU|MUXULA|saida_MUX[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[0]~10_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)) # ((\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100100001001000000000000000001111001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|MUXULA|saida_MUX[0]~10_combout\);

\CPU|ULA1|res[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[0]~1_combout\ = ( \CPU|MUXULA|saida_MUX[0]~11_combout\ & ( \CPU|MUXULA|saida_MUX[0]~10_combout\ & ( !\CPU|ULA1|res[0]~0_combout\ ) ) ) # ( !\CPU|MUXULA|saida_MUX[0]~11_combout\ & ( \CPU|MUXULA|saida_MUX[0]~10_combout\ & ( 
-- (!\CPU|ULA1|res[0]~0_combout\ & (\CPU|MUXULA|saida_MUX[0]~0_combout\ & ((\RAM|ram~528_combout\) # (\ROM|memROM~2_combout\)))) ) ) ) # ( \CPU|MUXULA|saida_MUX[0]~11_combout\ & ( !\CPU|MUXULA|saida_MUX[0]~10_combout\ & ( !\CPU|ULA1|res[0]~0_combout\ ) ) ) # 
-- ( !\CPU|MUXULA|saida_MUX[0]~11_combout\ & ( !\CPU|MUXULA|saida_MUX[0]~10_combout\ & ( !\CPU|ULA1|res[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000011100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \CPU|ULA1|ALT_INV_res[0]~0_combout\,
	datad => \CPU|MUXULA|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \CPU|MUXULA|ALT_INV_saida_MUX[0]~11_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[0]~10_combout\,
	combout => \CPU|ULA1|res[0]~1_combout\);

\CPU|REGs|registrador~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~84_combout\ = (\ROM|memROM~21_combout\ & ((\CPU|decoder|HabRegs~0_combout\) # (\CPU|decoder|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~21_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datac => \CPU|decoder|ALT_INV_HabRegs~0_combout\,
	combout => \CPU|REGs|registrador~84_combout\);

\CPU|REGs|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|res[0]~1_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~68_q\);

\CPU|REGs|registrador~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~76_combout\ = ( \CPU|REGs|registrador~12_q\ & ( ((!\CPU|PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\CPU|REGs|registrador~68_q\))) # (\CPU|PC|DOUT\(1)) ) ) # ( !\CPU|REGs|registrador~12_q\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) 
-- & (\CPU|REGs|registrador~68_q\ & \ROM|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111111101111100000000000000101111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|REGs|ALT_INV_registrador~68_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \CPU|REGs|ALT_INV_registrador~12_q\,
	combout => \CPU|REGs|registrador~76_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~76_combout\,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~76_combout\,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~23_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datac => \RAM|ALT_INV_ram~23_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \RAM|ram~527_combout\ & ( (\ROM|memROM~9_combout\ & !\ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|ram~561_combout\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~561_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~561_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~528_combout\);

\CPU|MUXULA|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[0]~1_combout\ = ( \CPU|MUXULA|saida_MUX[0]~10_combout\ & ( ((\CPU|MUXULA|saida_MUX[0]~0_combout\ & ((\RAM|ram~528_combout\) # (\ROM|memROM~2_combout\)))) # (\CPU|MUXULA|saida_MUX[0]~11_combout\) ) ) # ( 
-- !\CPU|MUXULA|saida_MUX[0]~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001111111111111111111111111110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \CPU|MUXULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \CPU|MUXULA|ALT_INV_saida_MUX[0]~11_combout\,
	datae => \CPU|MUXULA|ALT_INV_saida_MUX[0]~10_combout\,
	combout => \CPU|MUXULA|saida_MUX[0]~1_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REGs|registrador~77_combout\ ) + ( !\CPU|MUXULA|saida_MUX[1]~2_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REGs|registrador~77_combout\ ) + ( !\CPU|MUXULA|saida_MUX[1]~2_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|MUXULA|ALT_INV_saida_MUX[1]~2_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~77_combout\,
	dataf => \CPU|decoder|ALT_INV_Equal8~4_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|res[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[1]~3_combout\ = ( \CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~77_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~530_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~7_combout\)))) ) ) ) # ( !\CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~77_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~530_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~7_combout\)))) ) ) ) # ( \CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~530_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~7_combout\)) ) ) ) # ( 
-- !\CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~77_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~530_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000111100111100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~77_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	datae => \CPU|decoder|ALT_INV_OP~0_combout\,
	dataf => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	combout => \CPU|ULA1|res[1]~3_combout\);

\CPU|REGs|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|res[1]~3_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~69_q\);

\CPU|REGs|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|res[1]~3_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~13_q\);

\CPU|REGs|registrador~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~77_combout\ = ( \CPU|REGs|registrador~13_q\ & ( ((!\CPU|PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\CPU|REGs|registrador~69_q\))) # (\CPU|PC|DOUT\(1)) ) ) # ( !\CPU|REGs|registrador~13_q\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) 
-- & (\ROM|memROM~0_combout\ & \CPU|REGs|registrador~69_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~69_q\,
	datae => \CPU|REGs|ALT_INV_registrador~13_q\,
	combout => \CPU|REGs|registrador~77_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~77_combout\,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~77_combout\,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~24_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datac => \RAM|ALT_INV_ram~24_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \RAM|ram~529_combout\ & ( (\ROM|memROM~9_combout\ & !\ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|ram~557_combout\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~557_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~557_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~530_combout\);

\CPU|MUXULA|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[1]~2_combout\ = (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~530_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~530_combout\,
	combout => \CPU|MUXULA|saida_MUX[1]~2_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REGs|registrador~78_combout\ ) + ( !\CPU|MUXULA|saida_MUX[2]~3_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REGs|registrador~78_combout\ ) + ( !\CPU|MUXULA|saida_MUX[2]~3_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|MUXULA|ALT_INV_saida_MUX[2]~3_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~78_combout\,
	dataf => \CPU|decoder|ALT_INV_Equal8~4_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|res[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[2]~5_combout\ = ( \CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~78_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~532_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~4_combout\)))) ) ) ) # ( !\CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~78_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~532_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~4_combout\)))) ) ) ) # ( \CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~532_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~4_combout\)) ) ) ) # ( 
-- !\CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~78_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~532_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000111100111100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~78_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~532_combout\,
	datae => \CPU|decoder|ALT_INV_OP~0_combout\,
	dataf => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	combout => \CPU|ULA1|res[2]~5_combout\);

\CPU|REGs|registrador~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|res[2]~5_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~70_q\);

\CPU|REGs|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|res[2]~5_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~14_q\);

\CPU|REGs|registrador~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~78_combout\ = ( \CPU|REGs|registrador~14_q\ & ( ((!\CPU|PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\CPU|REGs|registrador~70_q\))) # (\CPU|PC|DOUT\(1)) ) ) # ( !\CPU|REGs|registrador~14_q\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) 
-- & (\ROM|memROM~0_combout\ & \CPU|REGs|registrador~70_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~70_q\,
	datae => \CPU|REGs|ALT_INV_registrador~14_q\,
	combout => \CPU|REGs|registrador~78_combout\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~78_combout\,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~78_combout\,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~25_q\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~25_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \RAM|ram~531_combout\ & ( (\ROM|memROM~9_combout\ & !\ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \RAM|ALT_INV_ram~531_combout\,
	combout => \RAM|ram~553_combout\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~553_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~553_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~532_combout\);

\CPU|MUXULA|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[2]~3_combout\ = (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~532_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \RAM|ALT_INV_ram~532_combout\,
	combout => \CPU|MUXULA|saida_MUX[2]~3_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REGs|registrador~79_combout\ ) + ( !\CPU|MUXULA|saida_MUX[3]~4_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REGs|registrador~79_combout\ ) + ( !\CPU|MUXULA|saida_MUX[3]~4_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~4_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~79_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[3]~4_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \RAM|ram~548_combout\ & ( \RAM|ram~550_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~7_combout\) # ((!\ROM|memROM~9_combout\)))) ) ) ) 
-- # ( !\RAM|ram~548_combout\ & ( \RAM|ram~550_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\)))) # (\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & (!\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010011000000100001101110001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_ram~548_combout\,
	dataf => \RAM|ALT_INV_ram~550_combout\,
	combout => \RAM|ram~533_combout\);

\CPU|ULA1|res[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[3]~7_combout\ = ( \CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~79_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~533_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (!\ROM|memROM~9_combout\)))) ) ) ) # ( !\CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~79_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~533_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (!\ROM|memROM~9_combout\)))) ) ) ) # ( \CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~533_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (!\ROM|memROM~9_combout\)) ) ) ) # ( 
-- !\CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~79_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~533_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (!\ROM|memROM~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010100001100001111110000010000010101000001000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~79_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~533_combout\,
	datae => \CPU|decoder|ALT_INV_OP~0_combout\,
	dataf => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	combout => \CPU|ULA1|res[3]~7_combout\);

\CPU|REGs|registrador~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|res[3]~7_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~71_q\);

\CPU|REGs|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|res[3]~7_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~15_q\);

\CPU|REGs|registrador~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~79_combout\ = ( \CPU|REGs|registrador~15_q\ & ( ((!\CPU|PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\CPU|REGs|registrador~71_q\))) # (\CPU|PC|DOUT\(1)) ) ) # ( !\CPU|REGs|registrador~15_q\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) 
-- & (\ROM|memROM~0_combout\ & \CPU|REGs|registrador~71_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~71_q\,
	datae => \CPU|REGs|ALT_INV_registrador~15_q\,
	combout => \CPU|REGs|registrador~79_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REGs|registrador~80_combout\ ) + ( !\CPU|MUXULA|saida_MUX[4]~5_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REGs|registrador~80_combout\ ) + ( !\CPU|MUXULA|saida_MUX[4]~5_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~4_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~80_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[4]~5_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|res[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[4]~9_combout\ = ( \CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~80_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~536_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~10_combout\)))) ) ) ) # ( !\CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~80_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~536_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~10_combout\)))) ) ) ) # ( \CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~536_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~10_combout\)) ) ) ) # ( 
-- !\CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~80_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~536_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000111100111100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~80_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~536_combout\,
	datae => \CPU|decoder|ALT_INV_OP~0_combout\,
	dataf => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	combout => \CPU|ULA1|res[4]~9_combout\);

\CPU|REGs|registrador~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|res[4]~9_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~72_q\);

\CPU|REGs|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|res[4]~9_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~16_q\);

\CPU|REGs|registrador~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~80_combout\ = ( \CPU|REGs|registrador~16_q\ & ( ((!\CPU|PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\CPU|REGs|registrador~72_q\))) # (\CPU|PC|DOUT\(1)) ) ) # ( !\CPU|REGs|registrador~16_q\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) 
-- & (\ROM|memROM~0_combout\ & \CPU|REGs|registrador~72_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~72_q\,
	datae => \CPU|REGs|ALT_INV_registrador~16_q\,
	combout => \CPU|REGs|registrador~80_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REGs|registrador~81_combout\ ) + ( !\CPU|MUXULA|saida_MUX[5]~6_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REGs|registrador~81_combout\ ) + ( !\CPU|MUXULA|saida_MUX[5]~6_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~4_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~81_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[5]~6_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|res[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[5]~11_combout\ = ( \CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~81_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~540_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~2_combout\)))) ) ) ) # ( !\CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~81_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~540_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~2_combout\)))) ) ) ) # ( \CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~540_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~2_combout\)) ) ) ) # ( 
-- !\CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~81_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~540_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000111100111100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~81_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~540_combout\,
	datae => \CPU|decoder|ALT_INV_OP~0_combout\,
	dataf => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	combout => \CPU|ULA1|res[5]~11_combout\);

\CPU|REGs|registrador~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|res[5]~11_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~73_q\);

\CPU|REGs|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|res[5]~11_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~17_q\);

\CPU|REGs|registrador~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~81_combout\ = ( \CPU|REGs|registrador~17_q\ & ( ((!\CPU|PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\CPU|REGs|registrador~73_q\))) # (\CPU|PC|DOUT\(1)) ) ) # ( !\CPU|REGs|registrador~17_q\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) 
-- & (\ROM|memROM~0_combout\ & \CPU|REGs|registrador~73_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~73_q\,
	datae => \CPU|REGs|ALT_INV_registrador~17_q\,
	combout => \CPU|REGs|registrador~81_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REGs|registrador~82_combout\ ) + ( !\CPU|MUXULA|saida_MUX[6]~7_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REGs|registrador~82_combout\ ) + ( !\CPU|MUXULA|saida_MUX[6]~7_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~4_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~82_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[6]~7_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|res[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[6]~13_combout\ = ( \CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~82_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~543_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~16_combout\)))) ) ) ) # ( !\CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~82_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~543_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~16_combout\)))) ) ) ) # ( \CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~543_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~16_combout\)) ) ) ) # ( 
-- !\CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~82_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~543_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000111100111100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~82_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	datae => \CPU|decoder|ALT_INV_OP~0_combout\,
	dataf => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	combout => \CPU|ULA1|res[6]~13_combout\);

\CPU|REGs|registrador~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|res[6]~13_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~74_q\);

\CPU|REGs|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|res[6]~13_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~18_q\);

\CPU|REGs|registrador~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~82_combout\ = ( \CPU|REGs|registrador~18_q\ & ( ((!\CPU|PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\CPU|REGs|registrador~74_q\))) # (\CPU|PC|DOUT\(1)) ) ) # ( !\CPU|REGs|registrador~18_q\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) 
-- & (\ROM|memROM~0_combout\ & \CPU|REGs|registrador~74_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~74_q\,
	datae => \CPU|REGs|ALT_INV_registrador~18_q\,
	combout => \CPU|REGs|registrador~82_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REGs|registrador~83_combout\ ) + ( !\CPU|MUXULA|saida_MUX[7]~8_combout\ $ ((((\CPU|decoder|Equal8~4_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~3_combout\))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~4_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~83_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[7]~8_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|REGs|registrador~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|flagNeg~0_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~75_q\);

\CPU|REGs|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|flagNeg~0_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~19_q\);

\CPU|REGs|registrador~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~83_combout\ = ( \CPU|REGs|registrador~19_q\ & ( ((!\CPU|PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\CPU|REGs|registrador~75_q\))) # (\CPU|PC|DOUT\(1)) ) ) # ( !\CPU|REGs|registrador~19_q\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) 
-- & (\ROM|memROM~0_combout\ & \CPU|REGs|registrador~75_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~75_q\,
	datae => \CPU|REGs|ALT_INV_registrador~19_q\,
	combout => \CPU|REGs|registrador~83_combout\);

\CPU|ULA1|flagNeg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|flagNeg~0_combout\ = ( \CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~83_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~547_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~10_combout\)))) ) ) ) # ( !\CPU|decoder|OP~0_combout\ & ( \CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~83_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~547_combout\))) # (\CPU|decoder|Equal8~0_combout\ & 
-- (\ROM|memROM~10_combout\)))) ) ) ) # ( \CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~547_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~10_combout\)) ) ) ) # ( 
-- !\CPU|decoder|OP~0_combout\ & ( !\CPU|decoder|Equal8~3_combout\ & ( (\CPU|REGs|registrador~83_combout\ & ((!\CPU|decoder|Equal8~0_combout\ & ((\RAM|ram~547_combout\))) # (\CPU|decoder|Equal8~0_combout\ & (\ROM|memROM~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000111100111100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~83_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~547_combout\,
	datae => \CPU|decoder|ALT_INV_OP~0_combout\,
	dataf => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	combout => \CPU|ULA1|flagNeg~0_combout\);

\CPU|FF_Neg|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Neg|DOUT~0_combout\ = ( \CPU|FF_Neg|DOUT~q\ & ( (!\CPU|decoder|Equal8~1_combout\) # ((!\CPU|decoder|saida[5]~0_combout\ & ((\CPU|ULA1|Add0~29_sumout\))) # (\CPU|decoder|saida[5]~0_combout\ & (\CPU|ULA1|flagNeg~0_combout\))) ) ) # ( 
-- !\CPU|FF_Neg|DOUT~q\ & ( (\CPU|decoder|Equal8~1_combout\ & ((!\CPU|decoder|saida[5]~0_combout\ & ((\CPU|ULA1|Add0~29_sumout\))) # (\CPU|decoder|saida[5]~0_combout\ & (\CPU|ULA1|flagNeg~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101101010111110111100000001010001011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~1_combout\,
	datab => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datac => \CPU|ULA1|ALT_INV_flagNeg~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	datae => \CPU|FF_Neg|ALT_INV_DOUT~q\,
	combout => \CPU|FF_Neg|DOUT~0_combout\);

\CPU|FF_Neg|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|FF_Neg|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FF_Neg|DOUT~q\);

\CPU|ULA1|res[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[6]~14_combout\ = (!\CPU|decoder|saida[5]~0_combout\ & ((\CPU|ULA1|Add0~25_sumout\))) # (\CPU|decoder|saida[5]~0_combout\ & (\CPU|ULA1|res[6]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_res[6]~13_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA1|res[6]~14_combout\);

\CPU|ULA1|flagNeg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|flagNeg~1_combout\ = (!\CPU|decoder|saida[5]~0_combout\ & ((\CPU|ULA1|Add0~29_sumout\))) # (\CPU|decoder|saida[5]~0_combout\ & (\CPU|ULA1|flagNeg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_flagNeg~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA1|flagNeg~1_combout\);

\CPU|decoder|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal8~2_combout\ = ( \ROM|memROM~14_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~11_combout\ & (\ROM|memROM~12_combout\ & \ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|decoder|Equal8~2_combout\);

\CPU|FF_Zero|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~0_combout\ = (!\CPU|decoder|Equal8~2_combout\ & \CPU|FF_Zero|DOUT~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|FF_Zero|ALT_INV_DOUT~q\,
	combout => \CPU|FF_Zero|DOUT~0_combout\);

\CPU|FF_Zero|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~1_combout\ = ( !\CPU|ULA1|res[1]~3_combout\ & ( \CPU|ULA1|Add0~5_sumout\ & ( (\CPU|decoder|Equal8~2_combout\ & (!\CPU|ULA1|res[0]~1_combout\ & \CPU|decoder|saida[5]~0_combout\)) ) ) ) # ( \CPU|ULA1|res[1]~3_combout\ & ( 
-- !\CPU|ULA1|Add0~5_sumout\ & ( (\CPU|decoder|Equal8~2_combout\ & (!\CPU|decoder|saida[5]~0_combout\ & !\CPU|ULA1|Add0~1_sumout\)) ) ) ) # ( !\CPU|ULA1|res[1]~3_combout\ & ( !\CPU|ULA1|Add0~5_sumout\ & ( (\CPU|decoder|Equal8~2_combout\ & 
-- ((!\CPU|decoder|saida[5]~0_combout\ & ((!\CPU|ULA1|Add0~1_sumout\))) # (\CPU|decoder|saida[5]~0_combout\ & (!\CPU|ULA1|res[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000100010100000000000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|ULA1|ALT_INV_res[0]~1_combout\,
	datac => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datae => \CPU|ULA1|ALT_INV_res[1]~3_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \CPU|FF_Zero|DOUT~1_combout\);

\CPU|FF_Zero|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~2_combout\ = ( \CPU|ULA1|Add0~21_sumout\ & ( (\CPU|decoder|saida[5]~0_combout\ & (!\CPU|ULA1|res[4]~9_combout\ & !\CPU|ULA1|res[5]~11_combout\)) ) ) # ( !\CPU|ULA1|Add0~21_sumout\ & ( (!\CPU|decoder|saida[5]~0_combout\ & 
-- (((!\CPU|ULA1|Add0~17_sumout\)))) # (\CPU|decoder|saida[5]~0_combout\ & (!\CPU|ULA1|res[4]~9_combout\ & ((!\CPU|ULA1|res[5]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010100000010001000000000011100100101000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_res[4]~9_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	datad => \CPU|ULA1|ALT_INV_res[5]~11_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|FF_Zero|DOUT~2_combout\);

\CPU|FF_Zero|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~3_combout\ = ( \CPU|ULA1|Add0~13_sumout\ & ( (\CPU|decoder|saida[5]~0_combout\ & (!\CPU|ULA1|res[2]~5_combout\ & !\CPU|ULA1|res[3]~7_combout\)) ) ) # ( !\CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|decoder|saida[5]~0_combout\ & 
-- (((!\CPU|ULA1|Add0~9_sumout\)))) # (\CPU|decoder|saida[5]~0_combout\ & (!\CPU|ULA1|res[2]~5_combout\ & ((!\CPU|ULA1|res[3]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010100000010001000000000011100100101000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_res[2]~5_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_res[3]~7_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|FF_Zero|DOUT~3_combout\);

\CPU|FF_Zero|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~4_combout\ = ( \CPU|FF_Zero|DOUT~2_combout\ & ( \CPU|FF_Zero|DOUT~3_combout\ & ( ((!\CPU|ULA1|res[6]~14_combout\ & (!\CPU|ULA1|flagNeg~1_combout\ & \CPU|FF_Zero|DOUT~1_combout\))) # (\CPU|FF_Zero|DOUT~0_combout\) ) ) ) # ( 
-- !\CPU|FF_Zero|DOUT~2_combout\ & ( \CPU|FF_Zero|DOUT~3_combout\ & ( \CPU|FF_Zero|DOUT~0_combout\ ) ) ) # ( \CPU|FF_Zero|DOUT~2_combout\ & ( !\CPU|FF_Zero|DOUT~3_combout\ & ( \CPU|FF_Zero|DOUT~0_combout\ ) ) ) # ( !\CPU|FF_Zero|DOUT~2_combout\ & ( 
-- !\CPU|FF_Zero|DOUT~3_combout\ & ( \CPU|FF_Zero|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_res[6]~14_combout\,
	datab => \CPU|ULA1|ALT_INV_flagNeg~1_combout\,
	datac => \CPU|FF_Zero|ALT_INV_DOUT~0_combout\,
	datad => \CPU|FF_Zero|ALT_INV_DOUT~1_combout\,
	datae => \CPU|FF_Zero|ALT_INV_DOUT~2_combout\,
	dataf => \CPU|FF_Zero|ALT_INV_DOUT~3_combout\,
	combout => \CPU|FF_Zero|DOUT~4_combout\);

\CPU|FF_Zero|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|FF_Zero|DOUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FF_Zero|DOUT~q\);

\CPU|PC|DOUT[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[3]~0_combout\ = ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3)) # ((!\ROM|memROM~0_combout\) # ((!\CPU|PC|DOUT\(1) & ((!\CPU|FF_Zero|DOUT~q\) # (!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(0)))))) ) ) # ( \CPU|PC|DOUT\(2) & ( 
-- (!\CPU|PC|DOUT\(3)) # ((!\CPU|PC|DOUT\(1)) # ((!\CPU|FF_Neg|DOUT~q\) # ((!\ROM|memROM~0_combout\) # (\CPU|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111111111111111111111111111111101110111110111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|FF_Neg|ALT_INV_DOUT~q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	datag => \CPU|FF_Zero|ALT_INV_DOUT~q\,
	combout => \CPU|PC|DOUT[3]~0_combout\);

\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

\CPU|MUX_PC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[3]~3_combout\ = (!\CPU|PC|DOUT[3]~0_combout\ & (!\ROM|memROM~9_combout\)) # (\CPU|PC|DOUT[3]~0_combout\ & (((!\CPU|decoder|Equal8~5_combout\ & \CPU|incrementaPC|Add0~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101100101000001010110010100000101011001010000010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[3]~3_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

\CPU|MUX_PC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[2]~2_combout\ = (!\CPU|PC|DOUT[3]~0_combout\ & (\ROM|memROM~4_combout\)) # (\CPU|PC|DOUT[3]~0_combout\ & (((!\CPU|decoder|Equal8~5_combout\ & \CPU|incrementaPC|Add0~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011100010100000101110001010000010111000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & \ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~7_combout\);

\CPU|MUX_PC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[1]~1_combout\ = (!\CPU|PC|DOUT[3]~0_combout\ & (\ROM|memROM~7_combout\)) # (\CPU|PC|DOUT[3]~0_combout\ & (((!\CPU|decoder|Equal8~5_combout\ & \CPU|incrementaPC|Add0~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011100010100000101110001010000010111000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~0_combout\ & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~10_combout\);

\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

\CPU|MUX_PC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[4]~4_combout\ = (!\CPU|decoder|Equal8~5_combout\ & ((!\CPU|PC|DOUT[3]~0_combout\ & (\ROM|memROM~10_combout\)) # (\CPU|PC|DOUT[3]~0_combout\ & ((\CPU|incrementaPC|Add0~17_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000000100110001000000010011000100000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[4]~4_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

\CPU|MUX_PC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[5]~5_combout\ = (!\CPU|decoder|Equal8~5_combout\ & ((!\CPU|PC|DOUT[3]~0_combout\ & (\ROM|memROM~2_combout\)) # (\CPU|PC|DOUT[3]~0_combout\ & ((\CPU|incrementaPC|Add0~21_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000000100110001000000010011000100000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[5]~5_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

\CPU|MUX_PC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[6]~6_combout\ = (!\CPU|PC|DOUT[3]~0_combout\ & (\ROM|memROM~16_combout\)) # (\CPU|PC|DOUT[3]~0_combout\ & (((!\CPU|decoder|Equal8~5_combout\ & \CPU|incrementaPC|Add0~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011100010100000101110001010000010111000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[6]~6_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

\CPU|MUX_PC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[7]~7_combout\ = (!\CPU|decoder|Equal8~5_combout\ & ((!\CPU|PC|DOUT[3]~0_combout\ & (\ROM|memROM~10_combout\)) # (\CPU|PC|DOUT[3]~0_combout\ & ((\CPU|incrementaPC|Add0~29_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000000100110001000000010011000100000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[7]~7_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

\CPU|MUX_PC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[8]~8_combout\ = (!\CPU|decoder|Equal8~5_combout\ & ((!\CPU|PC|DOUT[3]~0_combout\ & (\ROM|memROM~2_combout\)) # (\CPU|PC|DOUT[3]~0_combout\ & ((\CPU|incrementaPC|Add0~33_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000000100110001000000010011000100000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[8]~8_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (\ROM|memROM~0_combout\ & !\ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\CPU|MUX_PC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[0]~0_combout\ = (!\CPU|PC|DOUT[3]~0_combout\ & (\ROM|memROM~6_combout\)) # (\CPU|PC|DOUT[3]~0_combout\ & (((!\CPU|decoder|Equal8~5_combout\ & \CPU|incrementaPC|Add0~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011100010100000101110001010000010111000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CPU|ULA1|res[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[0]~2_combout\ = (!\CPU|decoder|saida[5]~0_combout\ & ((\CPU|ULA1|Add0~1_sumout\))) # (\CPU|decoder|saida[5]~0_combout\ & (\CPU|ULA1|res[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_res[0]~1_combout\,
	datab => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \CPU|ULA1|res[0]~2_combout\);

\CPU|ULA1|res[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[1]~4_combout\ = (!\CPU|decoder|saida[5]~0_combout\ & ((\CPU|ULA1|Add0~5_sumout\))) # (\CPU|decoder|saida[5]~0_combout\ & (\CPU|ULA1|res[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_res[1]~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \CPU|ULA1|res[1]~4_combout\);

\CPU|ULA1|res[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[2]~6_combout\ = (!\CPU|decoder|saida[5]~0_combout\ & ((\CPU|ULA1|Add0~9_sumout\))) # (\CPU|decoder|saida[5]~0_combout\ & (\CPU|ULA1|res[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_res[2]~5_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \CPU|ULA1|res[2]~6_combout\);

\CPU|ULA1|res[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[3]~8_combout\ = (!\CPU|decoder|saida[5]~0_combout\ & ((\CPU|ULA1|Add0~13_sumout\))) # (\CPU|decoder|saida[5]~0_combout\ & (\CPU|ULA1|res[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_res[3]~7_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA1|res[3]~8_combout\);

\CPU|ULA1|res[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[4]~10_combout\ = (!\CPU|decoder|saida[5]~0_combout\ & ((\CPU|ULA1|Add0~17_sumout\))) # (\CPU|decoder|saida[5]~0_combout\ & (\CPU|ULA1|res[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_res[4]~9_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ULA1|res[4]~10_combout\);

\CPU|ULA1|res[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[5]~12_combout\ = (!\CPU|decoder|saida[5]~0_combout\ & ((\CPU|ULA1|Add0~21_sumout\))) # (\CPU|decoder|saida[5]~0_combout\ & (\CPU|ULA1|res[5]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_res[5]~11_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|ULA1|res[5]~12_combout\);

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010100000000000000000000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|process_0~0_combout\);

\HabHex0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabHex0~0_combout\ = ( !\ROM|memROM~4_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~2_combout\ & !\ROM|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \HabHex0~0_combout\);

\Display0|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~76_combout\,
	ena => \HabHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display0|REG|DOUT\(0));

\Display0|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~79_combout\,
	ena => \HabHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display0|REG|DOUT\(3));

\Display0|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~77_combout\,
	ena => \HabHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display0|REG|DOUT\(1));

\Display0|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~78_combout\,
	ena => \HabHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display0|REG|DOUT\(2));

\Display0|Conv|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[0]~0_combout\ = (!\Display0|REG|DOUT\(3) & (!\Display0|REG|DOUT\(1) & (!\Display0|REG|DOUT\(0) $ (!\Display0|REG|DOUT\(2))))) # (\Display0|REG|DOUT\(3) & (\Display0|REG|DOUT\(0) & (!\Display0|REG|DOUT\(1) $ 
-- (!\Display0|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(0),
	datab => \Display0|REG|ALT_INV_DOUT\(3),
	datac => \Display0|REG|ALT_INV_DOUT\(1),
	datad => \Display0|REG|ALT_INV_DOUT\(2),
	combout => \Display0|Conv|rascSaida7seg[0]~0_combout\);

\Display0|Conv|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[1]~1_combout\ = (!\Display0|REG|DOUT\(3) & (\Display0|REG|DOUT\(2) & (!\Display0|REG|DOUT\(0) $ (!\Display0|REG|DOUT\(1))))) # (\Display0|REG|DOUT\(3) & ((!\Display0|REG|DOUT\(0) & ((\Display0|REG|DOUT\(2)))) # 
-- (\Display0|REG|DOUT\(0) & (\Display0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(0),
	datab => \Display0|REG|ALT_INV_DOUT\(3),
	datac => \Display0|REG|ALT_INV_DOUT\(1),
	datad => \Display0|REG|ALT_INV_DOUT\(2),
	combout => \Display0|Conv|rascSaida7seg[1]~1_combout\);

\Display0|Conv|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[2]~2_combout\ = (!\Display0|REG|DOUT\(3) & (!\Display0|REG|DOUT\(0) & (\Display0|REG|DOUT\(1) & !\Display0|REG|DOUT\(2)))) # (\Display0|REG|DOUT\(3) & (\Display0|REG|DOUT\(2) & ((!\Display0|REG|DOUT\(0)) # 
-- (\Display0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(0),
	datab => \Display0|REG|ALT_INV_DOUT\(3),
	datac => \Display0|REG|ALT_INV_DOUT\(1),
	datad => \Display0|REG|ALT_INV_DOUT\(2),
	combout => \Display0|Conv|rascSaida7seg[2]~2_combout\);

\Display0|Conv|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[3]~3_combout\ = (!\Display0|REG|DOUT\(1) & (!\Display0|REG|DOUT\(3) & (!\Display0|REG|DOUT\(0) $ (!\Display0|REG|DOUT\(2))))) # (\Display0|REG|DOUT\(1) & ((!\Display0|REG|DOUT\(0) & (!\Display0|REG|DOUT\(2) & 
-- \Display0|REG|DOUT\(3))) # (\Display0|REG|DOUT\(0) & (\Display0|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(0),
	datab => \Display0|REG|ALT_INV_DOUT\(1),
	datac => \Display0|REG|ALT_INV_DOUT\(2),
	datad => \Display0|REG|ALT_INV_DOUT\(3),
	combout => \Display0|Conv|rascSaida7seg[3]~3_combout\);

\Display0|Conv|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[4]~4_combout\ = (!\Display0|REG|DOUT\(1) & ((!\Display0|REG|DOUT\(2) & ((\Display0|REG|DOUT\(0)))) # (\Display0|REG|DOUT\(2) & (!\Display0|REG|DOUT\(3))))) # (\Display0|REG|DOUT\(1) & (!\Display0|REG|DOUT\(3) & 
-- ((\Display0|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(3),
	datab => \Display0|REG|ALT_INV_DOUT\(1),
	datac => \Display0|REG|ALT_INV_DOUT\(2),
	datad => \Display0|REG|ALT_INV_DOUT\(0),
	combout => \Display0|Conv|rascSaida7seg[4]~4_combout\);

\Display0|Conv|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[5]~5_combout\ = (!\Display0|REG|DOUT\(0) & (\Display0|REG|DOUT\(1) & (!\Display0|REG|DOUT\(2) & !\Display0|REG|DOUT\(3)))) # (\Display0|REG|DOUT\(0) & (!\Display0|REG|DOUT\(3) $ (((!\Display0|REG|DOUT\(1) & 
-- \Display0|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(0),
	datab => \Display0|REG|ALT_INV_DOUT\(1),
	datac => \Display0|REG|ALT_INV_DOUT\(2),
	datad => \Display0|REG|ALT_INV_DOUT\(3),
	combout => \Display0|Conv|rascSaida7seg[5]~5_combout\);

\Display0|Conv|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[6]~6_combout\ = (!\Display0|REG|DOUT\(0) & (!\Display0|REG|DOUT\(1) & (!\Display0|REG|DOUT\(3) $ (\Display0|REG|DOUT\(2))))) # (\Display0|REG|DOUT\(0) & (!\Display0|REG|DOUT\(3) & (!\Display0|REG|DOUT\(1) $ 
-- (\Display0|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(0),
	datab => \Display0|REG|ALT_INV_DOUT\(3),
	datac => \Display0|REG|ALT_INV_DOUT\(1),
	datad => \Display0|REG|ALT_INV_DOUT\(2),
	combout => \Display0|Conv|rascSaida7seg[6]~6_combout\);

\limpa_leitura_KEY1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \limpa_leitura_KEY1~0_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	combout => \limpa_leitura_KEY1~0_combout\);

\HabHex4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabHex4~0_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~2_combout\ & \limpa_leitura_KEY1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ALT_INV_limpa_leitura_KEY1~0_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \HabHex4~0_combout\);

\Display4|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~76_combout\,
	ena => \HabHex4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display4|REG|DOUT\(0));

\Display4|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~79_combout\,
	ena => \HabHex4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display4|REG|DOUT\(3));

\Display4|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~77_combout\,
	ena => \HabHex4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display4|REG|DOUT\(1));

\Display4|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~78_combout\,
	ena => \HabHex4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display4|REG|DOUT\(2));

\Display4|Conv|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[0]~0_combout\ = (!\Display4|REG|DOUT\(3) & (!\Display4|REG|DOUT\(1) & (!\Display4|REG|DOUT\(0) $ (!\Display4|REG|DOUT\(2))))) # (\Display4|REG|DOUT\(3) & (\Display4|REG|DOUT\(0) & (!\Display4|REG|DOUT\(1) $ 
-- (!\Display4|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(0),
	datab => \Display4|REG|ALT_INV_DOUT\(3),
	datac => \Display4|REG|ALT_INV_DOUT\(1),
	datad => \Display4|REG|ALT_INV_DOUT\(2),
	combout => \Display4|Conv|rascSaida7seg[0]~0_combout\);

\Display4|Conv|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[1]~1_combout\ = (!\Display4|REG|DOUT\(3) & (\Display4|REG|DOUT\(2) & (!\Display4|REG|DOUT\(0) $ (!\Display4|REG|DOUT\(1))))) # (\Display4|REG|DOUT\(3) & ((!\Display4|REG|DOUT\(0) & ((\Display4|REG|DOUT\(2)))) # 
-- (\Display4|REG|DOUT\(0) & (\Display4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(0),
	datab => \Display4|REG|ALT_INV_DOUT\(3),
	datac => \Display4|REG|ALT_INV_DOUT\(1),
	datad => \Display4|REG|ALT_INV_DOUT\(2),
	combout => \Display4|Conv|rascSaida7seg[1]~1_combout\);

\Display4|Conv|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[2]~2_combout\ = (!\Display4|REG|DOUT\(3) & (!\Display4|REG|DOUT\(0) & (\Display4|REG|DOUT\(1) & !\Display4|REG|DOUT\(2)))) # (\Display4|REG|DOUT\(3) & (\Display4|REG|DOUT\(2) & ((!\Display4|REG|DOUT\(0)) # 
-- (\Display4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(0),
	datab => \Display4|REG|ALT_INV_DOUT\(3),
	datac => \Display4|REG|ALT_INV_DOUT\(1),
	datad => \Display4|REG|ALT_INV_DOUT\(2),
	combout => \Display4|Conv|rascSaida7seg[2]~2_combout\);

\Display4|Conv|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[3]~3_combout\ = (!\Display4|REG|DOUT\(1) & (!\Display4|REG|DOUT\(3) & (!\Display4|REG|DOUT\(0) $ (!\Display4|REG|DOUT\(2))))) # (\Display4|REG|DOUT\(1) & ((!\Display4|REG|DOUT\(0) & (!\Display4|REG|DOUT\(2) & 
-- \Display4|REG|DOUT\(3))) # (\Display4|REG|DOUT\(0) & (\Display4|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(0),
	datab => \Display4|REG|ALT_INV_DOUT\(1),
	datac => \Display4|REG|ALT_INV_DOUT\(2),
	datad => \Display4|REG|ALT_INV_DOUT\(3),
	combout => \Display4|Conv|rascSaida7seg[3]~3_combout\);

\Display4|Conv|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[4]~4_combout\ = (!\Display4|REG|DOUT\(1) & ((!\Display4|REG|DOUT\(2) & ((\Display4|REG|DOUT\(0)))) # (\Display4|REG|DOUT\(2) & (!\Display4|REG|DOUT\(3))))) # (\Display4|REG|DOUT\(1) & (!\Display4|REG|DOUT\(3) & 
-- ((\Display4|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(3),
	datab => \Display4|REG|ALT_INV_DOUT\(1),
	datac => \Display4|REG|ALT_INV_DOUT\(2),
	datad => \Display4|REG|ALT_INV_DOUT\(0),
	combout => \Display4|Conv|rascSaida7seg[4]~4_combout\);

\Display4|Conv|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[5]~5_combout\ = (!\Display4|REG|DOUT\(0) & (\Display4|REG|DOUT\(1) & (!\Display4|REG|DOUT\(2) & !\Display4|REG|DOUT\(3)))) # (\Display4|REG|DOUT\(0) & (!\Display4|REG|DOUT\(3) $ (((!\Display4|REG|DOUT\(1) & 
-- \Display4|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(0),
	datab => \Display4|REG|ALT_INV_DOUT\(1),
	datac => \Display4|REG|ALT_INV_DOUT\(2),
	datad => \Display4|REG|ALT_INV_DOUT\(3),
	combout => \Display4|Conv|rascSaida7seg[5]~5_combout\);

\Display4|Conv|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[6]~6_combout\ = (!\Display4|REG|DOUT\(0) & (!\Display4|REG|DOUT\(1) & (!\Display4|REG|DOUT\(3) $ (\Display4|REG|DOUT\(2))))) # (\Display4|REG|DOUT\(0) & (!\Display4|REG|DOUT\(3) & (!\Display4|REG|DOUT\(1) $ 
-- (\Display4|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(0),
	datab => \Display4|REG|ALT_INV_DOUT\(3),
	datac => \Display4|REG|ALT_INV_DOUT\(1),
	datad => \Display4|REG|ALT_INV_DOUT\(2),
	combout => \Display4|Conv|rascSaida7seg[6]~6_combout\);

\limpa_leitura_KEY0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \limpa_leitura_KEY0~0_combout\ = (\ROM|memROM~0_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	combout => \limpa_leitura_KEY0~0_combout\);

\HabHex5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabHex5~0_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~2_combout\ & \limpa_leitura_KEY0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ALT_INV_limpa_leitura_KEY0~0_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \HabHex5~0_combout\);

\Display5|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~76_combout\,
	ena => \HabHex5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT\(0));

\Display5|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~79_combout\,
	ena => \HabHex5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT\(3));

\Display5|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~77_combout\,
	ena => \HabHex5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT\(1));

\Display5|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|REGs|registrador~78_combout\,
	ena => \HabHex5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT\(2));

\Display5|Conv|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[0]~0_combout\ = (!\Display5|REG|DOUT\(3) & (!\Display5|REG|DOUT\(1) & (!\Display5|REG|DOUT\(0) $ (!\Display5|REG|DOUT\(2))))) # (\Display5|REG|DOUT\(3) & (\Display5|REG|DOUT\(0) & (!\Display5|REG|DOUT\(1) $ 
-- (!\Display5|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(0),
	datab => \Display5|REG|ALT_INV_DOUT\(3),
	datac => \Display5|REG|ALT_INV_DOUT\(1),
	datad => \Display5|REG|ALT_INV_DOUT\(2),
	combout => \Display5|Conv|rascSaida7seg[0]~0_combout\);

\Display5|Conv|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[1]~1_combout\ = (!\Display5|REG|DOUT\(3) & (\Display5|REG|DOUT\(2) & (!\Display5|REG|DOUT\(0) $ (!\Display5|REG|DOUT\(1))))) # (\Display5|REG|DOUT\(3) & ((!\Display5|REG|DOUT\(0) & ((\Display5|REG|DOUT\(2)))) # 
-- (\Display5|REG|DOUT\(0) & (\Display5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(0),
	datab => \Display5|REG|ALT_INV_DOUT\(3),
	datac => \Display5|REG|ALT_INV_DOUT\(1),
	datad => \Display5|REG|ALT_INV_DOUT\(2),
	combout => \Display5|Conv|rascSaida7seg[1]~1_combout\);

\Display5|Conv|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[2]~2_combout\ = (!\Display5|REG|DOUT\(3) & (!\Display5|REG|DOUT\(0) & (\Display5|REG|DOUT\(1) & !\Display5|REG|DOUT\(2)))) # (\Display5|REG|DOUT\(3) & (\Display5|REG|DOUT\(2) & ((!\Display5|REG|DOUT\(0)) # 
-- (\Display5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(0),
	datab => \Display5|REG|ALT_INV_DOUT\(3),
	datac => \Display5|REG|ALT_INV_DOUT\(1),
	datad => \Display5|REG|ALT_INV_DOUT\(2),
	combout => \Display5|Conv|rascSaida7seg[2]~2_combout\);

\Display5|Conv|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[3]~3_combout\ = (!\Display5|REG|DOUT\(1) & (!\Display5|REG|DOUT\(3) & (!\Display5|REG|DOUT\(0) $ (!\Display5|REG|DOUT\(2))))) # (\Display5|REG|DOUT\(1) & ((!\Display5|REG|DOUT\(0) & (!\Display5|REG|DOUT\(2) & 
-- \Display5|REG|DOUT\(3))) # (\Display5|REG|DOUT\(0) & (\Display5|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(0),
	datab => \Display5|REG|ALT_INV_DOUT\(1),
	datac => \Display5|REG|ALT_INV_DOUT\(2),
	datad => \Display5|REG|ALT_INV_DOUT\(3),
	combout => \Display5|Conv|rascSaida7seg[3]~3_combout\);

\Display5|Conv|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[4]~4_combout\ = (!\Display5|REG|DOUT\(1) & ((!\Display5|REG|DOUT\(2) & ((\Display5|REG|DOUT\(0)))) # (\Display5|REG|DOUT\(2) & (!\Display5|REG|DOUT\(3))))) # (\Display5|REG|DOUT\(1) & (!\Display5|REG|DOUT\(3) & 
-- ((\Display5|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(3),
	datab => \Display5|REG|ALT_INV_DOUT\(1),
	datac => \Display5|REG|ALT_INV_DOUT\(2),
	datad => \Display5|REG|ALT_INV_DOUT\(0),
	combout => \Display5|Conv|rascSaida7seg[4]~4_combout\);

\Display5|Conv|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[5]~5_combout\ = (!\Display5|REG|DOUT\(0) & (\Display5|REG|DOUT\(1) & (!\Display5|REG|DOUT\(2) & !\Display5|REG|DOUT\(3)))) # (\Display5|REG|DOUT\(0) & (!\Display5|REG|DOUT\(3) $ (((!\Display5|REG|DOUT\(1) & 
-- \Display5|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(0),
	datab => \Display5|REG|ALT_INV_DOUT\(1),
	datac => \Display5|REG|ALT_INV_DOUT\(2),
	datad => \Display5|REG|ALT_INV_DOUT\(3),
	combout => \Display5|Conv|rascSaida7seg[5]~5_combout\);

\Display5|Conv|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[6]~6_combout\ = (!\Display5|REG|DOUT\(0) & (!\Display5|REG|DOUT\(1) & (!\Display5|REG|DOUT\(3) $ (\Display5|REG|DOUT\(2))))) # (\Display5|REG|DOUT\(0) & (!\Display5|REG|DOUT\(3) & (!\Display5|REG|DOUT\(1) $ 
-- (\Display5|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(0),
	datab => \Display5|REG|ALT_INV_DOUT\(3),
	datac => \Display5|REG|ALT_INV_DOUT\(1),
	datad => \Display5|REG|ALT_INV_DOUT\(2),
	combout => \Display5|Conv|rascSaida7seg[6]~6_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(7) <= \B[7]~output_o\;

ww_C(0) <= \C[0]~output_o\;

ww_C(1) <= \C[1]~output_o\;

ww_C(2) <= \C[2]~output_o\;

ww_C(3) <= \C[3]~output_o\;

ww_C(4) <= \C[4]~output_o\;

ww_C(5) <= \C[5]~output_o\;

ww_C(6) <= \C[6]~output_o\;

ww_C(7) <= \C[7]~output_o\;

ww_FN <= \FN~output_o\;

ww_FM <= \FM~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


