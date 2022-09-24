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

-- DATE "09/24/2022 18:20:28"

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
	LED8 : OUT std_logic;
	LED9 : OUT std_logic;
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0)
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
SIGNAL ww_LED8 : std_logic;
SIGNAL ww_LED9 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal10~0_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~1_wirecell_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|decoder|saida[4]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal10~2_combout\ : std_logic;
SIGNAL \RAM|process_0~1_combout\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~6_combout\ : std_logic;
SIGNAL \CPU|decoder|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~15_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|decoder|saida[4]~1_combout\ : std_logic;
SIGNAL \CPU|decoder|saida~2_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \FF1|DOUT~0_combout\ : std_logic;
SIGNAL \FF1|DOUT~q\ : std_logic;
SIGNAL \HabL9~0_combout\ : std_logic;
SIGNAL \FF2|DOUT~0_combout\ : std_logic;
SIGNAL \FF2|DOUT~q\ : std_logic;
SIGNAL \HabLR~0_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~8_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~9_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~10_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGLED|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~10_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~9_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~8_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_saida[4]~0_combout\ : std_logic;
SIGNAL \CPU|decoder|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ALT_INV_HabL9~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FF2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LED8 <= ww_LED8;
LED9 <= ww_LED9;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|MUX1|ALT_INV_saida_MUX[3]~11_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~11_combout\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|MUX1|ALT_INV_saida_MUX[2]~10_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~10_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~9_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~9_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~8_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~8_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~7_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~7_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~6_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\CPU|decoder|ALT_INV_Equal10~2_combout\ <= NOT \CPU|decoder|Equal10~2_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~4_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~3_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~2_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~1_combout\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~0_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\CPU|decoder|ALT_INV_saida[4]~1_combout\ <= NOT \CPU|decoder|saida[4]~1_combout\;
\CPU|decoder|ALT_INV_saida[4]~0_combout\ <= NOT \CPU|decoder|saida[4]~0_combout\;
\CPU|decoder|ALT_INV_Equal10~1_combout\ <= NOT \CPU|decoder|Equal10~1_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ALT_INV_HabL9~0_combout\ <= NOT \HabL9~0_combout\;
\RAM|ALT_INV_process_0~1_combout\ <= NOT \RAM|process_0~1_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\FF2|ALT_INV_DOUT~q\ <= NOT \FF2|DOUT~q\;
\FF1|ALT_INV_DOUT~q\ <= NOT \FF1|DOUT~q\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~15_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~15_combout\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;

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

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & \ROM|memROM~6_combout\)))

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
	datad => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~14_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\CPU|PC|DOUT\(1) & \ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~14_combout\,
	combout => \ROM|memROM~15_combout\);

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

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (\CPU|PC|DOUT\(0) & (\ROM|memROM~6_combout\ & \ROM|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~13_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	asdata => \ROM|memROM~13_combout\,
	sload => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~10_combout\);

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

\CPU|MUX2|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~0_combout\ = ( \ROM|memROM~10_combout\ & ( \CPU|incrementaPC|Add0~29_sumout\ ) ) # ( !\ROM|memROM~10_combout\ & ( \CPU|incrementaPC|Add0~29_sumout\ & ( ((!\ROM|memROM~12_combout\) # ((!\ROM|memROM~8_combout\) # 
-- (\ROM|memROM~7_combout\))) # (\CPU|PC|DOUT\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX2|saida_MUX[7]~0_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|saida_MUX[7]~0_combout\,
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

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011100000000001101110000000000110111000000000011011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~4_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

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
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~5_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\CPU|decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal10~0_combout\ = ( !\ROM|memROM~10_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~12_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|decoder|Equal10~0_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	asdata => \ROM|memROM~15_combout\,
	sload => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010100010000100101010001000010010101000100001001010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \CPU|PC|DOUT\(8) & ( \ROM|memROM~0_combout\ ) ) # ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~0_combout\ & ( (((\CPU|PC|DOUT\(7)) # (\CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(5))) # (\CPU|PC|DOUT\(4)) ) ) ) # ( \CPU|PC|DOUT\(8) & ( 
-- !\ROM|memROM~0_combout\ ) ) # ( !\CPU|PC|DOUT\(8) & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~1_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_wirecell_combout\ = !\ROM|memROM~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~1_wirecell_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \ROM|memROM~1_wirecell_combout\,
	sload => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

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

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010000000000100101000000000010010100000000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

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
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~3_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|decoder|Equal10~0_combout\,
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

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	asdata => \ROM|memROM~13_combout\,
	sload => \CPU|decoder|Equal10~0_combout\,
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
	asdata => \ROM|memROM~14_combout\,
	sload => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	asdata => \ROM|memROM~13_combout\,
	sload => \CPU|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

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
	combout => \ROM|memROM~6_combout\);

\CPU|decoder|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida[4]~0_combout\ = (\ROM|memROM~6_combout\ & ((!\ROM|memROM~10_combout\) # (\ROM|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010101000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|decoder|saida[4]~0_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

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
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~9_combout\);

\CPU|decoder|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal10~2_combout\ = (\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & (\ROM|memROM~9_combout\ & \ROM|memROM~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|decoder|Equal10~2_combout\);

\RAM|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~1_combout\ = ( \ROM|memROM~11_combout\ & ( (!\CPU|PC|DOUT\(0) & (\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~10_combout\))) ) ) # ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & 
-- !\ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000100000000000000011000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|process_0~1_combout\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \ROM|memROM~6_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001000100000000000000000000001000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = (!\ROM|memROM~5_combout\ & (!\ROM|memROM~9_combout\ & (\RAM|process_0~1_combout\ & \RAM|ram~532_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_process_0~1_combout\,
	datad => \RAM|ALT_INV_ram~532_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~533_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\CPU|MUX1|saida_MUX[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~7_combout\ = (!\ROM|memROM~13_combout\ & (!\ROM|memROM~14_combout\ & \RAM|ram~23_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \RAM|ALT_INV_ram~23_q\,
	combout => \CPU|MUX1|saida_MUX[0]~7_combout\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \ROM|memROM~6_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = (!\ROM|memROM~5_combout\ & (!\ROM|memROM~9_combout\ & (\RAM|process_0~1_combout\ & \RAM|ram~536_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_process_0~1_combout\,
	datad => \RAM|ALT_INV_ram~536_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \ROM|memROM~6_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101000101110000000000000000001001010001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = (!\ROM|memROM~5_combout\ & (!\ROM|memROM~9_combout\ & (\RAM|process_0~1_combout\ & !\RAM|ram~534_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_process_0~1_combout\,
	datad => \RAM|ALT_INV_ram~534_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\CPU|MUX1|saida_MUX[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~6_combout\ = ( \RAM|ram~31_q\ & ( \RAM|ram~15_q\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\RAM|ram~31_q\ & ( \RAM|ram~15_q\ & ( (!\ROM|memROM~3_combout\ & !\ROM|memROM~14_combout\) ) ) ) # ( \RAM|ram~31_q\ & ( !\RAM|ram~15_q\ & ( 
-- (\ROM|memROM~3_combout\ & !\ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000010100000101000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datae => \RAM|ALT_INV_ram~31_q\,
	dataf => \RAM|ALT_INV_ram~15_q\,
	combout => \CPU|MUX1|saida_MUX[0]~6_combout\);

\CPU|decoder|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|Equal10~1_combout\ = ( !\ROM|memROM~10_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~12_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|decoder|Equal10~1_combout\);

\CPU|MUX1|saida_MUX[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~15_combout\ = ( !\ROM|memROM~1_combout\ & ( ((\CPU|MUX1|saida_MUX[0]~7_combout\ & (!\ROM|memROM~3_combout\ $ ((\ROM|memROM~14_combout\))))) # (\CPU|decoder|Equal10~1_combout\) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- (((\CPU|MUX1|saida_MUX[0]~6_combout\ & (!\CPU|decoder|Equal10~1_combout\ & !\ROM|memROM~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000111111111000011110000000000100001111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[0]~7_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~6_combout\,
	datad => \CPU|decoder|ALT_INV_Equal10~1_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	datag => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~15_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~16_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( (!\CPU|decoder|Equal10~2_combout\ & ((!\CPU|decoder|saida[4]~0_combout\) # ((\ROM|memROM~16_combout\ & !\CPU|PC|DOUT\(8))))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|decoder|ALT_INV_Equal10~2_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[0]~15_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|MUX1|saida_MUX[0]~15_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000011111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|decoder|ALT_INV_Equal10~2_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~15_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|decoder|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida[4]~1_combout\ = (!\CPU|decoder|saida[4]~0_combout\) # (\ROM|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	combout => \CPU|decoder|saida[4]~1_combout\);

\CPU|decoder|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoder|saida~2_combout\ = (\ROM|memROM~6_combout\ & (!\ROM|memROM~10_combout\ $ (((\ROM|memROM~8_combout\) # (\ROM|memROM~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010101000000000101010100000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|decoder|saida~2_combout\);

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~15_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	ena => \CPU|decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~11_combout\ & ( (!\CPU|PC|DOUT\(0) & (\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~9_combout\))) ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- (\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|process_0~0_combout\);

\FF1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF1|DOUT~0_combout\ = ( \ROM|memROM~5_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~3_combout\ & ((\CPU|REGA|DOUT\(0)))) # (\ROM|memROM~3_combout\ & (\FF1|DOUT~q\)))) # (\ROM|memROM~1_combout\ & (\FF1|DOUT~q\)) ) ) 
-- ) # ( !\ROM|memROM~5_combout\ & ( \RAM|process_0~0_combout\ & ( \FF1|DOUT~q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\RAM|process_0~0_combout\ & ( \FF1|DOUT~q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\RAM|process_0~0_combout\ & ( \FF1|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010011010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF1|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
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

\HabL9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabL9~0_combout\ = (!\ROM|memROM~0_combout\ & (\ROM|memROM~6_combout\ & \ROM|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	combout => \HabL9~0_combout\);

\FF2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF2|DOUT~0_combout\ = ( \RAM|process_0~1_combout\ & ( \HabL9~0_combout\ & ( (!\ROM|memROM~5_combout\ & (\FF2|DOUT~q\)) # (\ROM|memROM~5_combout\ & ((!\ROM|memROM~9_combout\ & ((\CPU|REGA|DOUT\(0)))) # (\ROM|memROM~9_combout\ & (\FF2|DOUT~q\)))) ) ) ) # ( 
-- !\RAM|process_0~1_combout\ & ( \HabL9~0_combout\ & ( \FF2|DOUT~q\ ) ) ) # ( \RAM|process_0~1_combout\ & ( !\HabL9~0_combout\ & ( \FF2|DOUT~q\ ) ) ) # ( !\RAM|process_0~1_combout\ & ( !\HabL9~0_combout\ & ( \FF2|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF2|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM|ALT_INV_process_0~1_combout\,
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
-- \HabLR~0_combout\ = ( \RAM|process_0~1_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM|ALT_INV_process_0~1_combout\,
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

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\CPU|MUX1|saida_MUX[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~8_combout\ = (!\ROM|memROM~14_combout\ & (\ROM|memROM~1_combout\ & \RAM|ram~32_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_ram~32_q\,
	combout => \CPU|MUX1|saida_MUX[1]~8_combout\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~533_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\CPU|MUX1|saida_MUX[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~9_combout\ = ( \RAM|ram~16_q\ & ( (!\ROM|memROM~13_combout\ & ((\RAM|ram~24_q\) # (\ROM|memROM~1_combout\))) ) ) # ( !\RAM|ram~16_q\ & ( (!\ROM|memROM~13_combout\ & (!\ROM|memROM~1_combout\ & \RAM|ram~24_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000010101010101000000000101000000000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_ram~24_q\,
	datae => \RAM|ALT_INV_ram~16_q\,
	combout => \CPU|MUX1|saida_MUX[1]~9_combout\);

\CPU|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~0_combout\ = ( \CPU|MUX1|saida_MUX[1]~8_combout\ & ( \CPU|MUX1|saida_MUX[1]~9_combout\ & ( (!\ROM|memROM~3_combout\ & (((!\CPU|decoder|Equal10~1_combout\ & !\ROM|memROM~14_combout\)))) # (\ROM|memROM~3_combout\ & 
-- ((!\ROM|memROM~13_combout\) # ((\CPU|decoder|Equal10~1_combout\)))) ) ) ) # ( !\CPU|MUX1|saida_MUX[1]~8_combout\ & ( \CPU|MUX1|saida_MUX[1]~9_combout\ & ( (!\ROM|memROM~3_combout\ & (!\CPU|decoder|Equal10~1_combout\ & !\ROM|memROM~14_combout\)) # 
-- (\ROM|memROM~3_combout\ & (\CPU|decoder|Equal10~1_combout\)) ) ) ) # ( \CPU|MUX1|saida_MUX[1]~8_combout\ & ( !\CPU|MUX1|saida_MUX[1]~9_combout\ & ( (\ROM|memROM~3_combout\ & ((!\ROM|memROM~13_combout\) # (\CPU|decoder|Equal10~1_combout\))) ) ) ) # ( 
-- !\CPU|MUX1|saida_MUX[1]~8_combout\ & ( !\CPU|MUX1|saida_MUX[1]~9_combout\ & ( (\ROM|memROM~3_combout\ & \CPU|decoder|Equal10~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010001010100010110100101000001011110010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|decoder|ALT_INV_Equal10~1_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[1]~8_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~9_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~0_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~0_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~0_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000011110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal10~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
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
	asdata => \CPU|MUX1|saida_MUX[1]~0_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	ena => \CPU|decoder|saida~2_combout\,
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

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~533_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\CPU|MUX1|saida_MUX[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~10_combout\ = ( \RAM|ram~33_q\ & ( (!\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\ & (\RAM|ram~25_q\))) # (\ROM|memROM~1_combout\ & (((\RAM|ram~17_q\)) # (\ROM|memROM~3_combout\))) ) ) # ( !\RAM|ram~33_q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~1_combout\ & (\RAM|ram~25_q\)) # (\ROM|memROM~1_combout\ & ((\RAM|ram~17_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100001000010011000001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \RAM|ALT_INV_ram~25_q\,
	datad => \RAM|ALT_INV_ram~17_q\,
	datae => \RAM|ALT_INV_ram~33_q\,
	combout => \CPU|MUX1|saida_MUX[2]~10_combout\);

\CPU|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~1_combout\ = ( \CPU|MUX1|saida_MUX[2]~10_combout\ & ( (!\ROM|memROM~13_combout\ & (!\CPU|decoder|Equal10~1_combout\ & !\ROM|memROM~14_combout\)) # (\ROM|memROM~13_combout\ & (\CPU|decoder|Equal10~1_combout\)) ) ) # ( 
-- !\CPU|MUX1|saida_MUX[2]~10_combout\ & ( (\ROM|memROM~13_combout\ & \CPU|decoder|Equal10~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001100100011001000100010001000100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|decoder|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[2]~10_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~1_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~1_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~1_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000011110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal10~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
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
	asdata => \CPU|MUX1|saida_MUX[2]~1_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	ena => \CPU|decoder|saida~2_combout\,
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

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~533_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM|ram~34_q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~18_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~26_q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datab => \RAM|ALT_INV_ram~18_q\,
	datad => \RAM|ALT_INV_ram~34_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = (\RAM|ram~527_combout\ & !\ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~527_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~555_combout\);

\CPU|MUX1|saida_MUX[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~11_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \CPU|decoder|Equal10~1_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( (\CPU|decoder|Equal10~1_combout\) # (\RAM|ram~555_combout\) ) 
-- ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( (\RAM|ram~555_combout\ & !\CPU|decoder|Equal10~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~555_combout\,
	datad => \CPU|decoder|ALT_INV_Equal10~1_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~11_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[3]~11_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( !\CPU|MUX1|saida_MUX[3]~11_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000101001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal10~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~11_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~11_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	ena => \CPU|decoder|saida~2_combout\,
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

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM|ram~533_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM|ram~35_q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~19_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~27_q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~27_q\,
	datab => \RAM|ALT_INV_ram~19_q\,
	datad => \RAM|ALT_INV_ram~35_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = (\RAM|ram~528_combout\ & !\ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~528_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~551_combout\);

\CPU|MUX1|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~2_combout\ = (!\ROM|memROM~13_combout\ & (!\CPU|decoder|Equal10~1_combout\ & \RAM|ram~551_combout\)) # (\ROM|memROM~13_combout\ & (\CPU|decoder|Equal10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|decoder|ALT_INV_Equal10~1_combout\,
	datac => \RAM|ALT_INV_ram~551_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~2_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[4]~2_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\CPU|MUX1|saida_MUX[4]~2_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000101001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal10~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~2_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	ena => \CPU|decoder|saida~2_combout\,
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

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM|ram~533_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM|ram~36_q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~20_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~28_q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datab => \RAM|ALT_INV_ram~20_q\,
	datad => \RAM|ALT_INV_ram~36_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = (\RAM|ram~529_combout\ & !\ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~529_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~547_combout\);

\CPU|MUX1|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~3_combout\ = (!\CPU|decoder|Equal10~1_combout\ & (!\ROM|memROM~13_combout\ & ((\RAM|ram~547_combout\)))) # (\CPU|decoder|Equal10~1_combout\ & (((\ROM|memROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110100011000000111010001100000011101000110000001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \CPU|decoder|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_ram~547_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~3_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[5]~3_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|MUX1|saida_MUX[5]~3_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000101001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal10~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~3_combout\,
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
	asdata => \CPU|MUX1|saida_MUX[5]~3_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	ena => \CPU|decoder|saida~2_combout\,
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

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM|ram~533_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM|ram~37_q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~21_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~29_q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~29_q\,
	datab => \RAM|ALT_INV_ram~21_q\,
	datad => \RAM|ALT_INV_ram~37_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = (\RAM|ram~530_combout\ & !\ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~530_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~543_combout\);

\CPU|MUX1|saida_MUX[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~4_combout\ = (!\ROM|memROM~13_combout\ & (!\CPU|decoder|Equal10~1_combout\ & \RAM|ram~543_combout\)) # (\ROM|memROM~13_combout\ & (\CPU|decoder|Equal10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|decoder|ALT_INV_Equal10~1_combout\,
	datac => \RAM|ALT_INV_ram~543_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~4_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[6]~4_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|MUX1|saida_MUX[6]~4_combout\ $ ((((\CPU|decoder|saida[4]~0_combout\ & !\ROM|memROM~9_combout\)) # (\CPU|decoder|Equal10~2_combout\))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000101001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal10~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida[4]~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~4_combout\,
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
	asdata => \CPU|MUX1|saida_MUX[6]~4_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	ena => \CPU|decoder|saida~2_combout\,
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

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM|ram~533_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM|ram~38_q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~22_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~30_q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datab => \RAM|ALT_INV_ram~22_q\,
	datad => \RAM|ALT_INV_ram~38_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = (\RAM|ram~531_combout\ & !\ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~531_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = (!\ROM|memROM~13_combout\ & \RAM|ram~539_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datac => \RAM|ALT_INV_ram~539_combout\,
	combout => \RAM|ram~538_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|decoder|Equal10~2_combout\ & (!\CPU|decoder|saida[4]~1_combout\ $ (((!\RAM|ram~538_combout\) # (\CPU|decoder|Equal10~1_combout\))))) # (\CPU|decoder|Equal10~2_combout\ & (((!\CPU|decoder|Equal10~1_combout\ & 
-- \RAM|ram~538_combout\)))) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoder|ALT_INV_Equal10~2_combout\,
	datab => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	datac => \CPU|decoder|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|MUX1|saida_MUX[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~5_combout\ = (!\ROM|memROM~13_combout\ & (!\CPU|decoder|Equal10~1_combout\ & \RAM|ram~539_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|decoder|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_ram~539_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~5_combout\);

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~5_combout\,
	sload => \CPU|decoder|ALT_INV_saida[4]~1_combout\,
	ena => \CPU|decoder|saida~2_combout\,
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
END structure;


