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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/01/2022 17:23:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          aula13
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY aula13_vhd_vec_tst IS
END aula13_vhd_vec_tst;
ARCHITECTURE aula13_arch OF aula13_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_rd : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL out_rs : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL out_rt : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ula_op : STD_LOGIC;
SIGNAL WR_rd : STD_LOGIC;
COMPONENT aula13
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_rd : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	out_rs : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	out_rt : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ula_op : IN STD_LOGIC;
	WR_rd : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : aula13
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	KEY => KEY,
	out_rd => out_rd,
	out_rs => out_rs,
	out_rt => out_rt,
	ula_op => ula_op,
	WR_rd => WR_rd
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		KEY(0) <= '0';
		WAIT FOR 10000 ps;
		KEY(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;

-- ula_op
t_prcs_ula_op: PROCESS
BEGIN
	ula_op <= '1';
WAIT;
END PROCESS t_prcs_ula_op;

-- WR_rd
t_prcs_WR_rd: PROCESS
BEGIN
	WR_rd <= '1';
WAIT;
END PROCESS t_prcs_WR_rd;
END aula13_arch;
