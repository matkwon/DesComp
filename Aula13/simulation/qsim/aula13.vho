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

-- DATE "11/01/2022 17:23:10"

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

ENTITY 	aula13 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	WR_rd : IN std_logic;
	ula_op : IN std_logic;
	out_rd : BUFFER std_logic_vector(31 DOWNTO 0);
	out_rs : BUFFER std_logic_vector(31 DOWNTO 0);
	out_rt : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END aula13;

ARCHITECTURE structure OF aula13 IS
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
SIGNAL ww_WR_rd : std_logic;
SIGNAL ww_ula_op : std_logic;
SIGNAL ww_out_rd : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_out_rs : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_out_rt : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \out_rd[0]~output_o\ : std_logic;
SIGNAL \out_rd[1]~output_o\ : std_logic;
SIGNAL \out_rd[2]~output_o\ : std_logic;
SIGNAL \out_rd[3]~output_o\ : std_logic;
SIGNAL \out_rd[4]~output_o\ : std_logic;
SIGNAL \out_rd[5]~output_o\ : std_logic;
SIGNAL \out_rd[6]~output_o\ : std_logic;
SIGNAL \out_rd[7]~output_o\ : std_logic;
SIGNAL \out_rd[8]~output_o\ : std_logic;
SIGNAL \out_rd[9]~output_o\ : std_logic;
SIGNAL \out_rd[10]~output_o\ : std_logic;
SIGNAL \out_rd[11]~output_o\ : std_logic;
SIGNAL \out_rd[12]~output_o\ : std_logic;
SIGNAL \out_rd[13]~output_o\ : std_logic;
SIGNAL \out_rd[14]~output_o\ : std_logic;
SIGNAL \out_rd[15]~output_o\ : std_logic;
SIGNAL \out_rd[16]~output_o\ : std_logic;
SIGNAL \out_rd[17]~output_o\ : std_logic;
SIGNAL \out_rd[18]~output_o\ : std_logic;
SIGNAL \out_rd[19]~output_o\ : std_logic;
SIGNAL \out_rd[20]~output_o\ : std_logic;
SIGNAL \out_rd[21]~output_o\ : std_logic;
SIGNAL \out_rd[22]~output_o\ : std_logic;
SIGNAL \out_rd[23]~output_o\ : std_logic;
SIGNAL \out_rd[24]~output_o\ : std_logic;
SIGNAL \out_rd[25]~output_o\ : std_logic;
SIGNAL \out_rd[26]~output_o\ : std_logic;
SIGNAL \out_rd[27]~output_o\ : std_logic;
SIGNAL \out_rd[28]~output_o\ : std_logic;
SIGNAL \out_rd[29]~output_o\ : std_logic;
SIGNAL \out_rd[30]~output_o\ : std_logic;
SIGNAL \out_rd[31]~output_o\ : std_logic;
SIGNAL \out_rs[0]~output_o\ : std_logic;
SIGNAL \out_rs[1]~output_o\ : std_logic;
SIGNAL \out_rs[2]~output_o\ : std_logic;
SIGNAL \out_rs[3]~output_o\ : std_logic;
SIGNAL \out_rs[4]~output_o\ : std_logic;
SIGNAL \out_rs[5]~output_o\ : std_logic;
SIGNAL \out_rs[6]~output_o\ : std_logic;
SIGNAL \out_rs[7]~output_o\ : std_logic;
SIGNAL \out_rs[8]~output_o\ : std_logic;
SIGNAL \out_rs[9]~output_o\ : std_logic;
SIGNAL \out_rs[10]~output_o\ : std_logic;
SIGNAL \out_rs[11]~output_o\ : std_logic;
SIGNAL \out_rs[12]~output_o\ : std_logic;
SIGNAL \out_rs[13]~output_o\ : std_logic;
SIGNAL \out_rs[14]~output_o\ : std_logic;
SIGNAL \out_rs[15]~output_o\ : std_logic;
SIGNAL \out_rs[16]~output_o\ : std_logic;
SIGNAL \out_rs[17]~output_o\ : std_logic;
SIGNAL \out_rs[18]~output_o\ : std_logic;
SIGNAL \out_rs[19]~output_o\ : std_logic;
SIGNAL \out_rs[20]~output_o\ : std_logic;
SIGNAL \out_rs[21]~output_o\ : std_logic;
SIGNAL \out_rs[22]~output_o\ : std_logic;
SIGNAL \out_rs[23]~output_o\ : std_logic;
SIGNAL \out_rs[24]~output_o\ : std_logic;
SIGNAL \out_rs[25]~output_o\ : std_logic;
SIGNAL \out_rs[26]~output_o\ : std_logic;
SIGNAL \out_rs[27]~output_o\ : std_logic;
SIGNAL \out_rs[28]~output_o\ : std_logic;
SIGNAL \out_rs[29]~output_o\ : std_logic;
SIGNAL \out_rs[30]~output_o\ : std_logic;
SIGNAL \out_rs[31]~output_o\ : std_logic;
SIGNAL \out_rt[0]~output_o\ : std_logic;
SIGNAL \out_rt[1]~output_o\ : std_logic;
SIGNAL \out_rt[2]~output_o\ : std_logic;
SIGNAL \out_rt[3]~output_o\ : std_logic;
SIGNAL \out_rt[4]~output_o\ : std_logic;
SIGNAL \out_rt[5]~output_o\ : std_logic;
SIGNAL \out_rt[6]~output_o\ : std_logic;
SIGNAL \out_rt[7]~output_o\ : std_logic;
SIGNAL \out_rt[8]~output_o\ : std_logic;
SIGNAL \out_rt[9]~output_o\ : std_logic;
SIGNAL \out_rt[10]~output_o\ : std_logic;
SIGNAL \out_rt[11]~output_o\ : std_logic;
SIGNAL \out_rt[12]~output_o\ : std_logic;
SIGNAL \out_rt[13]~output_o\ : std_logic;
SIGNAL \out_rt[14]~output_o\ : std_logic;
SIGNAL \out_rt[15]~output_o\ : std_logic;
SIGNAL \out_rt[16]~output_o\ : std_logic;
SIGNAL \out_rt[17]~output_o\ : std_logic;
SIGNAL \out_rt[18]~output_o\ : std_logic;
SIGNAL \out_rt[19]~output_o\ : std_logic;
SIGNAL \out_rt[20]~output_o\ : std_logic;
SIGNAL \out_rt[21]~output_o\ : std_logic;
SIGNAL \out_rt[22]~output_o\ : std_logic;
SIGNAL \out_rt[23]~output_o\ : std_logic;
SIGNAL \out_rt[24]~output_o\ : std_logic;
SIGNAL \out_rt[25]~output_o\ : std_logic;
SIGNAL \out_rt[26]~output_o\ : std_logic;
SIGNAL \out_rt[27]~output_o\ : std_logic;
SIGNAL \out_rt[28]~output_o\ : std_logic;
SIGNAL \out_rt[29]~output_o\ : std_logic;
SIGNAL \out_rt[30]~output_o\ : std_logic;
SIGNAL \out_rt[31]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \program_counter|DOUT[2]~0_combout\ : std_logic;
SIGNAL \soma_constante|Add0~17_sumout\ : std_logic;
SIGNAL \soma_constante|Add0~18\ : std_logic;
SIGNAL \soma_constante|Add0~13_sumout\ : std_logic;
SIGNAL \soma_constante|Add0~14\ : std_logic;
SIGNAL \soma_constante|Add0~9_sumout\ : std_logic;
SIGNAL \soma_constante|Add0~10\ : std_logic;
SIGNAL \soma_constante|Add0~5_sumout\ : std_logic;
SIGNAL \soma_constante|Add0~6\ : std_logic;
SIGNAL \soma_constante|Add0~1_sumout\ : std_logic;
SIGNAL \rom|memROM~0_combout\ : std_logic;
SIGNAL \banco_reg|registrador[8][0]~1_combout\ : std_logic;
SIGNAL \WR_rd~input_o\ : std_logic;
SIGNAL \banco_reg|registrador[8][0]~0_combout\ : std_logic;
SIGNAL \banco_reg|registrador[8][0]~q\ : std_logic;
SIGNAL \banco_reg|saidaC[0]~0_combout\ : std_logic;
SIGNAL \ula_op~input_o\ : std_logic;
SIGNAL \ula|Add0~0_combout\ : std_logic;
SIGNAL \banco_reg|registrador[8][1]~q\ : std_logic;
SIGNAL \banco_reg|saidaC[1]~1_combout\ : std_logic;
SIGNAL \banco_reg|registrador[8][2]~2_combout\ : std_logic;
SIGNAL \banco_reg|registrador[8][2]~q\ : std_logic;
SIGNAL \banco_reg|saidaC[2]~2_combout\ : std_logic;
SIGNAL \ula|Add0~1_combout\ : std_logic;
SIGNAL \banco_reg|registrador[8][3]~q\ : std_logic;
SIGNAL \banco_reg|saidaC[3]~3_combout\ : std_logic;
SIGNAL \program_counter|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \program_counter|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 2);
SIGNAL \ula|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \banco_reg|ALT_INV_registrador[8][3]~q\ : std_logic;
SIGNAL \banco_reg|ALT_INV_registrador[8][2]~q\ : std_logic;
SIGNAL \banco_reg|ALT_INV_registrador[8][1]~q\ : std_logic;
SIGNAL \banco_reg|ALT_INV_registrador[8][0]~q\ : std_logic;
SIGNAL \ALT_INV_WR_rd~input_o\ : std_logic;
SIGNAL \ALT_INV_ula_op~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_WR_rd <= WR_rd;
ww_ula_op <= ula_op;
out_rd <= ww_out_rd;
out_rs <= ww_out_rs;
out_rt <= ww_out_rt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\program_counter|ALT_INV_DOUT\(2) <= NOT \program_counter|DOUT\(2);
\ula|ALT_INV_Add0~0_combout\ <= NOT \ula|Add0~0_combout\;
\rom|ALT_INV_memROM~0_combout\ <= NOT \rom|memROM~0_combout\;
\banco_reg|ALT_INV_registrador[8][3]~q\ <= NOT \banco_reg|registrador[8][3]~q\;
\banco_reg|ALT_INV_registrador[8][2]~q\ <= NOT \banco_reg|registrador[8][2]~q\;
\banco_reg|ALT_INV_registrador[8][1]~q\ <= NOT \banco_reg|registrador[8][1]~q\;
\program_counter|ALT_INV_DOUT\(3) <= NOT \program_counter|DOUT\(3);
\program_counter|ALT_INV_DOUT\(4) <= NOT \program_counter|DOUT\(4);
\program_counter|ALT_INV_DOUT\(5) <= NOT \program_counter|DOUT\(5);
\program_counter|ALT_INV_DOUT\(6) <= NOT \program_counter|DOUT\(6);
\program_counter|ALT_INV_DOUT\(7) <= NOT \program_counter|DOUT\(7);
\banco_reg|ALT_INV_registrador[8][0]~q\ <= NOT \banco_reg|registrador[8][0]~q\;
\ALT_INV_WR_rd~input_o\ <= NOT \WR_rd~input_o\;
\ALT_INV_ula_op~input_o\ <= NOT \ula_op~input_o\;

\out_rd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|saidaC[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_rd[0]~output_o\);

\out_rd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|saidaC[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_rd[1]~output_o\);

\out_rd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|saidaC[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_rd[2]~output_o\);

\out_rd[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|saidaC[3]~3_combout\,
	devoe => ww_devoe,
	o => \out_rd[3]~output_o\);

\out_rd[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[4]~output_o\);

\out_rd[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[5]~output_o\);

\out_rd[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[6]~output_o\);

\out_rd[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[7]~output_o\);

\out_rd[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[8]~output_o\);

\out_rd[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[9]~output_o\);

\out_rd[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[10]~output_o\);

\out_rd[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[11]~output_o\);

\out_rd[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[12]~output_o\);

\out_rd[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[13]~output_o\);

\out_rd[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[14]~output_o\);

\out_rd[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[15]~output_o\);

\out_rd[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[16]~output_o\);

\out_rd[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[17]~output_o\);

\out_rd[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[18]~output_o\);

\out_rd[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[19]~output_o\);

\out_rd[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[20]~output_o\);

\out_rd[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[21]~output_o\);

\out_rd[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[22]~output_o\);

\out_rd[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[23]~output_o\);

\out_rd[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[24]~output_o\);

\out_rd[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[25]~output_o\);

\out_rd[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[26]~output_o\);

\out_rd[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[27]~output_o\);

\out_rd[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[28]~output_o\);

\out_rd[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[29]~output_o\);

\out_rd[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[30]~output_o\);

\out_rd[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rd[31]~output_o\);

\out_rs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[0]~output_o\);

\out_rs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[1]~output_o\);

\out_rs[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[2]~output_o\);

\out_rs[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|memROM~0_combout\,
	devoe => ww_devoe,
	o => \out_rs[3]~output_o\);

\out_rs[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[4]~output_o\);

\out_rs[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[5]~output_o\);

\out_rs[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[6]~output_o\);

\out_rs[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[7]~output_o\);

\out_rs[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[8]~output_o\);

\out_rs[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[9]~output_o\);

\out_rs[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[10]~output_o\);

\out_rs[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[11]~output_o\);

\out_rs[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[12]~output_o\);

\out_rs[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[13]~output_o\);

\out_rs[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[14]~output_o\);

\out_rs[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[15]~output_o\);

\out_rs[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[16]~output_o\);

\out_rs[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[17]~output_o\);

\out_rs[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[18]~output_o\);

\out_rs[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[19]~output_o\);

\out_rs[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[20]~output_o\);

\out_rs[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[21]~output_o\);

\out_rs[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[22]~output_o\);

\out_rs[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[23]~output_o\);

\out_rs[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[24]~output_o\);

\out_rs[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[25]~output_o\);

\out_rs[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[26]~output_o\);

\out_rs[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[27]~output_o\);

\out_rs[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[28]~output_o\);

\out_rs[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[29]~output_o\);

\out_rs[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[30]~output_o\);

\out_rs[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[31]~output_o\);

\out_rt[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|memROM~0_combout\,
	devoe => ww_devoe,
	o => \out_rt[0]~output_o\);

\out_rt[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[1]~output_o\);

\out_rt[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[2]~output_o\);

\out_rt[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[3]~output_o\);

\out_rt[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[4]~output_o\);

\out_rt[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[5]~output_o\);

\out_rt[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[6]~output_o\);

\out_rt[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[7]~output_o\);

\out_rt[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[8]~output_o\);

\out_rt[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[9]~output_o\);

\out_rt[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[10]~output_o\);

\out_rt[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[11]~output_o\);

\out_rt[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[12]~output_o\);

\out_rt[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[13]~output_o\);

\out_rt[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[14]~output_o\);

\out_rt[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[15]~output_o\);

\out_rt[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[16]~output_o\);

\out_rt[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[17]~output_o\);

\out_rt[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[18]~output_o\);

\out_rt[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[19]~output_o\);

\out_rt[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[20]~output_o\);

\out_rt[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[21]~output_o\);

\out_rt[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[22]~output_o\);

\out_rt[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[23]~output_o\);

\out_rt[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[24]~output_o\);

\out_rt[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[25]~output_o\);

\out_rt[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[26]~output_o\);

\out_rt[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[27]~output_o\);

\out_rt[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[28]~output_o\);

\out_rt[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[29]~output_o\);

\out_rt[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[30]~output_o\);

\out_rt[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rt[31]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\program_counter|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \program_counter|DOUT[2]~0_combout\ = !\program_counter|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_DOUT\(2),
	combout => \program_counter|DOUT[2]~0_combout\);

\program_counter|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \program_counter|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|DOUT\(2));

\soma_constante|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_constante|Add0~17_sumout\ = SUM(( \program_counter|DOUT\(2) ) + ( \program_counter|DOUT\(3) ) + ( !VCC ))
-- \soma_constante|Add0~18\ = CARRY(( \program_counter|DOUT\(2) ) + ( \program_counter|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_DOUT\(2),
	dataf => \program_counter|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \soma_constante|Add0~17_sumout\,
	cout => \soma_constante|Add0~18\);

\program_counter|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \soma_constante|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|DOUT\(3));

\soma_constante|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_constante|Add0~13_sumout\ = SUM(( \program_counter|DOUT\(4) ) + ( GND ) + ( \soma_constante|Add0~18\ ))
-- \soma_constante|Add0~14\ = CARRY(( \program_counter|DOUT\(4) ) + ( GND ) + ( \soma_constante|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_DOUT\(4),
	cin => \soma_constante|Add0~18\,
	sumout => \soma_constante|Add0~13_sumout\,
	cout => \soma_constante|Add0~14\);

\program_counter|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \soma_constante|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|DOUT\(4));

\soma_constante|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_constante|Add0~9_sumout\ = SUM(( \program_counter|DOUT\(5) ) + ( GND ) + ( \soma_constante|Add0~14\ ))
-- \soma_constante|Add0~10\ = CARRY(( \program_counter|DOUT\(5) ) + ( GND ) + ( \soma_constante|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_DOUT\(5),
	cin => \soma_constante|Add0~14\,
	sumout => \soma_constante|Add0~9_sumout\,
	cout => \soma_constante|Add0~10\);

\program_counter|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \soma_constante|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|DOUT\(5));

\soma_constante|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_constante|Add0~5_sumout\ = SUM(( \program_counter|DOUT\(6) ) + ( GND ) + ( \soma_constante|Add0~10\ ))
-- \soma_constante|Add0~6\ = CARRY(( \program_counter|DOUT\(6) ) + ( GND ) + ( \soma_constante|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_DOUT\(6),
	cin => \soma_constante|Add0~10\,
	sumout => \soma_constante|Add0~5_sumout\,
	cout => \soma_constante|Add0~6\);

\program_counter|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \soma_constante|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|DOUT\(6));

\soma_constante|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_constante|Add0~1_sumout\ = SUM(( \program_counter|DOUT\(7) ) + ( GND ) + ( \soma_constante|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \program_counter|ALT_INV_DOUT\(7),
	cin => \soma_constante|Add0~6\,
	sumout => \soma_constante|Add0~1_sumout\);

\program_counter|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \soma_constante|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|DOUT\(7));

\rom|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~0_combout\ = ( !\program_counter|DOUT\(3) & ( (!\program_counter|DOUT\(7) & (!\program_counter|DOUT\(6) & (!\program_counter|DOUT\(5) & !\program_counter|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_DOUT\(7),
	datab => \program_counter|ALT_INV_DOUT\(6),
	datac => \program_counter|ALT_INV_DOUT\(5),
	datad => \program_counter|ALT_INV_DOUT\(4),
	datae => \program_counter|ALT_INV_DOUT\(3),
	combout => \rom|memROM~0_combout\);

\banco_reg|registrador[8][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_reg|registrador[8][0]~1_combout\ = !\rom|memROM~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~0_combout\,
	combout => \banco_reg|registrador[8][0]~1_combout\);

\WR_rd~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_rd,
	o => \WR_rd~input_o\);

\banco_reg|registrador[8][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_reg|registrador[8][0]~0_combout\ = ( !\program_counter|DOUT\(3) & ( \WR_rd~input_o\ & ( (!\program_counter|DOUT\(7) & (!\program_counter|DOUT\(6) & (!\program_counter|DOUT\(5) & !\program_counter|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_DOUT\(7),
	datab => \program_counter|ALT_INV_DOUT\(6),
	datac => \program_counter|ALT_INV_DOUT\(5),
	datad => \program_counter|ALT_INV_DOUT\(4),
	datae => \program_counter|ALT_INV_DOUT\(3),
	dataf => \ALT_INV_WR_rd~input_o\,
	combout => \banco_reg|registrador[8][0]~0_combout\);

\banco_reg|registrador[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \banco_reg|registrador[8][0]~1_combout\,
	ena => \banco_reg|registrador[8][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registrador[8][0]~q\);

\banco_reg|saidaC[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_reg|saidaC[0]~0_combout\ = ( !\program_counter|DOUT\(4) & ( !\program_counter|DOUT\(3) & ( (!\banco_reg|registrador[8][0]~q\ & (!\program_counter|DOUT\(7) & (!\program_counter|DOUT\(6) & !\program_counter|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|ALT_INV_registrador[8][0]~q\,
	datab => \program_counter|ALT_INV_DOUT\(7),
	datac => \program_counter|ALT_INV_DOUT\(6),
	datad => \program_counter|ALT_INV_DOUT\(5),
	datae => \program_counter|ALT_INV_DOUT\(4),
	dataf => \program_counter|ALT_INV_DOUT\(3),
	combout => \banco_reg|saidaC[0]~0_combout\);

\ula_op~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op,
	o => \ula_op~input_o\);

\ula|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|Add0~0_combout\ = ( !\program_counter|DOUT\(3) & ( !\ula_op~input_o\ & ( (!\program_counter|DOUT\(7) & (!\program_counter|DOUT\(6) & (!\program_counter|DOUT\(5) & !\program_counter|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_DOUT\(7),
	datab => \program_counter|ALT_INV_DOUT\(6),
	datac => \program_counter|ALT_INV_DOUT\(5),
	datad => \program_counter|ALT_INV_DOUT\(4),
	datae => \program_counter|ALT_INV_DOUT\(3),
	dataf => \ALT_INV_ula_op~input_o\,
	combout => \ula|Add0~0_combout\);

\banco_reg|registrador[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ula|Add0~0_combout\,
	ena => \banco_reg|registrador[8][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registrador[8][1]~q\);

\banco_reg|saidaC[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_reg|saidaC[1]~1_combout\ = ( !\program_counter|DOUT\(3) & ( \banco_reg|registrador[8][1]~q\ & ( (!\program_counter|DOUT\(7) & (!\program_counter|DOUT\(6) & (!\program_counter|DOUT\(5) & !\program_counter|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_DOUT\(7),
	datab => \program_counter|ALT_INV_DOUT\(6),
	datac => \program_counter|ALT_INV_DOUT\(5),
	datad => \program_counter|ALT_INV_DOUT\(4),
	datae => \program_counter|ALT_INV_DOUT\(3),
	dataf => \banco_reg|ALT_INV_registrador[8][1]~q\,
	combout => \banco_reg|saidaC[1]~1_combout\);

\banco_reg|registrador[8][2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_reg|registrador[8][2]~2_combout\ = !\ula|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|ALT_INV_Add0~0_combout\,
	combout => \banco_reg|registrador[8][2]~2_combout\);

\banco_reg|registrador[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \banco_reg|registrador[8][2]~2_combout\,
	ena => \banco_reg|registrador[8][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registrador[8][2]~q\);

\banco_reg|saidaC[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_reg|saidaC[2]~2_combout\ = ( !\program_counter|DOUT\(3) & ( !\banco_reg|registrador[8][2]~q\ & ( (!\program_counter|DOUT\(7) & (!\program_counter|DOUT\(6) & (!\program_counter|DOUT\(5) & !\program_counter|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_DOUT\(7),
	datab => \program_counter|ALT_INV_DOUT\(6),
	datac => \program_counter|ALT_INV_DOUT\(5),
	datad => \program_counter|ALT_INV_DOUT\(4),
	datae => \program_counter|ALT_INV_DOUT\(3),
	dataf => \banco_reg|ALT_INV_registrador[8][2]~q\,
	combout => \banco_reg|saidaC[2]~2_combout\);

\ula|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|Add0~1_combout\ = ( !\program_counter|DOUT\(3) & ( \ula_op~input_o\ & ( (!\program_counter|DOUT\(7) & (!\program_counter|DOUT\(6) & (!\program_counter|DOUT\(5) & !\program_counter|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_DOUT\(7),
	datab => \program_counter|ALT_INV_DOUT\(6),
	datac => \program_counter|ALT_INV_DOUT\(5),
	datad => \program_counter|ALT_INV_DOUT\(4),
	datae => \program_counter|ALT_INV_DOUT\(3),
	dataf => \ALT_INV_ula_op~input_o\,
	combout => \ula|Add0~1_combout\);

\banco_reg|registrador[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ula|Add0~1_combout\,
	ena => \banco_reg|registrador[8][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registrador[8][3]~q\);

\banco_reg|saidaC[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco_reg|saidaC[3]~3_combout\ = ( !\program_counter|DOUT\(3) & ( \banco_reg|registrador[8][3]~q\ & ( (!\program_counter|DOUT\(7) & (!\program_counter|DOUT\(6) & (!\program_counter|DOUT\(5) & !\program_counter|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|ALT_INV_DOUT\(7),
	datab => \program_counter|ALT_INV_DOUT\(6),
	datac => \program_counter|ALT_INV_DOUT\(5),
	datad => \program_counter|ALT_INV_DOUT\(4),
	datae => \program_counter|ALT_INV_DOUT\(3),
	dataf => \banco_reg|ALT_INV_registrador[8][3]~q\,
	combout => \banco_reg|saidaC[3]~3_combout\);

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

ww_out_rd(0) <= \out_rd[0]~output_o\;

ww_out_rd(1) <= \out_rd[1]~output_o\;

ww_out_rd(2) <= \out_rd[2]~output_o\;

ww_out_rd(3) <= \out_rd[3]~output_o\;

ww_out_rd(4) <= \out_rd[4]~output_o\;

ww_out_rd(5) <= \out_rd[5]~output_o\;

ww_out_rd(6) <= \out_rd[6]~output_o\;

ww_out_rd(7) <= \out_rd[7]~output_o\;

ww_out_rd(8) <= \out_rd[8]~output_o\;

ww_out_rd(9) <= \out_rd[9]~output_o\;

ww_out_rd(10) <= \out_rd[10]~output_o\;

ww_out_rd(11) <= \out_rd[11]~output_o\;

ww_out_rd(12) <= \out_rd[12]~output_o\;

ww_out_rd(13) <= \out_rd[13]~output_o\;

ww_out_rd(14) <= \out_rd[14]~output_o\;

ww_out_rd(15) <= \out_rd[15]~output_o\;

ww_out_rd(16) <= \out_rd[16]~output_o\;

ww_out_rd(17) <= \out_rd[17]~output_o\;

ww_out_rd(18) <= \out_rd[18]~output_o\;

ww_out_rd(19) <= \out_rd[19]~output_o\;

ww_out_rd(20) <= \out_rd[20]~output_o\;

ww_out_rd(21) <= \out_rd[21]~output_o\;

ww_out_rd(22) <= \out_rd[22]~output_o\;

ww_out_rd(23) <= \out_rd[23]~output_o\;

ww_out_rd(24) <= \out_rd[24]~output_o\;

ww_out_rd(25) <= \out_rd[25]~output_o\;

ww_out_rd(26) <= \out_rd[26]~output_o\;

ww_out_rd(27) <= \out_rd[27]~output_o\;

ww_out_rd(28) <= \out_rd[28]~output_o\;

ww_out_rd(29) <= \out_rd[29]~output_o\;

ww_out_rd(30) <= \out_rd[30]~output_o\;

ww_out_rd(31) <= \out_rd[31]~output_o\;

ww_out_rs(0) <= \out_rs[0]~output_o\;

ww_out_rs(1) <= \out_rs[1]~output_o\;

ww_out_rs(2) <= \out_rs[2]~output_o\;

ww_out_rs(3) <= \out_rs[3]~output_o\;

ww_out_rs(4) <= \out_rs[4]~output_o\;

ww_out_rs(5) <= \out_rs[5]~output_o\;

ww_out_rs(6) <= \out_rs[6]~output_o\;

ww_out_rs(7) <= \out_rs[7]~output_o\;

ww_out_rs(8) <= \out_rs[8]~output_o\;

ww_out_rs(9) <= \out_rs[9]~output_o\;

ww_out_rs(10) <= \out_rs[10]~output_o\;

ww_out_rs(11) <= \out_rs[11]~output_o\;

ww_out_rs(12) <= \out_rs[12]~output_o\;

ww_out_rs(13) <= \out_rs[13]~output_o\;

ww_out_rs(14) <= \out_rs[14]~output_o\;

ww_out_rs(15) <= \out_rs[15]~output_o\;

ww_out_rs(16) <= \out_rs[16]~output_o\;

ww_out_rs(17) <= \out_rs[17]~output_o\;

ww_out_rs(18) <= \out_rs[18]~output_o\;

ww_out_rs(19) <= \out_rs[19]~output_o\;

ww_out_rs(20) <= \out_rs[20]~output_o\;

ww_out_rs(21) <= \out_rs[21]~output_o\;

ww_out_rs(22) <= \out_rs[22]~output_o\;

ww_out_rs(23) <= \out_rs[23]~output_o\;

ww_out_rs(24) <= \out_rs[24]~output_o\;

ww_out_rs(25) <= \out_rs[25]~output_o\;

ww_out_rs(26) <= \out_rs[26]~output_o\;

ww_out_rs(27) <= \out_rs[27]~output_o\;

ww_out_rs(28) <= \out_rs[28]~output_o\;

ww_out_rs(29) <= \out_rs[29]~output_o\;

ww_out_rs(30) <= \out_rs[30]~output_o\;

ww_out_rs(31) <= \out_rs[31]~output_o\;

ww_out_rt(0) <= \out_rt[0]~output_o\;

ww_out_rt(1) <= \out_rt[1]~output_o\;

ww_out_rt(2) <= \out_rt[2]~output_o\;

ww_out_rt(3) <= \out_rt[3]~output_o\;

ww_out_rt(4) <= \out_rt[4]~output_o\;

ww_out_rt(5) <= \out_rt[5]~output_o\;

ww_out_rt(6) <= \out_rt[6]~output_o\;

ww_out_rt(7) <= \out_rt[7]~output_o\;

ww_out_rt(8) <= \out_rt[8]~output_o\;

ww_out_rt(9) <= \out_rt[9]~output_o\;

ww_out_rt(10) <= \out_rt[10]~output_o\;

ww_out_rt(11) <= \out_rt[11]~output_o\;

ww_out_rt(12) <= \out_rt[12]~output_o\;

ww_out_rt(13) <= \out_rt[13]~output_o\;

ww_out_rt(14) <= \out_rt[14]~output_o\;

ww_out_rt(15) <= \out_rt[15]~output_o\;

ww_out_rt(16) <= \out_rt[16]~output_o\;

ww_out_rt(17) <= \out_rt[17]~output_o\;

ww_out_rt(18) <= \out_rt[18]~output_o\;

ww_out_rt(19) <= \out_rt[19]~output_o\;

ww_out_rt(20) <= \out_rt[20]~output_o\;

ww_out_rt(21) <= \out_rt[21]~output_o\;

ww_out_rt(22) <= \out_rt[22]~output_o\;

ww_out_rt(23) <= \out_rt[23]~output_o\;

ww_out_rt(24) <= \out_rt[24]~output_o\;

ww_out_rt(25) <= \out_rt[25]~output_o\;

ww_out_rt(26) <= \out_rt[26]~output_o\;

ww_out_rt(27) <= \out_rt[27]~output_o\;

ww_out_rt(28) <= \out_rt[28]~output_o\;

ww_out_rt(29) <= \out_rt[29]~output_o\;

ww_out_rt(30) <= \out_rt[30]~output_o\;

ww_out_rt(31) <= \out_rt[31]~output_o\;
END structure;


