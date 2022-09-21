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
-- Generated on "09/21/2022 17:42:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula5_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula5_2_vhd_vec_tst IS
END Aula5_2_vhd_vec_tst;
ARCHITECTURE Aula5_2_arch OF Aula5_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LED_FlagIN : STD_LOGIC;
SIGNAL LED_FlagOUT : STD_LOGIC;
SIGNAL LED_Hab : STD_LOGIC;
SIGNAL LED_INSTRU : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL LED_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT Aula5_2
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LED_FlagIN : OUT STD_LOGIC;
	LED_FlagOUT : OUT STD_LOGIC;
	LED_Hab : OUT STD_LOGIC;
	LED_INSTRU : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	LED_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC_OUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula5_2
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	KEY => KEY,
	LED_FlagIN => LED_FlagIN,
	LED_FlagOUT => LED_FlagOUT,
	LED_Hab => LED_Hab,
	LED_INSTRU => LED_INSTRU,
	LED_OUT => LED_OUT,
	PC_OUT => PC_OUT
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
LOOP
	KEY(0) <= '0';
	WAIT FOR 10000 ps;
	KEY(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 280000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_0;
END Aula5_2_arch;
