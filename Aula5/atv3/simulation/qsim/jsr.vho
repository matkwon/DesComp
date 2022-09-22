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

-- DATE "09/22/2022 11:04:50"

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

ENTITY 	Aula5_3 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LED_FlagIN : OUT std_logic;
	LED_FlagOUT : OUT std_logic;
	LED_Hab : OUT std_logic;
	LED_INSTRU : OUT std_logic_vector(12 DOWNTO 0);
	LED_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END Aula5_3;

ARCHITECTURE structure OF Aula5_3 IS
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
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LED_FlagIN : std_logic;
SIGNAL ww_LED_FlagOUT : std_logic;
SIGNAL ww_LED_Hab : std_logic;
SIGNAL ww_LED_INSTRU : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_LED_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \LED_FlagIN~output_o\ : std_logic;
SIGNAL \LED_FlagOUT~output_o\ : std_logic;
SIGNAL \LED_Hab~output_o\ : std_logic;
SIGNAL \LED_INSTRU[0]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[1]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[2]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[3]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[4]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[5]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[6]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[7]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[8]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[9]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[10]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[11]~output_o\ : std_logic;
SIGNAL \LED_INSTRU[12]~output_o\ : std_logic;
SIGNAL \LED_OUT[0]~output_o\ : std_logic;
SIGNAL \LED_OUT[1]~output_o\ : std_logic;
SIGNAL \LED_OUT[2]~output_o\ : std_logic;
SIGNAL \LED_OUT[3]~output_o\ : std_logic;
SIGNAL \LED_OUT[4]~output_o\ : std_logic;
SIGNAL \LED_OUT[5]~output_o\ : std_logic;
SIGNAL \LED_OUT[6]~output_o\ : std_logic;
SIGNAL \LED_OUT[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \decoder|Equal10~4_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \decoder|Equal10~1_combout\ : std_logic;
SIGNAL \decoder|saida~0_combout\ : std_logic;
SIGNAL \decoder|Equal10~0_combout\ : std_logic;
SIGNAL \decoder|Equal10~2_combout\ : std_logic;
SIGNAL \decoder|Equal10~3_combout\ : std_logic;
SIGNAL \decoder|saida~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \decoder|saida~2_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~165_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~166_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~148_combout\ : std_logic;
SIGNAL \RAM|ram~149_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~145_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~146_combout\ : std_logic;
SIGNAL \RAM|ram~147_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \FlagIgualIN~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~158_combout\ : std_logic;
SIGNAL \RAM|ram~159_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~155_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~156_combout\ : std_logic;
SIGNAL \RAM|ram~157_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~150_combout\ : std_logic;
SIGNAL \RAM|ram~151_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~152_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~153_combout\ : std_logic;
SIGNAL \RAM|ram~154_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \FlagIgualIN~1_combout\ : std_logic;
SIGNAL \FlagIgualIN~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~160_combout\ : std_logic;
SIGNAL \RAM|ram~161_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~162_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~163_combout\ : std_logic;
SIGNAL \RAM|ram~164_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \FlagIgualIN~3_combout\ : std_logic;
SIGNAL \REGB|DOUT~0_combout\ : std_logic;
SIGNAL \REGB|DOUT~q\ : std_logic;
SIGNAL \SelMUX2[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \FlagIgualIN~combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL SelMUX2 : std_logic_vector(1 DOWNTO 0);
SIGNAL \REGC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \decoder|ALT_INV_Equal10~3_combout\ : std_logic;
SIGNAL \decoder|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \decoder|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \REGC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL ALT_INV_SelMUX2 : std_logic_vector(1 DOWNTO 1);
SIGNAL \ALT_INV_SelMUX2[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \decoder|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \REGB|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_FlagIgualIN~combout\ : std_logic;
SIGNAL \ALT_INV_FlagIgualIN~3_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ALT_INV_FlagIgualIN~2_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ALT_INV_FlagIgualIN~1_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ALT_INV_FlagIgualIN~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \decoder|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \decoder|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LED_FlagIN <= ww_LED_FlagIN;
LED_FlagOUT <= ww_LED_FlagOUT;
LED_Hab <= ww_LED_Hab;
LED_INSTRU <= ww_LED_INSTRU;
LED_OUT <= ww_LED_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\decoder|ALT_INV_Equal10~3_combout\ <= NOT \decoder|Equal10~3_combout\;
\decoder|ALT_INV_Equal10~2_combout\ <= NOT \decoder|Equal10~2_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\decoder|ALT_INV_saida~1_combout\ <= NOT \decoder|saida~1_combout\;
\REGC|ALT_INV_DOUT\(8) <= NOT \REGC|DOUT\(8);
\REGC|ALT_INV_DOUT\(7) <= NOT \REGC|DOUT\(7);
\REGC|ALT_INV_DOUT\(6) <= NOT \REGC|DOUT\(6);
\REGC|ALT_INV_DOUT\(5) <= NOT \REGC|DOUT\(5);
\REGC|ALT_INV_DOUT\(4) <= NOT \REGC|DOUT\(4);
\REGC|ALT_INV_DOUT\(3) <= NOT \REGC|DOUT\(3);
\REGC|ALT_INV_DOUT\(2) <= NOT \REGC|DOUT\(2);
\REGC|ALT_INV_DOUT\(1) <= NOT \REGC|DOUT\(1);
ALT_INV_SelMUX2(1) <= NOT SelMUX2(1);
\REGC|ALT_INV_DOUT\(0) <= NOT \REGC|DOUT\(0);
\ALT_INV_SelMUX2[0]~0_combout\ <= NOT \SelMUX2[0]~0_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\decoder|ALT_INV_Equal10~1_combout\ <= NOT \decoder|Equal10~1_combout\;
\REGB|ALT_INV_DOUT~q\ <= NOT \REGB|DOUT~q\;
\ALT_INV_FlagIgualIN~combout\ <= NOT \FlagIgualIN~combout\;
\ALT_INV_FlagIgualIN~3_combout\ <= NOT \FlagIgualIN~3_combout\;
\MUX1|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX1|saida_MUX[7]~7_combout\;
\RAM|ALT_INV_ram~164_combout\ <= NOT \RAM|ram~164_combout\;
\RAM|ALT_INV_ram~163_combout\ <= NOT \RAM|ram~163_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~162_combout\ <= NOT \RAM|ram~162_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\MUX1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUX1|saida_MUX[6]~6_combout\;
\RAM|ALT_INV_ram~161_combout\ <= NOT \RAM|ram~161_combout\;
\RAM|ALT_INV_ram~160_combout\ <= NOT \RAM|ram~160_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\ALT_INV_FlagIgualIN~2_combout\ <= NOT \FlagIgualIN~2_combout\;
\MUX1|ALT_INV_saida_MUX[2]~5_combout\ <= NOT \MUX1|saida_MUX[2]~5_combout\;
\RAM|ALT_INV_ram~159_combout\ <= NOT \RAM|ram~159_combout\;
\RAM|ALT_INV_ram~158_combout\ <= NOT \RAM|ram~158_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\MUX1|ALT_INV_saida_MUX[3]~4_combout\ <= NOT \MUX1|saida_MUX[3]~4_combout\;
\RAM|ALT_INV_ram~157_combout\ <= NOT \RAM|ram~157_combout\;
\RAM|ALT_INV_ram~156_combout\ <= NOT \RAM|ram~156_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~155_combout\ <= NOT \RAM|ram~155_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\ALT_INV_FlagIgualIN~1_combout\ <= NOT \FlagIgualIN~1_combout\;
\MUX1|ALT_INV_saida_MUX[5]~3_combout\ <= NOT \MUX1|saida_MUX[5]~3_combout\;
\RAM|ALT_INV_ram~154_combout\ <= NOT \RAM|ram~154_combout\;
\RAM|ALT_INV_ram~153_combout\ <= NOT \RAM|ram~153_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~152_combout\ <= NOT \RAM|ram~152_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\MUX1|ALT_INV_saida_MUX[4]~2_combout\ <= NOT \MUX1|saida_MUX[4]~2_combout\;
\RAM|ALT_INV_ram~151_combout\ <= NOT \RAM|ram~151_combout\;
\RAM|ALT_INV_ram~150_combout\ <= NOT \RAM|ram~150_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\ALT_INV_FlagIgualIN~0_combout\ <= NOT \FlagIgualIN~0_combout\;
\MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \MUX1|saida_MUX[0]~1_combout\;
\RAM|ALT_INV_ram~149_combout\ <= NOT \RAM|ram~149_combout\;
\RAM|ALT_INV_ram~148_combout\ <= NOT \RAM|ram~148_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \MUX1|saida_MUX[1]~0_combout\;
\RAM|ALT_INV_ram~147_combout\ <= NOT \RAM|ram~147_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\RAM|ALT_INV_ram~146_combout\ <= NOT \RAM|ram~146_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~145_combout\ <= NOT \RAM|ram~145_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\decoder|ALT_INV_Equal10~0_combout\ <= NOT \decoder|Equal10~0_combout\;
\decoder|ALT_INV_saida~0_combout\ <= NOT \decoder|saida~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
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
	i => \PC|DOUT\(1),
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
	i => \PC|DOUT\(2),
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
	i => \PC|DOUT\(3),
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
	i => \PC|DOUT\(4),
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
	i => \PC|DOUT\(5),
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
	i => \PC|DOUT\(6),
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
	i => \PC|DOUT\(7),
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
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\LED_FlagIN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_FlagIgualIN~combout\,
	devoe => ww_devoe,
	o => \LED_FlagIN~output_o\);

\LED_FlagOUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGB|DOUT~q\,
	devoe => ww_devoe,
	o => \LED_FlagOUT~output_o\);

\LED_Hab~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|Equal10~1_combout\,
	devoe => ww_devoe,
	o => \LED_Hab~output_o\);

\LED_INSTRU[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~15_combout\,
	devoe => ww_devoe,
	o => \LED_INSTRU[0]~output_o\);

\LED_INSTRU[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => \LED_INSTRU[1]~output_o\);

\LED_INSTRU[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => \LED_INSTRU[2]~output_o\);

\LED_INSTRU[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~14_combout\,
	devoe => ww_devoe,
	o => \LED_INSTRU[3]~output_o\);

\LED_INSTRU[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_INSTRU[4]~output_o\);

\LED_INSTRU[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_INSTRU[5]~output_o\);

\LED_INSTRU[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_INSTRU[6]~output_o\);

\LED_INSTRU[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_INSTRU[7]~output_o\);

\LED_INSTRU[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~17_combout\,
	devoe => ww_devoe,
	o => \LED_INSTRU[8]~output_o\);

\LED_INSTRU[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => \LED_INSTRU[9]~output_o\);

\LED_INSTRU[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => \LED_INSTRU[10]~output_o\);

\LED_INSTRU[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => \LED_INSTRU[11]~output_o\);

\LED_INSTRU[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => \LED_INSTRU[12]~output_o\);

\LED_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \LED_OUT[0]~output_o\);

\LED_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \LED_OUT[1]~output_o\);

\LED_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \LED_OUT[2]~output_o\);

\LED_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \LED_OUT[3]~output_o\);

\LED_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \LED_OUT[4]~output_o\);

\LED_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \LED_OUT[5]~output_o\);

\LED_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \LED_OUT[6]~output_o\);

\LED_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => \LED_OUT[7]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\PC|DOUT\(0) & (((!\PC|DOUT\(2) & !\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & \PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000100101000000000010010100000000001001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~13_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~14_combout\);

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (!\PC|DOUT\(1))) # (\PC|DOUT\(0) & ((\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ ((!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(0))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\decoder|Equal10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Equal10~4_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \decoder|Equal10~4_combout\);

\REGC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \decoder|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGC|DOUT\(3));

\MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[3]~3_combout\ = ( \incrementaPC|Add0~13_sumout\ & ( (!\SelMUX2[0]~0_combout\ & (((!SelMUX2(1)) # (\REGC|DOUT\(3))))) # (\SelMUX2[0]~0_combout\ & (\ROM1|memROM~14_combout\)) ) ) # ( !\incrementaPC|Add0~13_sumout\ & ( 
-- (!\SelMUX2[0]~0_combout\ & (((SelMUX2(1) & \REGC|DOUT\(3))))) # (\SelMUX2[0]~0_combout\ & (\ROM1|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ALT_INV_SelMUX2[0]~0_combout\,
	datac => ALT_INV_SelMUX2(1),
	datad => \REGC|ALT_INV_DOUT\(3),
	datae => \incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \MUX2|saida_MUX[3]~3_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(1) $ (\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000100100110001000010010011000100001001001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

\REGC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \decoder|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGC|DOUT\(2));

\MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[2]~2_combout\ = ( \incrementaPC|Add0~9_sumout\ & ( (!\SelMUX2[0]~0_combout\ & (((!SelMUX2(1)) # (\REGC|DOUT\(2))))) # (\SelMUX2[0]~0_combout\ & (\ROM1|memROM~12_combout\)) ) ) # ( !\incrementaPC|Add0~9_sumout\ & ( (!\SelMUX2[0]~0_combout\ 
-- & (((SelMUX2(1) & \REGC|DOUT\(2))))) # (\SelMUX2[0]~0_combout\ & (\ROM1|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ALT_INV_SelMUX2[0]~0_combout\,
	datac => ALT_INV_SelMUX2(1),
	datad => \REGC|ALT_INV_DOUT\(2),
	datae => \incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \MUX2|saida_MUX[2]~2_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(3) $ (((!\PC|DOUT\(1) & \PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

\SelMUX2[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- SelMUX2(1) = (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	combout => SelMUX2(1));

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

\REGC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \decoder|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGC|DOUT\(5));

\MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[5]~5_combout\ = (!\SelMUX2[0]~0_combout\ & ((!SelMUX2(1) & ((\incrementaPC|Add0~21_sumout\))) # (SelMUX2(1) & (\REGC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelMUX2[0]~0_combout\,
	datab => ALT_INV_SelMUX2(1),
	datac => \REGC|ALT_INV_DOUT\(5),
	datad => \incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \MUX2|saida_MUX[5]~5_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\REGC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \decoder|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGC|DOUT\(6));

\MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[6]~6_combout\ = (!\SelMUX2[0]~0_combout\ & ((!SelMUX2(1) & ((\incrementaPC|Add0~25_sumout\))) # (SelMUX2(1) & (\REGC|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelMUX2[0]~0_combout\,
	datab => ALT_INV_SelMUX2(1),
	datac => \REGC|ALT_INV_DOUT\(6),
	datad => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \MUX2|saida_MUX[6]~6_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

\REGC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \decoder|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGC|DOUT\(7));

\MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[7]~7_combout\ = (!\SelMUX2[0]~0_combout\ & ((!SelMUX2(1) & ((\incrementaPC|Add0~29_sumout\))) # (SelMUX2(1) & (\REGC|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelMUX2[0]~0_combout\,
	datab => ALT_INV_SelMUX2(1),
	datac => \REGC|ALT_INV_DOUT\(7),
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \MUX2|saida_MUX[7]~7_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (\PC|DOUT\(1) & ((!\PC|DOUT\(2) & (\PC|DOUT\(0) & \PC|DOUT\(3))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010000000000110001000000000011000100000000001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~16_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~17_combout\);

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

\REGC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \decoder|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGC|DOUT\(8));

\MUX2|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[8]~8_combout\ = ( \incrementaPC|Add0~33_sumout\ & ( (!\SelMUX2[0]~0_combout\ & (((!SelMUX2(1)) # (\REGC|DOUT\(8))))) # (\SelMUX2[0]~0_combout\ & (\ROM1|memROM~17_combout\)) ) ) # ( !\incrementaPC|Add0~33_sumout\ & ( 
-- (!\SelMUX2[0]~0_combout\ & (((SelMUX2(1) & \REGC|DOUT\(8))))) # (\SelMUX2[0]~0_combout\ & (\ROM1|memROM~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ALT_INV_SelMUX2[0]~0_combout\,
	datac => ALT_INV_SelMUX2(1),
	datad => \REGC|ALT_INV_DOUT\(8),
	datae => \incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \MUX2|saida_MUX[8]~8_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~10_combout\);

\REGC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \decoder|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGC|DOUT\(1));

\MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[1]~1_combout\ = ( \incrementaPC|Add0~5_sumout\ & ( (!\SelMUX2[0]~0_combout\ & (((!SelMUX2(1)) # (\REGC|DOUT\(1))))) # (\SelMUX2[0]~0_combout\ & (\ROM1|memROM~10_combout\)) ) ) # ( !\incrementaPC|Add0~5_sumout\ & ( (!\SelMUX2[0]~0_combout\ 
-- & (((SelMUX2(1) & \REGC|DOUT\(1))))) # (\SelMUX2[0]~0_combout\ & (\ROM1|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ALT_INV_SelMUX2[0]~0_combout\,
	datac => ALT_INV_SelMUX2(1),
	datad => \REGC|ALT_INV_DOUT\(1),
	datae => \incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \MUX2|saida_MUX[1]~1_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\decoder|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Equal10~1_combout\ = (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \decoder|Equal10~1_combout\);

\decoder|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|saida~0_combout\ = (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\ & ((\ROM1|memROM~8_combout\) # (\ROM1|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100000001000001010000000100000101000000010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \decoder|saida~0_combout\);

\decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Equal10~0_combout\ = ( \ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \decoder|Equal10~0_combout\);

\decoder|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Equal10~2_combout\ = (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \decoder|Equal10~2_combout\);

\decoder|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Equal10~3_combout\ = (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \decoder|Equal10~3_combout\);

\decoder|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|saida~1_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \decoder|saida~1_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( (!\decoder|Equal10~2_combout\ & (!\decoder|Equal10~3_combout\ & !\decoder|saida~1_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~2_combout\,
	datab => \decoder|ALT_INV_Equal10~3_combout\,
	datad => \decoder|ALT_INV_saida~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\MUX1|saida_MUX[0]~1_combout\ $ ((((\decoder|saida~1_combout\) # (\decoder|Equal10~3_combout\)) # (\decoder|Equal10~2_combout\))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~6\ = CARRY(( !\MUX1|saida_MUX[0]~1_combout\ $ ((((\decoder|saida~1_combout\) # (\decoder|Equal10~3_combout\)) # (\decoder|Equal10~2_combout\))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~2_combout\,
	datab => \decoder|ALT_INV_Equal10~3_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \decoder|ALT_INV_saida~1_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\decoder|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|saida~2_combout\ = (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~8_combout\ $ (((!\ROM1|memROM~6_combout\ & !\ROM1|memROM~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010001000001010001000100000101000100010000010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \decoder|saida~2_combout\);

\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[0]~1_combout\,
	sload => \decoder|saida~0_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & \ROM1|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM|process_0~0_combout\);

\RAM|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~165_combout\ = ( !\ROM1|memROM~14_combout\ & ( \RAM|process_0~0_combout\ & ( (\decoder|saida~1_combout\ & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~1_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~165_combout\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~166_combout\ = ( !\ROM1|memROM~14_combout\ & ( \RAM|process_0~0_combout\ & ( (\decoder|saida~1_combout\ & (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~1_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~166_combout\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~148_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~25_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~25_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~148_combout\);

\RAM|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~149_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~148_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~148_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~149_combout\);

\MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~1_combout\ = (!\decoder|Equal10~0_combout\ & ((\RAM|ram~149_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_ram~149_combout\,
	combout => \MUX1|saida_MUX[0]~1_combout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\MUX1|saida_MUX[1]~0_combout\ $ ((((\decoder|saida~1_combout\) # (\decoder|Equal10~3_combout\)) # (\decoder|Equal10~2_combout\))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~2\ = CARRY(( !\MUX1|saida_MUX[1]~0_combout\ $ ((((\decoder|saida~1_combout\) # (\decoder|Equal10~3_combout\)) # (\decoder|Equal10~2_combout\))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~2_combout\,
	datab => \decoder|ALT_INV_Equal10~3_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datad => \decoder|ALT_INV_saida~1_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[1]~0_combout\,
	sload => \decoder|saida~0_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~145_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~145_combout\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~146_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~146_combout\);

\RAM|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~147_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~146_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~145_combout\,
	datab => \RAM|ALT_INV_ram~146_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~147_combout\);

\MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~0_combout\ = (!\decoder|Equal10~0_combout\ & ((\RAM|ram~147_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~147_combout\,
	combout => \MUX1|saida_MUX[1]~0_combout\);

\FlagIgualIN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagIgualIN~0_combout\ = ( \ULA1|Add0~5_sumout\ & ( (\decoder|saida~0_combout\ & (!\MUX1|saida_MUX[1]~0_combout\ & !\MUX1|saida_MUX[0]~1_combout\)) ) ) # ( !\ULA1|Add0~5_sumout\ & ( (!\decoder|saida~0_combout\ & (((!\ULA1|Add0~1_sumout\)))) # 
-- (\decoder|saida~0_combout\ & (!\MUX1|saida_MUX[1]~0_combout\ & (!\MUX1|saida_MUX[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000010000000100000011101010010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \ULA1|ALT_INV_Add0~1_sumout\,
	datae => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \FlagIgualIN~0_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\MUX1|saida_MUX[2]~5_combout\ $ ((((\decoder|saida~1_combout\) # (\decoder|Equal10~3_combout\)) # (\decoder|Equal10~2_combout\))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~22\ = CARRY(( !\MUX1|saida_MUX[2]~5_combout\ $ ((((\decoder|saida~1_combout\) # (\decoder|Equal10~3_combout\)) # (\decoder|Equal10~2_combout\))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~2_combout\,
	datab => \decoder|ALT_INV_Equal10~3_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[2]~5_combout\,
	datad => \decoder|ALT_INV_saida~1_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[2]~5_combout\,
	sload => \decoder|saida~0_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM|ram~165_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~158_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~27_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datab => \RAM|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~158_combout\);

\RAM|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~159_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~158_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~158_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~159_combout\);

\MUX1|saida_MUX[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~5_combout\ = (!\decoder|Equal10~0_combout\ & ((\RAM|ram~159_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \RAM|ALT_INV_ram~159_combout\,
	combout => \MUX1|saida_MUX[2]~5_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\MUX1|saida_MUX[3]~4_combout\ $ ((((\decoder|Equal10~3_combout\) # (\decoder|Equal10~2_combout\)) # (\decoder|saida~1_combout\))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~18\ = CARRY(( !\MUX1|saida_MUX[3]~4_combout\ $ ((((\decoder|Equal10~3_combout\) # (\decoder|Equal10~2_combout\)) # (\decoder|saida~1_combout\))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~1_combout\,
	datab => \decoder|ALT_INV_Equal10~2_combout\,
	datac => \decoder|ALT_INV_Equal10~3_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[3]~4_combout\,
	sload => \decoder|saida~0_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~155_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~155_combout\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~156_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~156_combout\);

\RAM|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~157_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~156_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~155_combout\,
	datab => \RAM|ALT_INV_ram~156_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~157_combout\);

\MUX1|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~4_combout\ = (!\decoder|Equal10~0_combout\ & ((\RAM|ram~157_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \RAM|ALT_INV_ram~157_combout\,
	combout => \MUX1|saida_MUX[3]~4_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\MUX1|saida_MUX[4]~2_combout\ $ ((((\decoder|Equal10~3_combout\) # (\decoder|Equal10~2_combout\)) # (\decoder|saida~1_combout\))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~14\ = CARRY(( !\MUX1|saida_MUX[4]~2_combout\ $ ((((\decoder|Equal10~3_combout\) # (\decoder|Equal10~2_combout\)) # (\decoder|saida~1_combout\))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~1_combout\,
	datab => \decoder|ALT_INV_Equal10~2_combout\,
	datac => \decoder|ALT_INV_Equal10~3_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[4]~2_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[4]~2_combout\,
	sload => \decoder|saida~0_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM|ram~165_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~150_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~29_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~29_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~150_combout\);

\RAM|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~151_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~150_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~150_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~151_combout\);

\MUX1|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~2_combout\ = (!\decoder|Equal10~0_combout\ & \RAM|ram~151_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \RAM|ALT_INV_ram~151_combout\,
	combout => \MUX1|saida_MUX[4]~2_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\decoder|saida~0_combout\ & (!\decoder|Equal10~3_combout\ $ (((!\decoder|Equal10~0_combout\ & \RAM|ram~154_combout\))))) # (\decoder|saida~0_combout\ & (((!\decoder|Equal10~0_combout\ & \RAM|ram~154_combout\)))) ) + ( 
-- \REGA|DOUT\(5) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\decoder|saida~0_combout\ & (!\decoder|Equal10~3_combout\ $ (((!\decoder|Equal10~0_combout\ & \RAM|ram~154_combout\))))) # (\decoder|saida~0_combout\ & (((!\decoder|Equal10~0_combout\ & \RAM|ram~154_combout\)))) ) + ( 
-- \REGA|DOUT\(5) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \decoder|ALT_INV_Equal10~3_combout\,
	datac => \decoder|ALT_INV_Equal10~0_combout\,
	datad => \RAM|ALT_INV_ram~154_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[5]~3_combout\,
	sload => \decoder|saida~0_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~152_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~152_combout\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~153_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~153_combout\);

\RAM|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~154_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~153_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~152_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~152_combout\,
	datab => \RAM|ALT_INV_ram~153_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~154_combout\);

\MUX1|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~3_combout\ = (!\decoder|Equal10~0_combout\ & \RAM|ram~154_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \RAM|ALT_INV_ram~154_combout\,
	combout => \MUX1|saida_MUX[5]~3_combout\);

\FlagIgualIN~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagIgualIN~1_combout\ = ( \ULA1|Add0~13_sumout\ & ( (\decoder|saida~0_combout\ & (!\MUX1|saida_MUX[4]~2_combout\ & !\MUX1|saida_MUX[5]~3_combout\)) ) ) # ( !\ULA1|Add0~13_sumout\ & ( (!\decoder|saida~0_combout\ & (((!\ULA1|Add0~9_sumout\)))) # 
-- (\decoder|saida~0_combout\ & (!\MUX1|saida_MUX[4]~2_combout\ & (!\MUX1|saida_MUX[5]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000010000000100000011101010010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[4]~2_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[5]~3_combout\,
	datad => \ULA1|ALT_INV_Add0~9_sumout\,
	datae => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \FlagIgualIN~1_combout\);

\FlagIgualIN~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagIgualIN~2_combout\ = ( \ULA1|Add0~21_sumout\ & ( (\decoder|saida~0_combout\ & (!\MUX1|saida_MUX[3]~4_combout\ & !\MUX1|saida_MUX[2]~5_combout\)) ) ) # ( !\ULA1|Add0~21_sumout\ & ( (!\decoder|saida~0_combout\ & (((!\ULA1|Add0~17_sumout\)))) # 
-- (\decoder|saida~0_combout\ & (!\MUX1|saida_MUX[3]~4_combout\ & (!\MUX1|saida_MUX[2]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000010000000100000011101010010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[2]~5_combout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	datae => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \FlagIgualIN~2_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (!\decoder|saida~0_combout\ & (!\decoder|Equal10~3_combout\ $ (((!\decoder|Equal10~0_combout\ & \RAM|ram~161_combout\))))) # (\decoder|saida~0_combout\ & (((!\decoder|Equal10~0_combout\ & \RAM|ram~161_combout\)))) ) + ( 
-- \REGA|DOUT\(6) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~26\ = CARRY(( (!\decoder|saida~0_combout\ & (!\decoder|Equal10~3_combout\ $ (((!\decoder|Equal10~0_combout\ & \RAM|ram~161_combout\))))) # (\decoder|saida~0_combout\ & (((!\decoder|Equal10~0_combout\ & \RAM|ram~161_combout\)))) ) + ( 
-- \REGA|DOUT\(6) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \decoder|ALT_INV_Equal10~3_combout\,
	datac => \decoder|ALT_INV_Equal10~0_combout\,
	datad => \RAM|ALT_INV_ram~161_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[6]~6_combout\,
	sload => \decoder|saida~0_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~160_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~31_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \RAM|ALT_INV_ram~31_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~160_combout\);

\RAM|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~161_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~160_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~160_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~161_combout\);

\MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~6_combout\ = (!\decoder|Equal10~0_combout\ & \RAM|ram~161_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \RAM|ALT_INV_ram~161_combout\,
	combout => \MUX1|saida_MUX[6]~6_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\decoder|saida~0_combout\ & (!\decoder|Equal10~3_combout\ $ (((!\decoder|Equal10~0_combout\ & \RAM|ram~164_combout\))))) # (\decoder|saida~0_combout\ & (((!\decoder|Equal10~0_combout\ & \RAM|ram~164_combout\)))) ) + ( 
-- \REGA|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \decoder|ALT_INV_Equal10~3_combout\,
	datac => \decoder|ALT_INV_Equal10~0_combout\,
	datad => \RAM|ALT_INV_ram~164_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \MUX1|saida_MUX[7]~7_combout\,
	sload => \decoder|saida~0_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~162_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~162_combout\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~163_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~32_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~163_combout\);

\RAM|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~164_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~163_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~162_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~162_combout\,
	datab => \RAM|ALT_INV_ram~163_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~164_combout\);

\MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~7_combout\ = (!\decoder|Equal10~0_combout\ & \RAM|ram~164_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \RAM|ALT_INV_ram~164_combout\,
	combout => \MUX1|saida_MUX[7]~7_combout\);

\FlagIgualIN~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagIgualIN~3_combout\ = ( \ULA1|Add0~29_sumout\ & ( (\decoder|saida~0_combout\ & (!\MUX1|saida_MUX[6]~6_combout\ & !\MUX1|saida_MUX[7]~7_combout\)) ) ) # ( !\ULA1|Add0~29_sumout\ & ( (!\decoder|saida~0_combout\ & (((!\ULA1|Add0~25_sumout\)))) # 
-- (\decoder|saida~0_combout\ & (!\MUX1|saida_MUX[6]~6_combout\ & ((!\MUX1|saida_MUX[7]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010100000010001000000000011100100101000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	datad => \MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	datae => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \FlagIgualIN~3_combout\);

\REGB|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGB|DOUT~0_combout\ = ( \FlagIgualIN~2_combout\ & ( \FlagIgualIN~3_combout\ & ( (!\decoder|Equal10~1_combout\ & (\REGB|DOUT~q\)) # (\decoder|Equal10~1_combout\ & (((\FlagIgualIN~0_combout\ & \FlagIgualIN~1_combout\)))) ) ) ) # ( !\FlagIgualIN~2_combout\ 
-- & ( \FlagIgualIN~3_combout\ & ( (\REGB|DOUT~q\ & !\decoder|Equal10~1_combout\) ) ) ) # ( \FlagIgualIN~2_combout\ & ( !\FlagIgualIN~3_combout\ & ( (\REGB|DOUT~q\ & !\decoder|Equal10~1_combout\) ) ) ) # ( !\FlagIgualIN~2_combout\ & ( 
-- !\FlagIgualIN~3_combout\ & ( (\REGB|DOUT~q\ & !\decoder|Equal10~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGB|ALT_INV_DOUT~q\,
	datab => \decoder|ALT_INV_Equal10~1_combout\,
	datac => \ALT_INV_FlagIgualIN~0_combout\,
	datad => \ALT_INV_FlagIgualIN~1_combout\,
	datae => \ALT_INV_FlagIgualIN~2_combout\,
	dataf => \ALT_INV_FlagIgualIN~3_combout\,
	combout => \REGB|DOUT~0_combout\);

\REGB|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGB|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGB|DOUT~q\);

\SelMUX2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SelMUX2[0]~0_combout\ = ( \REGB|DOUT~q\ & ( (!\ROM1|memROM~2_combout\ & (((\ROM1|memROM~6_combout\ & \ROM1|memROM~8_combout\)))) # (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\))) ) ) # ( 
-- !\REGB|DOUT~q\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~8_combout\))) # (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000001000000100000000101000010000000010000001000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \REGB|ALT_INV_DOUT~q\,
	combout => \SelMUX2[0]~0_combout\);

\REGC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \decoder|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGC|DOUT\(4));

\MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[4]~4_combout\ = (!\SelMUX2[0]~0_combout\ & ((!SelMUX2(1) & ((\incrementaPC|Add0~17_sumout\))) # (SelMUX2(1) & (\REGC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelMUX2[0]~0_combout\,
	datab => ALT_INV_SelMUX2(1),
	datac => \REGC|ALT_INV_DOUT\(4),
	datad => \incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \MUX2|saida_MUX[4]~4_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(3) & (\PC|DOUT\(0))) # (\PC|DOUT\(3) & ((\PC|DOUT\(2)))))) # (\PC|DOUT\(1) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~18_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( !\PC|DOUT\(8) & ( \ROM1|memROM~18_combout\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \ROM1|memROM~15_combout\);

\REGC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \decoder|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGC|DOUT\(0));

\MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[0]~0_combout\ = ( \incrementaPC|Add0~1_sumout\ & ( (!\SelMUX2[0]~0_combout\ & (((!SelMUX2(1)) # (\REGC|DOUT\(0))))) # (\SelMUX2[0]~0_combout\ & (\ROM1|memROM~15_combout\)) ) ) # ( !\incrementaPC|Add0~1_sumout\ & ( (!\SelMUX2[0]~0_combout\ 
-- & (((\REGC|DOUT\(0) & SelMUX2(1))))) # (\SelMUX2[0]~0_combout\ & (\ROM1|memROM~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110111010001110100010001000111011101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ALT_INV_SelMUX2[0]~0_combout\,
	datac => \REGC|ALT_INV_DOUT\(0),
	datad => ALT_INV_SelMUX2(1),
	datae => \incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \MUX2|saida_MUX[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

FlagIgualIN : cyclonev_lcell_comb
-- Equation(s):
-- \FlagIgualIN~combout\ = (!\FlagIgualIN~0_combout\) # ((!\FlagIgualIN~1_combout\) # ((!\FlagIgualIN~2_combout\) # (!\FlagIgualIN~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111011111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FlagIgualIN~0_combout\,
	datab => \ALT_INV_FlagIgualIN~1_combout\,
	datac => \ALT_INV_FlagIgualIN~2_combout\,
	datad => \ALT_INV_FlagIgualIN~3_combout\,
	combout => \FlagIgualIN~combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = (!\decoder|saida~0_combout\ & ((\ULA1|Add0~5_sumout\))) # (\decoder|saida~0_combout\ & (\MUX1|saida_MUX[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = (!\decoder|saida~0_combout\ & ((\ULA1|Add0~1_sumout\))) # (\decoder|saida~0_combout\ & (\MUX1|saida_MUX[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datac => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = (!\decoder|saida~0_combout\ & ((\ULA1|Add0~21_sumout\))) # (\decoder|saida~0_combout\ & (\MUX1|saida_MUX[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[2]~5_combout\,
	datac => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = (!\decoder|saida~0_combout\ & ((\ULA1|Add0~17_sumout\))) # (\decoder|saida~0_combout\ & (\MUX1|saida_MUX[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	datac => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = (!\decoder|saida~0_combout\ & ((\ULA1|Add0~13_sumout\))) # (\decoder|saida~0_combout\ & (\MUX1|saida_MUX[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[4]~2_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = (!\decoder|saida~0_combout\ & ((\ULA1|Add0~9_sumout\))) # (\decoder|saida~0_combout\ & (\MUX1|saida_MUX[5]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[5]~3_combout\,
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = (!\decoder|saida~0_combout\ & ((\ULA1|Add0~25_sumout\))) # (\decoder|saida~0_combout\ & (\MUX1|saida_MUX[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = (!\decoder|saida~0_combout\ & ((\ULA1|Add0~29_sumout\))) # (\decoder|saida~0_combout\ & (\MUX1|saida_MUX[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	datac => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

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

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_LED_FlagIN <= \LED_FlagIN~output_o\;

ww_LED_FlagOUT <= \LED_FlagOUT~output_o\;

ww_LED_Hab <= \LED_Hab~output_o\;

ww_LED_INSTRU(0) <= \LED_INSTRU[0]~output_o\;

ww_LED_INSTRU(1) <= \LED_INSTRU[1]~output_o\;

ww_LED_INSTRU(2) <= \LED_INSTRU[2]~output_o\;

ww_LED_INSTRU(3) <= \LED_INSTRU[3]~output_o\;

ww_LED_INSTRU(4) <= \LED_INSTRU[4]~output_o\;

ww_LED_INSTRU(5) <= \LED_INSTRU[5]~output_o\;

ww_LED_INSTRU(6) <= \LED_INSTRU[6]~output_o\;

ww_LED_INSTRU(7) <= \LED_INSTRU[7]~output_o\;

ww_LED_INSTRU(8) <= \LED_INSTRU[8]~output_o\;

ww_LED_INSTRU(9) <= \LED_INSTRU[9]~output_o\;

ww_LED_INSTRU(10) <= \LED_INSTRU[10]~output_o\;

ww_LED_INSTRU(11) <= \LED_INSTRU[11]~output_o\;

ww_LED_INSTRU(12) <= \LED_INSTRU[12]~output_o\;

ww_LED_OUT(0) <= \LED_OUT[0]~output_o\;

ww_LED_OUT(1) <= \LED_OUT[1]~output_o\;

ww_LED_OUT(2) <= \LED_OUT[2]~output_o\;

ww_LED_OUT(3) <= \LED_OUT[3]~output_o\;

ww_LED_OUT(4) <= \LED_OUT[4]~output_o\;

ww_LED_OUT(5) <= \LED_OUT[5]~output_o\;

ww_LED_OUT(6) <= \LED_OUT[6]~output_o\;

ww_LED_OUT(7) <= \LED_OUT[7]~output_o\;
END structure;


