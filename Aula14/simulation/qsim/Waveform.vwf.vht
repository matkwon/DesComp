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
-- Generated on "11/09/2022 19:27:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula14
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula14_vhd_vec_tst IS
END Aula14_vhd_vec_tst;
ARCHITECTURE Aula14_arch OF Aula14_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pc_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ram_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reg_1_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reg_2_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT Aula14
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	pc_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ram_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	reg_1_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	reg_2_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula14
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	KEY => KEY,
	pc_out => pc_out,
	ram_out => ram_out,
	reg_1_out => reg_1_out,
	reg_2_out => reg_2_out
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
END Aula14_arch;
