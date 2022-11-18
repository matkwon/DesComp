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

-- DATE "11/17/2022 18:25:18"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	aula16 IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	inverte_B : IN std_logic;
	sel : IN std_logic_vector(1 DOWNTO 0);
	resultado : OUT std_logic_vector(31 DOWNTO 0);
	zero : OUT std_logic;
	overflow : OUT std_logic
	);
END aula16;

ARCHITECTURE structure OF aula16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inverte_B : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_resultado : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL \resultado[0]~output_o\ : std_logic;
SIGNAL \resultado[1]~output_o\ : std_logic;
SIGNAL \resultado[2]~output_o\ : std_logic;
SIGNAL \resultado[3]~output_o\ : std_logic;
SIGNAL \resultado[4]~output_o\ : std_logic;
SIGNAL \resultado[5]~output_o\ : std_logic;
SIGNAL \resultado[6]~output_o\ : std_logic;
SIGNAL \resultado[7]~output_o\ : std_logic;
SIGNAL \resultado[8]~output_o\ : std_logic;
SIGNAL \resultado[9]~output_o\ : std_logic;
SIGNAL \resultado[10]~output_o\ : std_logic;
SIGNAL \resultado[11]~output_o\ : std_logic;
SIGNAL \resultado[12]~output_o\ : std_logic;
SIGNAL \resultado[13]~output_o\ : std_logic;
SIGNAL \resultado[14]~output_o\ : std_logic;
SIGNAL \resultado[15]~output_o\ : std_logic;
SIGNAL \resultado[16]~output_o\ : std_logic;
SIGNAL \resultado[17]~output_o\ : std_logic;
SIGNAL \resultado[18]~output_o\ : std_logic;
SIGNAL \resultado[19]~output_o\ : std_logic;
SIGNAL \resultado[20]~output_o\ : std_logic;
SIGNAL \resultado[21]~output_o\ : std_logic;
SIGNAL \resultado[22]~output_o\ : std_logic;
SIGNAL \resultado[23]~output_o\ : std_logic;
SIGNAL \resultado[24]~output_o\ : std_logic;
SIGNAL \resultado[25]~output_o\ : std_logic;
SIGNAL \resultado[26]~output_o\ : std_logic;
SIGNAL \resultado[27]~output_o\ : std_logic;
SIGNAL \resultado[28]~output_o\ : std_logic;
SIGNAL \resultado[29]~output_o\ : std_logic;
SIGNAL \resultado[30]~output_o\ : std_logic;
SIGNAL \resultado[31]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \inverte_B~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \ULA31|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \ULA1|somador|carry_out~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \ULA2|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \ULA3|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ULA4|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA4|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA4|somador|carry_out~1_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ULA5|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \ULA6|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA6|somador|carry_out~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \ULA7|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \ULA8|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \ULA9|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA9|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA9|somador|carry_out~1_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \ULA10|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \ULA11|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA11|somador|carry_out~combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \ULA12|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \ULA13|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \ULA14|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA14|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA14|somador|carry_out~1_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \ULA15|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \ULA16|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|somador|carry_out~combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \ULA17|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \ULA18|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \ULA19|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA19|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA19|somador|carry_out~1_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \ULA20|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \ULA21|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|somador|carry_out~combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \ULA22|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \ULA23|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \ULA24|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA24|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA24|somador|carry_out~1_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \ULA25|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \ULA26|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA26|somador|carry_out~combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \ULA27|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \ULA28|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \ULA29|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA29|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA29|somador|carry_out~1_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \ULA30|mux_inversor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA31|slt_in~combout\ : std_logic;
SIGNAL \ULA0|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA0|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA3|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA4|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA6|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA7|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA2|mux_seletor|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA8|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|mux_seletor|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA8|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA9|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA10|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA10|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA11|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA12|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA13|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|mux_seletor|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA13|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA14|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA16|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA17|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA18|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|mux_seletor|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA18|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA19|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA21|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA22|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA23|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|mux_seletor|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA23|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA24|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA26|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA27|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA28|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|mux_seletor|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA28|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA29|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA30|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA30|somador|carry_out~combout\ : std_logic;
SIGNAL \ULA31|mux_seletor|saida_MUX~0_combout\ : std_logic;
SIGNAL \zero~0_combout\ : std_logic;
SIGNAL \zero~1_combout\ : std_logic;
SIGNAL \zero~2_combout\ : std_logic;
SIGNAL \zero~3_combout\ : std_logic;
SIGNAL \zero~4_combout\ : std_logic;
SIGNAL \zero~5_combout\ : std_logic;
SIGNAL \zero~6_combout\ : std_logic;
SIGNAL \zero~7_combout\ : std_logic;
SIGNAL \zero~8_combout\ : std_logic;
SIGNAL \ULA31|overflow~combout\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inverte_B~input_o\ : std_logic;
SIGNAL \ALT_INV_zero~8_combout\ : std_logic;
SIGNAL \ALT_INV_zero~7_combout\ : std_logic;
SIGNAL \ALT_INV_zero~6_combout\ : std_logic;
SIGNAL \ALT_INV_zero~5_combout\ : std_logic;
SIGNAL \ALT_INV_zero~4_combout\ : std_logic;
SIGNAL \ALT_INV_zero~3_combout\ : std_logic;
SIGNAL \ALT_INV_zero~2_combout\ : std_logic;
SIGNAL \ALT_INV_zero~1_combout\ : std_logic;
SIGNAL \ALT_INV_zero~0_combout\ : std_logic;
SIGNAL \ULA31|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA30|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA30|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA28|mux_seletor|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA28|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA27|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA26|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA25|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA23|mux_seletor|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA23|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA22|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA20|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA18|mux_seletor|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA18|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA17|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA15|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA13|mux_seletor|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA13|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA12|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA11|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA10|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA10|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA9|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA8|mux_seletor|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA8|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|mux_seletor|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA8|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA7|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA6|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA3|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA14|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA4|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA0|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA0|mux_seletor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA31|ALT_INV_slt_in~combout\ : std_logic;
SIGNAL \ULA19|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA17|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA30|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA12|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ULA11|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA11|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA26|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA26|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ULA29|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA24|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA29|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA24|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA22|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA29|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ULA28|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA27|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA19|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ULA10|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA9|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ULA9|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA9|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA8|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA7|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA6|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA6|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA4|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ULA4|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA4|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA3|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA31|mux_inversor|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_inverte_B <= inverte_B;
ww_sel <= sel;
resultado <= ww_resultado;
zero <= ww_zero;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_sel[1]~input_o\ <= NOT \sel[1]~input_o\;
\ALT_INV_sel[0]~input_o\ <= NOT \sel[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_inverte_B~input_o\ <= NOT \inverte_B~input_o\;
\ALT_INV_zero~8_combout\ <= NOT \zero~8_combout\;
\ALT_INV_zero~7_combout\ <= NOT \zero~7_combout\;
\ALT_INV_zero~6_combout\ <= NOT \zero~6_combout\;
\ALT_INV_zero~5_combout\ <= NOT \zero~5_combout\;
\ALT_INV_zero~4_combout\ <= NOT \zero~4_combout\;
\ALT_INV_zero~3_combout\ <= NOT \zero~3_combout\;
\ALT_INV_zero~2_combout\ <= NOT \zero~2_combout\;
\ALT_INV_zero~1_combout\ <= NOT \zero~1_combout\;
\ALT_INV_zero~0_combout\ <= NOT \zero~0_combout\;
\ULA31|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA31|mux_seletor|saida_MUX~0_combout\;
\ULA30|somador|ALT_INV_carry_out~combout\ <= NOT \ULA30|somador|carry_out~combout\;
\ULA30|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA30|mux_seletor|saida_MUX~0_combout\;
\ULA29|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA29|mux_seletor|saida_MUX~0_combout\;
\ULA28|somador|ALT_INV_carry_out~combout\ <= NOT \ULA28|somador|carry_out~combout\;
\ULA28|mux_seletor|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA28|mux_seletor|saida_MUX~1_combout\;
\ULA28|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA28|mux_seletor|saida_MUX~0_combout\;
\ULA28|somador|ALT_INV_soma~0_combout\ <= NOT \ULA28|somador|soma~0_combout\;
\ULA27|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA27|mux_seletor|saida_MUX~0_combout\;
\ULA26|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA26|mux_seletor|saida_MUX~0_combout\;
\ULA25|somador|ALT_INV_carry_out~combout\ <= NOT \ULA25|somador|carry_out~combout\;
\ULA25|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA25|mux_seletor|saida_MUX~0_combout\;
\ULA24|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA24|mux_seletor|saida_MUX~0_combout\;
\ULA23|somador|ALT_INV_carry_out~combout\ <= NOT \ULA23|somador|carry_out~combout\;
\ULA23|mux_seletor|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA23|mux_seletor|saida_MUX~1_combout\;
\ULA23|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA23|mux_seletor|saida_MUX~0_combout\;
\ULA23|somador|ALT_INV_soma~0_combout\ <= NOT \ULA23|somador|soma~0_combout\;
\ULA22|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA22|mux_seletor|saida_MUX~0_combout\;
\ULA21|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA21|mux_seletor|saida_MUX~0_combout\;
\ULA20|somador|ALT_INV_carry_out~combout\ <= NOT \ULA20|somador|carry_out~combout\;
\ULA20|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA20|mux_seletor|saida_MUX~0_combout\;
\ULA19|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA19|mux_seletor|saida_MUX~0_combout\;
\ULA18|somador|ALT_INV_carry_out~combout\ <= NOT \ULA18|somador|carry_out~combout\;
\ULA18|mux_seletor|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA18|mux_seletor|saida_MUX~1_combout\;
\ULA18|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA18|mux_seletor|saida_MUX~0_combout\;
\ULA18|somador|ALT_INV_soma~0_combout\ <= NOT \ULA18|somador|soma~0_combout\;
\ULA17|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA17|mux_seletor|saida_MUX~0_combout\;
\ULA16|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA16|mux_seletor|saida_MUX~0_combout\;
\ULA15|somador|ALT_INV_carry_out~combout\ <= NOT \ULA15|somador|carry_out~combout\;
\ULA15|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA15|mux_seletor|saida_MUX~0_combout\;
\ULA14|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA14|mux_seletor|saida_MUX~0_combout\;
\ULA13|somador|ALT_INV_carry_out~combout\ <= NOT \ULA13|somador|carry_out~combout\;
\ULA13|mux_seletor|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA13|mux_seletor|saida_MUX~1_combout\;
\ULA13|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA13|mux_seletor|saida_MUX~0_combout\;
\ULA13|somador|ALT_INV_soma~0_combout\ <= NOT \ULA13|somador|soma~0_combout\;
\ULA12|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA12|mux_seletor|saida_MUX~0_combout\;
\ULA11|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA11|mux_seletor|saida_MUX~0_combout\;
\ULA10|somador|ALT_INV_carry_out~combout\ <= NOT \ULA10|somador|carry_out~combout\;
\ULA10|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA10|mux_seletor|saida_MUX~0_combout\;
\ULA9|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA9|mux_seletor|saida_MUX~0_combout\;
\ULA8|somador|ALT_INV_carry_out~combout\ <= NOT \ULA8|somador|carry_out~combout\;
\ULA8|mux_seletor|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA8|mux_seletor|saida_MUX~1_combout\;
\ULA8|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA8|mux_seletor|saida_MUX~0_combout\;
\ULA2|mux_seletor|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA2|mux_seletor|saida_MUX~1_combout\;
\ULA8|somador|ALT_INV_soma~0_combout\ <= NOT \ULA8|somador|soma~0_combout\;
\ULA7|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA7|mux_seletor|saida_MUX~0_combout\;
\ULA6|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA6|mux_seletor|saida_MUX~0_combout\;
\ULA5|somador|ALT_INV_carry_out~combout\ <= NOT \ULA5|somador|carry_out~combout\;
\ULA3|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA3|mux_seletor|saida_MUX~0_combout\;
\ULA2|somador|ALT_INV_carry_out~combout\ <= NOT \ULA2|somador|carry_out~combout\;
\ULA14|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA14|mux_inversor|saida_MUX~0_combout\;
\ULA5|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA5|mux_seletor|saida_MUX~0_combout\;
\ULA4|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA4|mux_seletor|saida_MUX~0_combout\;
\ULA2|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA2|mux_seletor|saida_MUX~0_combout\;
\ULA13|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA13|mux_inversor|saida_MUX~0_combout\;
\ULA3|somador|ALT_INV_carry_out~combout\ <= NOT \ULA3|somador|carry_out~combout\;
\ULA1|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|mux_seletor|saida_MUX~0_combout\;
\ULA14|somador|ALT_INV_soma~0_combout\ <= NOT \ULA14|somador|soma~0_combout\;
\ULA0|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA0|somador|carry_out~0_combout\;
\ULA0|mux_seletor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA0|mux_seletor|saida_MUX~0_combout\;
\ULA19|somador|ALT_INV_soma~0_combout\ <= NOT \ULA19|somador|soma~0_combout\;
\ULA31|ALT_INV_slt_in~combout\ <= NOT \ULA31|slt_in~combout\;
\ULA19|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA19|mux_inversor|saida_MUX~0_combout\;
\ULA18|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA18|mux_inversor|saida_MUX~0_combout\;
\ULA17|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA17|mux_inversor|saida_MUX~0_combout\;
\ULA16|somador|ALT_INV_carry_out~combout\ <= NOT \ULA16|somador|carry_out~combout\;
\ULA30|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA30|mux_inversor|saida_MUX~0_combout\;
\ULA16|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA16|mux_inversor|saida_MUX~0_combout\;
\ULA15|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA15|mux_inversor|saida_MUX~0_combout\;
\ULA12|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA12|mux_inversor|saida_MUX~0_combout\;
\ULA14|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA14|somador|carry_out~1_combout\;
\ULA11|somador|ALT_INV_carry_out~combout\ <= NOT \ULA11|somador|carry_out~combout\;
\ULA14|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA14|somador|carry_out~0_combout\;
\ULA11|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA11|mux_inversor|saida_MUX~0_combout\;
\ULA19|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA19|somador|carry_out~0_combout\;
\ULA26|somador|ALT_INV_carry_out~combout\ <= NOT \ULA26|somador|carry_out~combout\;
\ULA26|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA26|mux_inversor|saida_MUX~0_combout\;
\ULA25|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA25|mux_inversor|saida_MUX~0_combout\;
\ULA24|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA24|somador|carry_out~1_combout\;
\ULA29|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA29|somador|carry_out~0_combout\;
\ULA24|somador|ALT_INV_soma~0_combout\ <= NOT \ULA24|somador|soma~0_combout\;
\ULA29|somador|ALT_INV_soma~0_combout\ <= NOT \ULA29|somador|soma~0_combout\;
\ULA24|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA24|mux_inversor|saida_MUX~0_combout\;
\ULA23|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA23|mux_inversor|saida_MUX~0_combout\;
\ULA22|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA22|mux_inversor|saida_MUX~0_combout\;
\ULA21|somador|ALT_INV_carry_out~combout\ <= NOT \ULA21|somador|carry_out~combout\;
\ULA29|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA29|somador|carry_out~1_combout\;
\ULA28|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA28|mux_inversor|saida_MUX~0_combout\;
\ULA21|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA21|mux_inversor|saida_MUX~0_combout\;
\ULA27|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA27|mux_inversor|saida_MUX~0_combout\;
\ULA20|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA20|mux_inversor|saida_MUX~0_combout\;
\ULA24|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA24|somador|carry_out~0_combout\;
\ULA19|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA19|somador|carry_out~1_combout\;
\ULA10|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA10|mux_inversor|saida_MUX~0_combout\;
\ULA9|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA9|somador|carry_out~1_combout\;
\ULA9|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA9|somador|carry_out~0_combout\;
\ULA9|somador|ALT_INV_soma~0_combout\ <= NOT \ULA9|somador|soma~0_combout\;
\ULA8|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA8|mux_inversor|saida_MUX~0_combout\;
\ULA7|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA7|mux_inversor|saida_MUX~0_combout\;
\ULA6|somador|ALT_INV_carry_out~combout\ <= NOT \ULA6|somador|carry_out~combout\;
\ULA6|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA6|mux_inversor|saida_MUX~0_combout\;
\ULA5|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA5|mux_inversor|saida_MUX~0_combout\;
\ULA4|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA4|somador|carry_out~1_combout\;
\ULA4|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA4|somador|carry_out~0_combout\;
\ULA4|somador|ALT_INV_soma~0_combout\ <= NOT \ULA4|somador|soma~0_combout\;
\ULA3|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA3|mux_inversor|saida_MUX~0_combout\;
\ULA2|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA2|mux_inversor|saida_MUX~0_combout\;
\ULA1|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|somador|carry_out~combout\;
\ULA31|mux_inversor|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA31|mux_inversor|saida_MUX~0_combout\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;

\resultado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA0|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[0]~output_o\);

\resultado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[1]~output_o\);

\resultado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA2|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[2]~output_o\);

\resultado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA3|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[3]~output_o\);

\resultado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA4|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[4]~output_o\);

\resultado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA5|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[5]~output_o\);

\resultado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA6|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[6]~output_o\);

\resultado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA7|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[7]~output_o\);

\resultado[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA8|mux_seletor|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \resultado[8]~output_o\);

\resultado[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA9|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[9]~output_o\);

\resultado[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA10|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[10]~output_o\);

\resultado[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA11|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[11]~output_o\);

\resultado[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA12|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[12]~output_o\);

\resultado[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA13|mux_seletor|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \resultado[13]~output_o\);

\resultado[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA14|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[14]~output_o\);

\resultado[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA15|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[15]~output_o\);

\resultado[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA16|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[16]~output_o\);

\resultado[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA17|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[17]~output_o\);

\resultado[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA18|mux_seletor|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \resultado[18]~output_o\);

\resultado[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA19|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[19]~output_o\);

\resultado[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA20|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[20]~output_o\);

\resultado[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA21|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[21]~output_o\);

\resultado[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA22|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[22]~output_o\);

\resultado[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA23|mux_seletor|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \resultado[23]~output_o\);

\resultado[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA24|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[24]~output_o\);

\resultado[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA25|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[25]~output_o\);

\resultado[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA26|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[26]~output_o\);

\resultado[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA27|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[27]~output_o\);

\resultado[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA28|mux_seletor|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \resultado[28]~output_o\);

\resultado[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA29|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[29]~output_o\);

\resultado[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA30|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[30]~output_o\);

\resultado[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA31|mux_seletor|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[31]~output_o\);

\zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_zero~8_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA31|overflow~combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

\inverte_B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inverte_B,
	o => \inverte_B~input_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

\sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

\A[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

\B[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

\ULA31|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	combout => \ULA31|mux_inversor|saida_MUX~0_combout\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\ULA1|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|somador|carry_out~combout\ = ( \B[1]~input_o\ & ( (!\inverte_B~input_o\ & (((\B[0]~input_o\ & \A[0]~input_o\)) # (\A[1]~input_o\))) # (\inverte_B~input_o\ & (\A[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\)))) ) ) # ( !\B[1]~input_o\ & ( 
-- (!\inverte_B~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\))) # (\inverte_B~input_o\ & ((!\B[0]~input_o\) # ((\A[1]~input_o\) # (\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010111000000101110111101000101010101110000001011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	combout => \ULA1|somador|carry_out~combout\);

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\ULA2|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	combout => \ULA2|mux_inversor|saida_MUX~0_combout\);

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\ULA3|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	combout => \ULA3|mux_inversor|saida_MUX~0_combout\);

\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\ULA4|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|somador|soma~0_combout\ = !\inverte_B~input_o\ $ (!\A[4]~input_o\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	combout => \ULA4|somador|soma~0_combout\);

\ULA4|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|somador|carry_out~0_combout\ = ( \ULA3|mux_inversor|saida_MUX~0_combout\ & ( \ULA4|somador|soma~0_combout\ & ( ((!\ULA1|somador|carry_out~combout\ & (\A[2]~input_o\ & \ULA2|mux_inversor|saida_MUX~0_combout\)) # (\ULA1|somador|carry_out~combout\ & 
-- ((\ULA2|mux_inversor|saida_MUX~0_combout\) # (\A[2]~input_o\)))) # (\A[3]~input_o\) ) ) ) # ( !\ULA3|mux_inversor|saida_MUX~0_combout\ & ( \ULA4|somador|soma~0_combout\ & ( (\A[3]~input_o\ & ((!\ULA1|somador|carry_out~combout\ & (\A[2]~input_o\ & 
-- \ULA2|mux_inversor|saida_MUX~0_combout\)) # (\ULA1|somador|carry_out~combout\ & ((\ULA2|mux_inversor|saida_MUX~0_combout\) # (\A[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ULA2|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ULA3|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA4|somador|ALT_INV_soma~0_combout\,
	combout => \ULA4|somador|carry_out~0_combout\);

\ULA4|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|somador|carry_out~1_combout\ = (\A[4]~input_o\ & (!\inverte_B~input_o\ $ (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	combout => \ULA4|somador|carry_out~1_combout\);

\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\ULA5|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	combout => \ULA5|mux_inversor|saida_MUX~0_combout\);

\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\ULA6|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	combout => \ULA6|mux_inversor|saida_MUX~0_combout\);

\ULA6|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|somador|carry_out~combout\ = ( !\A[6]~input_o\ & ( \ULA6|mux_inversor|saida_MUX~0_combout\ & ( (!\A[5]~input_o\ & ((!\ULA5|mux_inversor|saida_MUX~0_combout\) # ((!\ULA4|somador|carry_out~0_combout\ & !\ULA4|somador|carry_out~1_combout\)))) # 
-- (\A[5]~input_o\ & (!\ULA4|somador|carry_out~0_combout\ & (!\ULA4|somador|carry_out~1_combout\ & !\ULA5|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( \A[6]~input_o\ & ( !\ULA6|mux_inversor|saida_MUX~0_combout\ & ( (!\A[5]~input_o\ & 
-- ((!\ULA5|mux_inversor|saida_MUX~0_combout\) # ((!\ULA4|somador|carry_out~0_combout\ & !\ULA4|somador|carry_out~1_combout\)))) # (\A[5]~input_o\ & (!\ULA4|somador|carry_out~0_combout\ & (!\ULA4|somador|carry_out~1_combout\ & 
-- !\ULA5|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( !\A[6]~input_o\ & ( !\ULA6|mux_inversor|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA4|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA4|somador|ALT_INV_carry_out~1_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ULA5|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ULA6|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA6|somador|carry_out~combout\);

\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\ULA7|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	combout => \ULA7|mux_inversor|saida_MUX~0_combout\);

\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\ULA8|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	combout => \ULA8|mux_inversor|saida_MUX~0_combout\);

\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\ULA9|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|somador|soma~0_combout\ = !\inverte_B~input_o\ $ (!\A[9]~input_o\ $ (\B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	combout => \ULA9|somador|soma~0_combout\);

\ULA9|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|somador|carry_out~0_combout\ = ( \ULA8|mux_inversor|saida_MUX~0_combout\ & ( \ULA9|somador|soma~0_combout\ & ( ((!\ULA6|somador|carry_out~combout\ & ((\ULA7|mux_inversor|saida_MUX~0_combout\) # (\A[7]~input_o\))) # (\ULA6|somador|carry_out~combout\ 
-- & (\A[7]~input_o\ & \ULA7|mux_inversor|saida_MUX~0_combout\))) # (\A[8]~input_o\) ) ) ) # ( !\ULA8|mux_inversor|saida_MUX~0_combout\ & ( \ULA9|somador|soma~0_combout\ & ( (\A[8]~input_o\ & ((!\ULA6|somador|carry_out~combout\ & 
-- ((\ULA7|mux_inversor|saida_MUX~0_combout\) # (\A[7]~input_o\))) # (\ULA6|somador|carry_out~combout\ & (\A[7]~input_o\ & \ULA7|mux_inversor|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA6|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ULA7|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ULA8|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA9|somador|ALT_INV_soma~0_combout\,
	combout => \ULA9|somador|carry_out~0_combout\);

\ULA9|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|somador|carry_out~1_combout\ = (\A[9]~input_o\ & (!\inverte_B~input_o\ $ (!\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	combout => \ULA9|somador|carry_out~1_combout\);

\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\ULA10|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	combout => \ULA10|mux_inversor|saida_MUX~0_combout\);

\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\ULA11|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	combout => \ULA11|mux_inversor|saida_MUX~0_combout\);

\ULA11|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|somador|carry_out~combout\ = ( !\A[11]~input_o\ & ( \ULA11|mux_inversor|saida_MUX~0_combout\ & ( (!\A[10]~input_o\ & ((!\ULA10|mux_inversor|saida_MUX~0_combout\) # ((!\ULA9|somador|carry_out~0_combout\ & !\ULA9|somador|carry_out~1_combout\)))) # 
-- (\A[10]~input_o\ & (!\ULA9|somador|carry_out~0_combout\ & (!\ULA9|somador|carry_out~1_combout\ & !\ULA10|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( \A[11]~input_o\ & ( !\ULA11|mux_inversor|saida_MUX~0_combout\ & ( (!\A[10]~input_o\ & 
-- ((!\ULA10|mux_inversor|saida_MUX~0_combout\) # ((!\ULA9|somador|carry_out~0_combout\ & !\ULA9|somador|carry_out~1_combout\)))) # (\A[10]~input_o\ & (!\ULA9|somador|carry_out~0_combout\ & (!\ULA9|somador|carry_out~1_combout\ & 
-- !\ULA10|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( !\A[11]~input_o\ & ( !\ULA11|mux_inversor|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA9|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA9|somador|ALT_INV_carry_out~1_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ULA10|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ULA11|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA11|somador|carry_out~combout\);

\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

\ULA12|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	combout => \ULA12|mux_inversor|saida_MUX~0_combout\);

\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

\ULA13|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	combout => \ULA13|mux_inversor|saida_MUX~0_combout\);

\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

\ULA14|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	combout => \ULA14|mux_inversor|saida_MUX~0_combout\);

\ULA14|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|soma~0_combout\ = !\A[14]~input_o\ $ (!\ULA14|mux_inversor|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ULA14|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA14|somador|soma~0_combout\);

\ULA14|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|carry_out~0_combout\ = ( \ULA13|mux_inversor|saida_MUX~0_combout\ & ( \ULA14|somador|soma~0_combout\ & ( ((!\ULA11|somador|carry_out~combout\ & ((\ULA12|mux_inversor|saida_MUX~0_combout\) # (\A[12]~input_o\))) # 
-- (\ULA11|somador|carry_out~combout\ & (\A[12]~input_o\ & \ULA12|mux_inversor|saida_MUX~0_combout\))) # (\A[13]~input_o\) ) ) ) # ( !\ULA13|mux_inversor|saida_MUX~0_combout\ & ( \ULA14|somador|soma~0_combout\ & ( (\A[13]~input_o\ & 
-- ((!\ULA11|somador|carry_out~combout\ & ((\ULA12|mux_inversor|saida_MUX~0_combout\) # (\A[12]~input_o\))) # (\ULA11|somador|carry_out~combout\ & (\A[12]~input_o\ & \ULA12|mux_inversor|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA11|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ULA12|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ULA13|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA14|somador|ALT_INV_soma~0_combout\,
	combout => \ULA14|somador|carry_out~0_combout\);

\ULA14|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|carry_out~1_combout\ = (\A[14]~input_o\ & \ULA14|mux_inversor|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ULA14|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA14|somador|carry_out~1_combout\);

\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

\ULA15|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	combout => \ULA15|mux_inversor|saida_MUX~0_combout\);

\A[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

\B[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

\ULA16|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	combout => \ULA16|mux_inversor|saida_MUX~0_combout\);

\ULA16|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|somador|carry_out~combout\ = ( !\A[16]~input_o\ & ( \ULA16|mux_inversor|saida_MUX~0_combout\ & ( (!\A[15]~input_o\ & ((!\ULA15|mux_inversor|saida_MUX~0_combout\) # ((!\ULA14|somador|carry_out~0_combout\ & !\ULA14|somador|carry_out~1_combout\)))) # 
-- (\A[15]~input_o\ & (!\ULA14|somador|carry_out~0_combout\ & (!\ULA14|somador|carry_out~1_combout\ & !\ULA15|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( \A[16]~input_o\ & ( !\ULA16|mux_inversor|saida_MUX~0_combout\ & ( (!\A[15]~input_o\ & 
-- ((!\ULA15|mux_inversor|saida_MUX~0_combout\) # ((!\ULA14|somador|carry_out~0_combout\ & !\ULA14|somador|carry_out~1_combout\)))) # (\A[15]~input_o\ & (!\ULA14|somador|carry_out~0_combout\ & (!\ULA14|somador|carry_out~1_combout\ & 
-- !\ULA15|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( !\A[16]~input_o\ & ( !\ULA16|mux_inversor|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA14|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA14|somador|ALT_INV_carry_out~1_combout\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ULA15|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ULA16|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA16|somador|carry_out~combout\);

\A[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

\B[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

\ULA17|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	combout => \ULA17|mux_inversor|saida_MUX~0_combout\);

\A[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

\B[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

\ULA18|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[18]~input_o\,
	combout => \ULA18|mux_inversor|saida_MUX~0_combout\);

\A[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

\B[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

\ULA19|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	combout => \ULA19|mux_inversor|saida_MUX~0_combout\);

\ULA19|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|somador|soma~0_combout\ = !\A[19]~input_o\ $ (!\ULA19|mux_inversor|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ULA19|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA19|somador|soma~0_combout\);

\ULA19|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|somador|carry_out~0_combout\ = ( \ULA18|mux_inversor|saida_MUX~0_combout\ & ( \ULA19|somador|soma~0_combout\ & ( ((!\ULA16|somador|carry_out~combout\ & ((\ULA17|mux_inversor|saida_MUX~0_combout\) # (\A[17]~input_o\))) # 
-- (\ULA16|somador|carry_out~combout\ & (\A[17]~input_o\ & \ULA17|mux_inversor|saida_MUX~0_combout\))) # (\A[18]~input_o\) ) ) ) # ( !\ULA18|mux_inversor|saida_MUX~0_combout\ & ( \ULA19|somador|soma~0_combout\ & ( (\A[18]~input_o\ & 
-- ((!\ULA16|somador|carry_out~combout\ & ((\ULA17|mux_inversor|saida_MUX~0_combout\) # (\A[17]~input_o\))) # (\ULA16|somador|carry_out~combout\ & (\A[17]~input_o\ & \ULA17|mux_inversor|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA16|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ULA17|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ULA18|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA19|somador|ALT_INV_soma~0_combout\,
	combout => \ULA19|somador|carry_out~0_combout\);

\ULA19|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|somador|carry_out~1_combout\ = (\A[19]~input_o\ & \ULA19|mux_inversor|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ULA19|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA19|somador|carry_out~1_combout\);

\A[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

\B[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

\ULA20|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	combout => \ULA20|mux_inversor|saida_MUX~0_combout\);

\A[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

\B[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

\ULA21|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[21]~input_o\,
	combout => \ULA21|mux_inversor|saida_MUX~0_combout\);

\ULA21|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador|carry_out~combout\ = ( !\A[21]~input_o\ & ( \ULA21|mux_inversor|saida_MUX~0_combout\ & ( (!\A[20]~input_o\ & ((!\ULA20|mux_inversor|saida_MUX~0_combout\) # ((!\ULA19|somador|carry_out~0_combout\ & !\ULA19|somador|carry_out~1_combout\)))) # 
-- (\A[20]~input_o\ & (!\ULA19|somador|carry_out~0_combout\ & (!\ULA19|somador|carry_out~1_combout\ & !\ULA20|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( \A[21]~input_o\ & ( !\ULA21|mux_inversor|saida_MUX~0_combout\ & ( (!\A[20]~input_o\ & 
-- ((!\ULA20|mux_inversor|saida_MUX~0_combout\) # ((!\ULA19|somador|carry_out~0_combout\ & !\ULA19|somador|carry_out~1_combout\)))) # (\A[20]~input_o\ & (!\ULA19|somador|carry_out~0_combout\ & (!\ULA19|somador|carry_out~1_combout\ & 
-- !\ULA20|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( !\A[21]~input_o\ & ( !\ULA21|mux_inversor|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA19|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA19|somador|ALT_INV_carry_out~1_combout\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ULA20|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ULA21|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA21|somador|carry_out~combout\);

\A[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

\B[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

\ULA22|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	combout => \ULA22|mux_inversor|saida_MUX~0_combout\);

\A[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

\B[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

\ULA23|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	combout => \ULA23|mux_inversor|saida_MUX~0_combout\);

\A[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

\B[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

\ULA24|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	combout => \ULA24|mux_inversor|saida_MUX~0_combout\);

\ULA24|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|somador|soma~0_combout\ = !\A[24]~input_o\ $ (!\ULA24|mux_inversor|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ULA24|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA24|somador|soma~0_combout\);

\ULA24|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|somador|carry_out~0_combout\ = ( \ULA23|mux_inversor|saida_MUX~0_combout\ & ( \ULA24|somador|soma~0_combout\ & ( ((!\ULA21|somador|carry_out~combout\ & ((\ULA22|mux_inversor|saida_MUX~0_combout\) # (\A[22]~input_o\))) # 
-- (\ULA21|somador|carry_out~combout\ & (\A[22]~input_o\ & \ULA22|mux_inversor|saida_MUX~0_combout\))) # (\A[23]~input_o\) ) ) ) # ( !\ULA23|mux_inversor|saida_MUX~0_combout\ & ( \ULA24|somador|soma~0_combout\ & ( (\A[23]~input_o\ & 
-- ((!\ULA21|somador|carry_out~combout\ & ((\ULA22|mux_inversor|saida_MUX~0_combout\) # (\A[22]~input_o\))) # (\ULA21|somador|carry_out~combout\ & (\A[22]~input_o\ & \ULA22|mux_inversor|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA21|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ULA22|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ULA23|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA24|somador|ALT_INV_soma~0_combout\,
	combout => \ULA24|somador|carry_out~0_combout\);

\ULA24|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|somador|carry_out~1_combout\ = (\A[24]~input_o\ & \ULA24|mux_inversor|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ULA24|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA24|somador|carry_out~1_combout\);

\A[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

\B[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

\ULA25|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	combout => \ULA25|mux_inversor|saida_MUX~0_combout\);

\A[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

\B[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

\ULA26|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	combout => \ULA26|mux_inversor|saida_MUX~0_combout\);

\ULA26|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|somador|carry_out~combout\ = ( !\A[26]~input_o\ & ( \ULA26|mux_inversor|saida_MUX~0_combout\ & ( (!\A[25]~input_o\ & ((!\ULA25|mux_inversor|saida_MUX~0_combout\) # ((!\ULA24|somador|carry_out~0_combout\ & !\ULA24|somador|carry_out~1_combout\)))) # 
-- (\A[25]~input_o\ & (!\ULA24|somador|carry_out~0_combout\ & (!\ULA24|somador|carry_out~1_combout\ & !\ULA25|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( \A[26]~input_o\ & ( !\ULA26|mux_inversor|saida_MUX~0_combout\ & ( (!\A[25]~input_o\ & 
-- ((!\ULA25|mux_inversor|saida_MUX~0_combout\) # ((!\ULA24|somador|carry_out~0_combout\ & !\ULA24|somador|carry_out~1_combout\)))) # (\A[25]~input_o\ & (!\ULA24|somador|carry_out~0_combout\ & (!\ULA24|somador|carry_out~1_combout\ & 
-- !\ULA25|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( !\A[26]~input_o\ & ( !\ULA26|mux_inversor|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA24|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA24|somador|ALT_INV_carry_out~1_combout\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ULA25|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \ULA26|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA26|somador|carry_out~combout\);

\A[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

\B[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

\ULA27|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[27]~input_o\,
	combout => \ULA27|mux_inversor|saida_MUX~0_combout\);

\A[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

\B[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

\ULA28|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	combout => \ULA28|mux_inversor|saida_MUX~0_combout\);

\A[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

\B[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

\ULA29|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|somador|soma~0_combout\ = !\inverte_B~input_o\ $ (!\A[29]~input_o\ $ (\B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	combout => \ULA29|somador|soma~0_combout\);

\ULA29|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|somador|carry_out~0_combout\ = ( \ULA28|mux_inversor|saida_MUX~0_combout\ & ( \ULA29|somador|soma~0_combout\ & ( ((!\ULA26|somador|carry_out~combout\ & ((\ULA27|mux_inversor|saida_MUX~0_combout\) # (\A[27]~input_o\))) # 
-- (\ULA26|somador|carry_out~combout\ & (\A[27]~input_o\ & \ULA27|mux_inversor|saida_MUX~0_combout\))) # (\A[28]~input_o\) ) ) ) # ( !\ULA28|mux_inversor|saida_MUX~0_combout\ & ( \ULA29|somador|soma~0_combout\ & ( (\A[28]~input_o\ & 
-- ((!\ULA26|somador|carry_out~combout\ & ((\ULA27|mux_inversor|saida_MUX~0_combout\) # (\A[27]~input_o\))) # (\ULA26|somador|carry_out~combout\ & (\A[27]~input_o\ & \ULA27|mux_inversor|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA26|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ULA27|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ULA28|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA29|somador|ALT_INV_soma~0_combout\,
	combout => \ULA29|somador|carry_out~0_combout\);

\ULA29|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|somador|carry_out~1_combout\ = (\A[29]~input_o\ & (!\inverte_B~input_o\ $ (!\B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	combout => \ULA29|somador|carry_out~1_combout\);

\A[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

\B[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

\ULA30|mux_inversor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|mux_inversor|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	combout => \ULA30|mux_inversor|saida_MUX~0_combout\);

\ULA31|slt_in\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|slt_in~combout\ = ( \A[30]~input_o\ & ( \ULA30|mux_inversor|saida_MUX~0_combout\ & ( (\A[31]~input_o\ & \ULA31|mux_inversor|saida_MUX~0_combout\) ) ) ) # ( !\A[30]~input_o\ & ( \ULA30|mux_inversor|saida_MUX~0_combout\ & ( (!\A[31]~input_o\ & 
-- (\ULA31|mux_inversor|saida_MUX~0_combout\ & (!\ULA29|somador|carry_out~0_combout\ & !\ULA29|somador|carry_out~1_combout\))) # (\A[31]~input_o\ & (((!\ULA29|somador|carry_out~0_combout\ & !\ULA29|somador|carry_out~1_combout\)) # 
-- (\ULA31|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( \A[30]~input_o\ & ( !\ULA30|mux_inversor|saida_MUX~0_combout\ & ( (!\A[31]~input_o\ & (\ULA31|mux_inversor|saida_MUX~0_combout\ & (!\ULA29|somador|carry_out~0_combout\ & 
-- !\ULA29|somador|carry_out~1_combout\))) # (\A[31]~input_o\ & (((!\ULA29|somador|carry_out~0_combout\ & !\ULA29|somador|carry_out~1_combout\)) # (\ULA31|mux_inversor|saida_MUX~0_combout\))) ) ) ) # ( !\A[30]~input_o\ & ( 
-- !\ULA30|mux_inversor|saida_MUX~0_combout\ & ( (\ULA31|mux_inversor|saida_MUX~0_combout\) # (\A[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011100010001000101110001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ULA31|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA29|somador|ALT_INV_carry_out~0_combout\,
	datad => \ULA29|somador|ALT_INV_carry_out~1_combout\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ULA30|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA31|slt_in~combout\);

\ULA0|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA0|mux_seletor|saida_MUX~0_combout\ = ( \sel[1]~input_o\ & ( \ULA31|slt_in~combout\ & ( (!\B[0]~input_o\ $ (!\A[0]~input_o\)) # (\sel[0]~input_o\) ) ) ) # ( !\sel[1]~input_o\ & ( \ULA31|slt_in~combout\ & ( (!\A[0]~input_o\ & (\sel[0]~input_o\ & 
-- (!\inverte_B~input_o\ $ (!\B[0]~input_o\)))) # (\A[0]~input_o\ & ((!\inverte_B~input_o\ $ (!\B[0]~input_o\)) # (\sel[0]~input_o\))) ) ) ) # ( \sel[1]~input_o\ & ( !\ULA31|slt_in~combout\ & ( (!\sel[0]~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\))) ) ) 
-- ) # ( !\sel[1]~input_o\ & ( !\ULA31|slt_in~combout\ & ( (!\A[0]~input_o\ & (\sel[0]~input_o\ & (!\inverte_B~input_o\ $ (!\B[0]~input_o\)))) # (\A[0]~input_o\ & ((!\inverte_B~input_o\ $ (!\B[0]~input_o\)) # (\sel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101111001111000000000000000110011011110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ALT_INV_sel[1]~input_o\,
	dataf => \ULA31|ALT_INV_slt_in~combout\,
	combout => \ULA0|mux_seletor|saida_MUX~0_combout\);

\ULA0|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA0|somador|carry_out~0_combout\ = (!\B[0]~input_o\ & (\inverte_B~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	combout => \ULA0|somador|carry_out~0_combout\);

\ULA1|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|mux_seletor|saida_MUX~0_combout\ = ( \B[1]~input_o\ & ( \ULA0|somador|carry_out~0_combout\ & ( (!\sel[0]~input_o\ & ((!\inverte_B~input_o\ & ((\A[1]~input_o\))) # (\inverte_B~input_o\ & (\sel[1]~input_o\ & !\A[1]~input_o\)))) # (\sel[0]~input_o\ & 
-- (!\sel[1]~input_o\ & ((!\inverte_B~input_o\) # (\A[1]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( \ULA0|somador|carry_out~0_combout\ & ( (!\sel[0]~input_o\ & ((!\inverte_B~input_o\ & (\sel[1]~input_o\ & !\A[1]~input_o\)) # (\inverte_B~input_o\ & 
-- ((\A[1]~input_o\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[1]~input_o\) # (\inverte_B~input_o\)))) ) ) ) # ( \B[1]~input_o\ & ( !\ULA0|somador|carry_out~0_combout\ & ( (!\inverte_B~input_o\ & (!\sel[1]~input_o\ $ (((!\sel[0]~input_o\ & 
-- !\A[1]~input_o\))))) # (\inverte_B~input_o\ & (\A[1]~input_o\ & (!\sel[0]~input_o\ $ (!\sel[1]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( !\ULA0|somador|carry_out~0_combout\ & ( (!\inverte_B~input_o\ & (\A[1]~input_o\ & (!\sel[0]~input_o\ $ 
-- (!\sel[1]~input_o\)))) # (\inverte_B~input_o\ & (!\sel[1]~input_o\ $ (((!\sel[0]~input_o\ & !\A[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001111000001010001011010000011000011101000010010010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ULA0|somador|ALT_INV_carry_out~0_combout\,
	combout => \ULA1|mux_seletor|saida_MUX~0_combout\);

\ULA2|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|mux_seletor|saida_MUX~0_combout\ = ( \ULA2|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[2]~input_o\ $ (((!\sel[1]~input_o\) # (\ULA1|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA2|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA1|somador|carry_out~combout\ $ (!\A[2]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA1|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ULA2|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA2|mux_seletor|saida_MUX~0_combout\);

\ULA2|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|somador|carry_out~combout\ = (!\ULA1|somador|carry_out~combout\ & (\A[2]~input_o\ & \ULA2|mux_inversor|saida_MUX~0_combout\)) # (\ULA1|somador|carry_out~combout\ & ((\ULA2|mux_inversor|saida_MUX~0_combout\) # (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ULA2|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA2|somador|carry_out~combout\);

\ULA3|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|mux_seletor|saida_MUX~0_combout\ = ( \ULA3|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[3]~input_o\ $ (((!\sel[1]~input_o\) # (\ULA2|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA3|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA2|somador|carry_out~combout\ $ (!\A[3]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA2|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ULA3|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA3|mux_seletor|saida_MUX~0_combout\);

\ULA3|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|somador|carry_out~combout\ = ( \ULA3|mux_inversor|saida_MUX~0_combout\ & ( ((!\ULA1|somador|carry_out~combout\ & (\A[2]~input_o\ & \ULA2|mux_inversor|saida_MUX~0_combout\)) # (\ULA1|somador|carry_out~combout\ & 
-- ((\ULA2|mux_inversor|saida_MUX~0_combout\) # (\A[2]~input_o\)))) # (\A[3]~input_o\) ) ) # ( !\ULA3|mux_inversor|saida_MUX~0_combout\ & ( (\A[3]~input_o\ & ((!\ULA1|somador|carry_out~combout\ & (\A[2]~input_o\ & \ULA2|mux_inversor|saida_MUX~0_combout\)) # 
-- (\ULA1|somador|carry_out~combout\ & ((\ULA2|mux_inversor|saida_MUX~0_combout\) # (\A[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ULA2|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ULA3|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA3|somador|carry_out~combout\);

\ULA4|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|mux_seletor|saida_MUX~0_combout\ = ( \A[4]~input_o\ & ( \B[4]~input_o\ & ( (!\sel[0]~input_o\ & (!\inverte_B~input_o\ $ (((\sel[1]~input_o\ & !\ULA3|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) ) # ( 
-- !\A[4]~input_o\ & ( \B[4]~input_o\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\inverte_B~input_o\ $ (\ULA3|somador|carry_out~combout\)))) # (\sel[0]~input_o\ & (!\inverte_B~input_o\ & (!\sel[1]~input_o\))) ) ) ) # ( \A[4]~input_o\ & ( !\B[4]~input_o\ 
-- & ( (!\sel[0]~input_o\ & (!\inverte_B~input_o\ $ (((!\sel[1]~input_o\) # (\ULA3|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) ) # ( !\A[4]~input_o\ & ( !\B[4]~input_o\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & 
-- (!\inverte_B~input_o\ $ (!\ULA3|somador|carry_out~combout\)))) # (\sel[0]~input_o\ & (\inverte_B~input_o\ & (!\sel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000011000011110000111010000101000001001001011010010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ULA3|somador|ALT_INV_carry_out~combout\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \ULA4|mux_seletor|saida_MUX~0_combout\);

\ULA5|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|mux_seletor|saida_MUX~0_combout\ = ( \A[5]~input_o\ & ( \ULA5|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[1]~input_o\) # ((!\sel[0]~input_o\ & ((\ULA4|somador|carry_out~1_combout\) # (\ULA4|somador|carry_out~0_combout\)))) ) ) ) # ( !\A[5]~input_o\ 
-- & ( \ULA5|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA4|somador|carry_out~0_combout\ & !\ULA4|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( \A[5]~input_o\ & ( 
-- !\ULA5|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA4|somador|carry_out~0_combout\ & !\ULA4|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( !\A[5]~input_o\ & ( 
-- !\ULA5|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & ((\ULA4|somador|carry_out~1_combout\) # (\ULA4|somador|carry_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA4|somador|ALT_INV_carry_out~0_combout\,
	datad => \ULA4|somador|ALT_INV_carry_out~1_combout\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ULA5|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA5|mux_seletor|saida_MUX~0_combout\);

\ULA5|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|somador|carry_out~combout\ = (!\A[5]~input_o\ & ((!\ULA5|mux_inversor|saida_MUX~0_combout\) # ((!\ULA4|somador|carry_out~0_combout\ & !\ULA4|somador|carry_out~1_combout\)))) # (\A[5]~input_o\ & (!\ULA4|somador|carry_out~0_combout\ & 
-- (!\ULA4|somador|carry_out~1_combout\ & !\ULA5|mux_inversor|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA4|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA4|somador|ALT_INV_carry_out~1_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ULA5|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA5|somador|carry_out~combout\);

\ULA6|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|mux_seletor|saida_MUX~0_combout\ = ( \ULA6|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[6]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA5|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA6|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA5|somador|carry_out~combout\ $ (\A[6]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA5|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ULA6|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA6|mux_seletor|saida_MUX~0_combout\);

\ULA7|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|mux_seletor|saida_MUX~0_combout\ = ( \ULA7|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[7]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA6|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA7|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA6|somador|carry_out~combout\ $ (\A[7]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA6|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ULA7|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA7|mux_seletor|saida_MUX~0_combout\);

\ULA8|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|somador|soma~0_combout\ = !\A[8]~input_o\ $ (!\ULA8|mux_inversor|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ULA8|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA8|somador|soma~0_combout\);

\ULA2|mux_seletor|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|mux_seletor|saida_MUX~1_combout\ = (!\sel[0]~input_o\ & \sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	combout => \ULA2|mux_seletor|saida_MUX~1_combout\);

\ULA8|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|mux_seletor|saida_MUX~0_combout\ = (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & (\A[8]~input_o\ & \ULA8|mux_inversor|saida_MUX~0_combout\)) # (\sel[0]~input_o\ & ((\ULA8|mux_inversor|saida_MUX~0_combout\) # (\A[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ULA8|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA8|mux_seletor|saida_MUX~0_combout\);

\ULA8|mux_seletor|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|mux_seletor|saida_MUX~1_combout\ = ( \ULA2|mux_seletor|saida_MUX~1_combout\ & ( \ULA8|mux_seletor|saida_MUX~0_combout\ ) ) # ( !\ULA2|mux_seletor|saida_MUX~1_combout\ & ( \ULA8|mux_seletor|saida_MUX~0_combout\ ) ) # ( 
-- \ULA2|mux_seletor|saida_MUX~1_combout\ & ( !\ULA8|mux_seletor|saida_MUX~0_combout\ & ( !\ULA8|somador|soma~0_combout\ $ (((!\ULA6|somador|carry_out~combout\ & (!\A[7]~input_o\ & !\ULA7|mux_inversor|saida_MUX~0_combout\)) # 
-- (\ULA6|somador|carry_out~combout\ & ((!\A[7]~input_o\) # (!\ULA7|mux_inversor|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA6|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ULA7|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA8|somador|ALT_INV_soma~0_combout\,
	datae => \ULA2|mux_seletor|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA8|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA8|mux_seletor|saida_MUX~1_combout\);

\ULA8|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|somador|carry_out~combout\ = ( \ULA8|mux_inversor|saida_MUX~0_combout\ & ( ((!\ULA6|somador|carry_out~combout\ & ((\ULA7|mux_inversor|saida_MUX~0_combout\) # (\A[7]~input_o\))) # (\ULA6|somador|carry_out~combout\ & (\A[7]~input_o\ & 
-- \ULA7|mux_inversor|saida_MUX~0_combout\))) # (\A[8]~input_o\) ) ) # ( !\ULA8|mux_inversor|saida_MUX~0_combout\ & ( (\A[8]~input_o\ & ((!\ULA6|somador|carry_out~combout\ & ((\ULA7|mux_inversor|saida_MUX~0_combout\) # (\A[7]~input_o\))) # 
-- (\ULA6|somador|carry_out~combout\ & (\A[7]~input_o\ & \ULA7|mux_inversor|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA6|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ULA7|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ULA8|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA8|somador|carry_out~combout\);

\ULA9|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|mux_seletor|saida_MUX~0_combout\ = ( \A[9]~input_o\ & ( \B[9]~input_o\ & ( (!\sel[0]~input_o\ & (!\inverte_B~input_o\ $ (((\sel[1]~input_o\ & !\ULA8|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) ) # ( 
-- !\A[9]~input_o\ & ( \B[9]~input_o\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\inverte_B~input_o\ $ (\ULA8|somador|carry_out~combout\)))) # (\sel[0]~input_o\ & (!\inverte_B~input_o\ & (!\sel[1]~input_o\))) ) ) ) # ( \A[9]~input_o\ & ( !\B[9]~input_o\ 
-- & ( (!\sel[0]~input_o\ & (!\inverte_B~input_o\ $ (((!\sel[1]~input_o\) # (\ULA8|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) ) # ( !\A[9]~input_o\ & ( !\B[9]~input_o\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & 
-- (!\inverte_B~input_o\ $ (!\ULA8|somador|carry_out~combout\)))) # (\sel[0]~input_o\ & (\inverte_B~input_o\ & (!\sel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000011000011110000111010000101000001001001011010010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ULA8|somador|ALT_INV_carry_out~combout\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \ULA9|mux_seletor|saida_MUX~0_combout\);

\ULA10|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|mux_seletor|saida_MUX~0_combout\ = ( \A[10]~input_o\ & ( \ULA10|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[1]~input_o\) # ((!\sel[0]~input_o\ & ((\ULA9|somador|carry_out~1_combout\) # (\ULA9|somador|carry_out~0_combout\)))) ) ) ) # ( 
-- !\A[10]~input_o\ & ( \ULA10|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA9|somador|carry_out~0_combout\ & !\ULA9|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( \A[10]~input_o\ & 
-- ( !\ULA10|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA9|somador|carry_out~0_combout\ & !\ULA9|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( !\A[10]~input_o\ & ( 
-- !\ULA10|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & ((\ULA9|somador|carry_out~1_combout\) # (\ULA9|somador|carry_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA9|somador|ALT_INV_carry_out~0_combout\,
	datad => \ULA9|somador|ALT_INV_carry_out~1_combout\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ULA10|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA10|mux_seletor|saida_MUX~0_combout\);

\ULA10|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|somador|carry_out~combout\ = (!\A[10]~input_o\ & ((!\ULA10|mux_inversor|saida_MUX~0_combout\) # ((!\ULA9|somador|carry_out~0_combout\ & !\ULA9|somador|carry_out~1_combout\)))) # (\A[10]~input_o\ & (!\ULA9|somador|carry_out~0_combout\ & 
-- (!\ULA9|somador|carry_out~1_combout\ & !\ULA10|mux_inversor|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA9|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA9|somador|ALT_INV_carry_out~1_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ULA10|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA10|somador|carry_out~combout\);

\ULA11|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|mux_seletor|saida_MUX~0_combout\ = ( \ULA11|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[11]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA10|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA11|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA10|somador|carry_out~combout\ $ (\A[11]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA10|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ULA11|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA11|mux_seletor|saida_MUX~0_combout\);

\ULA12|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|mux_seletor|saida_MUX~0_combout\ = ( \ULA12|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[12]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA11|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA12|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA11|somador|carry_out~combout\ $ (\A[12]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA11|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ULA12|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA12|mux_seletor|saida_MUX~0_combout\);

\ULA13|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|somador|soma~0_combout\ = !\A[13]~input_o\ $ (!\ULA13|mux_inversor|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ULA13|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA13|somador|soma~0_combout\);

\ULA13|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|mux_seletor|saida_MUX~0_combout\ = (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & (\A[13]~input_o\ & \ULA13|mux_inversor|saida_MUX~0_combout\)) # (\sel[0]~input_o\ & ((\ULA13|mux_inversor|saida_MUX~0_combout\) # (\A[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ULA13|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA13|mux_seletor|saida_MUX~0_combout\);

\ULA13|mux_seletor|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|mux_seletor|saida_MUX~1_combout\ = ( \ULA2|mux_seletor|saida_MUX~1_combout\ & ( \ULA13|mux_seletor|saida_MUX~0_combout\ ) ) # ( !\ULA2|mux_seletor|saida_MUX~1_combout\ & ( \ULA13|mux_seletor|saida_MUX~0_combout\ ) ) # ( 
-- \ULA2|mux_seletor|saida_MUX~1_combout\ & ( !\ULA13|mux_seletor|saida_MUX~0_combout\ & ( !\ULA13|somador|soma~0_combout\ $ (((!\ULA11|somador|carry_out~combout\ & (!\A[12]~input_o\ & !\ULA12|mux_inversor|saida_MUX~0_combout\)) # 
-- (\ULA11|somador|carry_out~combout\ & ((!\A[12]~input_o\) # (!\ULA12|mux_inversor|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA11|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ULA12|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA13|somador|ALT_INV_soma~0_combout\,
	datae => \ULA2|mux_seletor|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA13|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA13|mux_seletor|saida_MUX~1_combout\);

\ULA13|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|somador|carry_out~combout\ = ( \ULA13|mux_inversor|saida_MUX~0_combout\ & ( ((!\ULA11|somador|carry_out~combout\ & ((\ULA12|mux_inversor|saida_MUX~0_combout\) # (\A[12]~input_o\))) # (\ULA11|somador|carry_out~combout\ & (\A[12]~input_o\ & 
-- \ULA12|mux_inversor|saida_MUX~0_combout\))) # (\A[13]~input_o\) ) ) # ( !\ULA13|mux_inversor|saida_MUX~0_combout\ & ( (\A[13]~input_o\ & ((!\ULA11|somador|carry_out~combout\ & ((\ULA12|mux_inversor|saida_MUX~0_combout\) # (\A[12]~input_o\))) # 
-- (\ULA11|somador|carry_out~combout\ & (\A[12]~input_o\ & \ULA12|mux_inversor|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA11|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ULA12|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ULA13|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA13|somador|carry_out~combout\);

\ULA14|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|mux_seletor|saida_MUX~0_combout\ = ( \ULA14|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[14]~input_o\ $ (((!\sel[1]~input_o\) # (\ULA13|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA14|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA13|somador|carry_out~combout\ $ (!\A[14]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA13|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ULA14|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA14|mux_seletor|saida_MUX~0_combout\);

\ULA15|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|mux_seletor|saida_MUX~0_combout\ = ( \A[15]~input_o\ & ( \ULA15|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[1]~input_o\) # ((!\sel[0]~input_o\ & ((\ULA14|somador|carry_out~1_combout\) # (\ULA14|somador|carry_out~0_combout\)))) ) ) ) # ( 
-- !\A[15]~input_o\ & ( \ULA15|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA14|somador|carry_out~0_combout\ & !\ULA14|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( \A[15]~input_o\ 
-- & ( !\ULA15|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA14|somador|carry_out~0_combout\ & !\ULA14|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( !\A[15]~input_o\ & ( 
-- !\ULA15|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & ((\ULA14|somador|carry_out~1_combout\) # (\ULA14|somador|carry_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA14|somador|ALT_INV_carry_out~0_combout\,
	datad => \ULA14|somador|ALT_INV_carry_out~1_combout\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ULA15|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA15|mux_seletor|saida_MUX~0_combout\);

\ULA15|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|somador|carry_out~combout\ = (!\A[15]~input_o\ & ((!\ULA15|mux_inversor|saida_MUX~0_combout\) # ((!\ULA14|somador|carry_out~0_combout\ & !\ULA14|somador|carry_out~1_combout\)))) # (\A[15]~input_o\ & (!\ULA14|somador|carry_out~0_combout\ & 
-- (!\ULA14|somador|carry_out~1_combout\ & !\ULA15|mux_inversor|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA14|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA14|somador|ALT_INV_carry_out~1_combout\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ULA15|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA15|somador|carry_out~combout\);

\ULA16|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|mux_seletor|saida_MUX~0_combout\ = ( \ULA16|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[16]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA15|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA16|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA15|somador|carry_out~combout\ $ (\A[16]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA15|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ULA16|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA16|mux_seletor|saida_MUX~0_combout\);

\ULA17|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|mux_seletor|saida_MUX~0_combout\ = ( \ULA17|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[17]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA16|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA17|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA16|somador|carry_out~combout\ $ (\A[17]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA16|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ULA17|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA17|mux_seletor|saida_MUX~0_combout\);

\ULA18|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|somador|soma~0_combout\ = !\A[18]~input_o\ $ (!\ULA18|mux_inversor|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ULA18|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA18|somador|soma~0_combout\);

\ULA18|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|mux_seletor|saida_MUX~0_combout\ = (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & (\A[18]~input_o\ & \ULA18|mux_inversor|saida_MUX~0_combout\)) # (\sel[0]~input_o\ & ((\ULA18|mux_inversor|saida_MUX~0_combout\) # (\A[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ULA18|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA18|mux_seletor|saida_MUX~0_combout\);

\ULA18|mux_seletor|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|mux_seletor|saida_MUX~1_combout\ = ( \ULA2|mux_seletor|saida_MUX~1_combout\ & ( \ULA18|mux_seletor|saida_MUX~0_combout\ ) ) # ( !\ULA2|mux_seletor|saida_MUX~1_combout\ & ( \ULA18|mux_seletor|saida_MUX~0_combout\ ) ) # ( 
-- \ULA2|mux_seletor|saida_MUX~1_combout\ & ( !\ULA18|mux_seletor|saida_MUX~0_combout\ & ( !\ULA18|somador|soma~0_combout\ $ (((!\ULA16|somador|carry_out~combout\ & (!\A[17]~input_o\ & !\ULA17|mux_inversor|saida_MUX~0_combout\)) # 
-- (\ULA16|somador|carry_out~combout\ & ((!\A[17]~input_o\) # (!\ULA17|mux_inversor|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA16|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ULA17|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA18|somador|ALT_INV_soma~0_combout\,
	datae => \ULA2|mux_seletor|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA18|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA18|mux_seletor|saida_MUX~1_combout\);

\ULA18|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|somador|carry_out~combout\ = ( \ULA18|mux_inversor|saida_MUX~0_combout\ & ( ((!\ULA16|somador|carry_out~combout\ & ((\ULA17|mux_inversor|saida_MUX~0_combout\) # (\A[17]~input_o\))) # (\ULA16|somador|carry_out~combout\ & (\A[17]~input_o\ & 
-- \ULA17|mux_inversor|saida_MUX~0_combout\))) # (\A[18]~input_o\) ) ) # ( !\ULA18|mux_inversor|saida_MUX~0_combout\ & ( (\A[18]~input_o\ & ((!\ULA16|somador|carry_out~combout\ & ((\ULA17|mux_inversor|saida_MUX~0_combout\) # (\A[17]~input_o\))) # 
-- (\ULA16|somador|carry_out~combout\ & (\A[17]~input_o\ & \ULA17|mux_inversor|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA16|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ULA17|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ULA18|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA18|somador|carry_out~combout\);

\ULA19|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|mux_seletor|saida_MUX~0_combout\ = ( \ULA19|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[19]~input_o\ $ (((!\sel[1]~input_o\) # (\ULA18|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA19|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA18|somador|carry_out~combout\ $ (!\A[19]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[19]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA18|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ULA19|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA19|mux_seletor|saida_MUX~0_combout\);

\ULA20|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|mux_seletor|saida_MUX~0_combout\ = ( \A[20]~input_o\ & ( \ULA20|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[1]~input_o\) # ((!\sel[0]~input_o\ & ((\ULA19|somador|carry_out~1_combout\) # (\ULA19|somador|carry_out~0_combout\)))) ) ) ) # ( 
-- !\A[20]~input_o\ & ( \ULA20|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA19|somador|carry_out~0_combout\ & !\ULA19|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( \A[20]~input_o\ 
-- & ( !\ULA20|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA19|somador|carry_out~0_combout\ & !\ULA19|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( !\A[20]~input_o\ & ( 
-- !\ULA20|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & ((\ULA19|somador|carry_out~1_combout\) # (\ULA19|somador|carry_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA19|somador|ALT_INV_carry_out~0_combout\,
	datad => \ULA19|somador|ALT_INV_carry_out~1_combout\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ULA20|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA20|mux_seletor|saida_MUX~0_combout\);

\ULA20|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|somador|carry_out~combout\ = (!\A[20]~input_o\ & ((!\ULA20|mux_inversor|saida_MUX~0_combout\) # ((!\ULA19|somador|carry_out~0_combout\ & !\ULA19|somador|carry_out~1_combout\)))) # (\A[20]~input_o\ & (!\ULA19|somador|carry_out~0_combout\ & 
-- (!\ULA19|somador|carry_out~1_combout\ & !\ULA20|mux_inversor|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA19|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA19|somador|ALT_INV_carry_out~1_combout\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ULA20|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA20|somador|carry_out~combout\);

\ULA21|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|mux_seletor|saida_MUX~0_combout\ = ( \ULA21|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[21]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA20|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA21|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA20|somador|carry_out~combout\ $ (\A[21]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA20|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \ULA21|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA21|mux_seletor|saida_MUX~0_combout\);

\ULA22|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|mux_seletor|saida_MUX~0_combout\ = ( \ULA22|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[22]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA21|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA22|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA21|somador|carry_out~combout\ $ (\A[22]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA21|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ULA22|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA22|mux_seletor|saida_MUX~0_combout\);

\ULA23|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|somador|soma~0_combout\ = !\A[23]~input_o\ $ (!\ULA23|mux_inversor|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ULA23|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA23|somador|soma~0_combout\);

\ULA23|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|mux_seletor|saida_MUX~0_combout\ = (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & (\A[23]~input_o\ & \ULA23|mux_inversor|saida_MUX~0_combout\)) # (\sel[0]~input_o\ & ((\ULA23|mux_inversor|saida_MUX~0_combout\) # (\A[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ULA23|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA23|mux_seletor|saida_MUX~0_combout\);

\ULA23|mux_seletor|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|mux_seletor|saida_MUX~1_combout\ = ( \ULA2|mux_seletor|saida_MUX~1_combout\ & ( \ULA23|mux_seletor|saida_MUX~0_combout\ ) ) # ( !\ULA2|mux_seletor|saida_MUX~1_combout\ & ( \ULA23|mux_seletor|saida_MUX~0_combout\ ) ) # ( 
-- \ULA2|mux_seletor|saida_MUX~1_combout\ & ( !\ULA23|mux_seletor|saida_MUX~0_combout\ & ( !\ULA23|somador|soma~0_combout\ $ (((!\ULA21|somador|carry_out~combout\ & (!\A[22]~input_o\ & !\ULA22|mux_inversor|saida_MUX~0_combout\)) # 
-- (\ULA21|somador|carry_out~combout\ & ((!\A[22]~input_o\) # (!\ULA22|mux_inversor|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA21|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ULA22|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA23|somador|ALT_INV_soma~0_combout\,
	datae => \ULA2|mux_seletor|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA23|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA23|mux_seletor|saida_MUX~1_combout\);

\ULA23|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|somador|carry_out~combout\ = ( \ULA23|mux_inversor|saida_MUX~0_combout\ & ( ((!\ULA21|somador|carry_out~combout\ & ((\ULA22|mux_inversor|saida_MUX~0_combout\) # (\A[22]~input_o\))) # (\ULA21|somador|carry_out~combout\ & (\A[22]~input_o\ & 
-- \ULA22|mux_inversor|saida_MUX~0_combout\))) # (\A[23]~input_o\) ) ) # ( !\ULA23|mux_inversor|saida_MUX~0_combout\ & ( (\A[23]~input_o\ & ((!\ULA21|somador|carry_out~combout\ & ((\ULA22|mux_inversor|saida_MUX~0_combout\) # (\A[22]~input_o\))) # 
-- (\ULA21|somador|carry_out~combout\ & (\A[22]~input_o\ & \ULA22|mux_inversor|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA21|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ULA22|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ULA23|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA23|somador|carry_out~combout\);

\ULA24|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|mux_seletor|saida_MUX~0_combout\ = ( \ULA24|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[24]~input_o\ $ (((!\sel[1]~input_o\) # (\ULA23|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA24|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA23|somador|carry_out~combout\ $ (!\A[24]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[24]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA23|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ULA24|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA24|mux_seletor|saida_MUX~0_combout\);

\ULA25|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|mux_seletor|saida_MUX~0_combout\ = ( \A[25]~input_o\ & ( \ULA25|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[1]~input_o\) # ((!\sel[0]~input_o\ & ((\ULA24|somador|carry_out~1_combout\) # (\ULA24|somador|carry_out~0_combout\)))) ) ) ) # ( 
-- !\A[25]~input_o\ & ( \ULA25|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA24|somador|carry_out~0_combout\ & !\ULA24|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( \A[25]~input_o\ 
-- & ( !\ULA25|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA24|somador|carry_out~0_combout\ & !\ULA24|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( !\A[25]~input_o\ & ( 
-- !\ULA25|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & ((\ULA24|somador|carry_out~1_combout\) # (\ULA24|somador|carry_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA24|somador|ALT_INV_carry_out~0_combout\,
	datad => \ULA24|somador|ALT_INV_carry_out~1_combout\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ULA25|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA25|mux_seletor|saida_MUX~0_combout\);

\ULA25|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|somador|carry_out~combout\ = (!\A[25]~input_o\ & ((!\ULA25|mux_inversor|saida_MUX~0_combout\) # ((!\ULA24|somador|carry_out~0_combout\ & !\ULA24|somador|carry_out~1_combout\)))) # (\A[25]~input_o\ & (!\ULA24|somador|carry_out~0_combout\ & 
-- (!\ULA24|somador|carry_out~1_combout\ & !\ULA25|mux_inversor|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA24|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA24|somador|ALT_INV_carry_out~1_combout\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ULA25|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA25|somador|carry_out~combout\);

\ULA26|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|mux_seletor|saida_MUX~0_combout\ = ( \ULA26|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[26]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA25|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA26|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA25|somador|carry_out~combout\ $ (\A[26]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA25|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ULA26|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA26|mux_seletor|saida_MUX~0_combout\);

\ULA27|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|mux_seletor|saida_MUX~0_combout\ = ( \ULA27|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[27]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA26|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA27|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA26|somador|carry_out~combout\ $ (\A[27]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[27]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA26|somador|ALT_INV_carry_out~combout\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ULA27|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA27|mux_seletor|saida_MUX~0_combout\);

\ULA28|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|soma~0_combout\ = !\A[28]~input_o\ $ (!\ULA28|mux_inversor|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ULA28|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA28|somador|soma~0_combout\);

\ULA28|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|mux_seletor|saida_MUX~0_combout\ = (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & (\A[28]~input_o\ & \ULA28|mux_inversor|saida_MUX~0_combout\)) # (\sel[0]~input_o\ & ((\ULA28|mux_inversor|saida_MUX~0_combout\) # (\A[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ULA28|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA28|mux_seletor|saida_MUX~0_combout\);

\ULA28|mux_seletor|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|mux_seletor|saida_MUX~1_combout\ = ( \ULA2|mux_seletor|saida_MUX~1_combout\ & ( \ULA28|mux_seletor|saida_MUX~0_combout\ ) ) # ( !\ULA2|mux_seletor|saida_MUX~1_combout\ & ( \ULA28|mux_seletor|saida_MUX~0_combout\ ) ) # ( 
-- \ULA2|mux_seletor|saida_MUX~1_combout\ & ( !\ULA28|mux_seletor|saida_MUX~0_combout\ & ( !\ULA28|somador|soma~0_combout\ $ (((!\ULA26|somador|carry_out~combout\ & (!\A[27]~input_o\ & !\ULA27|mux_inversor|saida_MUX~0_combout\)) # 
-- (\ULA26|somador|carry_out~combout\ & ((!\A[27]~input_o\) # (!\ULA27|mux_inversor|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA26|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ULA27|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA28|somador|ALT_INV_soma~0_combout\,
	datae => \ULA2|mux_seletor|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA28|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA28|mux_seletor|saida_MUX~1_combout\);

\ULA28|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|carry_out~combout\ = ( \ULA28|mux_inversor|saida_MUX~0_combout\ & ( ((!\ULA26|somador|carry_out~combout\ & ((\ULA27|mux_inversor|saida_MUX~0_combout\) # (\A[27]~input_o\))) # (\ULA26|somador|carry_out~combout\ & (\A[27]~input_o\ & 
-- \ULA27|mux_inversor|saida_MUX~0_combout\))) # (\A[28]~input_o\) ) ) # ( !\ULA28|mux_inversor|saida_MUX~0_combout\ & ( (\A[28]~input_o\ & ((!\ULA26|somador|carry_out~combout\ & ((\ULA27|mux_inversor|saida_MUX~0_combout\) # (\A[27]~input_o\))) # 
-- (\ULA26|somador|carry_out~combout\ & (\A[27]~input_o\ & \ULA27|mux_inversor|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA26|somador|ALT_INV_carry_out~combout\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ULA27|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ULA28|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA28|somador|carry_out~combout\);

\ULA29|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|mux_seletor|saida_MUX~0_combout\ = ( \A[29]~input_o\ & ( \B[29]~input_o\ & ( (!\sel[0]~input_o\ & (!\inverte_B~input_o\ $ (((\sel[1]~input_o\ & !\ULA28|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) ) # ( 
-- !\A[29]~input_o\ & ( \B[29]~input_o\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\inverte_B~input_o\ $ (\ULA28|somador|carry_out~combout\)))) # (\sel[0]~input_o\ & (!\inverte_B~input_o\ & (!\sel[1]~input_o\))) ) ) ) # ( \A[29]~input_o\ & ( 
-- !\B[29]~input_o\ & ( (!\sel[0]~input_o\ & (!\inverte_B~input_o\ $ (((!\sel[1]~input_o\) # (\ULA28|somador|carry_out~combout\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) ) # ( !\A[29]~input_o\ & ( !\B[29]~input_o\ & ( (!\sel[0]~input_o\ & 
-- (\sel[1]~input_o\ & (!\inverte_B~input_o\ $ (!\ULA28|somador|carry_out~combout\)))) # (\sel[0]~input_o\ & (\inverte_B~input_o\ & (!\sel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000011000011110000111010000101000001001001011010010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ULA28|somador|ALT_INV_carry_out~combout\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \ULA29|mux_seletor|saida_MUX~0_combout\);

\ULA30|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|mux_seletor|saida_MUX~0_combout\ = ( \A[30]~input_o\ & ( \ULA30|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[1]~input_o\) # ((!\sel[0]~input_o\ & ((\ULA29|somador|carry_out~1_combout\) # (\ULA29|somador|carry_out~0_combout\)))) ) ) ) # ( 
-- !\A[30]~input_o\ & ( \ULA30|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA29|somador|carry_out~0_combout\ & !\ULA29|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( \A[30]~input_o\ 
-- & ( !\ULA30|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA29|somador|carry_out~0_combout\ & !\ULA29|somador|carry_out~1_combout\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( !\A[30]~input_o\ & ( 
-- !\ULA30|mux_inversor|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & ((\ULA29|somador|carry_out~1_combout\) # (\ULA29|somador|carry_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA29|somador|ALT_INV_carry_out~0_combout\,
	datad => \ULA29|somador|ALT_INV_carry_out~1_combout\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ULA30|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA30|mux_seletor|saida_MUX~0_combout\);

\ULA30|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|somador|carry_out~combout\ = (!\A[30]~input_o\ & ((!\ULA30|mux_inversor|saida_MUX~0_combout\) # ((!\ULA29|somador|carry_out~0_combout\ & !\ULA29|somador|carry_out~1_combout\)))) # (\A[30]~input_o\ & (!\ULA29|somador|carry_out~0_combout\ & 
-- (!\ULA29|somador|carry_out~1_combout\ & !\ULA30|mux_inversor|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA29|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA29|somador|ALT_INV_carry_out~1_combout\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ULA30|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA30|somador|carry_out~combout\);

\ULA31|mux_seletor|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|mux_seletor|saida_MUX~0_combout\ = ( \ULA30|somador|carry_out~combout\ & ( (!\A[31]~input_o\ & (\ULA31|mux_inversor|saida_MUX~0_combout\ & (!\sel[0]~input_o\ $ (!\sel[1]~input_o\)))) # (\A[31]~input_o\ & (!\sel[1]~input_o\ $ (((!\sel[0]~input_o\ & 
-- !\ULA31|mux_inversor|saida_MUX~0_combout\))))) ) ) # ( !\ULA30|somador|carry_out~combout\ & ( (!\sel[0]~input_o\ & ((!\A[31]~input_o\ & (\sel[1]~input_o\ & !\ULA31|mux_inversor|saida_MUX~0_combout\)) # (\A[31]~input_o\ & 
-- ((\ULA31|mux_inversor|saida_MUX~0_combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\ULA31|mux_inversor|saida_MUX~0_combout\) # (\A[31]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ULA31|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA30|somador|ALT_INV_carry_out~combout\,
	combout => \ULA31|mux_seletor|saida_MUX~0_combout\);

\zero~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~0_combout\ = (!\ULA1|mux_seletor|saida_MUX~0_combout\ & (!\ULA2|mux_seletor|saida_MUX~0_combout\ & (!\ULA3|mux_seletor|saida_MUX~0_combout\ & !\ULA4|mux_seletor|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA2|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA3|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA4|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	combout => \zero~0_combout\);

\zero~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~1_combout\ = ( \zero~0_combout\ & ( (!\ULA5|mux_seletor|saida_MUX~0_combout\ & (!\ULA6|mux_seletor|saida_MUX~0_combout\ & (!\ULA7|mux_seletor|saida_MUX~0_combout\ & !\ULA8|mux_seletor|saida_MUX~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA5|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA6|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA7|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA8|mux_seletor|ALT_INV_saida_MUX~1_combout\,
	datae => \ALT_INV_zero~0_combout\,
	combout => \zero~1_combout\);

\zero~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~2_combout\ = ( \zero~1_combout\ & ( (!\ULA9|mux_seletor|saida_MUX~0_combout\ & (!\ULA10|mux_seletor|saida_MUX~0_combout\ & (!\ULA11|mux_seletor|saida_MUX~0_combout\ & !\ULA12|mux_seletor|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA9|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA10|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA11|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA12|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_zero~1_combout\,
	combout => \zero~2_combout\);

\zero~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~3_combout\ = (!\ULA13|mux_seletor|saida_MUX~1_combout\ & (!\ULA14|mux_seletor|saida_MUX~0_combout\ & (!\ULA15|mux_seletor|saida_MUX~0_combout\ & \zero~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA13|mux_seletor|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA14|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA15|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_zero~2_combout\,
	combout => \zero~3_combout\);

\zero~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~4_combout\ = (!\ULA16|mux_seletor|saida_MUX~0_combout\ & (!\ULA17|mux_seletor|saida_MUX~0_combout\ & (!\ULA18|mux_seletor|saida_MUX~1_combout\ & \zero~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA16|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA17|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA18|mux_seletor|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_zero~3_combout\,
	combout => \zero~4_combout\);

\zero~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~5_combout\ = ( \zero~4_combout\ & ( (!\ULA19|mux_seletor|saida_MUX~0_combout\ & (!\ULA20|mux_seletor|saida_MUX~0_combout\ & (!\ULA21|mux_seletor|saida_MUX~0_combout\ & !\ULA22|mux_seletor|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA19|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA20|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA21|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA22|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_zero~4_combout\,
	combout => \zero~5_combout\);

\zero~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~6_combout\ = (!\ULA23|mux_seletor|saida_MUX~1_combout\ & (!\ULA24|mux_seletor|saida_MUX~0_combout\ & (!\ULA25|mux_seletor|saida_MUX~0_combout\ & \zero~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA23|mux_seletor|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA24|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA25|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_zero~5_combout\,
	combout => \zero~6_combout\);

\zero~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~7_combout\ = (!\ULA26|mux_seletor|saida_MUX~0_combout\ & (!\ULA27|mux_seletor|saida_MUX~0_combout\ & (!\ULA28|mux_seletor|saida_MUX~1_combout\ & \zero~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA26|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA27|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA28|mux_seletor|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_zero~6_combout\,
	combout => \zero~7_combout\);

\zero~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~8_combout\ = ( \zero~7_combout\ & ( (((\ULA31|mux_seletor|saida_MUX~0_combout\) # (\ULA30|mux_seletor|saida_MUX~0_combout\)) # (\ULA29|mux_seletor|saida_MUX~0_combout\)) # (\ULA0|mux_seletor|saida_MUX~0_combout\) ) ) # ( !\zero~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA29|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA30|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA31|mux_seletor|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_zero~7_combout\,
	combout => \zero~8_combout\);

\ULA31|overflow\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|overflow~combout\ = ( \A[30]~input_o\ & ( \ULA30|mux_inversor|saida_MUX~0_combout\ & ( (!\A[31]~input_o\ & !\ULA31|mux_inversor|saida_MUX~0_combout\) ) ) ) # ( !\A[30]~input_o\ & ( \ULA30|mux_inversor|saida_MUX~0_combout\ & ( (!\A[31]~input_o\ & 
-- (!\ULA31|mux_inversor|saida_MUX~0_combout\ & ((\ULA29|somador|carry_out~1_combout\) # (\ULA29|somador|carry_out~0_combout\)))) # (\A[31]~input_o\ & (\ULA31|mux_inversor|saida_MUX~0_combout\ & (!\ULA29|somador|carry_out~0_combout\ & 
-- !\ULA29|somador|carry_out~1_combout\))) ) ) ) # ( \A[30]~input_o\ & ( !\ULA30|mux_inversor|saida_MUX~0_combout\ & ( (!\A[31]~input_o\ & (!\ULA31|mux_inversor|saida_MUX~0_combout\ & ((\ULA29|somador|carry_out~1_combout\) # 
-- (\ULA29|somador|carry_out~0_combout\)))) # (\A[31]~input_o\ & (\ULA31|mux_inversor|saida_MUX~0_combout\ & (!\ULA29|somador|carry_out~0_combout\ & !\ULA29|somador|carry_out~1_combout\))) ) ) ) # ( !\A[30]~input_o\ & ( 
-- !\ULA30|mux_inversor|saida_MUX~0_combout\ & ( (\A[31]~input_o\ & \ULA31|mux_inversor|saida_MUX~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000110001000100000011000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ULA31|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA29|somador|ALT_INV_carry_out~0_combout\,
	datad => \ULA29|somador|ALT_INV_carry_out~1_combout\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ULA30|mux_inversor|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA31|overflow~combout\);

ww_resultado(0) <= \resultado[0]~output_o\;

ww_resultado(1) <= \resultado[1]~output_o\;

ww_resultado(2) <= \resultado[2]~output_o\;

ww_resultado(3) <= \resultado[3]~output_o\;

ww_resultado(4) <= \resultado[4]~output_o\;

ww_resultado(5) <= \resultado[5]~output_o\;

ww_resultado(6) <= \resultado[6]~output_o\;

ww_resultado(7) <= \resultado[7]~output_o\;

ww_resultado(8) <= \resultado[8]~output_o\;

ww_resultado(9) <= \resultado[9]~output_o\;

ww_resultado(10) <= \resultado[10]~output_o\;

ww_resultado(11) <= \resultado[11]~output_o\;

ww_resultado(12) <= \resultado[12]~output_o\;

ww_resultado(13) <= \resultado[13]~output_o\;

ww_resultado(14) <= \resultado[14]~output_o\;

ww_resultado(15) <= \resultado[15]~output_o\;

ww_resultado(16) <= \resultado[16]~output_o\;

ww_resultado(17) <= \resultado[17]~output_o\;

ww_resultado(18) <= \resultado[18]~output_o\;

ww_resultado(19) <= \resultado[19]~output_o\;

ww_resultado(20) <= \resultado[20]~output_o\;

ww_resultado(21) <= \resultado[21]~output_o\;

ww_resultado(22) <= \resultado[22]~output_o\;

ww_resultado(23) <= \resultado[23]~output_o\;

ww_resultado(24) <= \resultado[24]~output_o\;

ww_resultado(25) <= \resultado[25]~output_o\;

ww_resultado(26) <= \resultado[26]~output_o\;

ww_resultado(27) <= \resultado[27]~output_o\;

ww_resultado(28) <= \resultado[28]~output_o\;

ww_resultado(29) <= \resultado[29]~output_o\;

ww_resultado(30) <= \resultado[30]~output_o\;

ww_resultado(31) <= \resultado[31]~output_o\;

ww_zero <= \zero~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;


