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

-- DATE "10/11/2022 18:11:48"

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

ENTITY 	Computador IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW0 : IN std_logic;
	SW1 : IN std_logic;
	SW2 : IN std_logic;
	SW3 : IN std_logic;
	SW4 : IN std_logic;
	SW5 : IN std_logic;
	SW6 : IN std_logic;
	SW7 : IN std_logic;
	SW8 : IN std_logic;
	SW9 : IN std_logic;
	KEY0_IN : IN std_logic;
	KEY1_IN : IN std_logic;
	KEY2_IN : IN std_logic;
	KEY3_IN : IN std_logic;
	FPGA_RESET_IN : IN std_logic;
	LED8 : OUT std_logic;
	LED9 : OUT std_logic;
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Computador;

ARCHITECTURE structure OF Computador IS
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
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW4 : std_logic;
SIGNAL ww_SW5 : std_logic;
SIGNAL ww_SW6 : std_logic;
SIGNAL ww_SW7 : std_logic;
SIGNAL ww_SW8 : std_logic;
SIGNAL ww_SW9 : std_logic;
SIGNAL ww_KEY0_IN : std_logic;
SIGNAL ww_KEY1_IN : std_logic;
SIGNAL ww_KEY2_IN : std_logic;
SIGNAL ww_KEY3_IN : std_logic;
SIGNAL ww_FPGA_RESET_IN : std_logic;
SIGNAL ww_LED8 : std_logic;
SIGNAL ww_LED9 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \KEY0_IN~input_o\ : std_logic;
SIGNAL \KEY1_IN~input_o\ : std_logic;
SIGNAL \KEY2_IN~input_o\ : std_logic;
SIGNAL \KEY3_IN~input_o\ : std_logic;
SIGNAL \FPGA_RESET_IN~input_o\ : std_logic;
SIGNAL \LED8~output_o\ : std_logic;
SIGNAL \LED9~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
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
SIGNAL \CPU|MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \HabL8~0_combout\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \HabSWR~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \SW9~input_o\ : std_logic;
SIGNAL \SW8~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \CPU|decoder|saida[4]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|decoder|saida[4]~0_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal10~0_combout\ : std_logic;
SIGNAL \HabHex3~0_combout\ : std_logic;
SIGNAL \FF1|DOUT~0_combout\ : std_logic;
SIGNAL \FF1|DOUT~q\ : std_logic;
SIGNAL \HabL9~0_combout\ : std_logic;
SIGNAL \FF2|DOUT~0_combout\ : std_logic;
SIGNAL \FF2|DOUT~q\ : std_logic;
SIGNAL \HabLR~0_combout\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \HabSWR~1_combout\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \DATA_RD[3]~0_combout\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \DATA_RD[4]~1_combout\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \SW7~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \DATA_RD[7]~2_combout\ : std_logic;
SIGNAL \HabHex0~0_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Display0|Conv|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HabHex1~0_combout\ : std_logic;
SIGNAL \Display1|Conv|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Display1|Conv|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Display1|Conv|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Display1|Conv|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Display1|Conv|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Display1|Conv|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Display1|Conv|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HabHex2~0_combout\ : std_logic;
SIGNAL \Display2|Conv|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Display2|Conv|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Display2|Conv|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Display2|Conv|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Display2|Conv|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Display2|Conv|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Display2|Conv|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HabHex3~combout\ : std_logic;
SIGNAL \Display3|Conv|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Display3|Conv|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Display3|Conv|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Display3|Conv|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Display3|Conv|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Display3|Conv|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Display3|Conv|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HabHex5~0_combout\ : std_logic;
SIGNAL \HabHex4~combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Display4|Conv|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HabHex5~combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Display5|Conv|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Display4|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display3|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display2|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display1|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGLED|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Display5|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display0|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW7~input_o\ : std_logic;
SIGNAL \ALT_INV_SW6~input_o\ : std_logic;
SIGNAL \ALT_INV_SW5~input_o\ : std_logic;
SIGNAL \ALT_INV_SW4~input_o\ : std_logic;
SIGNAL \ALT_INV_SW3~input_o\ : std_logic;
SIGNAL \ALT_INV_SW2~input_o\ : std_logic;
SIGNAL \ALT_INV_SW1~input_o\ : std_logic;
SIGNAL \ALT_INV_SW8~input_o\ : std_logic;
SIGNAL \ALT_INV_SW9~input_o\ : std_logic;
SIGNAL \ALT_INV_SW0~input_o\ : std_logic;
SIGNAL \ALT_INV_HabSWR~1_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_saida[4]~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_HabSWR~0_combout\ : std_logic;
SIGNAL \ALT_INV_HabHex5~0_combout\ : std_logic;
SIGNAL \ALT_INV_HabL9~0_combout\ : std_logic;
SIGNAL \ALT_INV_HabL8~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ALT_INV_HabHex3~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \Display5|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display4|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display3|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display2|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display1|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display0|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FF2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW0 <= SW0;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
ww_SW3 <= SW3;
ww_SW4 <= SW4;
ww_SW5 <= SW5;
ww_SW6 <= SW6;
ww_SW7 <= SW7;
ww_SW8 <= SW8;
ww_SW9 <= SW9;
ww_KEY0_IN <= KEY0_IN;
ww_KEY1_IN <= KEY1_IN;
ww_KEY2_IN <= KEY2_IN;
ww_KEY3_IN <= KEY3_IN;
ww_FPGA_RESET_IN <= FPGA_RESET_IN;
LED8 <= ww_LED8;
LED9 <= ww_LED9;
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
\ALT_INV_SW7~input_o\ <= NOT \SW7~input_o\;
\ALT_INV_SW6~input_o\ <= NOT \SW6~input_o\;
\ALT_INV_SW5~input_o\ <= NOT \SW5~input_o\;
\ALT_INV_SW4~input_o\ <= NOT \SW4~input_o\;
\ALT_INV_SW3~input_o\ <= NOT \SW3~input_o\;
\ALT_INV_SW2~input_o\ <= NOT \SW2~input_o\;
\ALT_INV_SW1~input_o\ <= NOT \SW1~input_o\;
\ALT_INV_SW8~input_o\ <= NOT \SW8~input_o\;
\ALT_INV_SW9~input_o\ <= NOT \SW9~input_o\;
\ALT_INV_SW0~input_o\ <= NOT \SW0~input_o\;
\ALT_INV_HabSWR~1_combout\ <= NOT \HabSWR~1_combout\;
\CPU|decoder|ALT_INV_saida[4]~1_combout\ <= NOT \CPU|decoder|saida[4]~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~6_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~5_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~4_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~3_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\CPU|decoder|ALT_INV_saida[4]~0_combout\ <= NOT \CPU|decoder|saida[4]~0_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\ALT_INV_HabSWR~0_combout\ <= NOT \HabSWR~0_combout\;
\ALT_INV_HabHex5~0_combout\ <= NOT \HabHex5~0_combout\;
\ALT_INV_HabL9~0_combout\ <= NOT \HabL9~0_combout\;
\ALT_INV_HabL8~0_combout\ <= NOT \HabL8~0_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ALT_INV_HabHex3~0_combout\ <= NOT \HabHex3~0_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\Display5|REG|ALT_INV_DOUT\(1) <= NOT \Display5|REG|DOUT\(1);
\Display5|REG|ALT_INV_DOUT\(2) <= NOT \Display5|REG|DOUT\(2);
\Display5|REG|ALT_INV_DOUT\(3) <= NOT \Display5|REG|DOUT\(3);
\Display5|REG|ALT_INV_DOUT\(0) <= NOT \Display5|REG|DOUT\(0);
\Display4|REG|ALT_INV_DOUT\(1) <= NOT \Display4|REG|DOUT\(1);
\Display4|REG|ALT_INV_DOUT\(2) <= NOT \Display4|REG|DOUT\(2);
\Display4|REG|ALT_INV_DOUT\(3) <= NOT \Display4|REG|DOUT\(3);
\Display4|REG|ALT_INV_DOUT\(0) <= NOT \Display4|REG|DOUT\(0);
\Display3|REG|ALT_INV_DOUT\(1) <= NOT \Display3|REG|DOUT\(1);
\Display3|REG|ALT_INV_DOUT\(2) <= NOT \Display3|REG|DOUT\(2);
\Display3|REG|ALT_INV_DOUT\(3) <= NOT \Display3|REG|DOUT\(3);
\Display3|REG|ALT_INV_DOUT\(0) <= NOT \Display3|REG|DOUT\(0);
\Display2|REG|ALT_INV_DOUT\(1) <= NOT \Display2|REG|DOUT\(1);
\Display2|REG|ALT_INV_DOUT\(2) <= NOT \Display2|REG|DOUT\(2);
\Display2|REG|ALT_INV_DOUT\(3) <= NOT \Display2|REG|DOUT\(3);
\Display2|REG|ALT_INV_DOUT\(0) <= NOT \Display2|REG|DOUT\(0);
\Display1|REG|ALT_INV_DOUT\(1) <= NOT \Display1|REG|DOUT\(1);
\Display1|REG|ALT_INV_DOUT\(2) <= NOT \Display1|REG|DOUT\(2);
\Display1|REG|ALT_INV_DOUT\(3) <= NOT \Display1|REG|DOUT\(3);
\Display1|REG|ALT_INV_DOUT\(0) <= NOT \Display1|REG|DOUT\(0);
\Display0|REG|ALT_INV_DOUT\(1) <= NOT \Display0|REG|DOUT\(1);
\Display0|REG|ALT_INV_DOUT\(2) <= NOT \Display0|REG|DOUT\(2);
\Display0|REG|ALT_INV_DOUT\(3) <= NOT \Display0|REG|DOUT\(3);
\Display0|REG|ALT_INV_DOUT\(0) <= NOT \Display0|REG|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\FF2|ALT_INV_DOUT~q\ <= NOT \FF2|DOUT~q\;
\FF1|ALT_INV_DOUT~q\ <= NOT \FF1|DOUT~q\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
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

\LED8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF1|DOUT~q\,
	devoe => ww_devoe,
	o => \LED8~output_o\);

\LED9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF2|DOUT~q\,
	devoe => ww_devoe,
	o => \LED9~output_o\);

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
	i => \Display1|Conv|rascSaida7seg[0]~0_combout\,
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
	i => \Display1|Conv|rascSaida7seg[1]~1_combout\,
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
	i => \Display1|Conv|rascSaida7seg[2]~2_combout\,
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
	i => \Display1|Conv|rascSaida7seg[3]~3_combout\,
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
	i => \Display1|Conv|rascSaida7seg[4]~4_combout\,
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
	i => \Display1|Conv|rascSaida7seg[5]~5_combout\,
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
	i => \Display1|Conv|rascSaida7seg[6]~6_combout\,
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
	i => \Display2|Conv|rascSaida7seg[0]~0_combout\,
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
	i => \Display2|Conv|rascSaida7seg[1]~1_combout\,
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
	i => \Display2|Conv|rascSaida7seg[2]~2_combout\,
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
	i => \Display2|Conv|rascSaida7seg[3]~3_combout\,
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
	i => \Display2|Conv|rascSaida7seg[4]~4_combout\,
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
	i => \Display2|Conv|rascSaida7seg[5]~5_combout\,
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
	i => \Display2|Conv|rascSaida7seg[6]~6_combout\,
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
	i => \Display3|Conv|rascSaida7seg[0]~0_combout\,
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
	i => \Display3|Conv|rascSaida7seg[1]~1_combout\,
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
	i => \Display3|Conv|rascSaida7seg[2]~2_combout\,
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
	i => \Display3|Conv|rascSaida7seg[3]~3_combout\,
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
	i => \Display3|Conv|rascSaida7seg[4]~4_combout\,
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
	i => \Display3|Conv|rascSaida7seg[5]~5_combout\,
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
	i => \Display3|Conv|rascSaida7seg[6]~6_combout\,
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

\CPU|MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~1_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( ((!\CPU|PC|DOUT\(4)) # ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))) # (\CPU|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX2|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

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

\CPU|MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~2_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ & ( ((!\CPU|PC|DOUT\(4)) # ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))) # (\CPU|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX2|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|saida_MUX[2]~2_combout\,
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

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~4_combout\);

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

\CPU|MUX2|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~4_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ & ( ((!\CPU|PC|DOUT\(4)) # ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))) # (\CPU|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX2|saida_MUX[5]~4_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|saida_MUX[5]~4_combout\,
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

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
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

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
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

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~2_combout\);

\CPU|MUX2|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~3_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ & ( ((!\CPU|PC|DOUT\(4)) # ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))) # (\CPU|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX2|saida_MUX[4]~3_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|saida_MUX[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\CPU|MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~0_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( ((!\CPU|PC|DOUT\(4)) # ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))) # (\CPU|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX2|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(4) & (\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~7_combout\);

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

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000101101010000000010110101000000001011010100000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101001000011010010100100001101001010010000110100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

\HabL8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabL8~0_combout\ = (\ROM|memROM~1_combout\ & ((!\ROM|memROM~5_combout\) # (\ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101010001010100010101000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	combout => \HabL8~0_combout\);

\SW0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000110011100001100011001110000110001100111000011000110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010010000000000101001000000000010100100000000001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\HabSWR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabSWR~0_combout\ = ( !\ROM|memROM~3_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (!\ROM|memROM~0_combout\ & \ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	combout => \HabSWR~0_combout\);

\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = ( \ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (\ROM|memROM~2_combout\ & !\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

\SW9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW9,
	o => \SW9~input_o\);

\SW8~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW8,
	o => \SW8~input_o\);

\CPU|MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~1_combout\ = ( \SW9~input_o\ & ( \SW8~input_o\ & ( (!\CPU|PC|DOUT\(0) & \ROM|memROM~1_combout\) ) ) ) # ( !\SW9~input_o\ & ( \SW8~input_o\ & ( (!\CPU|PC|DOUT\(0) & (\ROM|memROM~1_combout\ & ((!\ROM|memROM~6_combout\) # 
-- (\ROM|memROM~0_combout\)))) ) ) ) # ( \SW9~input_o\ & ( !\SW8~input_o\ & ( (!\CPU|PC|DOUT\(0) & (\ROM|memROM~1_combout\ & ((!\ROM|memROM~0_combout\) # (\ROM|memROM~6_combout\)))) ) ) ) # ( !\SW9~input_o\ & ( !\SW8~input_o\ & ( (!\CPU|PC|DOUT\(0) & 
-- (\ROM|memROM~1_combout\ & (!\ROM|memROM~0_combout\ $ (\ROM|memROM~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000010000010000000101000001010000000100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_SW9~input_o\,
	dataf => \ALT_INV_SW8~input_o\,
	combout => \CPU|MUX1|saida_MUX[0]~1_combout\);

\CPU|MUX1|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~2_combout\ = ( \CPU|MUX1|saida_MUX[0]~1_combout\ & ( ((!\HabSWR~0_combout\) # (\SW0~input_o\)) # (\HabL8~0_combout\) ) ) # ( !\CPU|MUX1|saida_MUX[0]~1_combout\ & ( (!\CPU|MUX1|saida_MUX[0]~0_combout\ & (((!\HabSWR~0_combout\) # 
-- (\SW0~input_o\)) # (\HabL8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000111101111111011111110111000000001111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HabL8~0_combout\,
	datab => \ALT_INV_SW0~input_o\,
	datac => \ALT_INV_HabSWR~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~2_combout\);

\CPU|decoder|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida[4]~1_combout\ = (\ROM|memROM~2_combout\ & ((!\CPU|PC|DOUT\(4)) # ((!\CPU|PC|DOUT\(0) & \ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001110000011000000111000001100000011100000110000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|decoder|saida[4]~1_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (\ROM|memROM~2_combout\ & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(4) & \ROM|memROM~4_combout\)) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000110000001000000011000000100000001100000010000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~8_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( ((!\ROM|memROM~8_combout\ & !\ROM|memROM~1_combout\)) # (\ROM|memROM~7_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[0]~2_combout\ $ (((!\ROM|memROM~7_combout\ & \CPU|decoder|saida[4]~1_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|MUX1|saida_MUX[0]~2_combout\ $ (((!\ROM|memROM~7_combout\ & \CPU|decoder|saida[4]~1_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~2_combout\,
	datad => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|decoder|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida[4]~0_combout\ = (!\ROM|memROM~2_combout\) # (\CPU|PC|DOUT\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|decoder|saida[4]~0_combout\);

\CPU|decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal10~0_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|decoder|Equal10~0_combout\);

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~2_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\HabHex3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabHex3~0_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (\ROM|memROM~2_combout\ & !\ROM|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	combout => \HabHex3~0_combout\);

\FF1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF1|DOUT~0_combout\ = ( \HabHex3~0_combout\ & ( \HabL8~0_combout\ & ( \FF1|DOUT~q\ ) ) ) # ( !\HabHex3~0_combout\ & ( \HabL8~0_combout\ & ( \FF1|DOUT~q\ ) ) ) # ( \HabHex3~0_combout\ & ( !\HabL8~0_combout\ & ( (!\ROM|memROM~0_combout\ & (\FF1|DOUT~q\)) # 
-- (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & (\FF1|DOUT~q\)) # (\ROM|memROM~1_combout\ & ((\CPU|REGA|DOUT\(0)))))) ) ) ) # ( !\HabHex3~0_combout\ & ( !\HabL8~0_combout\ & ( \FF1|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF1|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ALT_INV_HabHex3~0_combout\,
	dataf => \ALT_INV_HabL8~0_combout\,
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

\HabL9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabL9~0_combout\ = (\ROM|memROM~1_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	combout => \HabL9~0_combout\);

\FF2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF2|DOUT~0_combout\ = ( \HabHex3~0_combout\ & ( \HabL9~0_combout\ & ( (!\ROM|memROM~0_combout\ & (((\CPU|REGA|DOUT\(0))))) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & ((\CPU|REGA|DOUT\(0)))) # (\ROM|memROM~1_combout\ & (\FF2|DOUT~q\)))) ) ) ) 
-- # ( !\HabHex3~0_combout\ & ( \HabL9~0_combout\ & ( \FF2|DOUT~q\ ) ) ) # ( \HabHex3~0_combout\ & ( !\HabL9~0_combout\ & ( \FF2|DOUT~q\ ) ) ) # ( !\HabHex3~0_combout\ & ( !\HabL9~0_combout\ & ( \FF2|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010011001100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF2|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ALT_INV_HabHex3~0_combout\,
	dataf => \ALT_INV_HabL9~0_combout\,
	combout => \FF2|DOUT~0_combout\);

\FF2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FF2|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF2|DOUT~q\);

\HabLR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabLR~0_combout\ = (\HabHex3~0_combout\ & (!\HabL8~0_combout\ & ((!\ROM|memROM~0_combout\) # (!\ROM|memROM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000011100000000000001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_HabHex3~0_combout\,
	datad => \ALT_INV_HabL8~0_combout\,
	combout => \HabLR~0_combout\);

\REGLED|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \HabLR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(0));

\SW1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

\CPU|MUX1|saida_MUX[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~3_combout\ = (!\HabL8~0_combout\ & (\HabSWR~0_combout\ & \SW1~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HabL8~0_combout\,
	datab => \ALT_INV_HabSWR~0_combout\,
	datac => \ALT_INV_SW1~input_o\,
	combout => \CPU|MUX1|saida_MUX[1]~3_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~3_combout\ $ (((!\ROM|memROM~7_combout\ & \CPU|decoder|saida[4]~1_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~3_combout\ $ (((!\ROM|memROM~7_combout\ & \CPU|decoder|saida[4]~1_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~3_combout\,
	datad => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~3_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\REGLED|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \HabLR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(1));

\SW2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

\CPU|MUX1|saida_MUX[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~4_combout\ = (!\HabL8~0_combout\ & (\HabSWR~0_combout\ & \SW2~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HabL8~0_combout\,
	datab => \ALT_INV_HabSWR~0_combout\,
	datac => \ALT_INV_SW2~input_o\,
	combout => \CPU|MUX1|saida_MUX[2]~4_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~4_combout\ $ (((!\ROM|memROM~7_combout\ & \CPU|decoder|saida[4]~1_combout\))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~4_combout\ $ (((!\ROM|memROM~7_combout\ & \CPU|decoder|saida[4]~1_combout\))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[2]~4_combout\,
	datad => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~4_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\REGLED|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \HabLR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(2));

\HabSWR~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabSWR~1_combout\ = (!\HabL8~0_combout\ & \HabSWR~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HabL8~0_combout\,
	datab => \ALT_INV_HabSWR~0_combout\,
	combout => \HabSWR~1_combout\);

\SW3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( !\CPU|decoder|saida[4]~0_combout\ $ (((!\HabSWR~1_combout\) # (!\SW3~input_o\))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( !\CPU|decoder|saida[4]~0_combout\ $ (((!\HabSWR~1_combout\) # (!\SW3~input_o\))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	datac => \ALT_INV_HabSWR~1_combout\,
	datad => \ALT_INV_SW3~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\DATA_RD[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_RD[3]~0_combout\ = (!\HabL8~0_combout\ & (\HabSWR~0_combout\ & \SW3~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HabL8~0_combout\,
	datab => \ALT_INV_HabSWR~0_combout\,
	datac => \ALT_INV_SW3~input_o\,
	combout => \DATA_RD[3]~0_combout\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \DATA_RD[3]~0_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

\REGLED|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \HabLR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(3));

\SW4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\CPU|decoder|saida[4]~0_combout\ $ (((!\HabSWR~1_combout\) # (!\SW4~input_o\))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\CPU|decoder|saida[4]~0_combout\ $ (((!\HabSWR~1_combout\) # (!\SW4~input_o\))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	datac => \ALT_INV_HabSWR~1_combout\,
	datad => \ALT_INV_SW4~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\DATA_RD[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_RD[4]~1_combout\ = (!\HabL8~0_combout\ & (\HabSWR~0_combout\ & \SW4~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HabL8~0_combout\,
	datab => \ALT_INV_HabSWR~0_combout\,
	datac => \ALT_INV_SW4~input_o\,
	combout => \DATA_RD[4]~1_combout\);

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \DATA_RD[4]~1_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

\REGLED|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \HabLR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(4));

\SW5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

\CPU|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~5_combout\ = (!\HabL8~0_combout\ & (\HabSWR~0_combout\ & \SW5~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HabL8~0_combout\,
	datab => \ALT_INV_HabSWR~0_combout\,
	datac => \ALT_INV_SW5~input_o\,
	combout => \CPU|MUX1|saida_MUX[5]~5_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[5]~5_combout\ $ (((!\ROM|memROM~7_combout\ & \CPU|decoder|saida[4]~1_combout\))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|MUX1|saida_MUX[5]~5_combout\ $ (((!\ROM|memROM~7_combout\ & \CPU|decoder|saida[4]~1_combout\))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

\REGLED|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \HabLR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(5));

\SW6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

\CPU|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~6_combout\ = (!\HabL8~0_combout\ & (\HabSWR~0_combout\ & \SW6~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HabL8~0_combout\,
	datab => \ALT_INV_HabSWR~0_combout\,
	datac => \ALT_INV_SW6~input_o\,
	combout => \CPU|MUX1|saida_MUX[6]~6_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[6]~6_combout\ $ (((!\ROM|memROM~7_combout\ & \CPU|decoder|saida[4]~1_combout\))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|MUX1|saida_MUX[6]~6_combout\ $ (((!\ROM|memROM~7_combout\ & \CPU|decoder|saida[4]~1_combout\))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

\REGLED|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \HabLR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(6));

\SW7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW7,
	o => \SW7~input_o\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( !\CPU|decoder|saida[4]~0_combout\ $ (((!\HabSWR~1_combout\) # (!\SW7~input_o\))) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	datac => \ALT_INV_HabSWR~1_combout\,
	datad => \ALT_INV_SW7~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\DATA_RD[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_RD[7]~2_combout\ = (!\HabL8~0_combout\ & (\HabSWR~0_combout\ & \SW7~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HabL8~0_combout\,
	datab => \ALT_INV_HabSWR~0_combout\,
	datac => \ALT_INV_SW7~input_o\,
	combout => \DATA_RD[7]~2_combout\);

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \DATA_RD[7]~2_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

\REGLED|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \HabLR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED|DOUT\(7));

\HabHex0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabHex0~0_combout\ = ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (\HabHex3~0_combout\ & !\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_HabHex3~0_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \HabHex0~0_combout\);

\Display0|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \HabHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display0|REG|DOUT\(3));

\Display0|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \HabHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display0|REG|DOUT\(2));

\Display0|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \HabHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display0|REG|DOUT\(1));

\Display0|Conv|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[0]~0_combout\ = (!\Display0|REG|DOUT\(3) & (!\Display0|REG|DOUT\(1) & (!\Display0|REG|DOUT\(0) $ (!\Display0|REG|DOUT\(2))))) # (\Display0|REG|DOUT\(3) & (\Display0|REG|DOUT\(0) & (!\Display0|REG|DOUT\(2) $ 
-- (!\Display0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(0),
	datab => \Display0|REG|ALT_INV_DOUT\(3),
	datac => \Display0|REG|ALT_INV_DOUT\(2),
	datad => \Display0|REG|ALT_INV_DOUT\(1),
	combout => \Display0|Conv|rascSaida7seg[0]~0_combout\);

\Display0|Conv|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[1]~1_combout\ = (!\Display0|REG|DOUT\(3) & (\Display0|REG|DOUT\(2) & (!\Display0|REG|DOUT\(0) $ (!\Display0|REG|DOUT\(1))))) # (\Display0|REG|DOUT\(3) & ((!\Display0|REG|DOUT\(0) & (\Display0|REG|DOUT\(2))) # 
-- (\Display0|REG|DOUT\(0) & ((\Display0|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(0),
	datab => \Display0|REG|ALT_INV_DOUT\(3),
	datac => \Display0|REG|ALT_INV_DOUT\(2),
	datad => \Display0|REG|ALT_INV_DOUT\(1),
	combout => \Display0|Conv|rascSaida7seg[1]~1_combout\);

\Display0|Conv|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[2]~2_combout\ = (!\Display0|REG|DOUT\(3) & (!\Display0|REG|DOUT\(0) & (!\Display0|REG|DOUT\(2) & \Display0|REG|DOUT\(1)))) # (\Display0|REG|DOUT\(3) & (\Display0|REG|DOUT\(2) & ((!\Display0|REG|DOUT\(0)) # 
-- (\Display0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(0),
	datab => \Display0|REG|ALT_INV_DOUT\(3),
	datac => \Display0|REG|ALT_INV_DOUT\(2),
	datad => \Display0|REG|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(3),
	datab => \Display0|REG|ALT_INV_DOUT\(2),
	datac => \Display0|REG|ALT_INV_DOUT\(1),
	datad => \Display0|REG|ALT_INV_DOUT\(0),
	combout => \Display0|Conv|rascSaida7seg[4]~4_combout\);

\Display0|Conv|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[5]~5_combout\ = (!\Display0|REG|DOUT\(0) & (!\Display0|REG|DOUT\(2) & (\Display0|REG|DOUT\(1) & !\Display0|REG|DOUT\(3)))) # (\Display0|REG|DOUT\(0) & (!\Display0|REG|DOUT\(3) $ (((\Display0|REG|DOUT\(2) & 
-- !\Display0|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(0),
	datab => \Display0|REG|ALT_INV_DOUT\(2),
	datac => \Display0|REG|ALT_INV_DOUT\(1),
	datad => \Display0|REG|ALT_INV_DOUT\(3),
	combout => \Display0|Conv|rascSaida7seg[5]~5_combout\);

\Display0|Conv|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display0|Conv|rascSaida7seg[6]~6_combout\ = (!\Display0|REG|DOUT\(0) & (!\Display0|REG|DOUT\(1) & (!\Display0|REG|DOUT\(3) $ (\Display0|REG|DOUT\(2))))) # (\Display0|REG|DOUT\(0) & (!\Display0|REG|DOUT\(3) & (!\Display0|REG|DOUT\(2) $ 
-- (\Display0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display0|REG|ALT_INV_DOUT\(0),
	datab => \Display0|REG|ALT_INV_DOUT\(3),
	datac => \Display0|REG|ALT_INV_DOUT\(2),
	datad => \Display0|REG|ALT_INV_DOUT\(1),
	combout => \Display0|Conv|rascSaida7seg[6]~6_combout\);

\HabHex1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabHex1~0_combout\ = ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (\HabHex3~0_combout\ & !\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_HabHex3~0_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \HabHex1~0_combout\);

\Display1|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \HabHex1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display1|REG|DOUT\(0));

\Display1|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \HabHex1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display1|REG|DOUT\(3));

\Display1|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \HabHex1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display1|REG|DOUT\(2));

\Display1|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \HabHex1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display1|REG|DOUT\(1));

\Display1|Conv|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display1|Conv|rascSaida7seg[0]~0_combout\ = (!\Display1|REG|DOUT\(3) & (!\Display1|REG|DOUT\(1) & (!\Display1|REG|DOUT\(0) $ (!\Display1|REG|DOUT\(2))))) # (\Display1|REG|DOUT\(3) & (\Display1|REG|DOUT\(0) & (!\Display1|REG|DOUT\(2) $ 
-- (!\Display1|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display1|REG|ALT_INV_DOUT\(0),
	datab => \Display1|REG|ALT_INV_DOUT\(3),
	datac => \Display1|REG|ALT_INV_DOUT\(2),
	datad => \Display1|REG|ALT_INV_DOUT\(1),
	combout => \Display1|Conv|rascSaida7seg[0]~0_combout\);

\Display1|Conv|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display1|Conv|rascSaida7seg[1]~1_combout\ = (!\Display1|REG|DOUT\(3) & (\Display1|REG|DOUT\(2) & (!\Display1|REG|DOUT\(0) $ (!\Display1|REG|DOUT\(1))))) # (\Display1|REG|DOUT\(3) & ((!\Display1|REG|DOUT\(0) & (\Display1|REG|DOUT\(2))) # 
-- (\Display1|REG|DOUT\(0) & ((\Display1|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display1|REG|ALT_INV_DOUT\(0),
	datab => \Display1|REG|ALT_INV_DOUT\(3),
	datac => \Display1|REG|ALT_INV_DOUT\(2),
	datad => \Display1|REG|ALT_INV_DOUT\(1),
	combout => \Display1|Conv|rascSaida7seg[1]~1_combout\);

\Display1|Conv|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display1|Conv|rascSaida7seg[2]~2_combout\ = (!\Display1|REG|DOUT\(3) & (!\Display1|REG|DOUT\(0) & (!\Display1|REG|DOUT\(2) & \Display1|REG|DOUT\(1)))) # (\Display1|REG|DOUT\(3) & (\Display1|REG|DOUT\(2) & ((!\Display1|REG|DOUT\(0)) # 
-- (\Display1|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display1|REG|ALT_INV_DOUT\(0),
	datab => \Display1|REG|ALT_INV_DOUT\(3),
	datac => \Display1|REG|ALT_INV_DOUT\(2),
	datad => \Display1|REG|ALT_INV_DOUT\(1),
	combout => \Display1|Conv|rascSaida7seg[2]~2_combout\);

\Display1|Conv|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display1|Conv|rascSaida7seg[3]~3_combout\ = (!\Display1|REG|DOUT\(1) & (!\Display1|REG|DOUT\(3) & (!\Display1|REG|DOUT\(0) $ (!\Display1|REG|DOUT\(2))))) # (\Display1|REG|DOUT\(1) & ((!\Display1|REG|DOUT\(0) & (!\Display1|REG|DOUT\(2) & 
-- \Display1|REG|DOUT\(3))) # (\Display1|REG|DOUT\(0) & (\Display1|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display1|REG|ALT_INV_DOUT\(0),
	datab => \Display1|REG|ALT_INV_DOUT\(1),
	datac => \Display1|REG|ALT_INV_DOUT\(2),
	datad => \Display1|REG|ALT_INV_DOUT\(3),
	combout => \Display1|Conv|rascSaida7seg[3]~3_combout\);

\Display1|Conv|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display1|Conv|rascSaida7seg[4]~4_combout\ = (!\Display1|REG|DOUT\(1) & ((!\Display1|REG|DOUT\(2) & ((\Display1|REG|DOUT\(0)))) # (\Display1|REG|DOUT\(2) & (!\Display1|REG|DOUT\(3))))) # (\Display1|REG|DOUT\(1) & (!\Display1|REG|DOUT\(3) & 
-- ((\Display1|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display1|REG|ALT_INV_DOUT\(3),
	datab => \Display1|REG|ALT_INV_DOUT\(2),
	datac => \Display1|REG|ALT_INV_DOUT\(1),
	datad => \Display1|REG|ALT_INV_DOUT\(0),
	combout => \Display1|Conv|rascSaida7seg[4]~4_combout\);

\Display1|Conv|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display1|Conv|rascSaida7seg[5]~5_combout\ = (!\Display1|REG|DOUT\(0) & (!\Display1|REG|DOUT\(2) & (\Display1|REG|DOUT\(1) & !\Display1|REG|DOUT\(3)))) # (\Display1|REG|DOUT\(0) & (!\Display1|REG|DOUT\(3) $ (((\Display1|REG|DOUT\(2) & 
-- !\Display1|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display1|REG|ALT_INV_DOUT\(0),
	datab => \Display1|REG|ALT_INV_DOUT\(2),
	datac => \Display1|REG|ALT_INV_DOUT\(1),
	datad => \Display1|REG|ALT_INV_DOUT\(3),
	combout => \Display1|Conv|rascSaida7seg[5]~5_combout\);

\Display1|Conv|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display1|Conv|rascSaida7seg[6]~6_combout\ = (!\Display1|REG|DOUT\(0) & (!\Display1|REG|DOUT\(1) & (!\Display1|REG|DOUT\(3) $ (\Display1|REG|DOUT\(2))))) # (\Display1|REG|DOUT\(0) & (!\Display1|REG|DOUT\(3) & (!\Display1|REG|DOUT\(2) $ 
-- (\Display1|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display1|REG|ALT_INV_DOUT\(0),
	datab => \Display1|REG|ALT_INV_DOUT\(3),
	datac => \Display1|REG|ALT_INV_DOUT\(2),
	datad => \Display1|REG|ALT_INV_DOUT\(1),
	combout => \Display1|Conv|rascSaida7seg[6]~6_combout\);

\HabHex2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabHex2~0_combout\ = ( \ROM|memROM~6_combout\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (\HabHex3~0_combout\ & !\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_HabHex3~0_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \HabHex2~0_combout\);

\Display2|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \HabHex2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display2|REG|DOUT\(0));

\Display2|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \HabHex2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display2|REG|DOUT\(3));

\Display2|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \HabHex2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display2|REG|DOUT\(2));

\Display2|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \HabHex2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display2|REG|DOUT\(1));

\Display2|Conv|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display2|Conv|rascSaida7seg[0]~0_combout\ = (!\Display2|REG|DOUT\(3) & (!\Display2|REG|DOUT\(1) & (!\Display2|REG|DOUT\(0) $ (!\Display2|REG|DOUT\(2))))) # (\Display2|REG|DOUT\(3) & (\Display2|REG|DOUT\(0) & (!\Display2|REG|DOUT\(2) $ 
-- (!\Display2|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display2|REG|ALT_INV_DOUT\(0),
	datab => \Display2|REG|ALT_INV_DOUT\(3),
	datac => \Display2|REG|ALT_INV_DOUT\(2),
	datad => \Display2|REG|ALT_INV_DOUT\(1),
	combout => \Display2|Conv|rascSaida7seg[0]~0_combout\);

\Display2|Conv|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display2|Conv|rascSaida7seg[1]~1_combout\ = (!\Display2|REG|DOUT\(3) & (\Display2|REG|DOUT\(2) & (!\Display2|REG|DOUT\(0) $ (!\Display2|REG|DOUT\(1))))) # (\Display2|REG|DOUT\(3) & ((!\Display2|REG|DOUT\(0) & (\Display2|REG|DOUT\(2))) # 
-- (\Display2|REG|DOUT\(0) & ((\Display2|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display2|REG|ALT_INV_DOUT\(0),
	datab => \Display2|REG|ALT_INV_DOUT\(3),
	datac => \Display2|REG|ALT_INV_DOUT\(2),
	datad => \Display2|REG|ALT_INV_DOUT\(1),
	combout => \Display2|Conv|rascSaida7seg[1]~1_combout\);

\Display2|Conv|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display2|Conv|rascSaida7seg[2]~2_combout\ = (!\Display2|REG|DOUT\(3) & (!\Display2|REG|DOUT\(0) & (!\Display2|REG|DOUT\(2) & \Display2|REG|DOUT\(1)))) # (\Display2|REG|DOUT\(3) & (\Display2|REG|DOUT\(2) & ((!\Display2|REG|DOUT\(0)) # 
-- (\Display2|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display2|REG|ALT_INV_DOUT\(0),
	datab => \Display2|REG|ALT_INV_DOUT\(3),
	datac => \Display2|REG|ALT_INV_DOUT\(2),
	datad => \Display2|REG|ALT_INV_DOUT\(1),
	combout => \Display2|Conv|rascSaida7seg[2]~2_combout\);

\Display2|Conv|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display2|Conv|rascSaida7seg[3]~3_combout\ = (!\Display2|REG|DOUT\(1) & (!\Display2|REG|DOUT\(3) & (!\Display2|REG|DOUT\(0) $ (!\Display2|REG|DOUT\(2))))) # (\Display2|REG|DOUT\(1) & ((!\Display2|REG|DOUT\(0) & (!\Display2|REG|DOUT\(2) & 
-- \Display2|REG|DOUT\(3))) # (\Display2|REG|DOUT\(0) & (\Display2|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display2|REG|ALT_INV_DOUT\(0),
	datab => \Display2|REG|ALT_INV_DOUT\(1),
	datac => \Display2|REG|ALT_INV_DOUT\(2),
	datad => \Display2|REG|ALT_INV_DOUT\(3),
	combout => \Display2|Conv|rascSaida7seg[3]~3_combout\);

\Display2|Conv|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display2|Conv|rascSaida7seg[4]~4_combout\ = (!\Display2|REG|DOUT\(1) & ((!\Display2|REG|DOUT\(2) & ((\Display2|REG|DOUT\(0)))) # (\Display2|REG|DOUT\(2) & (!\Display2|REG|DOUT\(3))))) # (\Display2|REG|DOUT\(1) & (!\Display2|REG|DOUT\(3) & 
-- ((\Display2|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display2|REG|ALT_INV_DOUT\(3),
	datab => \Display2|REG|ALT_INV_DOUT\(2),
	datac => \Display2|REG|ALT_INV_DOUT\(1),
	datad => \Display2|REG|ALT_INV_DOUT\(0),
	combout => \Display2|Conv|rascSaida7seg[4]~4_combout\);

\Display2|Conv|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display2|Conv|rascSaida7seg[5]~5_combout\ = (!\Display2|REG|DOUT\(0) & (!\Display2|REG|DOUT\(2) & (\Display2|REG|DOUT\(1) & !\Display2|REG|DOUT\(3)))) # (\Display2|REG|DOUT\(0) & (!\Display2|REG|DOUT\(3) $ (((\Display2|REG|DOUT\(2) & 
-- !\Display2|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display2|REG|ALT_INV_DOUT\(0),
	datab => \Display2|REG|ALT_INV_DOUT\(2),
	datac => \Display2|REG|ALT_INV_DOUT\(1),
	datad => \Display2|REG|ALT_INV_DOUT\(3),
	combout => \Display2|Conv|rascSaida7seg[5]~5_combout\);

\Display2|Conv|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display2|Conv|rascSaida7seg[6]~6_combout\ = (!\Display2|REG|DOUT\(0) & (!\Display2|REG|DOUT\(1) & (!\Display2|REG|DOUT\(3) $ (\Display2|REG|DOUT\(2))))) # (\Display2|REG|DOUT\(0) & (!\Display2|REG|DOUT\(3) & (!\Display2|REG|DOUT\(2) $ 
-- (\Display2|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display2|REG|ALT_INV_DOUT\(0),
	datab => \Display2|REG|ALT_INV_DOUT\(3),
	datac => \Display2|REG|ALT_INV_DOUT\(2),
	datad => \Display2|REG|ALT_INV_DOUT\(1),
	combout => \Display2|Conv|rascSaida7seg[6]~6_combout\);

HabHex3 : cyclonev_lcell_comb
-- Equation(s):
-- \HabHex3~combout\ = ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (\HabHex3~0_combout\ & !\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_HabHex3~0_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \HabHex3~combout\);

\Display3|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \HabHex3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display3|REG|DOUT\(0));

\Display3|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \HabHex3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display3|REG|DOUT\(3));

\Display3|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \HabHex3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display3|REG|DOUT\(2));

\Display3|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \HabHex3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display3|REG|DOUT\(1));

\Display3|Conv|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display3|Conv|rascSaida7seg[0]~0_combout\ = (!\Display3|REG|DOUT\(3) & (!\Display3|REG|DOUT\(1) & (!\Display3|REG|DOUT\(0) $ (!\Display3|REG|DOUT\(2))))) # (\Display3|REG|DOUT\(3) & (\Display3|REG|DOUT\(0) & (!\Display3|REG|DOUT\(2) $ 
-- (!\Display3|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display3|REG|ALT_INV_DOUT\(0),
	datab => \Display3|REG|ALT_INV_DOUT\(3),
	datac => \Display3|REG|ALT_INV_DOUT\(2),
	datad => \Display3|REG|ALT_INV_DOUT\(1),
	combout => \Display3|Conv|rascSaida7seg[0]~0_combout\);

\Display3|Conv|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display3|Conv|rascSaida7seg[1]~1_combout\ = (!\Display3|REG|DOUT\(3) & (\Display3|REG|DOUT\(2) & (!\Display3|REG|DOUT\(0) $ (!\Display3|REG|DOUT\(1))))) # (\Display3|REG|DOUT\(3) & ((!\Display3|REG|DOUT\(0) & (\Display3|REG|DOUT\(2))) # 
-- (\Display3|REG|DOUT\(0) & ((\Display3|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display3|REG|ALT_INV_DOUT\(0),
	datab => \Display3|REG|ALT_INV_DOUT\(3),
	datac => \Display3|REG|ALT_INV_DOUT\(2),
	datad => \Display3|REG|ALT_INV_DOUT\(1),
	combout => \Display3|Conv|rascSaida7seg[1]~1_combout\);

\Display3|Conv|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display3|Conv|rascSaida7seg[2]~2_combout\ = (!\Display3|REG|DOUT\(3) & (!\Display3|REG|DOUT\(0) & (!\Display3|REG|DOUT\(2) & \Display3|REG|DOUT\(1)))) # (\Display3|REG|DOUT\(3) & (\Display3|REG|DOUT\(2) & ((!\Display3|REG|DOUT\(0)) # 
-- (\Display3|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display3|REG|ALT_INV_DOUT\(0),
	datab => \Display3|REG|ALT_INV_DOUT\(3),
	datac => \Display3|REG|ALT_INV_DOUT\(2),
	datad => \Display3|REG|ALT_INV_DOUT\(1),
	combout => \Display3|Conv|rascSaida7seg[2]~2_combout\);

\Display3|Conv|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display3|Conv|rascSaida7seg[3]~3_combout\ = (!\Display3|REG|DOUT\(1) & (!\Display3|REG|DOUT\(3) & (!\Display3|REG|DOUT\(0) $ (!\Display3|REG|DOUT\(2))))) # (\Display3|REG|DOUT\(1) & ((!\Display3|REG|DOUT\(0) & (!\Display3|REG|DOUT\(2) & 
-- \Display3|REG|DOUT\(3))) # (\Display3|REG|DOUT\(0) & (\Display3|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display3|REG|ALT_INV_DOUT\(0),
	datab => \Display3|REG|ALT_INV_DOUT\(1),
	datac => \Display3|REG|ALT_INV_DOUT\(2),
	datad => \Display3|REG|ALT_INV_DOUT\(3),
	combout => \Display3|Conv|rascSaida7seg[3]~3_combout\);

\Display3|Conv|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display3|Conv|rascSaida7seg[4]~4_combout\ = (!\Display3|REG|DOUT\(1) & ((!\Display3|REG|DOUT\(2) & ((\Display3|REG|DOUT\(0)))) # (\Display3|REG|DOUT\(2) & (!\Display3|REG|DOUT\(3))))) # (\Display3|REG|DOUT\(1) & (!\Display3|REG|DOUT\(3) & 
-- ((\Display3|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display3|REG|ALT_INV_DOUT\(3),
	datab => \Display3|REG|ALT_INV_DOUT\(2),
	datac => \Display3|REG|ALT_INV_DOUT\(1),
	datad => \Display3|REG|ALT_INV_DOUT\(0),
	combout => \Display3|Conv|rascSaida7seg[4]~4_combout\);

\Display3|Conv|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display3|Conv|rascSaida7seg[5]~5_combout\ = (!\Display3|REG|DOUT\(0) & (!\Display3|REG|DOUT\(2) & (\Display3|REG|DOUT\(1) & !\Display3|REG|DOUT\(3)))) # (\Display3|REG|DOUT\(0) & (!\Display3|REG|DOUT\(3) $ (((\Display3|REG|DOUT\(2) & 
-- !\Display3|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display3|REG|ALT_INV_DOUT\(0),
	datab => \Display3|REG|ALT_INV_DOUT\(2),
	datac => \Display3|REG|ALT_INV_DOUT\(1),
	datad => \Display3|REG|ALT_INV_DOUT\(3),
	combout => \Display3|Conv|rascSaida7seg[5]~5_combout\);

\Display3|Conv|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display3|Conv|rascSaida7seg[6]~6_combout\ = (!\Display3|REG|DOUT\(0) & (!\Display3|REG|DOUT\(1) & (!\Display3|REG|DOUT\(3) $ (\Display3|REG|DOUT\(2))))) # (\Display3|REG|DOUT\(0) & (!\Display3|REG|DOUT\(3) & (!\Display3|REG|DOUT\(2) $ 
-- (\Display3|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display3|REG|ALT_INV_DOUT\(0),
	datab => \Display3|REG|ALT_INV_DOUT\(3),
	datac => \Display3|REG|ALT_INV_DOUT\(2),
	datad => \Display3|REG|ALT_INV_DOUT\(1),
	combout => \Display3|Conv|rascSaida7seg[6]~6_combout\);

\HabHex5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabHex5~0_combout\ = ( !\ROM|memROM~5_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & \ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000000000000000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \HabHex5~0_combout\);

HabHex4 : cyclonev_lcell_comb
-- Equation(s):
-- \HabHex4~combout\ = ( \HabHex5~0_combout\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_HabHex5~0_combout\,
	combout => \HabHex4~combout\);

\Display4|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \HabHex4~combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \HabHex4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display4|REG|DOUT\(3));

\Display4|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \HabHex4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display4|REG|DOUT\(2));

\Display4|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \HabHex4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display4|REG|DOUT\(1));

\Display4|Conv|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[0]~0_combout\ = (!\Display4|REG|DOUT\(3) & (!\Display4|REG|DOUT\(1) & (!\Display4|REG|DOUT\(0) $ (!\Display4|REG|DOUT\(2))))) # (\Display4|REG|DOUT\(3) & (\Display4|REG|DOUT\(0) & (!\Display4|REG|DOUT\(2) $ 
-- (!\Display4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(0),
	datab => \Display4|REG|ALT_INV_DOUT\(3),
	datac => \Display4|REG|ALT_INV_DOUT\(2),
	datad => \Display4|REG|ALT_INV_DOUT\(1),
	combout => \Display4|Conv|rascSaida7seg[0]~0_combout\);

\Display4|Conv|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[1]~1_combout\ = (!\Display4|REG|DOUT\(3) & (\Display4|REG|DOUT\(2) & (!\Display4|REG|DOUT\(0) $ (!\Display4|REG|DOUT\(1))))) # (\Display4|REG|DOUT\(3) & ((!\Display4|REG|DOUT\(0) & (\Display4|REG|DOUT\(2))) # 
-- (\Display4|REG|DOUT\(0) & ((\Display4|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(0),
	datab => \Display4|REG|ALT_INV_DOUT\(3),
	datac => \Display4|REG|ALT_INV_DOUT\(2),
	datad => \Display4|REG|ALT_INV_DOUT\(1),
	combout => \Display4|Conv|rascSaida7seg[1]~1_combout\);

\Display4|Conv|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[2]~2_combout\ = (!\Display4|REG|DOUT\(3) & (!\Display4|REG|DOUT\(0) & (!\Display4|REG|DOUT\(2) & \Display4|REG|DOUT\(1)))) # (\Display4|REG|DOUT\(3) & (\Display4|REG|DOUT\(2) & ((!\Display4|REG|DOUT\(0)) # 
-- (\Display4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(0),
	datab => \Display4|REG|ALT_INV_DOUT\(3),
	datac => \Display4|REG|ALT_INV_DOUT\(2),
	datad => \Display4|REG|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(3),
	datab => \Display4|REG|ALT_INV_DOUT\(2),
	datac => \Display4|REG|ALT_INV_DOUT\(1),
	datad => \Display4|REG|ALT_INV_DOUT\(0),
	combout => \Display4|Conv|rascSaida7seg[4]~4_combout\);

\Display4|Conv|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[5]~5_combout\ = (!\Display4|REG|DOUT\(0) & (!\Display4|REG|DOUT\(2) & (\Display4|REG|DOUT\(1) & !\Display4|REG|DOUT\(3)))) # (\Display4|REG|DOUT\(0) & (!\Display4|REG|DOUT\(3) $ (((\Display4|REG|DOUT\(2) & 
-- !\Display4|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(0),
	datab => \Display4|REG|ALT_INV_DOUT\(2),
	datac => \Display4|REG|ALT_INV_DOUT\(1),
	datad => \Display4|REG|ALT_INV_DOUT\(3),
	combout => \Display4|Conv|rascSaida7seg[5]~5_combout\);

\Display4|Conv|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display4|Conv|rascSaida7seg[6]~6_combout\ = (!\Display4|REG|DOUT\(0) & (!\Display4|REG|DOUT\(1) & (!\Display4|REG|DOUT\(3) $ (\Display4|REG|DOUT\(2))))) # (\Display4|REG|DOUT\(0) & (!\Display4|REG|DOUT\(3) & (!\Display4|REG|DOUT\(2) $ 
-- (\Display4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|REG|ALT_INV_DOUT\(0),
	datab => \Display4|REG|ALT_INV_DOUT\(3),
	datac => \Display4|REG|ALT_INV_DOUT\(2),
	datad => \Display4|REG|ALT_INV_DOUT\(1),
	combout => \Display4|Conv|rascSaida7seg[6]~6_combout\);

HabHex5 : cyclonev_lcell_comb
-- Equation(s):
-- \HabHex5~combout\ = ( \HabHex5~0_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_HabHex5~0_combout\,
	combout => \HabHex5~combout\);

\Display5|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \HabHex5~combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \HabHex5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT\(3));

\Display5|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \HabHex5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT\(2));

\Display5|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \HabHex5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display5|REG|DOUT\(1));

\Display5|Conv|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[0]~0_combout\ = (!\Display5|REG|DOUT\(3) & (!\Display5|REG|DOUT\(1) & (!\Display5|REG|DOUT\(0) $ (!\Display5|REG|DOUT\(2))))) # (\Display5|REG|DOUT\(3) & (\Display5|REG|DOUT\(0) & (!\Display5|REG|DOUT\(2) $ 
-- (!\Display5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(0),
	datab => \Display5|REG|ALT_INV_DOUT\(3),
	datac => \Display5|REG|ALT_INV_DOUT\(2),
	datad => \Display5|REG|ALT_INV_DOUT\(1),
	combout => \Display5|Conv|rascSaida7seg[0]~0_combout\);

\Display5|Conv|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[1]~1_combout\ = (!\Display5|REG|DOUT\(3) & (\Display5|REG|DOUT\(2) & (!\Display5|REG|DOUT\(0) $ (!\Display5|REG|DOUT\(1))))) # (\Display5|REG|DOUT\(3) & ((!\Display5|REG|DOUT\(0) & (\Display5|REG|DOUT\(2))) # 
-- (\Display5|REG|DOUT\(0) & ((\Display5|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(0),
	datab => \Display5|REG|ALT_INV_DOUT\(3),
	datac => \Display5|REG|ALT_INV_DOUT\(2),
	datad => \Display5|REG|ALT_INV_DOUT\(1),
	combout => \Display5|Conv|rascSaida7seg[1]~1_combout\);

\Display5|Conv|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[2]~2_combout\ = (!\Display5|REG|DOUT\(3) & (!\Display5|REG|DOUT\(0) & (!\Display5|REG|DOUT\(2) & \Display5|REG|DOUT\(1)))) # (\Display5|REG|DOUT\(3) & (\Display5|REG|DOUT\(2) & ((!\Display5|REG|DOUT\(0)) # 
-- (\Display5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(0),
	datab => \Display5|REG|ALT_INV_DOUT\(3),
	datac => \Display5|REG|ALT_INV_DOUT\(2),
	datad => \Display5|REG|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(3),
	datab => \Display5|REG|ALT_INV_DOUT\(2),
	datac => \Display5|REG|ALT_INV_DOUT\(1),
	datad => \Display5|REG|ALT_INV_DOUT\(0),
	combout => \Display5|Conv|rascSaida7seg[4]~4_combout\);

\Display5|Conv|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[5]~5_combout\ = (!\Display5|REG|DOUT\(0) & (!\Display5|REG|DOUT\(2) & (\Display5|REG|DOUT\(1) & !\Display5|REG|DOUT\(3)))) # (\Display5|REG|DOUT\(0) & (!\Display5|REG|DOUT\(3) $ (((\Display5|REG|DOUT\(2) & 
-- !\Display5|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(0),
	datab => \Display5|REG|ALT_INV_DOUT\(2),
	datac => \Display5|REG|ALT_INV_DOUT\(1),
	datad => \Display5|REG|ALT_INV_DOUT\(3),
	combout => \Display5|Conv|rascSaida7seg[5]~5_combout\);

\Display5|Conv|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display5|Conv|rascSaida7seg[6]~6_combout\ = (!\Display5|REG|DOUT\(0) & (!\Display5|REG|DOUT\(1) & (!\Display5|REG|DOUT\(3) $ (\Display5|REG|DOUT\(2))))) # (\Display5|REG|DOUT\(0) & (!\Display5|REG|DOUT\(3) & (!\Display5|REG|DOUT\(2) $ 
-- (\Display5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|REG|ALT_INV_DOUT\(0),
	datab => \Display5|REG|ALT_INV_DOUT\(3),
	datac => \Display5|REG|ALT_INV_DOUT\(2),
	datad => \Display5|REG|ALT_INV_DOUT\(1),
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

\KEY0_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0_IN,
	o => \KEY0_IN~input_o\);

\KEY1_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1_IN,
	o => \KEY1_IN~input_o\);

\KEY2_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2_IN,
	o => \KEY2_IN~input_o\);

\KEY3_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3_IN,
	o => \KEY3_IN~input_o\);

\FPGA_RESET_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_IN,
	o => \FPGA_RESET_IN~input_o\);

ww_LED8 <= \LED8~output_o\;

ww_LED9 <= \LED9~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

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


