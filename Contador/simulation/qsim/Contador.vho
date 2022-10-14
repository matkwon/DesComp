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

-- DATE "10/14/2022 18:28:39"

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

ENTITY 	Contador IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	testeinA : OUT std_logic_vector(7 DOWNTO 0);
	testeinB : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Contador;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PC_OUT[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinA[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinA[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinA[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinA[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinA[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinA[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinA[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinA[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinB[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinB[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinB[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinB[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinB[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinB[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinB[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testeinB[7]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Contador IS
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
SIGNAL ww_testeinA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_testeinB : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|decoder|saida[8]~5_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|decoder|saida[5]~0_combout\ : std_logic;
SIGNAL \CPU|decoder|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|decoder|saida~3_combout\ : std_logic;
SIGNAL \CPU|decoder|saida~2_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \RAM|ram~183_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \RAM|ram~178_combout\ : std_logic;
SIGNAL \RAM|ram~70_q\ : std_logic;
SIGNAL \RAM|ram~182_combout\ : std_logic;
SIGNAL \RAM|ram~134_q\ : std_logic;
SIGNAL \RAM|ram~176_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~180_combout\ : std_logic;
SIGNAL \RAM|ram~102_q\ : std_logic;
SIGNAL \RAM|ram~173_combout\ : std_logic;
SIGNAL \RAM|ram~175_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~177_combout\ : std_logic;
SIGNAL \RAM|ram~54_q\ : std_logic;
SIGNAL \RAM|ram~179_combout\ : std_logic;
SIGNAL \RAM|ram~86_q\ : std_logic;
SIGNAL \RAM|ram~181_combout\ : std_logic;
SIGNAL \RAM|ram~118_q\ : std_logic;
SIGNAL \RAM|ram~172_combout\ : std_logic;
SIGNAL \RAM|ram~174_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|decoder|saida[5]~4_combout\ : std_logic;
SIGNAL \RAM|ram~69_q\ : std_logic;
SIGNAL \RAM|ram~53_q\ : std_logic;
SIGNAL \RAM|ram~168_combout\ : std_logic;
SIGNAL \RAM|ram~85_q\ : std_logic;
SIGNAL \RAM|ram~101_q\ : std_logic;
SIGNAL \RAM|ram~169_combout\ : std_logic;
SIGNAL \RAM|ram~133_q\ : std_logic;
SIGNAL \RAM|ram~117_q\ : std_logic;
SIGNAL \RAM|ram~170_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~167_combout\ : std_logic;
SIGNAL \RAM|ram~171_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~132_q\ : std_logic;
SIGNAL \RAM|ram~100_q\ : std_logic;
SIGNAL \RAM|ram~68_q\ : std_logic;
SIGNAL \RAM|ram~165_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~116_q\ : std_logic;
SIGNAL \RAM|ram~52_q\ : std_logic;
SIGNAL \RAM|ram~84_q\ : std_logic;
SIGNAL \RAM|ram~164_combout\ : std_logic;
SIGNAL \RAM|ram~166_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal11~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|ram~95_q\ : std_logic;
SIGNAL \RAM|ram~79_q\ : std_logic;
SIGNAL \RAM|ram~145_combout\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~63_q\ : std_logic;
SIGNAL \RAM|ram~144_combout\ : std_logic;
SIGNAL \RAM|ram~111_q\ : std_logic;
SIGNAL \RAM|ram~127_q\ : std_logic;
SIGNAL \RAM|ram~146_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~143_combout\ : std_logic;
SIGNAL \RAM|ram~147_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~112_q\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~80feeder_combout\ : std_logic;
SIGNAL \RAM|ram~80_q\ : std_logic;
SIGNAL \RAM|ram~148_combout\ : std_logic;
SIGNAL \RAM|ram~64_q\ : std_logic;
SIGNAL \RAM|ram~128_q\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~96feeder_combout\ : std_logic;
SIGNAL \RAM|ram~96_q\ : std_logic;
SIGNAL \RAM|ram~149_combout\ : std_logic;
SIGNAL \RAM|ram~150_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~81_q\ : std_logic;
SIGNAL \RAM|ram~97_q\ : std_logic;
SIGNAL \RAM|ram~153_combout\ : std_logic;
SIGNAL \RAM|ram~113_q\ : std_logic;
SIGNAL \RAM|ram~129_q\ : std_logic;
SIGNAL \RAM|ram~154_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~151_combout\ : std_logic;
SIGNAL \RAM|ram~49feeder_combout\ : std_logic;
SIGNAL \RAM|ram~49_q\ : std_logic;
SIGNAL \RAM|ram~65_q\ : std_logic;
SIGNAL \RAM|ram~152_combout\ : std_logic;
SIGNAL \RAM|ram~155_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~114_q\ : std_logic;
SIGNAL \RAM|ram~50_q\ : std_logic;
SIGNAL \RAM|ram~18feeder_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~82feeder_combout\ : std_logic;
SIGNAL \RAM|ram~82_q\ : std_logic;
SIGNAL \RAM|ram~156_combout\ : std_logic;
SIGNAL \RAM|ram~66_q\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~130_q\ : std_logic;
SIGNAL \RAM|ram~98feeder_combout\ : std_logic;
SIGNAL \RAM|ram~98_q\ : std_logic;
SIGNAL \RAM|ram~157_combout\ : std_logic;
SIGNAL \RAM|ram~158_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~83_q\ : std_logic;
SIGNAL \RAM|ram~99_q\ : std_logic;
SIGNAL \RAM|ram~161_combout\ : std_logic;
SIGNAL \RAM|ram~67_q\ : std_logic;
SIGNAL \RAM|ram~51_q\ : std_logic;
SIGNAL \RAM|ram~160_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~19feeder_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~159_combout\ : std_logic;
SIGNAL \RAM|ram~115_q\ : std_logic;
SIGNAL \RAM|ram~131_q\ : std_logic;
SIGNAL \RAM|ram~162_combout\ : std_logic;
SIGNAL \RAM|ram~163_combout\ : std_logic;
SIGNAL \DATA_RD[4]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Equal3~2_combout\ : std_logic;
SIGNAL \DATA_RD[5]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal3~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal3~3_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal11~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal3~5_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~q\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|LogicaDesvio|DOUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DATA_RD[6]~2_combout\ : std_logic;
SIGNAL \DATA_RD[7]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal3~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal3~4_combout\ : std_logic;
SIGNAL \Display4|REG|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \Display4|REG|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Display5|REG|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Display5|REG|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Display2|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display4|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|LogicaDesvio|DOUT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Display5|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGC|DOUT\ : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ALT_INV_DATA_RD[5]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ALT_INV_DATA_RD[4]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_saida[5]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~144_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~143_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \Display5|REG|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~183_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal3~5_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \CPU|REGC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|LogicaDesvio|ALT_INV_DOUT\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \CPU|LogicaDesvio|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|FF_Zero|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Display5|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display4|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~102_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_SW <= SW;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
testeinA <= ww_testeinA;
testeinB <= ww_testeinB;
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
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\RAM|ALT_INV_ram~70_q\ <= NOT \RAM|ram~70_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~172_combout\ <= NOT \RAM|ram~172_combout\;
\RAM|ALT_INV_ram~118_q\ <= NOT \RAM|ram~118_q\;
\RAM|ALT_INV_ram~86_q\ <= NOT \RAM|ram~86_q\;
\RAM|ALT_INV_ram~54_q\ <= NOT \RAM|ram~54_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~171_combout\ <= NOT \RAM|ram~171_combout\;
\RAM|ALT_INV_ram~170_combout\ <= NOT \RAM|ram~170_combout\;
\RAM|ALT_INV_ram~133_q\ <= NOT \RAM|ram~133_q\;
\RAM|ALT_INV_ram~117_q\ <= NOT \RAM|ram~117_q\;
\RAM|ALT_INV_ram~169_combout\ <= NOT \RAM|ram~169_combout\;
\RAM|ALT_INV_ram~101_q\ <= NOT \RAM|ram~101_q\;
\RAM|ALT_INV_ram~85_q\ <= NOT \RAM|ram~85_q\;
\RAM|ALT_INV_ram~168_combout\ <= NOT \RAM|ram~168_combout\;
\RAM|ALT_INV_ram~69_q\ <= NOT \RAM|ram~69_q\;
\RAM|ALT_INV_ram~53_q\ <= NOT \RAM|ram~53_q\;
\RAM|ALT_INV_ram~167_combout\ <= NOT \RAM|ram~167_combout\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\ALT_INV_DATA_RD[5]~1_combout\ <= NOT \DATA_RD[5]~1_combout\;
\RAM|ALT_INV_ram~166_combout\ <= NOT \RAM|ram~166_combout\;
\RAM|ALT_INV_ram~165_combout\ <= NOT \RAM|ram~165_combout\;
\RAM|ALT_INV_ram~132_q\ <= NOT \RAM|ram~132_q\;
\RAM|ALT_INV_ram~100_q\ <= NOT \RAM|ram~100_q\;
\RAM|ALT_INV_ram~68_q\ <= NOT \RAM|ram~68_q\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~164_combout\ <= NOT \RAM|ram~164_combout\;
\RAM|ALT_INV_ram~116_q\ <= NOT \RAM|ram~116_q\;
\RAM|ALT_INV_ram~84_q\ <= NOT \RAM|ram~84_q\;
\RAM|ALT_INV_ram~52_q\ <= NOT \RAM|ram~52_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\ALT_INV_DATA_RD[4]~0_combout\ <= NOT \DATA_RD[4]~0_combout\;
\RAM|ALT_INV_ram~163_combout\ <= NOT \RAM|ram~163_combout\;
\RAM|ALT_INV_ram~162_combout\ <= NOT \RAM|ram~162_combout\;
\RAM|ALT_INV_ram~131_q\ <= NOT \RAM|ram~131_q\;
\RAM|ALT_INV_ram~115_q\ <= NOT \RAM|ram~115_q\;
\RAM|ALT_INV_ram~161_combout\ <= NOT \RAM|ram~161_combout\;
\RAM|ALT_INV_ram~99_q\ <= NOT \RAM|ram~99_q\;
\RAM|ALT_INV_ram~83_q\ <= NOT \RAM|ram~83_q\;
\RAM|ALT_INV_ram~160_combout\ <= NOT \RAM|ram~160_combout\;
\RAM|ALT_INV_ram~67_q\ <= NOT \RAM|ram~67_q\;
\RAM|ALT_INV_ram~51_q\ <= NOT \RAM|ram~51_q\;
\RAM|ALT_INV_ram~159_combout\ <= NOT \RAM|ram~159_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~3_combout\;
\RAM|ALT_INV_ram~158_combout\ <= NOT \RAM|ram~158_combout\;
\RAM|ALT_INV_ram~157_combout\ <= NOT \RAM|ram~157_combout\;
\RAM|ALT_INV_ram~130_q\ <= NOT \RAM|ram~130_q\;
\RAM|ALT_INV_ram~98_q\ <= NOT \RAM|ram~98_q\;
\RAM|ALT_INV_ram~66_q\ <= NOT \RAM|ram~66_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~156_combout\ <= NOT \RAM|ram~156_combout\;
\RAM|ALT_INV_ram~114_q\ <= NOT \RAM|ram~114_q\;
\RAM|ALT_INV_ram~82_q\ <= NOT \RAM|ram~82_q\;
\RAM|ALT_INV_ram~50_q\ <= NOT \RAM|ram~50_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~2_combout\;
\RAM|ALT_INV_ram~155_combout\ <= NOT \RAM|ram~155_combout\;
\RAM|ALT_INV_ram~154_combout\ <= NOT \RAM|ram~154_combout\;
\RAM|ALT_INV_ram~129_q\ <= NOT \RAM|ram~129_q\;
\RAM|ALT_INV_ram~113_q\ <= NOT \RAM|ram~113_q\;
\RAM|ALT_INV_ram~153_combout\ <= NOT \RAM|ram~153_combout\;
\RAM|ALT_INV_ram~97_q\ <= NOT \RAM|ram~97_q\;
\RAM|ALT_INV_ram~81_q\ <= NOT \RAM|ram~81_q\;
\RAM|ALT_INV_ram~152_combout\ <= NOT \RAM|ram~152_combout\;
\RAM|ALT_INV_ram~65_q\ <= NOT \RAM|ram~65_q\;
\RAM|ALT_INV_ram~49_q\ <= NOT \RAM|ram~49_q\;
\RAM|ALT_INV_ram~151_combout\ <= NOT \RAM|ram~151_combout\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~1_combout\;
\CPU|decoder|ALT_INV_saida[1]~1_combout\ <= NOT \CPU|decoder|saida[1]~1_combout\;
\CPU|decoder|ALT_INV_saida[5]~0_combout\ <= NOT \CPU|decoder|saida[5]~0_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\RAM|ALT_INV_ram~150_combout\ <= NOT \RAM|ram~150_combout\;
\RAM|ALT_INV_ram~149_combout\ <= NOT \RAM|ram~149_combout\;
\RAM|ALT_INV_ram~128_q\ <= NOT \RAM|ram~128_q\;
\RAM|ALT_INV_ram~96_q\ <= NOT \RAM|ram~96_q\;
\RAM|ALT_INV_ram~64_q\ <= NOT \RAM|ram~64_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~148_combout\ <= NOT \RAM|ram~148_combout\;
\RAM|ALT_INV_ram~112_q\ <= NOT \RAM|ram~112_q\;
\RAM|ALT_INV_ram~80_q\ <= NOT \RAM|ram~80_q\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\RAM|ALT_INV_ram~147_combout\ <= NOT \RAM|ram~147_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\RAM|ALT_INV_ram~146_combout\ <= NOT \RAM|ram~146_combout\;
\RAM|ALT_INV_ram~127_q\ <= NOT \RAM|ram~127_q\;
\RAM|ALT_INV_ram~111_q\ <= NOT \RAM|ram~111_q\;
\RAM|ALT_INV_ram~145_combout\ <= NOT \RAM|ram~145_combout\;
\RAM|ALT_INV_ram~95_q\ <= NOT \RAM|ram~95_q\;
\RAM|ALT_INV_ram~79_q\ <= NOT \RAM|ram~79_q\;
\RAM|ALT_INV_ram~144_combout\ <= NOT \RAM|ram~144_combout\;
\RAM|ALT_INV_ram~63_q\ <= NOT \RAM|ram~63_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~143_combout\ <= NOT \RAM|ram~143_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\CPU|decoder|ALT_INV_Equal11~0_combout\ <= NOT \CPU|decoder|Equal11~0_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
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
\CPU|FF_Zero|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \CPU|FF_Zero|DOUT~DUPLICATE_q\;
\Display5|REG|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \Display5|REG|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\RAM|ALT_INV_ram~183_combout\ <= NOT \RAM|ram~183_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\CPU|ULA1|ALT_INV_Equal3~5_combout\ <= NOT \CPU|ULA1|Equal3~5_combout\;
\CPU|decoder|ALT_INV_Equal11~1_combout\ <= NOT \CPU|decoder|Equal11~1_combout\;
\CPU|ULA1|ALT_INV_Equal3~3_combout\ <= NOT \CPU|ULA1|Equal3~3_combout\;
\CPU|ULA1|ALT_INV_Equal3~2_combout\ <= NOT \CPU|ULA1|Equal3~2_combout\;
\CPU|ULA1|ALT_INV_Equal3~1_combout\ <= NOT \CPU|ULA1|Equal3~1_combout\;
\CPU|ULA1|ALT_INV_Equal3~0_combout\ <= NOT \CPU|ULA1|Equal3~0_combout\;
\CPU|ULA1|ALT_INV_saida[3]~3_combout\ <= NOT \CPU|ULA1|saida[3]~3_combout\;
\CPU|ULA1|ALT_INV_saida[2]~2_combout\ <= NOT \CPU|ULA1|saida[2]~2_combout\;
\CPU|ULA1|ALT_INV_saida[1]~1_combout\ <= NOT \CPU|ULA1|saida[1]~1_combout\;
\CPU|decoder|ALT_INV_saida~3_combout\ <= NOT \CPU|decoder|saida~3_combout\;
\CPU|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|ULA1|saida[0]~0_combout\;
\CPU|decoder|ALT_INV_saida~2_combout\ <= NOT \CPU|decoder|saida~2_combout\;
\CPU|REGC|ALT_INV_DOUT\(8) <= NOT \CPU|REGC|DOUT\(8);
\CPU|REGC|ALT_INV_DOUT\(7) <= NOT \CPU|REGC|DOUT\(7);
\CPU|REGC|ALT_INV_DOUT\(6) <= NOT \CPU|REGC|DOUT\(6);
\CPU|REGC|ALT_INV_DOUT\(5) <= NOT \CPU|REGC|DOUT\(5);
\CPU|REGC|ALT_INV_DOUT\(4) <= NOT \CPU|REGC|DOUT\(4);
\CPU|REGC|ALT_INV_DOUT\(3) <= NOT \CPU|REGC|DOUT\(3);
\CPU|REGC|ALT_INV_DOUT\(2) <= NOT \CPU|REGC|DOUT\(2);
\CPU|REGC|ALT_INV_DOUT\(1) <= NOT \CPU|REGC|DOUT\(1);
\CPU|LogicaDesvio|ALT_INV_DOUT\(1) <= NOT \CPU|LogicaDesvio|DOUT\(1);
\CPU|REGC|ALT_INV_DOUT\(0) <= NOT \CPU|REGC|DOUT\(0);
\CPU|LogicaDesvio|ALT_INV_DOUT[0]~0_combout\ <= NOT \CPU|LogicaDesvio|DOUT[0]~0_combout\;
\CPU|FF_Zero|ALT_INV_DOUT~q\ <= NOT \CPU|FF_Zero|DOUT~q\;
\Display5|REG|ALT_INV_DOUT\(2) <= NOT \Display5|REG|DOUT\(2);
\Display5|REG|ALT_INV_DOUT\(1) <= NOT \Display5|REG|DOUT\(1);
\Display5|REG|ALT_INV_DOUT\(3) <= NOT \Display5|REG|DOUT\(3);
\Display5|REG|ALT_INV_DOUT\(0) <= NOT \Display5|REG|DOUT\(0);
\Display4|REG|ALT_INV_DOUT\(2) <= NOT \Display4|REG|DOUT\(2);
\Display4|REG|ALT_INV_DOUT\(1) <= NOT \Display4|REG|DOUT\(1);
\Display4|REG|ALT_INV_DOUT\(3) <= NOT \Display4|REG|DOUT\(3);
\Display4|REG|ALT_INV_DOUT\(0) <= NOT \Display4|REG|DOUT\(0);
\RAM|ALT_INV_ram~174_combout\ <= NOT \RAM|ram~174_combout\;
\RAM|ALT_INV_ram~173_combout\ <= NOT \RAM|ram~173_combout\;
\RAM|ALT_INV_ram~134_q\ <= NOT \RAM|ram~134_q\;
\RAM|ALT_INV_ram~102_q\ <= NOT \RAM|ram~102_q\;

-- Location: IOOBUF_X0_Y18_N79
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
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
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
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
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
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
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
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
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
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
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
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
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
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
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
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
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
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
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
	o => ww_LEDR(9));

-- Location: IOOBUF_X11_Y0_N19
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X54_Y15_N39
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
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X38_Y45_N53
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
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X42_Y45_N53
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X42_Y45_N19
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
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X54_Y15_N22
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X54_Y18_N62
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X54_Y15_N5
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X43_Y45_N19
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
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X43_Y45_N36
\testeinA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_testeinA(0));

-- Location: IOOBUF_X54_Y14_N79
\testeinA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_testeinA(1));

-- Location: IOOBUF_X43_Y45_N53
\testeinA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_testeinA(2));

-- Location: IOOBUF_X44_Y45_N19
\testeinA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_testeinA(3));

-- Location: IOOBUF_X54_Y14_N45
\testeinA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_testeinA(4));

-- Location: IOOBUF_X54_Y14_N62
\testeinA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_testeinA(5));

-- Location: IOOBUF_X12_Y0_N19
\testeinA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_testeinA(6));

-- Location: IOOBUF_X43_Y45_N2
\testeinA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_testeinA(7));

-- Location: IOOBUF_X54_Y18_N45
\testeinB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX1|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_testeinB(0));

-- Location: IOOBUF_X44_Y45_N53
\testeinB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX1|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_testeinB(1));

-- Location: IOOBUF_X44_Y45_N2
\testeinB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX1|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_testeinB(2));

-- Location: IOOBUF_X54_Y15_N56
\testeinB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX1|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_testeinB(3));

-- Location: IOOBUF_X54_Y16_N5
\testeinB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_RD[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_testeinB(4));

-- Location: IOOBUF_X54_Y17_N56
\testeinB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_RD[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_testeinB(5));

-- Location: IOOBUF_X54_Y14_N96
\testeinB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_RD[6]~2_combout\,
	devoe => ww_devoe,
	o => ww_testeinB(6));

-- Location: IOOBUF_X54_Y17_N39
\testeinB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_RD[7]~3_combout\,
	devoe => ww_devoe,
	o => ww_testeinB(7));

-- Location: IOOBUF_X52_Y0_N53
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
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
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
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
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
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
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
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
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
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
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
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
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
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
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
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
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
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
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
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
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
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
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
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
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
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
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
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display2|REG|DOUT\(0),
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
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
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
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
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display2|REG|DOUT\(0),
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display2|REG|DOUT\(0),
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display2|REG|DOUT\(0),
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
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
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
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
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
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
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
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
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
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
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
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
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
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
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
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
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
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
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
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
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
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
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
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
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
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
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
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
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
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
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
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
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
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
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
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
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
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
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
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
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
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
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
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
	o => ww_HEX5(6));

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G7
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: FF_X43_Y3_N55
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MUX2|saida_MUX[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N30
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: LABCELL_X41_Y3_N33
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: FF_X43_Y3_N44
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X41_Y3_N51
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: LABCELL_X41_Y3_N54
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

-- Location: FF_X42_Y3_N58
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: MLABCELL_X42_Y3_N48
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000011110000001100001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

-- Location: FF_X42_Y3_N37
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: MLABCELL_X42_Y3_N15
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((\CPU|PC|DOUT\(0)))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000001010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~4_combout\);

-- Location: MLABCELL_X42_Y3_N42
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # (\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110011001111000011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X43_Y5_N6
\CPU|decoder|saida[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida[8]~5_combout\ = ( !\ROM|memROM~3_combout\ & ( (\ROM|memROM~6_combout\ & (!\ROM|memROM~5_combout\ & (\ROM|memROM~4_combout\ & \ROM|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	combout => \CPU|decoder|saida[8]~5_combout\);

-- Location: FF_X41_Y3_N55
\CPU|REGC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|decoder|saida[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGC|DOUT\(8));

-- Location: LABCELL_X43_Y3_N45
\CPU|MUX2|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~8_combout\ = ( \CPU|LogicaDesvio|DOUT\(1) & ( (\CPU|REGC|DOUT\(8) & !\CPU|LogicaDesvio|DOUT[0]~0_combout\) ) ) # ( !\CPU|LogicaDesvio|DOUT\(1) & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & \CPU|incrementaPC|Add0~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGC|ALT_INV_DOUT\(8),
	datac => \CPU|LogicaDesvio|ALT_INV_DOUT[0]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	dataf => \CPU|LogicaDesvio|ALT_INV_DOUT\(1),
	combout => \CPU|MUX2|saida_MUX[8]~8_combout\);

-- Location: FF_X43_Y3_N47
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: MLABCELL_X42_Y3_N45
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~14_combout\);

-- Location: LABCELL_X43_Y3_N57
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~14_combout\ & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \ROM|memROM~7_combout\);

-- Location: FF_X41_Y3_N35
\CPU|REGC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|decoder|saida[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGC|DOUT\(1));

-- Location: MLABCELL_X42_Y3_N54
\CPU|MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~1_combout\ = ( \CPU|REGC|DOUT\(1) & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & (((\CPU|incrementaPC|Add0~5_sumout\)) # (\CPU|LogicaDesvio|DOUT\(1)))) # (\CPU|LogicaDesvio|DOUT[0]~0_combout\ & (((\ROM|memROM~7_combout\)))) ) ) # ( 
-- !\CPU|REGC|DOUT\(1) & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & (!\CPU|LogicaDesvio|DOUT\(1) & (\CPU|incrementaPC|Add0~5_sumout\))) # (\CPU|LogicaDesvio|DOUT[0]~0_combout\ & (((\ROM|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LogicaDesvio|ALT_INV_DOUT\(1),
	datab => \CPU|LogicaDesvio|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \CPU|REGC|ALT_INV_DOUT\(1),
	combout => \CPU|MUX2|saida_MUX[1]~1_combout\);

-- Location: FF_X42_Y3_N56
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N36
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: LABCELL_X41_Y3_N39
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: FF_X41_Y3_N40
\CPU|REGC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|decoder|saida[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGC|DOUT\(3));

-- Location: FF_X42_Y3_N55
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: MLABCELL_X42_Y3_N33
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000001100000001000000110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~9_combout\);

-- Location: MLABCELL_X42_Y3_N57
\CPU|MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~3_combout\ = ( \ROM|memROM~9_combout\ & ( ((!\CPU|LogicaDesvio|DOUT\(1) & ((\CPU|incrementaPC|Add0~13_sumout\))) # (\CPU|LogicaDesvio|DOUT\(1) & (\CPU|REGC|DOUT\(3)))) # (\CPU|LogicaDesvio|DOUT[0]~0_combout\) ) ) # ( 
-- !\ROM|memROM~9_combout\ & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & ((!\CPU|LogicaDesvio|DOUT\(1) & ((\CPU|incrementaPC|Add0~13_sumout\))) # (\CPU|LogicaDesvio|DOUT\(1) & (\CPU|REGC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LogicaDesvio|ALT_INV_DOUT\(1),
	datab => \CPU|LogicaDesvio|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|REGC|ALT_INV_DOUT\(3),
	datad => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|MUX2|saida_MUX[3]~3_combout\);

-- Location: FF_X42_Y3_N59
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N42
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: FF_X41_Y3_N43
\CPU|REGC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|decoder|saida[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGC|DOUT\(4));

-- Location: LABCELL_X43_Y3_N39
\CPU|MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~4_combout\ = ( \CPU|LogicaDesvio|DOUT\(1) & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & \CPU|REGC|DOUT\(4)) ) ) # ( !\CPU|LogicaDesvio|DOUT\(1) & ( (\CPU|incrementaPC|Add0~17_sumout\ & !\CPU|LogicaDesvio|DOUT[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	datac => \CPU|LogicaDesvio|ALT_INV_DOUT[0]~0_combout\,
	datad => \CPU|REGC|ALT_INV_DOUT\(4),
	dataf => \CPU|LogicaDesvio|ALT_INV_DOUT\(1),
	combout => \CPU|MUX2|saida_MUX[4]~4_combout\);

-- Location: FF_X43_Y3_N41
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X41_Y3_N45
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: FF_X41_Y3_N46
\CPU|REGC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|decoder|saida[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGC|DOUT\(5));

-- Location: LABCELL_X43_Y3_N30
\CPU|MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~5_combout\ = ( \CPU|LogicaDesvio|DOUT\(1) & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & \CPU|REGC|DOUT\(5)) ) ) # ( !\CPU|LogicaDesvio|DOUT\(1) & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & \CPU|incrementaPC|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|LogicaDesvio|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	datad => \CPU|REGC|ALT_INV_DOUT\(5),
	dataf => \CPU|LogicaDesvio|ALT_INV_DOUT\(1),
	combout => \CPU|MUX2|saida_MUX[5]~5_combout\);

-- Location: FF_X43_Y3_N31
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N48
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: FF_X41_Y3_N49
\CPU|REGC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|decoder|saida[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGC|DOUT\(6));

-- Location: LABCELL_X43_Y3_N42
\CPU|MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~6_combout\ = ( \CPU|LogicaDesvio|DOUT\(1) & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & \CPU|REGC|DOUT\(6)) ) ) # ( !\CPU|LogicaDesvio|DOUT\(1) & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & \CPU|incrementaPC|Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|LogicaDesvio|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	datad => \CPU|REGC|ALT_INV_DOUT\(6),
	dataf => \CPU|LogicaDesvio|ALT_INV_DOUT\(1),
	combout => \CPU|MUX2|saida_MUX[6]~6_combout\);

-- Location: FF_X43_Y3_N43
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X41_Y3_N53
\CPU|REGC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|decoder|saida[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGC|DOUT\(7));

-- Location: MLABCELL_X42_Y3_N51
\CPU|MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~7_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & ((!\CPU|LogicaDesvio|DOUT\(1)) # (\CPU|REGC|DOUT\(7)))) ) ) # ( !\CPU|incrementaPC|Add0~29_sumout\ & ( (\CPU|REGC|DOUT\(7) & 
-- (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & \CPU|LogicaDesvio|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGC|ALT_INV_DOUT\(7),
	datac => \CPU|LogicaDesvio|ALT_INV_DOUT[0]~0_combout\,
	datad => \CPU|LogicaDesvio|ALT_INV_DOUT\(1),
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX2|saida_MUX[7]~7_combout\);

-- Location: FF_X43_Y3_N56
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MUX2|saida_MUX[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: FF_X43_Y3_N32
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X43_Y3_N51
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~0_combout\);

-- Location: MLABCELL_X42_Y3_N30
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~10_combout\);

-- Location: MLABCELL_X42_Y4_N33
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (\ROM|memROM~6_combout\ & \ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X43_Y3_N48
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~11_combout\);

-- Location: MLABCELL_X42_Y4_N51
\CPU|decoder|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida[5]~0_combout\ = ( \ROM|memROM~10_combout\ & ( (!\ROM|memROM~13_combout\ & (!\ROM|memROM~12_combout\ & \ROM|memROM~11_combout\)) ) ) # ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~13_combout\ & (\ROM|memROM~12_combout\ & 
-- !\ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|decoder|saida[5]~0_combout\);

-- Location: MLABCELL_X42_Y4_N12
\CPU|decoder|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida[1]~1_combout\ = ( \ROM|memROM~11_combout\ & ( \CPU|decoder|saida[5]~0_combout\ ) ) # ( !\ROM|memROM~11_combout\ & ( \CPU|decoder|saida[5]~0_combout\ & ( ((\ROM|memROM~12_combout\) # (\ROM|memROM~10_combout\)) # (\ROM|memROM~13_combout\) 
-- ) ) ) # ( \ROM|memROM~11_combout\ & ( !\CPU|decoder|saida[5]~0_combout\ & ( (!\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~12_combout\)) ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\CPU|decoder|saida[5]~0_combout\ & ( 
-- (\ROM|memROM~10_combout\ & !\ROM|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000101000000000000001011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	combout => \CPU|decoder|saida[1]~1_combout\);

-- Location: LABCELL_X43_Y3_N33
\CPU|decoder|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida~3_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ $ (!\ROM|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|decoder|saida~3_combout\);

-- Location: LABCELL_X43_Y3_N36
\CPU|decoder|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida~2_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~13_combout\)) ) ) # ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~10_combout\ & 
-- !\ROM|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|decoder|saida~2_combout\);

-- Location: MLABCELL_X42_Y3_N3
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((\CPU|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ $ 
-- (!\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X43_Y3_N9
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X41_Y3_N15
\RAM|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~183_combout\ = ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~183_combout\);

-- Location: MLABCELL_X42_Y3_N18
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3))) # 
-- (\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010001100110100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X41_Y4_N33
\RAM|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~178_combout\ = ( \RAM|ram~183_combout\ & ( \ROM|memROM~8_combout\ & ( (!\ROM|memROM~9_combout\ & \ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM|ALT_INV_ram~183_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~178_combout\);

-- Location: FF_X42_Y4_N41
\RAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~70_q\);

-- Location: LABCELL_X43_Y3_N12
\RAM|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~182_combout\ = ( \ROM|memROM~8_combout\ & ( (\ROM|memROM~9_combout\ & (\ROM|memROM~7_combout\ & \RAM|ram~183_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~183_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~182_combout\);

-- Location: FF_X42_Y4_N14
\RAM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~134_q\);

-- Location: LABCELL_X43_Y5_N18
\RAM|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~176_combout\ = ( !\ROM|memROM~8_combout\ & ( \RAM|ram~183_combout\ & ( (!\ROM|memROM~9_combout\ & \ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~183_combout\,
	combout => \RAM|ram~176_combout\);

-- Location: FF_X42_Y4_N47
\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

-- Location: LABCELL_X44_Y3_N15
\RAM|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~180_combout\ = ( \RAM|ram~183_combout\ & ( (!\ROM|memROM~8_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~183_combout\,
	combout => \RAM|ram~180_combout\);

-- Location: FF_X44_Y3_N34
\RAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~102_q\);

-- Location: LABCELL_X41_Y4_N36
\RAM|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~173_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~134_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~70_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( 
-- \RAM|ram~102_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~70_q\,
	datab => \RAM|ALT_INV_ram~134_q\,
	datac => \RAM|ALT_INV_ram~38_q\,
	datad => \RAM|ALT_INV_ram~102_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~173_combout\);

-- Location: LABCELL_X41_Y4_N48
\RAM|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~175_combout\ = ( \RAM|ram~183_combout\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~9_combout\ & !\ROM|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_ram~183_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~175_combout\);

-- Location: FF_X44_Y3_N7
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: LABCELL_X41_Y3_N0
\RAM|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~177_combout\ = ( \ROM|memROM~8_combout\ & ( \RAM|ram~183_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~183_combout\,
	combout => \RAM|ram~177_combout\);

-- Location: FF_X42_Y3_N11
\RAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~54_q\);

-- Location: LABCELL_X44_Y3_N39
\RAM|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~179_combout\ = ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~183_combout\ & !\ROM|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~183_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~179_combout\);

-- Location: FF_X44_Y3_N55
\RAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~86_q\);

-- Location: LABCELL_X44_Y3_N12
\RAM|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~181_combout\ = ( \RAM|ram~183_combout\ & ( (\ROM|memROM~8_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~183_combout\,
	combout => \RAM|ram~181_combout\);

-- Location: FF_X42_Y3_N26
\RAM|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~118_q\);

-- Location: MLABCELL_X42_Y3_N24
\RAM|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~172_combout\ = ( \RAM|ram~118_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM|ram~86_q\) # (\ROM|memROM~8_combout\) ) ) ) # ( !\RAM|ram~118_q\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~8_combout\ & \RAM|ram~86_q\) ) ) ) # ( \RAM|ram~118_q\ & ( 
-- !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~8_combout\ & (\RAM|ram~22_q\)) # (\ROM|memROM~8_combout\ & ((\RAM|ram~54_q\))) ) ) ) # ( !\RAM|ram~118_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~8_combout\ & (\RAM|ram~22_q\)) # (\ROM|memROM~8_combout\ & 
-- ((\RAM|ram~54_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datab => \RAM|ALT_INV_ram~54_q\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~86_q\,
	datae => \RAM|ALT_INV_ram~118_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~172_combout\);

-- Location: LABCELL_X41_Y4_N42
\RAM|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~174_combout\ = ( \RAM|ram~173_combout\ & ( \RAM|ram~172_combout\ & ( !\ROM|memROM~2_combout\ ) ) ) # ( !\RAM|ram~173_combout\ & ( \RAM|ram~172_combout\ & ( (!\ROM|memROM~2_combout\ & !\ROM|memROM~7_combout\) ) ) ) # ( \RAM|ram~173_combout\ & ( 
-- !\RAM|ram~172_combout\ & ( (!\ROM|memROM~2_combout\ & \ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000011110000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM|ALT_INV_ram~173_combout\,
	dataf => \RAM|ALT_INV_ram~172_combout\,
	combout => \RAM|ram~174_combout\);

-- Location: LABCELL_X44_Y4_N6
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \RAM|ram~174_combout\ & ( (\CPU|decoder|saida[1]~1_combout\ & ((!\CPU|decoder|saida~2_combout\) # (\CPU|REGA|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	datac => \CPU|decoder|ALT_INV_saida~2_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(7),
	dataf => \RAM|ALT_INV_ram~174_combout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: MLABCELL_X42_Y4_N30
\CPU|decoder|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida[5]~4_combout\ = ( \ROM|memROM~13_combout\ & ( \CPU|decoder|saida[5]~0_combout\ ) ) # ( !\ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & ((\ROM|memROM~11_combout\))) # (\ROM|memROM~12_combout\ & 
-- (\CPU|decoder|saida[5]~0_combout\)))) # (\ROM|memROM~10_combout\ & (((!\ROM|memROM~11_combout\)) # (\CPU|decoder|saida[5]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111010101000111111101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[5]~0_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|decoder|saida[5]~4_combout\);

-- Location: FF_X44_Y4_N56
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|decoder|saida~3_combout\,
	ena => \CPU|decoder|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: FF_X41_Y3_N26
\RAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~69_q\);

-- Location: FF_X41_Y3_N23
\RAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~53_q\);

-- Location: LABCELL_X41_Y3_N21
\RAM|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~168_combout\ = ( \RAM|ram~53_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\) # (\RAM|ram~69_q\) ) ) ) # ( !\RAM|ram~53_q\ & ( !\ROM|memROM~2_combout\ & ( (\RAM|ram~69_q\ & \ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~69_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM|ALT_INV_ram~53_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~168_combout\);

-- Location: FF_X44_Y3_N58
\RAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~85_q\);

-- Location: FF_X44_Y3_N53
\RAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~101_q\);

-- Location: LABCELL_X44_Y3_N51
\RAM|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~169_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~85_q\)) # (\ROM|memROM~7_combout\ & ((\RAM|ram~101_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~85_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~101_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~169_combout\);

-- Location: FF_X42_Y4_N2
\RAM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~133_q\);

-- Location: FF_X43_Y4_N1
\RAM|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~117_q\);

-- Location: MLABCELL_X42_Y4_N36
\RAM|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~170_combout\ = ( \RAM|ram~117_q\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~7_combout\) # (\RAM|ram~133_q\))) ) ) # ( !\RAM|ram~117_q\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~7_combout\ & \RAM|ram~133_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~133_q\,
	dataf => \RAM|ALT_INV_ram~117_q\,
	combout => \RAM|ram~170_combout\);

-- Location: FF_X42_Y4_N11
\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

-- Location: FF_X41_Y4_N20
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: LABCELL_X41_Y4_N18
\RAM|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~167_combout\ = ( \RAM|ram~21_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\) # (\RAM|ram~37_q\) ) ) ) # ( !\RAM|ram~21_q\ & ( !\ROM|memROM~2_combout\ & ( (\RAM|ram~37_q\ & \ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~37_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM|ALT_INV_ram~21_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~167_combout\);

-- Location: MLABCELL_X42_Y4_N24
\RAM|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~171_combout\ = ( \RAM|ram~170_combout\ & ( \RAM|ram~167_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~9_combout\) # ((\RAM|ram~169_combout\)))) # (\ROM|memROM~8_combout\ & (((\RAM|ram~168_combout\)) # (\ROM|memROM~9_combout\))) ) ) ) # ( 
-- !\RAM|ram~170_combout\ & ( \RAM|ram~167_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~9_combout\) # ((\RAM|ram~169_combout\)))) # (\ROM|memROM~8_combout\ & (!\ROM|memROM~9_combout\ & (\RAM|ram~168_combout\))) ) ) ) # ( \RAM|ram~170_combout\ & ( 
-- !\RAM|ram~167_combout\ & ( (!\ROM|memROM~8_combout\ & (\ROM|memROM~9_combout\ & ((\RAM|ram~169_combout\)))) # (\ROM|memROM~8_combout\ & (((\RAM|ram~168_combout\)) # (\ROM|memROM~9_combout\))) ) ) ) # ( !\RAM|ram~170_combout\ & ( !\RAM|ram~167_combout\ & ( 
-- (!\ROM|memROM~8_combout\ & (\ROM|memROM~9_combout\ & ((\RAM|ram~169_combout\)))) # (\ROM|memROM~8_combout\ & (!\ROM|memROM~9_combout\ & (\RAM|ram~168_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~168_combout\,
	datad => \RAM|ALT_INV_ram~169_combout\,
	datae => \RAM|ALT_INV_ram~170_combout\,
	dataf => \RAM|ALT_INV_ram~167_combout\,
	combout => \RAM|ram~171_combout\);

-- Location: FF_X42_Y4_N53
\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

-- Location: FF_X43_Y4_N37
\RAM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~132_q\);

-- Location: FF_X45_Y4_N10
\RAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~100_q\);

-- Location: FF_X41_Y4_N2
\RAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~68_q\);

-- Location: LABCELL_X41_Y4_N0
\RAM|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~165_combout\ = ( \RAM|ram~68_q\ & ( \ROM|memROM~8_combout\ & ( (!\ROM|memROM~9_combout\) # (\RAM|ram~132_q\) ) ) ) # ( !\RAM|ram~68_q\ & ( \ROM|memROM~8_combout\ & ( (\RAM|ram~132_q\ & \ROM|memROM~9_combout\) ) ) ) # ( \RAM|ram~68_q\ & ( 
-- !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~9_combout\ & (\RAM|ram~36_q\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~100_q\))) ) ) ) # ( !\RAM|ram~68_q\ & ( !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~9_combout\ & (\RAM|ram~36_q\)) # (\ROM|memROM~9_combout\ & 
-- ((\RAM|ram~100_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~36_q\,
	datab => \RAM|ALT_INV_ram~132_q\,
	datac => \RAM|ALT_INV_ram~100_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM|ALT_INV_ram~68_q\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~165_combout\);

-- Location: FF_X41_Y4_N29
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: FF_X43_Y4_N22
\RAM|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~116_q\);

-- Location: FF_X43_Y4_N35
\RAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~52_q\);

-- Location: FF_X45_Y4_N52
\RAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~84_q\);

-- Location: LABCELL_X41_Y4_N6
\RAM|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~164_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~116_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~52_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~84_q\ 
-- ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datab => \RAM|ALT_INV_ram~116_q\,
	datac => \RAM|ALT_INV_ram~52_q\,
	datad => \RAM|ALT_INV_ram~84_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~164_combout\);

-- Location: LABCELL_X41_Y4_N27
\RAM|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~166_combout\ = ( \RAM|ram~165_combout\ & ( \RAM|ram~164_combout\ & ( !\ROM|memROM~2_combout\ ) ) ) # ( !\RAM|ram~165_combout\ & ( \RAM|ram~164_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~2_combout\) ) ) ) # ( \RAM|ram~165_combout\ & ( 
-- !\RAM|ram~164_combout\ & ( (\ROM|memROM~7_combout\ & !\ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011110000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~165_combout\,
	dataf => \RAM|ALT_INV_ram~164_combout\,
	combout => \RAM|ram~166_combout\);

-- Location: MLABCELL_X42_Y3_N6
\CPU|decoder|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal11~0_combout\ = ( !\ROM|memROM~4_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~5_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|decoder|Equal11~0_combout\);

-- Location: LABCELL_X44_Y4_N30
\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( (!\CPU|decoder|saida~3_combout\ & !\CPU|decoder|saida~2_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \CPU|decoder|ALT_INV_saida~2_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

-- Location: LABCELL_X44_Y4_N33
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REGA|DOUT\(0) ) + ( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((\CPU|decoder|saida~3_combout\) # (\CPU|decoder|saida~2_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REGA|DOUT\(0) ) + ( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((\CPU|decoder|saida~3_combout\) # (\CPU|decoder|saida~2_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110000111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: LABCELL_X43_Y4_N12
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \RAM|ram~147_combout\ & ( (!\CPU|decoder|Equal11~0_combout\ & (((!\CPU|decoder|saida~2_combout\) # (\CPU|REGA|DOUT\(0))))) # (\CPU|decoder|Equal11~0_combout\ & (\ROM|memROM~2_combout\ & ((!\CPU|decoder|saida~2_combout\) # 
-- (\CPU|REGA|DOUT\(0))))) ) ) # ( !\RAM|ram~147_combout\ & ( (\CPU|decoder|Equal11~0_combout\ & (\ROM|memROM~2_combout\ & ((!\CPU|decoder|saida~2_combout\) # (\CPU|REGA|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000001000100010000000110111011000010111011101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT\(0),
	datad => \CPU|decoder|ALT_INV_saida~2_combout\,
	dataf => \RAM|ALT_INV_ram~147_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: FF_X44_Y4_N35
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|decoder|saida~3_combout\,
	ena => \CPU|decoder|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: FF_X43_Y3_N26
\RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~95_q\);

-- Location: FF_X44_Y3_N26
\RAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~79_q\);

-- Location: LABCELL_X43_Y3_N27
\RAM|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~145_combout\ = ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~95_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~95_q\,
	datac => \RAM|ALT_INV_ram~79_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~145_combout\);

-- Location: FF_X43_Y4_N50
\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

-- Location: FF_X42_Y4_N37
\RAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~63_q\);

-- Location: MLABCELL_X42_Y4_N0
\RAM|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~144_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~47_q\)) # (\ROM|memROM~7_combout\ & ((\RAM|ram~63_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~47_q\,
	datac => \RAM|ALT_INV_ram~63_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~144_combout\);

-- Location: FF_X43_Y4_N5
\RAM|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~111_q\);

-- Location: FF_X43_Y4_N41
\RAM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~127_q\);

-- Location: LABCELL_X43_Y4_N57
\RAM|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~146_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~111_q\)) # (\ROM|memROM~7_combout\ & ((\RAM|ram~127_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~111_q\,
	datac => \RAM|ALT_INV_ram~127_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~146_combout\);

-- Location: FF_X42_Y4_N44
\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: FF_X44_Y4_N16
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: MLABCELL_X42_Y4_N39
\RAM|ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~143_combout\ = ( \RAM|ram~15_q\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~7_combout\) # (\RAM|ram~31_q\))) ) ) # ( !\RAM|ram~15_q\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~7_combout\ & \RAM|ram~31_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~31_q\,
	dataf => \RAM|ALT_INV_ram~15_q\,
	combout => \RAM|ram~143_combout\);

-- Location: LABCELL_X43_Y4_N51
\RAM|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~147_combout\ = ( \RAM|ram~146_combout\ & ( \RAM|ram~143_combout\ & ( (!\ROM|memROM~9_combout\ & (((!\ROM|memROM~8_combout\) # (\RAM|ram~144_combout\)))) # (\ROM|memROM~9_combout\ & (((\ROM|memROM~8_combout\)) # (\RAM|ram~145_combout\))) ) ) ) # ( 
-- !\RAM|ram~146_combout\ & ( \RAM|ram~143_combout\ & ( (!\ROM|memROM~9_combout\ & (((!\ROM|memROM~8_combout\) # (\RAM|ram~144_combout\)))) # (\ROM|memROM~9_combout\ & (\RAM|ram~145_combout\ & ((!\ROM|memROM~8_combout\)))) ) ) ) # ( \RAM|ram~146_combout\ & ( 
-- !\RAM|ram~143_combout\ & ( (!\ROM|memROM~9_combout\ & (((\RAM|ram~144_combout\ & \ROM|memROM~8_combout\)))) # (\ROM|memROM~9_combout\ & (((\ROM|memROM~8_combout\)) # (\RAM|ram~145_combout\))) ) ) ) # ( !\RAM|ram~146_combout\ & ( !\RAM|ram~143_combout\ & ( 
-- (!\ROM|memROM~9_combout\ & (((\RAM|ram~144_combout\ & \ROM|memROM~8_combout\)))) # (\ROM|memROM~9_combout\ & (\RAM|ram~145_combout\ & ((!\ROM|memROM~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~145_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~144_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_ram~146_combout\,
	dataf => \RAM|ALT_INV_ram~143_combout\,
	combout => \RAM|ram~147_combout\);

-- Location: LABCELL_X43_Y4_N15
\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = ( \RAM|ram~147_combout\ & ( (!\CPU|decoder|Equal11~0_combout\) # (\ROM|memROM~2_combout\) ) ) # ( !\RAM|ram~147_combout\ & ( (\CPU|decoder|Equal11~0_combout\ & \ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal11~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~147_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X44_Y4_N36
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REGA|DOUT\(1) ) + ( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((\CPU|decoder|saida~3_combout\) # (\CPU|decoder|saida~2_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REGA|DOUT\(1) ) + ( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((\CPU|decoder|saida~3_combout\) # (\CPU|decoder|saida~2_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110000111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: MLABCELL_X42_Y4_N54
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|decoder|saida~2_combout\ & ( \CPU|REGA|DOUT\(1) & ( (!\CPU|decoder|Equal11~0_combout\ & (((\RAM|ram~150_combout\ & \CPU|decoder|saida[1]~1_combout\)))) # (\CPU|decoder|Equal11~0_combout\ & (\ROM|memROM~7_combout\)) ) 
-- ) ) # ( !\CPU|decoder|saida~2_combout\ & ( \CPU|REGA|DOUT\(1) & ( (!\CPU|decoder|Equal11~0_combout\ & (((\RAM|ram~150_combout\ & \CPU|decoder|saida[1]~1_combout\)))) # (\CPU|decoder|Equal11~0_combout\ & (\ROM|memROM~7_combout\)) ) ) ) # ( 
-- !\CPU|decoder|saida~2_combout\ & ( !\CPU|REGA|DOUT\(1) & ( (!\CPU|decoder|Equal11~0_combout\ & (((\RAM|ram~150_combout\ & \CPU|decoder|saida[1]~1_combout\)))) # (\CPU|decoder|Equal11~0_combout\ & (\ROM|memROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000000000000000000000101001101010000010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \RAM|ALT_INV_ram~150_combout\,
	datac => \CPU|decoder|ALT_INV_Equal11~0_combout\,
	datad => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	datae => \CPU|decoder|ALT_INV_saida~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: FF_X44_Y4_N38
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|decoder|saida~3_combout\,
	ena => \CPU|decoder|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: FF_X44_Y4_N22
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: FF_X43_Y4_N8
\RAM|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~112_q\);

-- Location: FF_X43_Y4_N44
\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

-- Location: MLABCELL_X45_Y4_N48
\RAM|ram~80feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~80feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM|ram~80feeder_combout\);

-- Location: FF_X45_Y4_N49
\RAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM|ram~80feeder_combout\,
	ena => \RAM|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~80_q\);

-- Location: LABCELL_X43_Y4_N9
\RAM|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~148_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~112_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~48_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~80_q\ 
-- ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \RAM|ALT_INV_ram~112_q\,
	datac => \RAM|ALT_INV_ram~48_q\,
	datad => \RAM|ALT_INV_ram~80_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~148_combout\);

-- Location: FF_X42_Y4_N23
\RAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~64_q\);

-- Location: FF_X42_Y4_N17
\RAM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~128_q\);

-- Location: FF_X42_Y4_N59
\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: MLABCELL_X45_Y4_N45
\RAM|ram~96feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~96feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM|ram~96feeder_combout\);

-- Location: FF_X45_Y4_N46
\RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM|ram~96feeder_combout\,
	ena => \RAM|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~96_q\);

-- Location: MLABCELL_X42_Y4_N9
\RAM|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~149_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~128_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~64_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~96_q\ 
-- ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~64_q\,
	datab => \RAM|ALT_INV_ram~128_q\,
	datac => \RAM|ALT_INV_ram~32_q\,
	datad => \RAM|ALT_INV_ram~96_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~149_combout\);

-- Location: LABCELL_X43_Y4_N24
\RAM|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~150_combout\ = ( \RAM|ram~149_combout\ & ( (!\ROM|memROM~2_combout\ & ((\ROM|memROM~7_combout\) # (\RAM|ram~148_combout\))) ) ) # ( !\RAM|ram~149_combout\ & ( (\RAM|ram~148_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~148_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~149_combout\,
	combout => \RAM|ram~150_combout\);

-- Location: LABCELL_X43_Y4_N54
\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = ( \CPU|decoder|saida[1]~1_combout\ & ( (!\CPU|decoder|Equal11~0_combout\ & ((\RAM|ram~150_combout\))) # (\CPU|decoder|Equal11~0_combout\ & (\ROM|memROM~7_combout\)) ) ) # ( !\CPU|decoder|saida[1]~1_combout\ & ( 
-- (\ROM|memROM~7_combout\ & \CPU|decoder|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~150_combout\,
	datad => \CPU|decoder|ALT_INV_Equal11~0_combout\,
	dataf => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X44_Y4_N39
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REGA|DOUT\(2) ) + ( !\CPU|MUX1|saida_MUX[2]~2_combout\ $ (((\CPU|decoder|saida~3_combout\) # (\CPU|decoder|saida~2_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REGA|DOUT\(2) ) + ( !\CPU|MUX1|saida_MUX[2]~2_combout\ $ (((\CPU|decoder|saida~3_combout\) # (\CPU|decoder|saida~2_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110000111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X44_Y3_N30
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|decoder|saida[1]~1_combout\ & ( \CPU|decoder|saida~2_combout\ & ( (\CPU|REGA|DOUT\(2) & ((!\CPU|decoder|Equal11~0_combout\ & ((\RAM|ram~155_combout\))) # (\CPU|decoder|Equal11~0_combout\ & (\ROM|memROM~8_combout\)))) 
-- ) ) ) # ( !\CPU|decoder|saida[1]~1_combout\ & ( \CPU|decoder|saida~2_combout\ & ( (\ROM|memROM~8_combout\ & (\CPU|REGA|DOUT\(2) & \CPU|decoder|Equal11~0_combout\)) ) ) ) # ( \CPU|decoder|saida[1]~1_combout\ & ( !\CPU|decoder|saida~2_combout\ & ( 
-- (!\CPU|decoder|Equal11~0_combout\ & ((\RAM|ram~155_combout\))) # (\CPU|decoder|Equal11~0_combout\ & (\ROM|memROM~8_combout\)) ) ) ) # ( !\CPU|decoder|saida[1]~1_combout\ & ( !\CPU|decoder|saida~2_combout\ & ( (\ROM|memROM~8_combout\ & 
-- \CPU|decoder|Equal11~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011111010100000001000000010000000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|REGA|ALT_INV_DOUT\(2),
	datac => \CPU|decoder|ALT_INV_Equal11~0_combout\,
	datad => \RAM|ALT_INV_ram~155_combout\,
	datae => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	dataf => \CPU|decoder|ALT_INV_saida~2_combout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X44_Y4_N41
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoder|saida~3_combout\,
	ena => \CPU|decoder|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: FF_X44_Y3_N13
\RAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~81_q\);

-- Location: FF_X43_Y3_N29
\RAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~97_q\);

-- Location: LABCELL_X43_Y3_N0
\RAM|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~153_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~81_q\)) # (\ROM|memROM~7_combout\ & ((\RAM|ram~97_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~81_q\,
	datac => \RAM|ALT_INV_ram~97_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~153_combout\);

-- Location: FF_X42_Y3_N28
\RAM|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~113_q\);

-- Location: FF_X43_Y3_N17
\RAM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~129_q\);

-- Location: LABCELL_X43_Y3_N15
\RAM|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~154_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~113_q\)) # (\ROM|memROM~7_combout\ & ((\RAM|ram~129_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~113_q\,
	datad => \RAM|ALT_INV_ram~129_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~154_combout\);

-- Location: FF_X44_Y3_N23
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: FF_X43_Y5_N41
\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: LABCELL_X43_Y3_N3
\RAM|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~151_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~17_q\)) # (\ROM|memROM~7_combout\ & ((\RAM|ram~33_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datac => \RAM|ALT_INV_ram~33_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~151_combout\);

-- Location: LABCELL_X41_Y3_N6
\RAM|ram~49feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~49feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM|ram~49feeder_combout\);

-- Location: FF_X41_Y3_N8
\RAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM|ram~49feeder_combout\,
	ena => \RAM|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~49_q\);

-- Location: FF_X41_Y3_N2
\RAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~65_q\);

-- Location: LABCELL_X41_Y3_N27
\RAM|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~152_combout\ = ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~65_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~49_q\,
	datad => \RAM|ALT_INV_ram~65_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~152_combout\);

-- Location: LABCELL_X43_Y3_N18
\RAM|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~155_combout\ = ( \RAM|ram~151_combout\ & ( \RAM|ram~152_combout\ & ( (!\ROM|memROM~9_combout\) # ((!\ROM|memROM~8_combout\ & (\RAM|ram~153_combout\)) # (\ROM|memROM~8_combout\ & ((\RAM|ram~154_combout\)))) ) ) ) # ( !\RAM|ram~151_combout\ & ( 
-- \RAM|ram~152_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~8_combout\)) # (\ROM|memROM~9_combout\ & ((!\ROM|memROM~8_combout\ & (\RAM|ram~153_combout\)) # (\ROM|memROM~8_combout\ & ((\RAM|ram~154_combout\))))) ) ) ) # ( \RAM|ram~151_combout\ & ( 
-- !\RAM|ram~152_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~8_combout\)) # (\ROM|memROM~9_combout\ & ((!\ROM|memROM~8_combout\ & (\RAM|ram~153_combout\)) # (\ROM|memROM~8_combout\ & ((\RAM|ram~154_combout\))))) ) ) ) # ( !\RAM|ram~151_combout\ & ( 
-- !\RAM|ram~152_combout\ & ( (\ROM|memROM~9_combout\ & ((!\ROM|memROM~8_combout\ & (\RAM|ram~153_combout\)) # (\ROM|memROM~8_combout\ & ((\RAM|ram~154_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \RAM|ALT_INV_ram~153_combout\,
	datad => \RAM|ALT_INV_ram~154_combout\,
	datae => \RAM|ALT_INV_ram~151_combout\,
	dataf => \RAM|ALT_INV_ram~152_combout\,
	combout => \RAM|ram~155_combout\);

-- Location: LABCELL_X44_Y4_N9
\CPU|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~2_combout\ = ( \RAM|ram~155_combout\ & ( (!\CPU|decoder|Equal11~0_combout\ & ((\CPU|decoder|saida[1]~1_combout\))) # (\CPU|decoder|Equal11~0_combout\ & (\ROM|memROM~8_combout\)) ) ) # ( !\RAM|ram~155_combout\ & ( 
-- (\ROM|memROM~8_combout\ & \CPU|decoder|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \CPU|decoder|ALT_INV_Equal11~0_combout\,
	datad => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	dataf => \RAM|ALT_INV_ram~155_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X44_Y4_N42
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REGA|DOUT\(3) ) + ( !\CPU|MUX1|saida_MUX[3]~3_combout\ $ (((\CPU|decoder|saida~3_combout\) # (\CPU|decoder|saida~2_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REGA|DOUT\(3) ) + ( !\CPU|MUX1|saida_MUX[3]~3_combout\ $ (((\CPU|decoder|saida~3_combout\) # (\CPU|decoder|saida~2_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110000111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X43_Y4_N36
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|REGA|DOUT\(3) & ( \CPU|decoder|saida[1]~1_combout\ & ( (!\CPU|decoder|Equal11~0_combout\ & (\RAM|ram~158_combout\)) # (\CPU|decoder|Equal11~0_combout\ & ((\ROM|memROM~9_combout\))) ) ) ) # ( !\CPU|REGA|DOUT\(3) & ( 
-- \CPU|decoder|saida[1]~1_combout\ & ( (!\CPU|decoder|saida~2_combout\ & ((!\CPU|decoder|Equal11~0_combout\ & (\RAM|ram~158_combout\)) # (\CPU|decoder|Equal11~0_combout\ & ((\ROM|memROM~9_combout\))))) ) ) ) # ( \CPU|REGA|DOUT\(3) & ( 
-- !\CPU|decoder|saida[1]~1_combout\ & ( (\ROM|memROM~9_combout\ & \CPU|decoder|Equal11~0_combout\) ) ) ) # ( !\CPU|REGA|DOUT\(3) & ( !\CPU|decoder|saida[1]~1_combout\ & ( (\ROM|memROM~9_combout\ & (!\CPU|decoder|saida~2_combout\ & 
-- \CPU|decoder|Equal11~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011001101010000001100000101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~158_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \CPU|decoder|ALT_INV_saida~2_combout\,
	datad => \CPU|decoder|ALT_INV_Equal11~0_combout\,
	datae => \CPU|REGA|ALT_INV_DOUT\(3),
	dataf => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X44_Y4_N44
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|decoder|saida~3_combout\,
	ena => \CPU|decoder|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: FF_X43_Y4_N20
\RAM|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~114_q\);

-- Location: FF_X43_Y4_N32
\RAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~50_q\);

-- Location: MLABCELL_X45_Y4_N3
\RAM|ram~18feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~18feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \RAM|ram~18feeder_combout\);

-- Location: FF_X45_Y4_N4
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM|ram~18feeder_combout\,
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: MLABCELL_X45_Y4_N57
\RAM|ram~82feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~82feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \RAM|ram~82feeder_combout\);

-- Location: FF_X45_Y4_N58
\RAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM|ram~82feeder_combout\,
	ena => \RAM|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~82_q\);

-- Location: LABCELL_X43_Y4_N21
\RAM|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~156_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~114_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~50_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~82_q\ 
-- ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~114_q\,
	datab => \RAM|ALT_INV_ram~50_q\,
	datac => \RAM|ALT_INV_ram~18_q\,
	datad => \RAM|ALT_INV_ram~82_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~156_combout\);

-- Location: FF_X42_Y4_N29
\RAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~66_q\);

-- Location: FF_X42_Y4_N8
\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: FF_X42_Y4_N32
\RAM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~130_q\);

-- Location: MLABCELL_X45_Y4_N27
\RAM|ram~98feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~98feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \RAM|ram~98feeder_combout\);

-- Location: FF_X45_Y4_N29
\RAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM|ram~98feeder_combout\,
	ena => \RAM|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~98_q\);

-- Location: MLABCELL_X42_Y4_N45
\RAM|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~157_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~130_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~66_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~98_q\ 
-- ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~66_q\,
	datab => \RAM|ALT_INV_ram~34_q\,
	datac => \RAM|ALT_INV_ram~130_q\,
	datad => \RAM|ALT_INV_ram~98_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~157_combout\);

-- Location: LABCELL_X43_Y4_N0
\RAM|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~158_combout\ = ( \RAM|ram~157_combout\ & ( (!\ROM|memROM~2_combout\ & ((\ROM|memROM~7_combout\) # (\RAM|ram~156_combout\))) ) ) # ( !\RAM|ram~157_combout\ & ( (\RAM|ram~156_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~156_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \RAM|ALT_INV_ram~157_combout\,
	combout => \RAM|ram~158_combout\);

-- Location: LABCELL_X43_Y4_N27
\CPU|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~3_combout\ = ( \CPU|decoder|saida[1]~1_combout\ & ( (!\CPU|decoder|Equal11~0_combout\ & ((\RAM|ram~158_combout\))) # (\CPU|decoder|Equal11~0_combout\ & (\ROM|memROM~9_combout\)) ) ) # ( !\CPU|decoder|saida[1]~1_combout\ & ( 
-- (\CPU|decoder|Equal11~0_combout\ & \ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~158_combout\,
	dataf => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~3_combout\);

-- Location: LABCELL_X44_Y4_N45
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REGA|DOUT\(4) ) + ( !\DATA_RD[4]~0_combout\ $ (((\CPU|decoder|saida~3_combout\) # (\CPU|decoder|saida~2_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REGA|DOUT\(4) ) + ( !\DATA_RD[4]~0_combout\ $ (((\CPU|decoder|saida~3_combout\) # (\CPU|decoder|saida~2_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110000111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \ALT_INV_DATA_RD[4]~0_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: MLABCELL_X45_Y4_N12
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|decoder|saida~2_combout\ & ( \CPU|decoder|saida[1]~1_combout\ & ( (\CPU|REGA|DOUT\(4) & \RAM|ram~163_combout\) ) ) ) # ( !\CPU|decoder|saida~2_combout\ & ( \CPU|decoder|saida[1]~1_combout\ & ( \RAM|ram~163_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(4),
	datac => \RAM|ALT_INV_ram~163_combout\,
	datae => \CPU|decoder|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X44_Y4_N47
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|decoder|saida~3_combout\,
	ena => \CPU|decoder|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: FF_X44_Y3_N47
\RAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~83_q\);

-- Location: FF_X44_Y3_N5
\RAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~99_q\);

-- Location: LABCELL_X44_Y3_N0
\RAM|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~161_combout\ = ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~99_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~83_q\,
	datac => \RAM|ALT_INV_ram~99_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~161_combout\);

-- Location: FF_X45_Y3_N2
\RAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~67_q\);

-- Location: FF_X45_Y3_N32
\RAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~51_q\);

-- Location: LABCELL_X44_Y3_N36
\RAM|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~160_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM|ram~51_q\))) # (\ROM|memROM~7_combout\ & (\RAM|ram~67_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~67_q\,
	datac => \RAM|ALT_INV_ram~51_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~160_combout\);

-- Location: FF_X45_Y3_N14
\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

-- Location: LABCELL_X44_Y3_N18
\RAM|ram~19feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~19feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM|ram~19feeder_combout\);

-- Location: FF_X44_Y3_N20
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM|ram~19feeder_combout\,
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: LABCELL_X44_Y3_N57
\RAM|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~159_combout\ = ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~35_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~35_q\,
	datad => \RAM|ALT_INV_ram~19_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~159_combout\);

-- Location: FF_X43_Y4_N10
\RAM|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~115_q\);

-- Location: FF_X43_Y3_N13
\RAM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~131_q\);

-- Location: LABCELL_X44_Y3_N9
\RAM|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~162_combout\ = ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~131_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~115_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~115_q\,
	datad => \RAM|ALT_INV_ram~131_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~162_combout\);

-- Location: LABCELL_X44_Y3_N42
\RAM|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~163_combout\ = ( \RAM|ram~159_combout\ & ( \RAM|ram~162_combout\ & ( (!\ROM|memROM~8_combout\ & (((!\ROM|memROM~9_combout\)) # (\RAM|ram~161_combout\))) # (\ROM|memROM~8_combout\ & (((\ROM|memROM~9_combout\) # (\RAM|ram~160_combout\)))) ) ) ) # ( 
-- !\RAM|ram~159_combout\ & ( \RAM|ram~162_combout\ & ( (!\ROM|memROM~8_combout\ & (\RAM|ram~161_combout\ & ((\ROM|memROM~9_combout\)))) # (\ROM|memROM~8_combout\ & (((\ROM|memROM~9_combout\) # (\RAM|ram~160_combout\)))) ) ) ) # ( \RAM|ram~159_combout\ & ( 
-- !\RAM|ram~162_combout\ & ( (!\ROM|memROM~8_combout\ & (((!\ROM|memROM~9_combout\)) # (\RAM|ram~161_combout\))) # (\ROM|memROM~8_combout\ & (((\RAM|ram~160_combout\ & !\ROM|memROM~9_combout\)))) ) ) ) # ( !\RAM|ram~159_combout\ & ( !\RAM|ram~162_combout\ & 
-- ( (!\ROM|memROM~8_combout\ & (\RAM|ram~161_combout\ & ((\ROM|memROM~9_combout\)))) # (\ROM|memROM~8_combout\ & (((\RAM|ram~160_combout\ & !\ROM|memROM~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~161_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \RAM|ALT_INV_ram~160_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM|ALT_INV_ram~159_combout\,
	dataf => \RAM|ALT_INV_ram~162_combout\,
	combout => \RAM|ram~163_combout\);

-- Location: LABCELL_X43_Y4_N3
\DATA_RD[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_RD[4]~0_combout\ = ( \RAM|ram~163_combout\ & ( \CPU|decoder|saida[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	dataf => \RAM|ALT_INV_ram~163_combout\,
	combout => \DATA_RD[4]~0_combout\);

-- Location: LABCELL_X44_Y4_N48
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|decoder|saida~2_combout\ & (!\CPU|decoder|saida~3_combout\ $ (((\CPU|decoder|saida[1]~1_combout\ & \RAM|ram~166_combout\))))) # (\CPU|decoder|saida~2_combout\ & 
-- (((\CPU|decoder|saida[1]~1_combout\ & \RAM|ram~166_combout\)))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|decoder|saida~2_combout\ & (!\CPU|decoder|saida~3_combout\ $ (((\CPU|decoder|saida[1]~1_combout\ & \RAM|ram~166_combout\))))) # (\CPU|decoder|saida~2_combout\ & 
-- (((\CPU|decoder|saida[1]~1_combout\ & \RAM|ram~166_combout\)))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(5),
	dataf => \RAM|ALT_INV_ram~166_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: MLABCELL_X45_Y4_N21
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|decoder|saida~2_combout\ & ( \CPU|decoder|saida[1]~1_combout\ & ( (\CPU|REGA|DOUT\(5) & \RAM|ram~166_combout\) ) ) ) # ( !\CPU|decoder|saida~2_combout\ & ( \CPU|decoder|saida[1]~1_combout\ & ( \RAM|ram~166_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REGA|ALT_INV_DOUT\(5),
	datac => \RAM|ALT_INV_ram~166_combout\,
	datae => \CPU|decoder|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X44_Y4_N50
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|decoder|saida~3_combout\,
	ena => \CPU|decoder|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: LABCELL_X44_Y4_N51
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REGA|DOUT\(6) ) + ( (!\CPU|decoder|saida~2_combout\ & (!\CPU|decoder|saida~3_combout\ $ (((\CPU|decoder|saida[1]~1_combout\ & \RAM|ram~171_combout\))))) # (\CPU|decoder|saida~2_combout\ & 
-- (((\CPU|decoder|saida[1]~1_combout\ & \RAM|ram~171_combout\)))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REGA|DOUT\(6) ) + ( (!\CPU|decoder|saida~2_combout\ & (!\CPU|decoder|saida~3_combout\ $ (((\CPU|decoder|saida[1]~1_combout\ & \RAM|ram~171_combout\))))) # (\CPU|decoder|saida~2_combout\ & 
-- (((\CPU|decoder|saida[1]~1_combout\ & \RAM|ram~171_combout\)))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(6),
	dataf => \RAM|ALT_INV_ram~171_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: MLABCELL_X42_Y4_N3
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|REGA|DOUT\(6) & ( (\RAM|ram~171_combout\ & \CPU|decoder|saida[1]~1_combout\) ) ) # ( !\CPU|REGA|DOUT\(6) & ( (\RAM|ram~171_combout\ & (\CPU|decoder|saida[1]~1_combout\ & !\CPU|decoder|saida~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~171_combout\,
	datac => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	datad => \CPU|decoder|ALT_INV_saida~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X44_Y4_N53
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|decoder|saida~3_combout\,
	ena => \CPU|decoder|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: LABCELL_X44_Y4_N54
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REGA|DOUT\(7) ) + ( (!\CPU|decoder|saida[1]~1_combout\ & (!\CPU|decoder|saida~3_combout\ & (!\CPU|decoder|saida~2_combout\))) # (\CPU|decoder|saida[1]~1_combout\ & (!\RAM|ram~174_combout\ $ 
-- (((\CPU|decoder|saida~2_combout\) # (\CPU|decoder|saida~3_combout\))))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \CPU|decoder|ALT_INV_saida~2_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(7),
	dataf => \RAM|ALT_INV_ram~174_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X42_Y4_N18
\CPU|ULA1|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal3~2_combout\ = ( \RAM|ram~174_combout\ & ( \RAM|ram~171_combout\ & ( (\CPU|decoder|saida[1]~1_combout\ & ((!\CPU|decoder|saida~2_combout\) # ((\CPU|REGA|DOUT\(6)) # (\CPU|REGA|DOUT\(7))))) ) ) ) # ( !\RAM|ram~174_combout\ & ( 
-- \RAM|ram~171_combout\ & ( (\CPU|decoder|saida[1]~1_combout\ & ((!\CPU|decoder|saida~2_combout\) # (\CPU|REGA|DOUT\(6)))) ) ) ) # ( \RAM|ram~174_combout\ & ( !\RAM|ram~171_combout\ & ( (\CPU|decoder|saida[1]~1_combout\ & ((!\CPU|decoder|saida~2_combout\) # 
-- (\CPU|REGA|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001011101100000000101011110000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida~2_combout\,
	datab => \CPU|REGA|ALT_INV_DOUT\(7),
	datac => \CPU|REGA|ALT_INV_DOUT\(6),
	datad => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	datae => \RAM|ALT_INV_ram~174_combout\,
	dataf => \RAM|ALT_INV_ram~171_combout\,
	combout => \CPU|ULA1|Equal3~2_combout\);

-- Location: MLABCELL_X42_Y4_N48
\DATA_RD[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_RD[5]~1_combout\ = (\CPU|decoder|saida[1]~1_combout\ & \RAM|ram~166_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	datad => \RAM|ALT_INV_ram~166_combout\,
	combout => \DATA_RD[5]~1_combout\);

-- Location: LABCELL_X43_Y4_N45
\CPU|ULA1|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal3~1_combout\ = ( \DATA_RD[4]~0_combout\ & ( \DATA_RD[5]~1_combout\ & ( (!\CPU|REGA|DOUT\(4) & (\CPU|decoder|saida~3_combout\ & (!\CPU|REGA|DOUT\(5) & \CPU|decoder|saida~2_combout\))) ) ) ) # ( !\DATA_RD[4]~0_combout\ & ( 
-- \DATA_RD[5]~1_combout\ & ( (\CPU|decoder|saida~3_combout\ & (!\CPU|REGA|DOUT\(5) & \CPU|decoder|saida~2_combout\)) ) ) ) # ( \DATA_RD[4]~0_combout\ & ( !\DATA_RD[5]~1_combout\ & ( (!\CPU|REGA|DOUT\(4) & (\CPU|decoder|saida~3_combout\ & 
-- \CPU|decoder|saida~2_combout\)) ) ) ) # ( !\DATA_RD[4]~0_combout\ & ( !\DATA_RD[5]~1_combout\ & ( \CPU|decoder|saida~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000010001000000000001100000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(4),
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT\(5),
	datad => \CPU|decoder|ALT_INV_saida~2_combout\,
	datae => \ALT_INV_DATA_RD[4]~0_combout\,
	dataf => \ALT_INV_DATA_RD[5]~1_combout\,
	combout => \CPU|ULA1|Equal3~1_combout\);

-- Location: LABCELL_X43_Y4_N33
\CPU|ULA1|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal3~3_combout\ = ( \CPU|ULA1|Equal3~1_combout\ & ( !\CPU|ULA1|saida[2]~2_combout\ & ( (!\CPU|ULA1|saida[1]~1_combout\ & (!\CPU|ULA1|Equal3~2_combout\ & (!\CPU|ULA1|saida[0]~0_combout\ & !\CPU|ULA1|saida[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[1]~1_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal3~2_combout\,
	datac => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \CPU|ULA1|ALT_INV_saida[3]~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Equal3~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_saida[2]~2_combout\,
	combout => \CPU|ULA1|Equal3~3_combout\);

-- Location: LABCELL_X43_Y5_N48
\CPU|decoder|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal11~1_combout\ = ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~6_combout\ & (!\ROM|memROM~5_combout\ & (!\ROM|memROM~4_combout\ & \ROM|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	combout => \CPU|decoder|Equal11~1_combout\);

-- Location: LABCELL_X44_Y4_N18
\CPU|ULA1|Equal3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal3~5_combout\ = ( !\CPU|ULA1|Add0~17_sumout\ & ( !\CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|ULA1|Add0~5_sumout\ & (!\CPU|decoder|saida~3_combout\ & (!\CPU|ULA1|Add0~1_sumout\ & !\CPU|ULA1|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA1|Equal3~5_combout\);

-- Location: FF_X44_Y4_N26
\CPU|FF_Zero|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|FF_Zero|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FF_Zero|DOUT~q\);

-- Location: LABCELL_X44_Y4_N24
\CPU|FF_Zero|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FF_Zero|DOUT~0_combout\ = ( !\CPU|decoder|Equal11~1_combout\ & ( (((\CPU|FF_Zero|DOUT~q\))) ) ) # ( \CPU|decoder|Equal11~1_combout\ & ( ((!\CPU|ULA1|Add0~29_sumout\ & (!\CPU|ULA1|Add0~25_sumout\ & (!\CPU|ULA1|Add0~21_sumout\ & 
-- \CPU|ULA1|Equal3~5_combout\)))) # (\CPU|ULA1|Equal3~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001100110011001100001111000011111011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	datab => \CPU|ULA1|ALT_INV_Equal3~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	datae => \CPU|decoder|ALT_INV_Equal11~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Equal3~5_combout\,
	datag => \CPU|FF_Zero|ALT_INV_DOUT~q\,
	combout => \CPU|FF_Zero|DOUT~0_combout\);

-- Location: FF_X44_Y4_N25
\CPU|FF_Zero|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|FF_Zero|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FF_Zero|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X43_Y3_N6
\CPU|LogicaDesvio|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LogicaDesvio|DOUT[0]~0_combout\ = ( \ROM|memROM~11_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & \ROM|memROM~13_combout\)) # (\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & !\ROM|memROM~13_combout\)) ) ) # ( 
-- !\ROM|memROM~11_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (\ROM|memROM~13_combout\ & \CPU|FF_Zero|DOUT~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000011000000110000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \CPU|FF_Zero|ALT_INV_DOUT~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|LogicaDesvio|DOUT[0]~0_combout\);

-- Location: FF_X41_Y3_N37
\CPU|REGC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|decoder|saida[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGC|DOUT\(2));

-- Location: MLABCELL_X42_Y3_N39
\CPU|MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~2_combout\ = ( \ROM|memROM~8_combout\ & ( ((!\CPU|LogicaDesvio|DOUT\(1) & (\CPU|incrementaPC|Add0~9_sumout\)) # (\CPU|LogicaDesvio|DOUT\(1) & ((\CPU|REGC|DOUT\(2))))) # (\CPU|LogicaDesvio|DOUT[0]~0_combout\) ) ) # ( 
-- !\ROM|memROM~8_combout\ & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & ((!\CPU|LogicaDesvio|DOUT\(1) & (\CPU|incrementaPC|Add0~9_sumout\)) # (\CPU|LogicaDesvio|DOUT\(1) & ((\CPU|REGC|DOUT\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LogicaDesvio|ALT_INV_DOUT\(1),
	datab => \CPU|LogicaDesvio|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	datad => \CPU|REGC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|MUX2|saida_MUX[2]~2_combout\);

-- Location: FF_X42_Y3_N41
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: MLABCELL_X42_Y3_N12
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110000000011110011000011000011110000001100001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

-- Location: MLABCELL_X42_Y3_N9
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \ROM|memROM~0_combout\ & ( \ROM|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~12_combout\);

-- Location: MLABCELL_X42_Y3_N0
\CPU|LogicaDesvio|DOUT[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LogicaDesvio|DOUT\(1) = ( \ROM|memROM~10_combout\ & ( (!\ROM|memROM~12_combout\ & (\ROM|memROM~11_combout\ & \ROM|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|LogicaDesvio|DOUT\(1));

-- Location: FF_X41_Y3_N32
\CPU|REGC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|decoder|saida[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGC|DOUT\(0));

-- Location: MLABCELL_X42_Y3_N36
\CPU|MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~0_combout\ = ( \ROM|memROM~2_combout\ & ( ((!\CPU|LogicaDesvio|DOUT\(1) & ((\CPU|incrementaPC|Add0~1_sumout\))) # (\CPU|LogicaDesvio|DOUT\(1) & (\CPU|REGC|DOUT\(0)))) # (\CPU|LogicaDesvio|DOUT[0]~0_combout\) ) ) # ( 
-- !\ROM|memROM~2_combout\ & ( (!\CPU|LogicaDesvio|DOUT[0]~0_combout\ & ((!\CPU|LogicaDesvio|DOUT\(1) & ((\CPU|incrementaPC|Add0~1_sumout\))) # (\CPU|LogicaDesvio|DOUT\(1) & (\CPU|REGC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LogicaDesvio|ALT_INV_DOUT\(1),
	datab => \CPU|LogicaDesvio|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|REGC|ALT_INV_DOUT\(0),
	datad => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|MUX2|saida_MUX[0]~0_combout\);

-- Location: FF_X42_Y3_N38
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X45_Y4_N36
\DATA_RD[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_RD[6]~2_combout\ = ( \RAM|ram~171_combout\ & ( \CPU|decoder|saida[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~171_combout\,
	dataf => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	combout => \DATA_RD[6]~2_combout\);

-- Location: MLABCELL_X45_Y4_N33
\DATA_RD[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_RD[7]~3_combout\ = ( \RAM|ram~174_combout\ & ( \CPU|decoder|saida[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|decoder|ALT_INV_saida[1]~1_combout\,
	dataf => \RAM|ALT_INV_ram~174_combout\,
	combout => \DATA_RD[7]~3_combout\);

-- Location: LABCELL_X44_Y4_N12
\CPU|ULA1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal3~0_combout\ = ( !\CPU|ULA1|Add0~5_sumout\ & ( !\CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|decoder|saida~3_combout\ & (!\CPU|ULA1|Add0~1_sumout\ & !\CPU|ULA1|Add0~9_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|decoder|ALT_INV_saida~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA1|Equal3~0_combout\);

-- Location: LABCELL_X44_Y4_N0
\CPU|ULA1|Equal3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal3~4_combout\ = ( \CPU|ULA1|Add0~29_sumout\ & ( \CPU|ULA1|Equal3~0_combout\ & ( \CPU|ULA1|Equal3~3_combout\ ) ) ) # ( !\CPU|ULA1|Add0~29_sumout\ & ( \CPU|ULA1|Equal3~0_combout\ & ( ((!\CPU|ULA1|Add0~21_sumout\ & (!\CPU|ULA1|Add0~25_sumout\ & 
-- !\CPU|ULA1|Add0~17_sumout\))) # (\CPU|ULA1|Equal3~3_combout\) ) ) ) # ( \CPU|ULA1|Add0~29_sumout\ & ( !\CPU|ULA1|Equal3~0_combout\ & ( \CPU|ULA1|Equal3~3_combout\ ) ) ) # ( !\CPU|ULA1|Add0~29_sumout\ & ( !\CPU|ULA1|Equal3~0_combout\ & ( 
-- \CPU|ULA1|Equal3~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	datab => \CPU|ULA1|ALT_INV_Equal3~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Equal3~0_combout\,
	combout => \CPU|ULA1|Equal3~4_combout\);

-- Location: FF_X44_Y4_N1
\Display2|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Equal3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display2|REG|DOUT\(0));

-- Location: FF_X42_Y3_N22
\Display4|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|PC|DOUT\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display4|REG|DOUT\(0));

-- Location: MLABCELL_X42_Y5_N18
\Display4|REG|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|REG|DOUT[1]~feeder_combout\ = ( \CPU|PC|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \Display4|REG|DOUT[1]~feeder_combout\);

-- Location: FF_X42_Y5_N20
\Display4|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Display4|REG|DOUT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display4|REG|DOUT\(1));

-- Location: FF_X42_Y5_N5
\Display4|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|PC|DOUT\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display4|REG|DOUT\(2));

-- Location: MLABCELL_X42_Y5_N15
\Display4|REG|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|REG|DOUT[3]~feeder_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \Display4|REG|DOUT[3]~feeder_combout\);

-- Location: FF_X42_Y5_N17
\Display4|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Display4|REG|DOUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display4|REG|DOUT\(3));

-- Location: MLABCELL_X42_Y5_N6
\Display4|Conv|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[0]~0_combout\ = ( \Display4|REG|DOUT\(2) & ( \Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(0) & !\Display4|REG|DOUT\(1)) ) ) ) # ( !\Display4|REG|DOUT\(2) & ( \Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(0) & 
-- \Display4|REG|DOUT\(1)) ) ) ) # ( \Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( (!\Display4|REG|DOUT\(0) & !\Display4|REG|DOUT\(1)) ) ) ) # ( !\Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(0) & 
-- !\Display4|REG|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Display4|REG|ALT_INV_DOUT\(0),
	datac => \Display4|REG|ALT_INV_DOUT\(1),
	datae => \Display4|REG|ALT_INV_DOUT\(2),
	dataf => \Display4|REG|ALT_INV_DOUT\(3),
	combout => \Display4|Conv|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y5_N39
\Display4|Conv|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[1]~1_combout\ = ( \Display4|REG|DOUT\(2) & ( \Display4|REG|DOUT\(3) & ( (!\Display4|REG|DOUT\(0)) # (\Display4|REG|DOUT\(1)) ) ) ) # ( !\Display4|REG|DOUT\(2) & ( \Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(1) & 
-- \Display4|REG|DOUT\(0)) ) ) ) # ( \Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( !\Display4|REG|DOUT\(1) $ (!\Display4|REG|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(1),
	datac => \Display4|REG|ALT_INV_DOUT\(0),
	datae => \Display4|REG|ALT_INV_DOUT\(2),
	dataf => \Display4|REG|ALT_INV_DOUT\(3),
	combout => \Display4|Conv|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y5_N33
\Display4|Conv|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[2]~2_combout\ = ( \Display4|REG|DOUT\(2) & ( \Display4|REG|DOUT\(3) & ( (!\Display4|REG|DOUT\(0)) # (\Display4|REG|DOUT\(1)) ) ) ) # ( !\Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(1) & 
-- !\Display4|REG|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(1),
	datac => \Display4|REG|ALT_INV_DOUT\(0),
	datae => \Display4|REG|ALT_INV_DOUT\(2),
	dataf => \Display4|REG|ALT_INV_DOUT\(3),
	combout => \Display4|Conv|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y5_N48
\Display4|Conv|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[3]~3_combout\ = ( \Display4|REG|DOUT\(2) & ( \Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(0) & \Display4|REG|DOUT\(1)) ) ) ) # ( !\Display4|REG|DOUT\(2) & ( \Display4|REG|DOUT\(3) & ( (!\Display4|REG|DOUT\(0) & 
-- \Display4|REG|DOUT\(1)) ) ) ) # ( \Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( !\Display4|REG|DOUT\(0) $ (\Display4|REG|DOUT\(1)) ) ) ) # ( !\Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(0) & 
-- !\Display4|REG|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000111100001100001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Display4|REG|ALT_INV_DOUT\(0),
	datac => \Display4|REG|ALT_INV_DOUT\(1),
	datae => \Display4|REG|ALT_INV_DOUT\(2),
	dataf => \Display4|REG|ALT_INV_DOUT\(3),
	combout => \Display4|Conv|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y5_N54
\Display4|Conv|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[4]~4_combout\ = ( !\Display4|REG|DOUT\(2) & ( \Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(0) & !\Display4|REG|DOUT\(1)) ) ) ) # ( \Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( (!\Display4|REG|DOUT\(1)) # 
-- (\Display4|REG|DOUT\(0)) ) ) ) # ( !\Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( \Display4|REG|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111100111111001100110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Display4|REG|ALT_INV_DOUT\(0),
	datac => \Display4|REG|ALT_INV_DOUT\(1),
	datae => \Display4|REG|ALT_INV_DOUT\(2),
	dataf => \Display4|REG|ALT_INV_DOUT\(3),
	combout => \Display4|Conv|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y5_N24
\Display4|Conv|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[5]~5_combout\ = ( \Display4|REG|DOUT\(2) & ( \Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(0) & !\Display4|REG|DOUT\(1)) ) ) ) # ( \Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(0) & 
-- \Display4|REG|DOUT\(1)) ) ) ) # ( !\Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(1)) # (\Display4|REG|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000110000001100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Display4|REG|ALT_INV_DOUT\(0),
	datac => \Display4|REG|ALT_INV_DOUT\(1),
	datae => \Display4|REG|ALT_INV_DOUT\(2),
	dataf => \Display4|REG|ALT_INV_DOUT\(3),
	combout => \Display4|Conv|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y5_N45
\Display4|Conv|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[6]~6_combout\ = ( \Display4|REG|DOUT\(2) & ( \Display4|REG|DOUT\(3) & ( (!\Display4|REG|DOUT\(1) & !\Display4|REG|DOUT\(0)) ) ) ) # ( \Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( (\Display4|REG|DOUT\(1) & 
-- \Display4|REG|DOUT\(0)) ) ) ) # ( !\Display4|REG|DOUT\(2) & ( !\Display4|REG|DOUT\(3) & ( !\Display4|REG|DOUT\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000001010000010100000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(1),
	datac => \Display4|REG|ALT_INV_DOUT\(0),
	datae => \Display4|REG|ALT_INV_DOUT\(2),
	dataf => \Display4|REG|ALT_INV_DOUT\(3),
	combout => \Display4|Conv|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y5_N33
\Display5|REG|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|REG|DOUT[1]~feeder_combout\ = ( \CPU|PC|DOUT[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \Display5|REG|DOUT[1]~feeder_combout\);

-- Location: FF_X43_Y5_N35
\Display5|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Display5|REG|DOUT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT\(1));

-- Location: FF_X43_Y3_N50
\Display5|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|PC|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT\(2));

-- Location: FF_X43_Y3_N8
\Display5|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|PC|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT\(3));

-- Location: FF_X43_Y3_N22
\Display5|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|PC|DOUT\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT\(0));

-- Location: LABCELL_X43_Y5_N24
\Display5|Conv|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[0]~0_combout\ = ( \Display5|REG|DOUT\(0) & ( (!\Display5|REG|DOUT\(1) & (!\Display5|REG|DOUT\(2) $ (\Display5|REG|DOUT\(3)))) # (\Display5|REG|DOUT\(1) & (!\Display5|REG|DOUT\(2) & \Display5|REG|DOUT\(3))) ) ) # ( 
-- !\Display5|REG|DOUT\(0) & ( (!\Display5|REG|DOUT\(1) & (\Display5|REG|DOUT\(2) & !\Display5|REG|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010000110100001101000011010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(1),
	datab => \Display5|REG|ALT_INV_DOUT\(2),
	datac => \Display5|REG|ALT_INV_DOUT\(3),
	dataf => \Display5|REG|ALT_INV_DOUT\(0),
	combout => \Display5|Conv|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y5_N54
\Display5|Conv|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[1]~1_combout\ = ( \Display5|REG|DOUT\(3) & ( \Display5|REG|DOUT\(0) & ( \Display5|REG|DOUT\(1) ) ) ) # ( !\Display5|REG|DOUT\(3) & ( \Display5|REG|DOUT\(0) & ( (\Display5|REG|DOUT\(2) & !\Display5|REG|DOUT\(1)) ) ) ) # ( 
-- \Display5|REG|DOUT\(3) & ( !\Display5|REG|DOUT\(0) & ( \Display5|REG|DOUT\(2) ) ) ) # ( !\Display5|REG|DOUT\(3) & ( !\Display5|REG|DOUT\(0) & ( (\Display5|REG|DOUT\(2) & \Display5|REG|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100110000001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Display5|REG|ALT_INV_DOUT\(2),
	datac => \Display5|REG|ALT_INV_DOUT\(1),
	datae => \Display5|REG|ALT_INV_DOUT\(3),
	dataf => \Display5|REG|ALT_INV_DOUT\(0),
	combout => \Display5|Conv|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y5_N27
\Display5|Conv|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[2]~2_combout\ = ( \Display5|REG|DOUT\(0) & ( (\Display5|REG|DOUT\(1) & (\Display5|REG|DOUT\(2) & \Display5|REG|DOUT\(3))) ) ) # ( !\Display5|REG|DOUT\(0) & ( (!\Display5|REG|DOUT\(2) & (\Display5|REG|DOUT\(1) & 
-- !\Display5|REG|DOUT\(3))) # (\Display5|REG|DOUT\(2) & ((\Display5|REG|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110011010001000011001100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(1),
	datab => \Display5|REG|ALT_INV_DOUT\(2),
	datad => \Display5|REG|ALT_INV_DOUT\(3),
	dataf => \Display5|REG|ALT_INV_DOUT\(0),
	combout => \Display5|Conv|rascSaida7seg[2]~2_combout\);

-- Location: FF_X43_Y5_N34
\Display5|REG|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Display5|REG|DOUT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y3_N48
\Display5|Conv|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[3]~3_combout\ = ( \Display5|REG|DOUT\(3) & ( (\Display5|REG|DOUT[1]~DUPLICATE_q\ & (!\Display5|REG|DOUT\(2) $ (\Display5|REG|DOUT\(0)))) ) ) # ( !\Display5|REG|DOUT\(3) & ( (!\Display5|REG|DOUT\(2) & 
-- (!\Display5|REG|DOUT[1]~DUPLICATE_q\ & \Display5|REG|DOUT\(0))) # (\Display5|REG|DOUT\(2) & (!\Display5|REG|DOUT[1]~DUPLICATE_q\ $ (\Display5|REG|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(2),
	datac => \Display5|REG|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \Display5|REG|ALT_INV_DOUT\(0),
	dataf => \Display5|REG|ALT_INV_DOUT\(3),
	combout => \Display5|Conv|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y5_N39
\Display5|Conv|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[4]~4_combout\ = ( \Display5|REG|DOUT\(3) & ( \Display5|REG|DOUT\(0) & ( (!\Display5|REG|DOUT\(1) & !\Display5|REG|DOUT\(2)) ) ) ) # ( !\Display5|REG|DOUT\(3) & ( \Display5|REG|DOUT\(0) ) ) # ( !\Display5|REG|DOUT\(3) & ( 
-- !\Display5|REG|DOUT\(0) & ( (!\Display5|REG|DOUT\(1) & \Display5|REG|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000011111111111111111010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(1),
	datac => \Display5|REG|ALT_INV_DOUT\(2),
	datae => \Display5|REG|ALT_INV_DOUT\(3),
	dataf => \Display5|REG|ALT_INV_DOUT\(0),
	combout => \Display5|Conv|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y5_N15
\Display5|Conv|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[5]~5_combout\ = ( \Display5|REG|DOUT\(3) & ( \Display5|REG|DOUT\(0) & ( (!\Display5|REG|DOUT\(1) & \Display5|REG|DOUT\(2)) ) ) ) # ( !\Display5|REG|DOUT\(3) & ( \Display5|REG|DOUT\(0) & ( (!\Display5|REG|DOUT\(2)) # 
-- (\Display5|REG|DOUT\(1)) ) ) ) # ( !\Display5|REG|DOUT\(3) & ( !\Display5|REG|DOUT\(0) & ( (\Display5|REG|DOUT\(1) & !\Display5|REG|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000011110101111101010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(1),
	datac => \Display5|REG|ALT_INV_DOUT\(2),
	datae => \Display5|REG|ALT_INV_DOUT\(3),
	dataf => \Display5|REG|ALT_INV_DOUT\(0),
	combout => \Display5|Conv|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y3_N24
\Display5|Conv|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[6]~6_combout\ = ( \Display5|REG|DOUT\(0) & ( \Display5|REG|DOUT[1]~DUPLICATE_q\ & ( (\Display5|REG|DOUT\(2) & !\Display5|REG|DOUT\(3)) ) ) ) # ( \Display5|REG|DOUT\(0) & ( !\Display5|REG|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\Display5|REG|DOUT\(2) & !\Display5|REG|DOUT\(3)) ) ) ) # ( !\Display5|REG|DOUT\(0) & ( !\Display5|REG|DOUT[1]~DUPLICATE_q\ & ( !\Display5|REG|DOUT\(2) $ (\Display5|REG|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100010001000100000000000000000000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(2),
	datab => \Display5|REG|ALT_INV_DOUT\(3),
	datae => \Display5|REG|ALT_INV_DOUT\(0),
	dataf => \Display5|REG|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \Display5|Conv|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X4_Y38_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


