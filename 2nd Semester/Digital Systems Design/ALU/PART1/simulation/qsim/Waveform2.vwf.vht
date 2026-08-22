-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- Generated on "05/24/2024 23:27:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Part1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Part1_vhd_vec_tst IS
END Part1_vhd_vec_tst;
ARCHITECTURE Part1_arch OF Part1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL Ainvert : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL Binvert : STD_LOGIC;
SIGNAL CarryIn : STD_LOGIC;
SIGNAL CarryOut : STD_LOGIC;
SIGNAL operation : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL result : STD_LOGIC;
COMPONENT Part1
	PORT (
	a : IN STD_LOGIC;
	Ainvert : IN STD_LOGIC;
	b : IN STD_LOGIC;
	Binvert : IN STD_LOGIC;
	CarryIn : IN STD_LOGIC;
	CarryOut : BUFFER STD_LOGIC;
	operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	result : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Part1
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	Ainvert => Ainvert,
	b => b,
	Binvert => Binvert,
	CarryIn => CarryIn,
	CarryOut => CarryOut,
	operation => operation,
	result => result
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '0';
	WAIT FOR 40000 ps;
	b <= '1';
	WAIT FOR 40000 ps;
	b <= '0';
	WAIT FOR 40000 ps;
	b <= '1';
	WAIT FOR 40000 ps;
	b <= '0';
	WAIT FOR 40000 ps;
	b <= '1';
WAIT;
END PROCESS t_prcs_b;

-- Ainvert
t_prcs_Ainvert: PROCESS
BEGIN
	Ainvert <= '1';
	WAIT FOR 160000 ps;
	Ainvert <= '0';
WAIT;
END PROCESS t_prcs_Ainvert;

-- Binvert
t_prcs_Binvert: PROCESS
BEGIN
	Binvert <= '1';
	WAIT FOR 160000 ps;
	Binvert <= '0';
WAIT;
END PROCESS t_prcs_Binvert;

-- CarryIn
t_prcs_CarryIn: PROCESS
BEGIN
	CarryIn <= '0';
WAIT;
END PROCESS t_prcs_CarryIn;
-- operation[1]
t_prcs_operation_1: PROCESS
BEGIN
	operation(1) <= '0';
	WAIT FOR 160000 ps;
	operation(1) <= '1';
WAIT;
END PROCESS t_prcs_operation_1;
-- operation[0]
t_prcs_operation_0: PROCESS
BEGIN
	operation(0) <= '0';
	WAIT FOR 80000 ps;
	operation(0) <= '1';
WAIT;
END PROCESS t_prcs_operation_0;
END Part1_arch;
