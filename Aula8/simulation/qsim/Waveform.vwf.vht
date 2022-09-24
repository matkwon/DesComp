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
-- Generated on "09/24/2022 18:20:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Computador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Computador_vhd_vec_tst IS
END Computador_vhd_vec_tst;
ARCHITECTURE Computador_arch OF Computador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LED8 : STD_LOGIC;
SIGNAL LED9 : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT Computador
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LED8 : OUT STD_LOGIC;
	LED9 : OUT STD_LOGIC;
	LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC_OUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Computador
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	KEY => KEY,
	LED8 => LED8,
	LED9 => LED9,
	LEDR => LEDR,
	PC_OUT => PC_OUT
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	KEY(3) <= '0';
	WAIT FOR 80000 ps;
	KEY(3) <= '1';
	WAIT FOR 80000 ps;
	KEY(3) <= '0';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
LOOP
	KEY(2) <= '0';
	WAIT FOR 40000 ps;
	KEY(2) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 240000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
LOOP
	KEY(1) <= '0';
	WAIT FOR 20000 ps;
	KEY(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 240000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
LOOP
	KEY(0) <= '0';
	WAIT FOR 10000 ps;
	KEY(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 240000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_0;
END Computador_arch;
