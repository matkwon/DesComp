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
-- Generated on "10/11/2022 18:11:47"
                                                             
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
SIGNAL FPGA_RESET_IN : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL KEY0_IN : STD_LOGIC;
SIGNAL KEY1_IN : STD_LOGIC;
SIGNAL KEY2_IN : STD_LOGIC;
SIGNAL KEY3_IN : STD_LOGIC;
SIGNAL LED8 : STD_LOGIC;
SIGNAL LED9 : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL SW0 : STD_LOGIC;
SIGNAL SW1 : STD_LOGIC;
SIGNAL SW2 : STD_LOGIC;
SIGNAL SW3 : STD_LOGIC;
SIGNAL SW4 : STD_LOGIC;
SIGNAL SW5 : STD_LOGIC;
SIGNAL SW6 : STD_LOGIC;
SIGNAL SW7 : STD_LOGIC;
SIGNAL SW8 : STD_LOGIC;
SIGNAL SW9 : STD_LOGIC;
COMPONENT Computador
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	FPGA_RESET_IN : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	KEY0_IN : IN STD_LOGIC;
	KEY1_IN : IN STD_LOGIC;
	KEY2_IN : IN STD_LOGIC;
	KEY3_IN : IN STD_LOGIC;
	LED8 : OUT STD_LOGIC;
	LED9 : OUT STD_LOGIC;
	LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC_OUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	SW0 : IN STD_LOGIC;
	SW1 : IN STD_LOGIC;
	SW2 : IN STD_LOGIC;
	SW3 : IN STD_LOGIC;
	SW4 : IN STD_LOGIC;
	SW5 : IN STD_LOGIC;
	SW6 : IN STD_LOGIC;
	SW7 : IN STD_LOGIC;
	SW8 : IN STD_LOGIC;
	SW9 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Computador
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	FPGA_RESET_IN => FPGA_RESET_IN,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	KEY0_IN => KEY0_IN,
	KEY1_IN => KEY1_IN,
	KEY2_IN => KEY2_IN,
	KEY3_IN => KEY3_IN,
	LED8 => LED8,
	LED9 => LED9,
	LEDR => LEDR,
	PC_OUT => PC_OUT,
	SW0 => SW0,
	SW1 => SW1,
	SW2 => SW2,
	SW3 => SW3,
	SW4 => SW4,
	SW5 => SW5,
	SW6 => SW6,
	SW7 => SW7,
	SW8 => SW8,
	SW9 => SW9
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 24
	LOOP
		KEY(0) <= '0';
		WAIT FOR 10000 ps;
		KEY(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;

-- KEY0_IN
t_prcs_KEY0_IN: PROCESS
BEGIN
	KEY0_IN <= '1';
	WAIT FOR 20000 ps;
	KEY0_IN <= '0';
	WAIT FOR 470000 ps;
	KEY0_IN <= '1';
WAIT;
END PROCESS t_prcs_KEY0_IN;

-- KEY1_IN
t_prcs_KEY1_IN: PROCESS
BEGIN
	KEY1_IN <= '1';
	WAIT FOR 20000 ps;
	KEY1_IN <= '0';
	WAIT FOR 470000 ps;
	KEY1_IN <= '1';
WAIT;
END PROCESS t_prcs_KEY1_IN;

-- KEY2_IN
t_prcs_KEY2_IN: PROCESS
BEGIN
	KEY2_IN <= '1';
	WAIT FOR 20000 ps;
	KEY2_IN <= '0';
	WAIT FOR 470000 ps;
	KEY2_IN <= '1';
WAIT;
END PROCESS t_prcs_KEY2_IN;

-- KEY3_IN
t_prcs_KEY3_IN: PROCESS
BEGIN
	KEY3_IN <= '1';
	WAIT FOR 20000 ps;
	KEY3_IN <= '0';
	WAIT FOR 470000 ps;
	KEY3_IN <= '1';
WAIT;
END PROCESS t_prcs_KEY3_IN;

-- FPGA_RESET_IN
t_prcs_FPGA_RESET_IN: PROCESS
BEGIN
	FPGA_RESET_IN <= '1';
	WAIT FOR 20000 ps;
	FPGA_RESET_IN <= '0';
	WAIT FOR 470000 ps;
	FPGA_RESET_IN <= '1';
WAIT;
END PROCESS t_prcs_FPGA_RESET_IN;

-- SW7
t_prcs_SW7: PROCESS
BEGIN
	SW7 <= '0';
WAIT;
END PROCESS t_prcs_SW7;

-- SW6
t_prcs_SW6: PROCESS
BEGIN
	SW6 <= '0';
WAIT;
END PROCESS t_prcs_SW6;

-- SW5
t_prcs_SW5: PROCESS
BEGIN
	SW5 <= '0';
WAIT;
END PROCESS t_prcs_SW5;

-- SW4
t_prcs_SW4: PROCESS
BEGIN
	SW4 <= '0';
WAIT;
END PROCESS t_prcs_SW4;

-- SW3
t_prcs_SW3: PROCESS
BEGIN
	SW3 <= '0';
WAIT;
END PROCESS t_prcs_SW3;

-- SW2
t_prcs_SW2: PROCESS
BEGIN
	SW2 <= '0';
WAIT;
END PROCESS t_prcs_SW2;

-- SW1
t_prcs_SW1: PROCESS
BEGIN
	SW1 <= '0';
WAIT;
END PROCESS t_prcs_SW1;

-- SW0
t_prcs_SW0: PROCESS
BEGIN
	SW0 <= '1';
WAIT;
END PROCESS t_prcs_SW0;

-- SW8
t_prcs_SW8: PROCESS
BEGIN
	SW8 <= '1';
WAIT;
END PROCESS t_prcs_SW8;

-- SW9
t_prcs_SW9: PROCESS
BEGIN
	SW9 <= '1';
WAIT;
END PROCESS t_prcs_SW9;
END Computador_arch;
