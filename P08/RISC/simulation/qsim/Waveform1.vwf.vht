-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/14/2020 02:18:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pipeline
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pipeline_vhd_vec_tst IS
END pipeline_vhd_vec_tst;
ARCHITECTURE pipeline_arch OF pipeline_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ACCA_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ACCB_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL AUX_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL c : STD_LOGIC;
SIGNAL h : STD_LOGIC;
SIGNAL i : STD_LOGIC;
SIGNAL IX_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL IY_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL n : STD_LOGIC;
SIGNAL RELOJ : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL SP_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL v : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT pipeline
	PORT (
	ACCA_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ACCB_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	AUX_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	c : OUT STD_LOGIC;
	h : OUT STD_LOGIC;
	i : OUT STD_LOGIC;
	IX_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	IY_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	n : OUT STD_LOGIC;
	RELOJ : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	SP_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	v : OUT STD_LOGIC;
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pipeline
	PORT MAP (
-- list connections between master ports and signals
	ACCA_D => ACCA_D,
	ACCB_D => ACCB_D,
	AUX_D => AUX_D,
	c => c,
	h => h,
	i => i,
	IX_D => IX_D,
	IY_D => IY_D,
	n => n,
	RELOJ => RELOJ,
	RESET => RESET,
	SP_D => SP_D,
	v => v,
	z => z
	);

-- RELOJ
t_prcs_RELOJ: PROCESS
BEGIN
LOOP
	RELOJ <= '0';
	WAIT FOR 5000 ps;
	RELOJ <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RELOJ;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;
END pipeline_arch;
