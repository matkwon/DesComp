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

-- DATE "11/04/2022 15:56:38"

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
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal8~0_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal8~2_combout\ : std_logic;
SIGNAL \CPU|decoder|OP~0_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal8~1_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal8~3_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~291_combout\ : std_logic;
SIGNAL \RAM|ram~292_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~293_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~274_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \RAM|ram~275_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~271_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~272_combout\ : std_logic;
SIGNAL \RAM|ram~273_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|decoder|saida[5]~0_combout\ : std_logic;
SIGNAL \CPU|decoder|saida[6]~1_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~37_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~13_q\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[1]~1_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~36_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~21_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~29_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~276_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~277_combout\ : std_logic;
SIGNAL \RAM|ram~278_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|REGs|registrador~14_q\ : std_logic;
SIGNAL \CPU|ULA1|res[2]~2_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~22_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~30_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[0]~0_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~279_combout\ : std_logic;
SIGNAL \RAM|ram~280_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|REGs|registrador~23_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~15_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~31_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~281_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~282_combout\ : std_logic;
SIGNAL \RAM|ram~283_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|REGs|registrador~24_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~16_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~32_combout\ : std_logic;
SIGNAL \CPU|ULA1|res[4]~4_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~17_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~33_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~284_combout\ : std_logic;
SIGNAL \RAM|ram~285_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|REGs|registrador~25_q\ : std_logic;
SIGNAL \CPU|ULA1|res[5]~5_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~18_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~34_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~286_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~287_combout\ : std_logic;
SIGNAL \RAM|ram~288_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|REGs|registrador~26_q\ : std_logic;
SIGNAL \CPU|ULA1|res[6]~6_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~5_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~19_q\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~289_combout\ : std_logic;
SIGNAL \RAM|ram~290_combout\ : std_logic;
SIGNAL \CPU|ULA1|flagNeg~0_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~27_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~35_combout\ : std_logic;
SIGNAL \CPU|MUXULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~6_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~7_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~q\ : std_logic;
SIGNAL \CPU|FF_Neg|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FF_Neg|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FF_Neg|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|REGs|registrador~20_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~12_q\ : std_logic;
SIGNAL \CPU|REGs|registrador~28_combout\ : std_logic;
SIGNAL \DataAddr|decEndereco|Equal7~0_combout\ : std_logic;
SIGNAL \FF1|DOUT~0_combout\ : std_logic;
SIGNAL \FF1|DOUT~q\ : std_logic;
SIGNAL \REGLED|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal8~3_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~291_combout\ : std_logic;
SIGNAL \CPU|MUXULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|FF_Neg|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~6_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~5_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_flagNeg~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~290_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~289_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[6]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~288_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~287_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~286_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[5]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~285_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~284_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[4]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~283_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~282_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~281_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[3]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~280_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~279_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~278_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~277_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~276_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~275_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~274_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_saida[6]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_saida[5]~0_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_res[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_OP~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~273_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~272_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~271_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|FF_Neg|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~35_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~34_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~33_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~32_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~31_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~30_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~29_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \CPU|REGs|ALT_INV_registrador~28_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FF1|ALT_INV_DOUT~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_SW <= SW;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|REGs|ALT_INV_registrador~19_q\ <= NOT \CPU|REGs|registrador~19_q\;
\CPU|REGs|ALT_INV_registrador~27_q\ <= NOT \CPU|REGs|registrador~27_q\;
\CPU|REGs|ALT_INV_registrador~18_q\ <= NOT \CPU|REGs|registrador~18_q\;
\CPU|REGs|ALT_INV_registrador~26_q\ <= NOT \CPU|REGs|registrador~26_q\;
\CPU|REGs|ALT_INV_registrador~17_q\ <= NOT \CPU|REGs|registrador~17_q\;
\CPU|REGs|ALT_INV_registrador~25_q\ <= NOT \CPU|REGs|registrador~25_q\;
\CPU|REGs|ALT_INV_registrador~16_q\ <= NOT \CPU|REGs|registrador~16_q\;
\CPU|REGs|ALT_INV_registrador~24_q\ <= NOT \CPU|REGs|registrador~24_q\;
\CPU|REGs|ALT_INV_registrador~15_q\ <= NOT \CPU|REGs|registrador~15_q\;
\CPU|REGs|ALT_INV_registrador~23_q\ <= NOT \CPU|REGs|registrador~23_q\;
\CPU|REGs|ALT_INV_registrador~14_q\ <= NOT \CPU|REGs|registrador~14_q\;
\CPU|REGs|ALT_INV_registrador~22_q\ <= NOT \CPU|REGs|registrador~22_q\;
\CPU|REGs|ALT_INV_registrador~13_q\ <= NOT \CPU|REGs|registrador~13_q\;
\CPU|REGs|ALT_INV_registrador~21_q\ <= NOT \CPU|REGs|registrador~21_q\;
\CPU|REGs|ALT_INV_registrador~12_q\ <= NOT \CPU|REGs|registrador~12_q\;
\CPU|REGs|ALT_INV_registrador~20_q\ <= NOT \CPU|REGs|registrador~20_q\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\CPU|decoder|ALT_INV_Equal8~3_combout\ <= NOT \CPU|decoder|Equal8~3_combout\;
\CPU|decoder|ALT_INV_Equal8~2_combout\ <= NOT \CPU|decoder|Equal8~2_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\CPU|MUXULA|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \CPU|MUXULA|saida_MUX[7]~7_combout\;
\CPU|MUXULA|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \CPU|MUXULA|saida_MUX[6]~6_combout\;
\CPU|MUXULA|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \CPU|MUXULA|saida_MUX[5]~5_combout\;
\CPU|MUXULA|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \CPU|MUXULA|saida_MUX[4]~4_combout\;
\CPU|MUXULA|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \CPU|MUXULA|saida_MUX[3]~3_combout\;
\CPU|MUXULA|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUXULA|saida_MUX[2]~2_combout\;
\CPU|MUXULA|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUXULA|saida_MUX[1]~1_combout\;
\RAM|ALT_INV_ram~291_combout\ <= NOT \RAM|ram~291_combout\;
\CPU|MUXULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUXULA|saida_MUX[0]~0_combout\;
\CPU|FF_Neg|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FF_Neg|DOUT~0_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~6_combout\ <= NOT \CPU|FF_Zero|DOUT~6_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~5_combout\ <= NOT \CPU|FF_Zero|DOUT~5_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~4_combout\ <= NOT \CPU|FF_Zero|DOUT~4_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~3_combout\ <= NOT \CPU|FF_Zero|DOUT~3_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FF_Zero|DOUT~2_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FF_Zero|DOUT~1_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FF_Zero|DOUT~0_combout\;
\CPU|ULA1|ALT_INV_flagNeg~0_combout\ <= NOT \CPU|ULA1|flagNeg~0_combout\;
\RAM|ALT_INV_ram~290_combout\ <= NOT \RAM|ram~290_combout\;
\RAM|ALT_INV_ram~289_combout\ <= NOT \RAM|ram~289_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\CPU|ULA1|ALT_INV_res[6]~6_combout\ <= NOT \CPU|ULA1|res[6]~6_combout\;
\RAM|ALT_INV_ram~288_combout\ <= NOT \RAM|ram~288_combout\;
\RAM|ALT_INV_ram~287_combout\ <= NOT \RAM|ram~287_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~286_combout\ <= NOT \RAM|ram~286_combout\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\CPU|ULA1|ALT_INV_res[5]~5_combout\ <= NOT \CPU|ULA1|res[5]~5_combout\;
\RAM|ALT_INV_ram~285_combout\ <= NOT \RAM|ram~285_combout\;
\RAM|ALT_INV_ram~284_combout\ <= NOT \RAM|ram~284_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\CPU|ULA1|ALT_INV_res[4]~4_combout\ <= NOT \CPU|ULA1|res[4]~4_combout\;
\RAM|ALT_INV_ram~283_combout\ <= NOT \RAM|ram~283_combout\;
\RAM|ALT_INV_ram~282_combout\ <= NOT \RAM|ram~282_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~281_combout\ <= NOT \RAM|ram~281_combout\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\CPU|ULA1|ALT_INV_res[3]~3_combout\ <= NOT \CPU|ULA1|res[3]~3_combout\;
\RAM|ALT_INV_ram~280_combout\ <= NOT \RAM|ram~280_combout\;
\RAM|ALT_INV_ram~279_combout\ <= NOT \RAM|ram~279_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~278_combout\ <= NOT \RAM|ram~278_combout\;
\RAM|ALT_INV_ram~277_combout\ <= NOT \RAM|ram~277_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~276_combout\ <= NOT \RAM|ram~276_combout\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~275_combout\ <= NOT \RAM|ram~275_combout\;
\RAM|ALT_INV_ram~274_combout\ <= NOT \RAM|ram~274_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|decoder|ALT_INV_saida[6]~1_combout\ <= NOT \CPU|decoder|saida[6]~1_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\CPU|decoder|ALT_INV_saida[5]~0_combout\ <= NOT \CPU|decoder|saida[5]~0_combout\;
\CPU|decoder|ALT_INV_Equal8~1_combout\ <= NOT \CPU|decoder|Equal8~1_combout\;
\CPU|ULA1|ALT_INV_res[0]~0_combout\ <= NOT \CPU|ULA1|res[0]~0_combout\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\CPU|decoder|ALT_INV_OP~0_combout\ <= NOT \CPU|decoder|OP~0_combout\;
\RAM|ALT_INV_ram~273_combout\ <= NOT \RAM|ram~273_combout\;
\RAM|ALT_INV_ram~272_combout\ <= NOT \RAM|ram~272_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~271_combout\ <= NOT \RAM|ram~271_combout\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\CPU|decoder|ALT_INV_Equal8~0_combout\ <= NOT \CPU|decoder|Equal8~0_combout\;
\CPU|PC|ALT_INV_DOUT[0]~1_combout\ <= NOT \CPU|PC|DOUT[0]~1_combout\;
\CPU|PC|ALT_INV_DOUT[0]~0_combout\ <= NOT \CPU|PC|DOUT[0]~0_combout\;
\CPU|FF_Neg|ALT_INV_DOUT~q\ <= NOT \CPU|FF_Neg|DOUT~q\;
\CPU|FF_Zero|ALT_INV_DOUT~q\ <= NOT \CPU|FF_Zero|DOUT~q\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\CPU|REGs|ALT_INV_registrador~35_combout\ <= NOT \CPU|REGs|registrador~35_combout\;
\CPU|REGs|ALT_INV_registrador~34_combout\ <= NOT \CPU|REGs|registrador~34_combout\;
\CPU|REGs|ALT_INV_registrador~33_combout\ <= NOT \CPU|REGs|registrador~33_combout\;
\CPU|REGs|ALT_INV_registrador~32_combout\ <= NOT \CPU|REGs|registrador~32_combout\;
\CPU|REGs|ALT_INV_registrador~31_combout\ <= NOT \CPU|REGs|registrador~31_combout\;
\CPU|REGs|ALT_INV_registrador~30_combout\ <= NOT \CPU|REGs|registrador~30_combout\;
\CPU|REGs|ALT_INV_registrador~29_combout\ <= NOT \CPU|REGs|registrador~29_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\CPU|REGs|ALT_INV_registrador~28_combout\ <= NOT \CPU|REGs|registrador~28_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
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
\FF1|ALT_INV_DOUT~q\ <= NOT \FF1|DOUT~q\;

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLED|DOUT\(0),
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
	i => \REGLED|DOUT\(1),
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
	i => \REGLED|DOUT\(2),
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
	i => \REGLED|DOUT\(3),
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
	i => \REGLED|DOUT\(4),
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
	i => \REGLED|DOUT\(5),
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
	i => \REGLED|DOUT\(6),
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
	i => \REGLED|DOUT\(7),
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
	i => \FF1|DOUT~q\,
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

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

\CPU|MUX_PC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[1]~1_combout\ = (!\CPU|PC|DOUT[0]~1_combout\ & (!\CPU|decoder|Equal8~0_combout\ & \CPU|incrementaPC|Add0~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (\ROM|memROM~1_combout\ & \ROM|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~3_combout\);

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

\CPU|MUX_PC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[2]~2_combout\ = (!\CPU|PC|DOUT[0]~1_combout\ & (((!\CPU|decoder|Equal8~0_combout\ & \CPU|incrementaPC|Add0~9_sumout\)))) # (\CPU|PC|DOUT[0]~1_combout\ & (\ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000100011101000100010001110100010001000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

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
-- \CPU|MUX_PC|saida_MUX[5]~5_combout\ = (!\CPU|PC|DOUT[0]~1_combout\ & (!\CPU|decoder|Equal8~0_combout\ & \CPU|incrementaPC|Add0~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[5]~5_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
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
-- \CPU|MUX_PC|saida_MUX[6]~6_combout\ = (!\CPU|PC|DOUT[0]~1_combout\ & (!\CPU|decoder|Equal8~0_combout\ & \CPU|incrementaPC|Add0~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[6]~6_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
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
-- \CPU|MUX_PC|saida_MUX[7]~7_combout\ = (!\CPU|PC|DOUT[0]~1_combout\ & (!\CPU|decoder|Equal8~0_combout\ & \CPU|incrementaPC|Add0~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[7]~7_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \ROM|memROM~1_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000000000000000000000000000001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~5_combout\);

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
-- \CPU|MUX_PC|saida_MUX[8]~8_combout\ = (!\CPU|PC|DOUT[0]~1_combout\ & (((!\CPU|decoder|Equal8~0_combout\ & \CPU|incrementaPC|Add0~33_sumout\)))) # (\CPU|PC|DOUT[0]~1_combout\ & (\ROM|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000100011101000100010001110100010001000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[8]~8_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

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
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111111000010000011111100001000001111110000100000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (\ROM|memROM~1_combout\ & !\ROM|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~10_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000101000000110000010100000011000001010000001100000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111010000000001111101000000000111110100000000011111010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~12_combout\);

\CPU|decoder|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal8~0_combout\ = (\ROM|memROM~9_combout\ & (!\ROM|memROM~10_combout\ & (\ROM|memROM~11_combout\ & \ROM|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|decoder|Equal8~0_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (\ROM|memROM~1_combout\ & \ROM|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~13_combout\);

\CPU|MUX_PC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[3]~3_combout\ = (!\CPU|PC|DOUT[0]~1_combout\ & (!\CPU|decoder|Equal8~0_combout\ & ((\CPU|incrementaPC|Add0~13_sumout\)))) # (\CPU|PC|DOUT[0]~1_combout\ & (((\ROM|memROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[3]~3_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (\CPU|PC|DOUT\(3) & (\ROM|memROM~1_combout\ & \ROM|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~9_combout\);

\CPU|FF_Zero|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~0_combout\ = (\ROM|memROM~9_combout\ & (!\ROM|memROM~10_combout\ & (\ROM|memROM~11_combout\ & !\ROM|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|FF_Zero|DOUT~0_combout\);

\CPU|FF_Zero|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~1_combout\ = (\CPU|FF_Zero|DOUT~q\ & !\CPU|FF_Zero|DOUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FF_Zero|ALT_INV_DOUT~q\,
	datab => \CPU|FF_Zero|ALT_INV_DOUT~0_combout\,
	combout => \CPU|FF_Zero|DOUT~1_combout\);

\CPU|decoder|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal8~2_combout\ = ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & \ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \CPU|decoder|Equal8~2_combout\);

\CPU|decoder|OP~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|OP~0_combout\ = (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~12_combout\ & ((\ROM|memROM~11_combout\))) # (\ROM|memROM~12_combout\ & (\ROM|memROM~10_combout\ & !\ROM|memROM~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100000000000101010000000000010101000000000001010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|decoder|OP~0_combout\);

\CPU|decoder|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal8~1_combout\ = (!\ROM|memROM~9_combout\ & (\ROM|memROM~10_combout\ & (!\ROM|memROM~11_combout\ & !\ROM|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|decoder|Equal8~1_combout\);

\CPU|decoder|Equal8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal8~3_combout\ = ( !\CPU|PC|DOUT\(3) & ( (\ROM|memROM~1_combout\ & ((!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000001000000000000000000000000110000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \CPU|decoder|Equal8~3_combout\);

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( !\CPU|PC|DOUT\(3) & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011110000000000000000000000000000111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \RAM|process_0~0_combout\);

\RAM|ram~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~291_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000010000000000000000000000001000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~291_combout\);

\RAM|ram~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~292_combout\ = ( !\RAM|ram~291_combout\ & ( (!\ROM|memROM~3_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \RAM|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	datae => \RAM|ALT_INV_ram~291_combout\,
	combout => \RAM|ram~292_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~29_combout\,
	ena => \RAM|ram~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~293_combout\ = ( !\RAM|ram~291_combout\ & ( (!\ROM|memROM~3_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \RAM|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	datae => \RAM|ALT_INV_ram~291_combout\,
	combout => \RAM|ram~293_combout\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~29_combout\,
	ena => \RAM|ram~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~274\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~274_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~24_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \RAM|ALT_INV_ram~24_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~274_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~1_combout\ & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~14_combout\);

\RAM|ram~275\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~275_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~274_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~274_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~275_combout\);

\CPU|MUXULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[1]~1_combout\ = (!\CPU|decoder|Equal8~3_combout\ & \RAM|ram~275_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \RAM|ALT_INV_ram~275_combout\,
	combout => \CPU|MUXULA|saida_MUX[1]~1_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~28_combout\,
	ena => \RAM|ram~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~271\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~271_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~271_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~28_combout\,
	ena => \RAM|ram~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~272\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~272_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~272_combout\);

\RAM|ram~273\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~273_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~272_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~271_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~271_combout\,
	datab => \RAM|ALT_INV_ram~272_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~273_combout\);

\CPU|MUXULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[0]~0_combout\ = (!\CPU|decoder|Equal8~3_combout\ & ((\RAM|ram~273_combout\))) # (\CPU|decoder|Equal8~3_combout\ & (\ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datac => \RAM|ALT_INV_ram~273_combout\,
	combout => \CPU|MUXULA|saida_MUX[0]~0_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( (!\CPU|decoder|Equal8~2_combout\ & (!\CPU|decoder|OP~0_combout\ & !\CPU|decoder|Equal8~1_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datad => \CPU|decoder|ALT_INV_Equal8~1_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REGs|registrador~28_combout\ ) + ( !\CPU|MUXULA|saida_MUX[0]~0_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REGs|registrador~28_combout\ ) + ( !\CPU|MUXULA|saida_MUX[0]~0_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|MUXULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~28_combout\,
	dataf => \CPU|decoder|ALT_INV_Equal8~1_combout\,
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REGs|registrador~29_combout\ ) + ( !\CPU|MUXULA|saida_MUX[1]~1_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REGs|registrador~29_combout\ ) + ( !\CPU|MUXULA|saida_MUX[1]~1_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~1_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~29_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[1]~1_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~15_combout\);

\CPU|decoder|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida[5]~0_combout\ = (!\CPU|decoder|Equal8~2_combout\ & ((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~1_combout\,
	combout => \CPU|decoder|saida[5]~0_combout\);

\CPU|decoder|saida[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida[6]~1_combout\ = (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~10_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~12_combout\))) # (\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010101000001010001010100000101000101010000010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|decoder|saida[6]~1_combout\);

\CPU|REGs|registrador~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~37_combout\ = (!\ROM|memROM~15_combout\ & \CPU|decoder|saida[6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|decoder|ALT_INV_saida[6]~1_combout\,
	combout => \CPU|REGs|registrador~37_combout\);

\CPU|REGs|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|res[1]~1_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~13_q\);

\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = (!\CPU|decoder|Equal8~2_combout\ & \CPU|decoder|OP~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

\CPU|ULA1|res[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[1]~1_combout\ = ( \CPU|ULA1|Equal0~0_combout\ & ( \RAM|ram~275_combout\ & ( !\CPU|decoder|Equal8~3_combout\ ) ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( \RAM|ram~275_combout\ & ( (!\CPU|decoder|Equal8~3_combout\ & ((!\ROM|memROM~15_combout\ & 
-- ((\CPU|REGs|registrador~13_q\))) # (\ROM|memROM~15_combout\ & (\CPU|REGs|registrador~21_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011011000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|REGs|ALT_INV_registrador~21_q\,
	datac => \CPU|REGs|ALT_INV_registrador~13_q\,
	datad => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \RAM|ALT_INV_ram~275_combout\,
	combout => \CPU|ULA1|res[1]~1_combout\);

\CPU|REGs|registrador~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~36_combout\ = (\ROM|memROM~15_combout\ & \CPU|decoder|saida[6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|decoder|ALT_INV_saida[6]~1_combout\,
	combout => \CPU|REGs|registrador~36_combout\);

\CPU|REGs|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|res[1]~1_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~21_q\);

\CPU|REGs|registrador~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~29_combout\ = (!\ROM|memROM~0_combout\ & (((\CPU|REGs|registrador~13_q\)))) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & ((\CPU|REGs|registrador~13_q\))) # (\ROM|memROM~1_combout\ & (\CPU|REGs|registrador~21_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|REGs|ALT_INV_registrador~21_q\,
	datad => \CPU|REGs|ALT_INV_registrador~13_q\,
	combout => \CPU|REGs|registrador~29_combout\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~30_combout\,
	ena => \RAM|ram~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~276\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~276_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~276_combout\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~30_combout\,
	ena => \RAM|ram~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~277_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~25_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~277_combout\);

\RAM|ram~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~278_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~277_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~276_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~276_combout\,
	datab => \RAM|ALT_INV_ram~277_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~278_combout\);

\CPU|MUXULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[2]~2_combout\ = (!\CPU|decoder|Equal8~3_combout\ & \RAM|ram~278_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \RAM|ALT_INV_ram~278_combout\,
	combout => \CPU|MUXULA|saida_MUX[2]~2_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REGs|registrador~30_combout\ ) + ( !\CPU|MUXULA|saida_MUX[2]~2_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REGs|registrador~30_combout\ ) + ( !\CPU|MUXULA|saida_MUX[2]~2_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~1_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~30_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[2]~2_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|REGs|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|res[2]~2_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~14_q\);

\CPU|ULA1|res[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[2]~2_combout\ = ( \CPU|ULA1|Equal0~0_combout\ & ( \RAM|ram~278_combout\ & ( !\CPU|decoder|Equal8~3_combout\ ) ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( \RAM|ram~278_combout\ & ( (!\CPU|decoder|Equal8~3_combout\ & ((!\ROM|memROM~15_combout\ & 
-- ((\CPU|REGs|registrador~14_q\))) # (\ROM|memROM~15_combout\ & (\CPU|REGs|registrador~22_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011011000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|REGs|ALT_INV_registrador~22_q\,
	datac => \CPU|REGs|ALT_INV_registrador~14_q\,
	datad => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \RAM|ALT_INV_ram~278_combout\,
	combout => \CPU|ULA1|res[2]~2_combout\);

\CPU|REGs|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|res[2]~2_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~22_q\);

\CPU|REGs|registrador~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~30_combout\ = (!\ROM|memROM~0_combout\ & (((\CPU|REGs|registrador~14_q\)))) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & ((\CPU|REGs|registrador~14_q\))) # (\ROM|memROM~1_combout\ & (\CPU|REGs|registrador~22_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|REGs|ALT_INV_registrador~22_q\,
	datad => \CPU|REGs|ALT_INV_registrador~14_q\,
	combout => \CPU|REGs|registrador~30_combout\);

\CPU|FF_Zero|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~2_combout\ = ( \RAM|ram~275_combout\ & ( \RAM|ram~278_combout\ & ( (!\CPU|decoder|Equal8~3_combout\ & (((\CPU|ULA1|Equal0~0_combout\) # (\CPU|REGs|registrador~30_combout\)) # (\CPU|REGs|registrador~29_combout\))) ) ) ) # ( 
-- !\RAM|ram~275_combout\ & ( \RAM|ram~278_combout\ & ( (!\CPU|decoder|Equal8~3_combout\ & ((\CPU|ULA1|Equal0~0_combout\) # (\CPU|REGs|registrador~30_combout\))) ) ) ) # ( \RAM|ram~275_combout\ & ( !\RAM|ram~278_combout\ & ( (!\CPU|decoder|Equal8~3_combout\ 
-- & ((\CPU|ULA1|Equal0~0_combout\) # (\CPU|REGs|registrador~29_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111000000110000111100000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~29_combout\,
	datab => \CPU|REGs|ALT_INV_registrador~30_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \RAM|ALT_INV_ram~275_combout\,
	dataf => \RAM|ALT_INV_ram~278_combout\,
	combout => \CPU|FF_Zero|DOUT~2_combout\);

\CPU|ULA1|res[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[0]~0_combout\ = ( \CPU|ULA1|Equal0~0_combout\ & ( (!\CPU|decoder|Equal8~3_combout\ & ((\RAM|ram~273_combout\))) # (\CPU|decoder|Equal8~3_combout\ & (\ROM|memROM~4_combout\)) ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( 
-- (\CPU|REGs|registrador~28_combout\ & ((!\CPU|decoder|Equal8~3_combout\ & ((\RAM|ram~273_combout\))) # (\CPU|decoder|Equal8~3_combout\ & (\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000000111111001100000001010100010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~28_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datad => \RAM|ALT_INV_ram~273_combout\,
	datae => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	combout => \CPU|ULA1|res[0]~0_combout\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~31_combout\,
	ena => \RAM|ram~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~31_combout\,
	ena => \RAM|ram~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~279_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~26_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datab => \RAM|ALT_INV_ram~26_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~279_combout\);

\RAM|ram~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~280_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~279_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~279_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~280_combout\);

\CPU|MUXULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[3]~3_combout\ = (!\CPU|decoder|Equal8~3_combout\ & ((\RAM|ram~280_combout\))) # (\CPU|decoder|Equal8~3_combout\ & (\ROM|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datac => \RAM|ALT_INV_ram~280_combout\,
	combout => \CPU|MUXULA|saida_MUX[3]~3_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REGs|registrador~31_combout\ ) + ( !\CPU|MUXULA|saida_MUX[3]~3_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REGs|registrador~31_combout\ ) + ( !\CPU|MUXULA|saida_MUX[3]~3_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~1_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~31_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[3]~3_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|REGs|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|res[3]~3_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~23_q\);

\CPU|REGs|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|res[3]~3_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~15_q\);

\CPU|REGs|registrador~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~31_combout\ = (!\ROM|memROM~0_combout\ & (((\CPU|REGs|registrador~15_q\)))) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & ((\CPU|REGs|registrador~15_q\))) # (\ROM|memROM~1_combout\ & (\CPU|REGs|registrador~23_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|REGs|ALT_INV_registrador~23_q\,
	datad => \CPU|REGs|ALT_INV_registrador~15_q\,
	combout => \CPU|REGs|registrador~31_combout\);

\CPU|ULA1|res[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[3]~3_combout\ = ( \RAM|ram~280_combout\ & ( (!\CPU|REGs|registrador~31_combout\ & (\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|decoder|Equal8~3_combout\) # (\ROM|memROM~13_combout\)))) # (\CPU|REGs|registrador~31_combout\ & 
-- (((!\CPU|decoder|Equal8~3_combout\)) # (\ROM|memROM~13_combout\))) ) ) # ( !\RAM|ram~280_combout\ & ( (\ROM|memROM~13_combout\ & (\CPU|decoder|Equal8~3_combout\ & ((\CPU|ULA1|Equal0~0_combout\) # (\CPU|REGs|registrador~31_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011010100011111001100000001000000110101000111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~31_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \RAM|ALT_INV_ram~280_combout\,
	combout => \CPU|ULA1|res[3]~3_combout\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~32_combout\,
	ena => \RAM|ram~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~281_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~281_combout\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~32_combout\,
	ena => \RAM|ram~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~282_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~27_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~282_combout\);

\RAM|ram~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~283_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~282_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~281_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~281_combout\,
	datab => \RAM|ALT_INV_ram~282_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~283_combout\);

\CPU|MUXULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[4]~4_combout\ = (!\CPU|decoder|Equal8~3_combout\ & ((\RAM|ram~283_combout\))) # (\CPU|decoder|Equal8~3_combout\ & (\ROM|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datac => \RAM|ALT_INV_ram~283_combout\,
	combout => \CPU|MUXULA|saida_MUX[4]~4_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REGs|registrador~32_combout\ ) + ( !\CPU|MUXULA|saida_MUX[4]~4_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REGs|registrador~32_combout\ ) + ( !\CPU|MUXULA|saida_MUX[4]~4_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~1_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~32_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[4]~4_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|REGs|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|res[4]~4_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~24_q\);

\CPU|REGs|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|res[4]~4_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~16_q\);

\CPU|REGs|registrador~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~32_combout\ = (!\ROM|memROM~0_combout\ & (((\CPU|REGs|registrador~16_q\)))) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & ((\CPU|REGs|registrador~16_q\))) # (\ROM|memROM~1_combout\ & (\CPU|REGs|registrador~24_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|REGs|ALT_INV_registrador~24_q\,
	datad => \CPU|REGs|ALT_INV_registrador~16_q\,
	combout => \CPU|REGs|registrador~32_combout\);

\CPU|ULA1|res[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[4]~4_combout\ = ( \RAM|ram~283_combout\ & ( (!\CPU|REGs|registrador~32_combout\ & (\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|decoder|Equal8~3_combout\) # (\ROM|memROM~14_combout\)))) # (\CPU|REGs|registrador~32_combout\ & 
-- (((!\CPU|decoder|Equal8~3_combout\)) # (\ROM|memROM~14_combout\))) ) ) # ( !\RAM|ram~283_combout\ & ( (\ROM|memROM~14_combout\ & (\CPU|decoder|Equal8~3_combout\ & ((\CPU|ULA1|Equal0~0_combout\) # (\CPU|REGs|registrador~32_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011010100011111001100000001000000110101000111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGs|ALT_INV_registrador~32_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \RAM|ALT_INV_ram~283_combout\,
	combout => \CPU|ULA1|res[4]~4_combout\);

\CPU|REGs|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|res[5]~5_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~17_q\);

\CPU|REGs|registrador~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~33_combout\ = (!\ROM|memROM~0_combout\ & (((\CPU|REGs|registrador~17_q\)))) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & ((\CPU|REGs|registrador~17_q\))) # (\ROM|memROM~1_combout\ & (\CPU|REGs|registrador~25_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|REGs|ALT_INV_registrador~25_q\,
	datad => \CPU|REGs|ALT_INV_registrador~17_q\,
	combout => \CPU|REGs|registrador~33_combout\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~33_combout\,
	ena => \RAM|ram~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~33_combout\,
	ena => \RAM|ram~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~284_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~28_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datab => \RAM|ALT_INV_ram~28_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~284_combout\);

\RAM|ram~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~285_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~284_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~284_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~285_combout\);

\CPU|MUXULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[5]~5_combout\ = (!\CPU|decoder|Equal8~3_combout\ & \RAM|ram~285_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \RAM|ALT_INV_ram~285_combout\,
	combout => \CPU|MUXULA|saida_MUX[5]~5_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REGs|registrador~33_combout\ ) + ( !\CPU|MUXULA|saida_MUX[5]~5_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REGs|registrador~33_combout\ ) + ( !\CPU|MUXULA|saida_MUX[5]~5_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~1_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~33_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[5]~5_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|REGs|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|res[5]~5_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~25_q\);

\CPU|ULA1|res[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[5]~5_combout\ = ( \CPU|ULA1|Equal0~0_combout\ & ( \RAM|ram~285_combout\ & ( !\CPU|decoder|Equal8~3_combout\ ) ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( \RAM|ram~285_combout\ & ( (!\CPU|decoder|Equal8~3_combout\ & ((!\ROM|memROM~15_combout\ & 
-- ((\CPU|REGs|registrador~17_q\))) # (\ROM|memROM~15_combout\ & (\CPU|REGs|registrador~25_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011011000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|REGs|ALT_INV_registrador~25_q\,
	datac => \CPU|REGs|ALT_INV_registrador~17_q\,
	datad => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \RAM|ALT_INV_ram~285_combout\,
	combout => \CPU|ULA1|res[5]~5_combout\);

\CPU|REGs|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|res[6]~6_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~18_q\);

\CPU|REGs|registrador~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~34_combout\ = (!\ROM|memROM~0_combout\ & (((\CPU|REGs|registrador~18_q\)))) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & ((\CPU|REGs|registrador~18_q\))) # (\ROM|memROM~1_combout\ & (\CPU|REGs|registrador~26_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|REGs|ALT_INV_registrador~26_q\,
	datad => \CPU|REGs|ALT_INV_registrador~18_q\,
	combout => \CPU|REGs|registrador~34_combout\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~34_combout\,
	ena => \RAM|ram~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~286_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~286_combout\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~34_combout\,
	ena => \RAM|ram~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~287_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~29_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~287_combout\);

\RAM|ram~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~288_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~287_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~286_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~286_combout\,
	datab => \RAM|ALT_INV_ram~287_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~288_combout\);

\CPU|MUXULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[6]~6_combout\ = (!\CPU|decoder|Equal8~3_combout\ & \RAM|ram~288_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \RAM|ALT_INV_ram~288_combout\,
	combout => \CPU|MUXULA|saida_MUX[6]~6_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REGs|registrador~34_combout\ ) + ( !\CPU|MUXULA|saida_MUX[6]~6_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REGs|registrador~34_combout\ ) + ( !\CPU|MUXULA|saida_MUX[6]~6_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~1_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~34_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[6]~6_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|REGs|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|res[6]~6_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~26_q\);

\CPU|ULA1|res[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|res[6]~6_combout\ = ( \CPU|ULA1|Equal0~0_combout\ & ( \RAM|ram~288_combout\ & ( !\CPU|decoder|Equal8~3_combout\ ) ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( \RAM|ram~288_combout\ & ( (!\CPU|decoder|Equal8~3_combout\ & ((!\ROM|memROM~15_combout\ & 
-- ((\CPU|REGs|registrador~18_q\))) # (\ROM|memROM~15_combout\ & (\CPU|REGs|registrador~26_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011011000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|REGs|ALT_INV_registrador~26_q\,
	datac => \CPU|REGs|ALT_INV_registrador~18_q\,
	datad => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \RAM|ALT_INV_ram~288_combout\,
	combout => \CPU|ULA1|res[6]~6_combout\);

\CPU|FF_Zero|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~3_combout\ = ( !\CPU|ULA1|res[5]~5_combout\ & ( !\CPU|ULA1|res[6]~6_combout\ & ( (!\CPU|ULA1|res[0]~0_combout\ & (\CPU|decoder|saida[5]~0_combout\ & (!\CPU|ULA1|res[3]~3_combout\ & !\CPU|ULA1|res[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_res[0]~0_combout\,
	datab => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datac => \CPU|ULA1|ALT_INV_res[3]~3_combout\,
	datad => \CPU|ULA1|ALT_INV_res[4]~4_combout\,
	datae => \CPU|ULA1|ALT_INV_res[5]~5_combout\,
	dataf => \CPU|ULA1|ALT_INV_res[6]~6_combout\,
	combout => \CPU|FF_Zero|DOUT~3_combout\);

\CPU|FF_Zero|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~4_combout\ = ( !\CPU|ULA1|Add0~13_sumout\ & ( !\CPU|ULA1|Add0~17_sumout\ & ( (!\CPU|ULA1|Add0~1_sumout\ & (!\CPU|decoder|saida[5]~0_combout\ & (!\CPU|ULA1|Add0~5_sumout\ & !\CPU|ULA1|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datab => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|FF_Zero|DOUT~4_combout\);

\CPU|FF_Zero|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~5_combout\ = (!\CPU|ULA1|Add0~21_sumout\ & !\CPU|ULA1|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU|FF_Zero|DOUT~5_combout\);

\CPU|REGs|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|flagNeg~0_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~19_q\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~35_combout\,
	ena => \RAM|ram~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~35_combout\,
	ena => \RAM|ram~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~289_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~30_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datab => \RAM|ALT_INV_ram~30_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~289_combout\);

\RAM|ram~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~290_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~289_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~289_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~290_combout\);

\CPU|ULA1|flagNeg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|flagNeg~0_combout\ = ( \CPU|ULA1|Equal0~0_combout\ & ( \RAM|ram~290_combout\ & ( !\CPU|decoder|Equal8~3_combout\ ) ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( \RAM|ram~290_combout\ & ( (!\CPU|decoder|Equal8~3_combout\ & ((!\ROM|memROM~15_combout\ & 
-- ((\CPU|REGs|registrador~19_q\))) # (\ROM|memROM~15_combout\ & (\CPU|REGs|registrador~27_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011011000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|REGs|ALT_INV_registrador~27_q\,
	datac => \CPU|REGs|ALT_INV_registrador~19_q\,
	datad => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \RAM|ALT_INV_ram~290_combout\,
	combout => \CPU|ULA1|flagNeg~0_combout\);

\CPU|REGs|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|flagNeg~0_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~27_q\);

\CPU|REGs|registrador~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~35_combout\ = (!\ROM|memROM~0_combout\ & (((\CPU|REGs|registrador~19_q\)))) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & ((\CPU|REGs|registrador~19_q\))) # (\ROM|memROM~1_combout\ & (\CPU|REGs|registrador~27_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|REGs|ALT_INV_registrador~27_q\,
	datad => \CPU|REGs|ALT_INV_registrador~19_q\,
	combout => \CPU|REGs|registrador~35_combout\);

\CPU|MUXULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXULA|saida_MUX[7]~7_combout\ = (!\CPU|decoder|Equal8~3_combout\ & \RAM|ram~290_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~3_combout\,
	datab => \RAM|ALT_INV_ram~290_combout\,
	combout => \CPU|MUXULA|saida_MUX[7]~7_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REGs|registrador~35_combout\ ) + ( !\CPU|MUXULA|saida_MUX[7]~7_combout\ $ ((((\CPU|decoder|Equal8~1_combout\) # (\CPU|decoder|OP~0_combout\)) # (\CPU|decoder|Equal8~2_combout\))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal8~2_combout\,
	datab => \CPU|decoder|ALT_INV_OP~0_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~1_combout\,
	datad => \CPU|REGs|ALT_INV_registrador~35_combout\,
	dataf => \CPU|MUXULA|ALT_INV_saida_MUX[7]~7_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|FF_Zero|DOUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~6_combout\ = (\CPU|FF_Zero|DOUT~0_combout\ & ((!\CPU|decoder|saida[5]~0_combout\ & (!\CPU|ULA1|Add0~29_sumout\)) # (\CPU|decoder|saida[5]~0_combout\ & ((!\CPU|ULA1|flagNeg~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011000000000001101100000000000110110000000000011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	datac => \CPU|ULA1|ALT_INV_flagNeg~0_combout\,
	datad => \CPU|FF_Zero|ALT_INV_DOUT~0_combout\,
	combout => \CPU|FF_Zero|DOUT~6_combout\);

\CPU|FF_Zero|DOUT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~7_combout\ = ( \CPU|FF_Zero|DOUT~5_combout\ & ( \CPU|FF_Zero|DOUT~6_combout\ & ( (((!\CPU|FF_Zero|DOUT~2_combout\ & \CPU|FF_Zero|DOUT~3_combout\)) # (\CPU|FF_Zero|DOUT~4_combout\)) # (\CPU|FF_Zero|DOUT~1_combout\) ) ) ) # ( 
-- !\CPU|FF_Zero|DOUT~5_combout\ & ( \CPU|FF_Zero|DOUT~6_combout\ & ( ((!\CPU|FF_Zero|DOUT~2_combout\ & \CPU|FF_Zero|DOUT~3_combout\)) # (\CPU|FF_Zero|DOUT~1_combout\) ) ) ) # ( \CPU|FF_Zero|DOUT~5_combout\ & ( !\CPU|FF_Zero|DOUT~6_combout\ & ( 
-- \CPU|FF_Zero|DOUT~1_combout\ ) ) ) # ( !\CPU|FF_Zero|DOUT~5_combout\ & ( !\CPU|FF_Zero|DOUT~6_combout\ & ( \CPU|FF_Zero|DOUT~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011101010111010101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FF_Zero|ALT_INV_DOUT~1_combout\,
	datab => \CPU|FF_Zero|ALT_INV_DOUT~2_combout\,
	datac => \CPU|FF_Zero|ALT_INV_DOUT~3_combout\,
	datad => \CPU|FF_Zero|ALT_INV_DOUT~4_combout\,
	datae => \CPU|FF_Zero|ALT_INV_DOUT~5_combout\,
	dataf => \CPU|FF_Zero|ALT_INV_DOUT~6_combout\,
	combout => \CPU|FF_Zero|DOUT~7_combout\);

\CPU|FF_Zero|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|FF_Zero|DOUT~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FF_Zero|DOUT~q\);

\CPU|FF_Neg|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Neg|DOUT~0_combout\ = (\ROM|memROM~9_combout\ & (\ROM|memROM~10_combout\ & (!\ROM|memROM~11_combout\ & \ROM|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|FF_Neg|DOUT~0_combout\);

\CPU|FF_Neg|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Neg|DOUT~1_combout\ = ( \CPU|FF_Neg|DOUT~0_combout\ & ( (!\CPU|decoder|saida[5]~0_combout\ & (\CPU|ULA1|Add0~29_sumout\)) # (\CPU|decoder|saida[5]~0_combout\ & ((\CPU|ULA1|flagNeg~0_combout\))) ) ) # ( !\CPU|FF_Neg|DOUT~0_combout\ & ( 
-- \CPU|FF_Neg|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011000011111101010101010101010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FF_Neg|ALT_INV_DOUT~q\,
	datab => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	datad => \CPU|ULA1|ALT_INV_flagNeg~0_combout\,
	datae => \CPU|FF_Neg|ALT_INV_DOUT~0_combout\,
	combout => \CPU|FF_Neg|DOUT~1_combout\);

\CPU|FF_Neg|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|FF_Neg|DOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FF_Neg|DOUT~q\);

\CPU|PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[0]~0_combout\ = ( \CPU|FF_Neg|DOUT~q\ & ( (!\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & (!\ROM|memROM~8_combout\ & !\CPU|FF_Zero|DOUT~q\))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~7_combout\ & (\ROM|memROM~8_combout\))) ) ) # ( 
-- !\CPU|FF_Neg|DOUT~q\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ $ (((\CPU|FF_Zero|DOUT~q\) # (\ROM|memROM~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001000100001001000000010010000100010001000010010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \CPU|FF_Zero|ALT_INV_DOUT~q\,
	datae => \CPU|FF_Neg|ALT_INV_DOUT~q\,
	combout => \CPU|PC|DOUT[0]~0_combout\);

\CPU|PC|DOUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[0]~1_combout\ = ( \CPU|PC|DOUT[0]~0_combout\ & ( (!\ROM|memROM~12_combout\ & (\ROM|memROM~9_combout\)) # (\ROM|memROM~12_combout\ & ((!\ROM|memROM~11_combout\ & (\ROM|memROM~9_combout\)) # (\ROM|memROM~11_combout\ & 
-- ((\ROM|memROM~10_combout\))))) ) ) # ( !\CPU|PC|DOUT[0]~0_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & \ROM|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010010101010101001100000000000000100101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	combout => \CPU|PC|DOUT[0]~1_combout\);

\CPU|MUX_PC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[4]~4_combout\ = (!\CPU|PC|DOUT[0]~1_combout\ & (!\CPU|decoder|Equal8~0_combout\ & ((\CPU|incrementaPC|Add0~17_sumout\)))) # (\CPU|PC|DOUT[0]~1_combout\ & (((\ROM|memROM~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[4]~4_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100000000000011010000000000001101000000000000110100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~16_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~16_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \ROM|memROM~4_combout\);

\CPU|MUX_PC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[0]~0_combout\ = (!\CPU|PC|DOUT[0]~1_combout\ & (((!\CPU|decoder|Equal8~0_combout\ & \CPU|incrementaPC|Add0~1_sumout\)))) # (\CPU|PC|DOUT[0]~1_combout\ & (\ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000100011101000100010001110100010001000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datac => \CPU|decoder|ALT_INV_Equal8~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_PC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000110000000011000011000000001100001100000000110000110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\CPU|REGs|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|res[0]~0_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~20_q\);

\CPU|REGs|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|res[0]~0_combout\,
	sload => \CPU|decoder|saida[5]~0_combout\,
	ena => \CPU|REGs|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGs|registrador~12_q\);

\CPU|REGs|registrador~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGs|registrador~28_combout\ = (!\ROM|memROM~0_combout\ & (((\CPU|REGs|registrador~12_q\)))) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & ((\CPU|REGs|registrador~12_q\))) # (\ROM|memROM~1_combout\ & (\CPU|REGs|registrador~20_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|REGs|ALT_INV_registrador~20_q\,
	datad => \CPU|REGs|ALT_INV_registrador~12_q\,
	combout => \CPU|REGs|registrador~28_combout\);

\DataAddr|decEndereco|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataAddr|decEndereco|Equal7~0_combout\ = (!\ROM|memROM~3_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~5_combout\ & \RAM|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	combout => \DataAddr|decEndereco|Equal7~0_combout\);

\REGLED|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~28_combout\,
	ena => \DataAddr|decEndereco|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(0));

\REGLED|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~29_combout\,
	ena => \DataAddr|decEndereco|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(1));

\REGLED|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~30_combout\,
	ena => \DataAddr|decEndereco|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(2));

\REGLED|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~31_combout\,
	ena => \DataAddr|decEndereco|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(3));

\REGLED|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~32_combout\,
	ena => \DataAddr|decEndereco|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(4));

\REGLED|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~33_combout\,
	ena => \DataAddr|decEndereco|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(5));

\REGLED|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~34_combout\,
	ena => \DataAddr|decEndereco|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(6));

\REGLED|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGs|registrador~35_combout\,
	ena => \DataAddr|decEndereco|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(7));

\FF1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF1|DOUT~0_combout\ = ( \ROM|memROM~5_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~4_combout\ & (\FF1|DOUT~q\)) # (\ROM|memROM~4_combout\ & ((\CPU|REGs|registrador~28_combout\))))) # (\ROM|memROM~3_combout\ & 
-- (\FF1|DOUT~q\)) ) ) ) # ( !\ROM|memROM~5_combout\ & ( \RAM|process_0~0_combout\ & ( \FF1|DOUT~q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\RAM|process_0~0_combout\ & ( \FF1|DOUT~q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\RAM|process_0~0_combout\ & ( 
-- \FF1|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF1|ALT_INV_DOUT~q\,
	datab => \CPU|REGs|ALT_INV_registrador~28_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \FF1|DOUT~0_combout\);

\FF1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FF1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF1|DOUT~q\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

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

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

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


