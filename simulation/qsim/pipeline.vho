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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "01/29/2021 03:31:15"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	pipeline IS
    PORT (
	n : OUT std_logic;
	RELOJ : IN std_logic;
	RESET : IN std_logic;
	z : OUT std_logic;
	v : OUT std_logic;
	c : OUT std_logic;
	h : OUT std_logic;
	i : OUT std_logic;
	ACCA_D : OUT std_logic_vector(15 DOWNTO 0);
	ACCB_D : OUT std_logic_vector(15 DOWNTO 0);
	AUX_D : OUT std_logic_vector(15 DOWNTO 0);
	instruccion : OUT std_logic_vector(15 DOWNTO 0);
	IX_D : OUT std_logic_vector(15 DOWNTO 0);
	IY_D : OUT std_logic_vector(15 DOWNTO 0);
	SP_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipeline;

-- Design Ports Information
-- n	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[15]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[14]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[13]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[12]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[11]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[10]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[9]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[8]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[15]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[14]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[13]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[12]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[10]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[9]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[8]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[15]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[14]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[13]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[12]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[10]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[9]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[7]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[15]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[14]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[12]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[11]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[10]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[9]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[8]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[6]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[3]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[15]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[14]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[13]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[12]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[11]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[10]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[15]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[14]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[12]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[11]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[10]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[9]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[8]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[7]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipeline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_RELOJ : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL ww_ACCA_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ACCB_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AUX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instruccion : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IY_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \RELOJ~input_o\ : std_logic;
SIGNAL \RELOJ~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst34|valor_interno[0]~_wirecell_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst7|Add0~2\ : std_logic;
SIGNAL \inst7|Add0~5_sumout\ : std_logic;
SIGNAL \inst7|Add0~18\ : std_logic;
SIGNAL \inst7|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|Mux13~1_combout\ : std_logic;
SIGNAL \inst34|valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst8|valor_interno[16]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst8|valor_interno[21]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|valor_interno[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Equal8~1_combout\ : std_logic;
SIGNAL \inst4|selregr[1]~0_combout\ : std_logic;
SIGNAL \inst4|Equal3~0_combout\ : std_logic;
SIGNAL \inst8|valor_interno[22]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Equal6~0_combout\ : std_logic;
SIGNAL \inst4|Equal7~0_combout\ : std_logic;
SIGNAL \inst4|Equal2~1_combout\ : std_logic;
SIGNAL \inst4|Equal2~2_combout\ : std_logic;
SIGNAL \inst4|selregr[0]~3_combout\ : std_logic;
SIGNAL \inst4|memw~0_combout\ : std_logic;
SIGNAL \inst4|Equal4~0_combout\ : std_logic;
SIGNAL \inst4|selfalgs~1_combout\ : std_logic;
SIGNAL \inst4|selregr[3]~5_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|selregr[1]~1_combout\ : std_logic;
SIGNAL \inst4|selregr[1]~4_combout\ : std_logic;
SIGNAL \inst4|Equal8~2_combout\ : std_logic;
SIGNAL \inst4|selregr~6_combout\ : std_logic;
SIGNAL \inst4|selregr~7_combout\ : std_logic;
SIGNAL \inst700666|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|selregr[1]~2_combout\ : std_logic;
SIGNAL \inst4|selsrc[1]~1_combout\ : std_logic;
SIGNAL \inst14|valor_interno[1]~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[1]~1_combout\ : std_logic;
SIGNAL \inst4|selregw[0]~1_combout\ : std_logic;
SIGNAL \inst4|selregw~0_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Equal6~1_combout\ : std_logic;
SIGNAL \inst4|selfalgs~3_combout\ : std_logic;
SIGNAL \inst4|memw~1_combout\ : std_logic;
SIGNAL \inst16|memw~q\ : std_logic;
SIGNAL \inst107|memw~q\ : std_logic;
SIGNAL \inst4|selsrc[1]~0_combout\ : std_logic;
SIGNAL \inst10|Mux10~0_combout\ : std_logic;
SIGNAL \inst10|Mux10~1_combout\ : std_logic;
SIGNAL \inst1|Mux31~0_combout\ : std_logic;
SIGNAL \inst700666|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|sr~0_combout\ : std_logic;
SIGNAL \inst4|sels1~0_combout\ : std_logic;
SIGNAL \inst4|sels1~1_combout\ : std_logic;
SIGNAL \inst11|Add0~24_combout\ : std_logic;
SIGNAL \inst11|Add0~1_sumout\ : std_logic;
SIGNAL \inst10|Mux15~1_combout\ : std_logic;
SIGNAL \inst4|Equal9~0_combout\ : std_logic;
SIGNAL \inst4|selresult[0]~0_combout\ : std_logic;
SIGNAL \inst10|Mux15~0_combout\ : std_logic;
SIGNAL \inst11|Add0~25_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst202|Mux14~0_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal0~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[3]~0_combout\ : std_logic;
SIGNAL \inst4|selsrc[0]~3_combout\ : std_logic;
SIGNAL \inst4|selsrc[1]~2_combout\ : std_logic;
SIGNAL \inst700|valor_interno[3]~1_combout\ : std_logic;
SIGNAL \inst33|opres[11]~4_combout\ : std_logic;
SIGNAL \inst1|Mux29~0_combout\ : std_logic;
SIGNAL \inst11|Add0~26_combout\ : std_logic;
SIGNAL \inst11|Add0~2\ : std_logic;
SIGNAL \inst11|Add0~6\ : std_logic;
SIGNAL \inst11|Add0~9_sumout\ : std_logic;
SIGNAL \inst10|Mux13~1_combout\ : std_logic;
SIGNAL \inst10|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|Mux28~0_combout\ : std_logic;
SIGNAL \inst11|Add0~27_combout\ : std_logic;
SIGNAL \inst11|Add0~10\ : std_logic;
SIGNAL \inst11|Add0~14\ : std_logic;
SIGNAL \inst11|Add0~17_sumout\ : std_logic;
SIGNAL \inst10|Mux11~1_combout\ : std_logic;
SIGNAL \inst10|Mux11~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst11|Add0~18\ : std_logic;
SIGNAL \inst11|Add0~21_sumout\ : std_logic;
SIGNAL \inst10|Mux10~3_combout\ : std_logic;
SIGNAL \inst10|Mux10~2_combout\ : std_logic;
SIGNAL \inst202|Mux8~0_combout\ : std_logic;
SIGNAL \inst202|Mux17~0_combout\ : std_logic;
SIGNAL \inst202|Mux17~2_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst202|Mux2~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[11]~5_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst202|Mux3~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst202|Mux0~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst202|Mux16~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[12]~2_combout\ : std_logic;
SIGNAL \inst202|Mux1~0_combout\ : std_logic;
SIGNAL \inst33|opres[15]~0_combout\ : std_logic;
SIGNAL \inst16|selc~q\ : std_logic;
SIGNAL \inst4|cadj~0_combout\ : std_logic;
SIGNAL \inst16|cadj~q\ : std_logic;
SIGNAL \inst4|selfalgs[2]~2_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst202|Mux15~0_combout\ : std_logic;
SIGNAL \inst33|Equal0~1_combout\ : std_logic;
SIGNAL \inst33|Add0~69_combout\ : std_logic;
SIGNAL \inst33|Add0~83_combout\ : std_logic;
SIGNAL \inst33|Add0~82_combout\ : std_logic;
SIGNAL \inst14|valor_interno[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|Add0~71_combout\ : std_logic;
SIGNAL \inst33|Add0~81_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst202|Mux21~0_combout\ : std_logic;
SIGNAL \inst33|Add0~80_combout\ : std_logic;
SIGNAL \inst202|Mux5~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|Add0~79_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst202|Mux23~0_combout\ : std_logic;
SIGNAL \inst33|Add0~78_combout\ : std_logic;
SIGNAL \inst202|Mux7~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|Add0~77_combout\ : std_logic;
SIGNAL \inst202|Mux9~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst202|Mux26~0_combout\ : std_logic;
SIGNAL \inst33|Add0~76_combout\ : std_logic;
SIGNAL \inst202|Mux10~0_combout\ : std_logic;
SIGNAL \inst202|Mux11~0_combout\ : std_logic;
SIGNAL \inst202|Mux12~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst202|Mux29~0_combout\ : std_logic;
SIGNAL \inst33|Add0~73_combout\ : std_logic;
SIGNAL \inst202|Mux13~0_combout\ : std_logic;
SIGNAL \inst33|Add0~72_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst202|Mux31~0_combout\ : std_logic;
SIGNAL \inst33|Add0~84_combout\ : std_logic;
SIGNAL \inst33|Add0~87_cout\ : std_logic;
SIGNAL \inst33|Add0~63\ : std_logic;
SIGNAL \inst33|Add0~15\ : std_logic;
SIGNAL \inst33|Add0~19\ : std_logic;
SIGNAL \inst33|Add0~23\ : std_logic;
SIGNAL \inst33|Add0~27\ : std_logic;
SIGNAL \inst33|Add0~31\ : std_logic;
SIGNAL \inst33|Add0~7\ : std_logic;
SIGNAL \inst33|Add0~35\ : std_logic;
SIGNAL \inst33|Add0~39\ : std_logic;
SIGNAL \inst33|Add0~43\ : std_logic;
SIGNAL \inst33|Add0~47\ : std_logic;
SIGNAL \inst33|Add0~51\ : std_logic;
SIGNAL \inst33|Add0~11\ : std_logic;
SIGNAL \inst33|Add0~55\ : std_logic;
SIGNAL \inst33|Add0~59\ : std_logic;
SIGNAL \inst33|Add0~3\ : std_logic;
SIGNAL \inst33|Add0~66_sumout\ : std_logic;
SIGNAL \inst33|opres[16]~36_combout\ : std_logic;
SIGNAL \inst|ci~combout\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst33|opres[15]~1_combout\ : std_logic;
SIGNAL \inst33|Add0~2_sumout\ : std_logic;
SIGNAL \inst33|opres[15]~2_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst202|Mux17~1_combout\ : std_logic;
SIGNAL \inst33|opres[14]~32_combout\ : std_logic;
SIGNAL \inst33|Add0~58_sumout\ : std_logic;
SIGNAL \inst33|opres[14]~33_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst202|Mux18~0_combout\ : std_logic;
SIGNAL \inst33|opres[13]~30_combout\ : std_logic;
SIGNAL \inst33|Add0~54_sumout\ : std_logic;
SIGNAL \inst33|opres[13]~31_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst202|Mux19~0_combout\ : std_logic;
SIGNAL \inst33|opres[12]~8_combout\ : std_logic;
SIGNAL \inst33|Add0~10_sumout\ : std_logic;
SIGNAL \inst33|opres[12]~9_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst202|Mux20~0_combout\ : std_logic;
SIGNAL \inst33|opres[11]~28_combout\ : std_logic;
SIGNAL \inst33|Add0~50_sumout\ : std_logic;
SIGNAL \inst33|opres[11]~29_combout\ : std_logic;
SIGNAL \inst202|Mux4~0_combout\ : std_logic;
SIGNAL \inst33|opres[10]~26_combout\ : std_logic;
SIGNAL \inst33|Add0~46_sumout\ : std_logic;
SIGNAL \inst33|opres[10]~27_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst202|Mux22~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[9]~24_combout\ : std_logic;
SIGNAL \inst33|Add0~42_sumout\ : std_logic;
SIGNAL \inst33|opres[9]~25_combout\ : std_logic;
SIGNAL \inst202|Mux6~0_combout\ : std_logic;
SIGNAL \inst33|opres[8]~22_combout\ : std_logic;
SIGNAL \inst33|Add0~38_sumout\ : std_logic;
SIGNAL \inst33|opres[8]~23_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst202|Mux24~0_combout\ : std_logic;
SIGNAL \inst33|opres[7]~20_combout\ : std_logic;
SIGNAL \inst33|Add0~34_sumout\ : std_logic;
SIGNAL \inst33|opres[7]~21_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst202|Mux25~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|Add0~70_combout\ : std_logic;
SIGNAL \inst33|Add0~6_sumout\ : std_logic;
SIGNAL \inst700|valor_interno[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[6]~6_combout\ : std_logic;
SIGNAL \inst33|opres[6]~7_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst202|Mux28~0_combout\ : std_logic;
SIGNAL \inst33|Add0~74_combout\ : std_logic;
SIGNAL \inst33|Add0~22_sumout\ : std_logic;
SIGNAL \inst33|opres[3]~14_combout\ : std_logic;
SIGNAL \inst33|opres[3]~15_combout\ : std_logic;
SIGNAL \inst11|Add0~13_sumout\ : std_logic;
SIGNAL \inst10|Mux12~1_combout\ : std_logic;
SIGNAL \inst10|Mux12~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst202|Mux30~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[1]~10_combout\ : std_logic;
SIGNAL \inst33|Add0~14_sumout\ : std_logic;
SIGNAL \inst33|opres[1]~11_combout\ : std_logic;
SIGNAL \inst11|Add0~5_sumout\ : std_logic;
SIGNAL \inst10|Mux14~1_combout\ : std_logic;
SIGNAL \inst10|Mux14~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst202|Mux27~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|Add0~75_combout\ : std_logic;
SIGNAL \inst33|Add0~26_sumout\ : std_logic;
SIGNAL \inst33|opres[4]~16_combout\ : std_logic;
SIGNAL \inst33|opres[4]~17_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst4|Equal14~0_combout\ : std_logic;
SIGNAL \inst4|Equal14~1_combout\ : std_logic;
SIGNAL \inst4|selop[2]~1_combout\ : std_logic;
SIGNAL \inst33|Equal0~0_combout\ : std_logic;
SIGNAL \inst33|opres[5]~18_combout\ : std_logic;
SIGNAL \inst33|Add0~30_sumout\ : std_logic;
SIGNAL \inst33|opres[5]~19_combout\ : std_logic;
SIGNAL \inst7|Add0~10\ : std_logic;
SIGNAL \inst7|Add0~13_sumout\ : std_logic;
SIGNAL \inst34|valor_interno[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst4|Equal11~0_combout\ : std_logic;
SIGNAL \inst4|Equal13~0_combout\ : std_logic;
SIGNAL \inst4|selop[0]~2_combout\ : std_logic;
SIGNAL \inst33|Add0~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[2]~12_combout\ : std_logic;
SIGNAL \inst33|Add0~18_sumout\ : std_logic;
SIGNAL \inst33|opres[2]~13_combout\ : std_logic;
SIGNAL \inst7|Add0~6\ : std_logic;
SIGNAL \inst7|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst4|Equal11~1_combout\ : std_logic;
SIGNAL \inst16|vf~q\ : std_logic;
SIGNAL \inst4|Equal12~0_combout\ : std_logic;
SIGNAL \inst22|branch~0_combout\ : std_logic;
SIGNAL \inst100|valor_interno~q\ : std_logic;
SIGNAL \inst34|valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst7|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst8|valor_interno[18]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Equal8~0_combout\ : std_logic;
SIGNAL \inst4|selop~0_combout\ : std_logic;
SIGNAL \inst33|opres[15]~3_combout\ : std_logic;
SIGNAL \inst33|Add0~62_sumout\ : std_logic;
SIGNAL \inst33|opres[0]~34_combout\ : std_logic;
SIGNAL \inst33|opres[0]~35_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst8|valor_interno[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|selfalgs[1]~0_combout\ : std_logic;
SIGNAL \inst4|selfalgs[0]~4_combout\ : std_logic;
SIGNAL \inst|ni~0_combout\ : std_logic;
SIGNAL \inst|ni~combout\ : std_logic;
SIGNAL \inst101|valor_interno~q\ : std_logic;
SIGNAL \inst33|WideOr0~2_combout\ : std_logic;
SIGNAL \inst33|WideOr0~1_combout\ : std_logic;
SIGNAL \inst33|WideOr0~0_combout\ : std_logic;
SIGNAL \inst33|WideOr0~combout\ : std_logic;
SIGNAL \inst|zi~combout\ : std_logic;
SIGNAL \inst102|valor_interno~q\ : std_logic;
SIGNAL \inst|vi~0_combout\ : std_logic;
SIGNAL \inst|vi~combout\ : std_logic;
SIGNAL \inst103|valor_interno~q\ : std_logic;
SIGNAL \inst104|valor_interno~q\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst|hi~combout\ : std_logic;
SIGNAL \inst105|valor_interno~q\ : std_logic;
SIGNAL \inst106|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst106|valor_interno~q\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst1000|AUX~0_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst33|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst700666|ACCA|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst24|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCB|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst23|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst34|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|AUX|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|selbranch\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst15|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst16|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst16|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst16|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst700|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst33|ALT_INV_Add0~2_sumout\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst24|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 2);
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst23|ALT_INV_valor_interno\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst11|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~66_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~62_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~58_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~54_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~50_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~46_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~42_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~38_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~34_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~30_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~26_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~22_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~18_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~14_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~10_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~6_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[10]~26_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[9]~25_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[9]~24_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[8]~23_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[8]~22_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[7]~21_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[7]~20_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[5]~19_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[5]~18_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[4]~17_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[4]~16_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[3]~15_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[3]~14_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[2]~13_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[2]~12_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[1]~11_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[1]~10_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[12]~9_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[12]~8_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[6]~7_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[6]~6_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[11]~5_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[11]~4_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selfalgs~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal14~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_memw~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selfalgs~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selop~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[15]~3_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[15]~2_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[15]~1_combout\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_cadj~q\ : std_logic;
SIGNAL \inst16|ALT_INV_selc~q\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[15]~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_selop\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst16|ALT_INV_selresult\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_vi~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \inst33|ALT_INV_WideOr0~2_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ni~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_selfalgs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst107|ALT_INV_selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst8|ALT_INV_valor_interno\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst11|ALT_INV_Add0~27_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~26_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~25_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~24_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sels1~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sels1~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst107|ALT_INV_memw~q\ : std_logic;
SIGNAL \inst33|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~84_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~83_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~82_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~81_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~80_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~79_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~78_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~77_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~76_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~75_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~74_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~73_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~72_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[1]~1_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[1]~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~71_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~70_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sr~0_combout\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[3]~0_combout\ : std_logic;
SIGNAL \inst700666|inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selsrc[0]~3_combout\ : std_logic;
SIGNAL \inst202|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selsrc[1]~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selsrc[1]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selsrc[1]~0_combout\ : std_logic;
SIGNAL \inst700666|inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr~7_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr~6_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[3]~5_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[1]~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[0]~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~69_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal14~1_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_vf~q\ : std_logic;
SIGNAL \inst16|ALT_INV_selbranch\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst4|ALT_INV_selregr[1]~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[1]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[1]~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[16]~36_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[0]~35_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[0]~34_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[14]~33_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[14]~32_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[13]~31_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[13]~30_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[11]~29_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[11]~28_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[10]~27_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|ALT_INV_valor_interno[16]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|ALT_INV_valor_interno[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|ALT_INV_valor_interno[18]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|ALT_INV_valor_interno[21]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|ALT_INV_valor_interno[22]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RELOJ~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst33|ALT_INV_opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|ALT_INV_hi~combout\ : std_logic;
SIGNAL \inst|ALT_INV_ci~combout\ : std_logic;
SIGNAL \inst|ALT_INV_vi~combout\ : std_logic;
SIGNAL \inst|ALT_INV_zi~combout\ : std_logic;
SIGNAL \inst|ALT_INV_ni~combout\ : std_logic;
SIGNAL \inst202|ALT_INV_Mux17~2_combout\ : std_logic;

BEGIN

n <= ww_n;
ww_RELOJ <= RELOJ;
ww_RESET <= RESET;
z <= ww_z;
v <= ww_v;
c <= ww_c;
h <= ww_h;
i <= ww_i;
ACCA_D <= ww_ACCA_D;
ACCB_D <= ww_ACCB_D;
AUX_D <= ww_AUX_D;
instruccion <= ww_instruccion;
IX_D <= ww_IX_D;
IY_D <= ww_IY_D;
SP_D <= ww_SP_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst24|valor_interno\(15) & 
\inst24|valor_interno\(14) & \inst24|valor_interno\(13) & \inst24|valor_interno\(12) & \inst24|valor_interno\(11) & \inst24|valor_interno\(10) & \inst24|valor_interno\(9) & \inst24|valor_interno\(8) & \inst24|valor_interno\(7) & 
\inst24|valor_interno\(6) & \inst24|valor_interno\(5) & \inst24|valor_interno\(4) & \inst24|valor_interno\(3) & \inst24|valor_interno\(2) & \inst24|valor_interno\(1) & \inst24|valor_interno\(0));

\inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst10|Mux10~2_combout\ & \inst10|Mux11~0_combout\ & \inst10|Mux12~0_combout\ & \inst10|Mux13~0_combout\ & \inst10|Mux14~0_combout\ & \inst10|Mux15~0_combout\);

\inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst10|Mux10~2_combout\ & \inst10|Mux11~0_combout\ & \inst10|Mux12~0_combout\ & \inst10|Mux13~0_combout\ & \inst10|Mux14~0_combout\ & \inst10|Mux15~0_combout\);

\inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst41|mem_rtl_0|auto_generated|ram_block1a1\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst41|mem_rtl_0|auto_generated|ram_block1a2\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst41|mem_rtl_0|auto_generated|ram_block1a3\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst41|mem_rtl_0|auto_generated|ram_block1a4\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst41|mem_rtl_0|auto_generated|ram_block1a5\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst41|mem_rtl_0|auto_generated|ram_block1a6\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst41|mem_rtl_0|auto_generated|ram_block1a7\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\inst41|mem_rtl_0|auto_generated|ram_block1a8\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\inst41|mem_rtl_0|auto_generated|ram_block1a9\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\inst41|mem_rtl_0|auto_generated|ram_block1a10\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\inst41|mem_rtl_0|auto_generated|ram_block1a11\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\inst41|mem_rtl_0|auto_generated|ram_block1a12\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\inst41|mem_rtl_0|auto_generated|ram_block1a13\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\inst41|mem_rtl_0|auto_generated|ram_block1a14\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\inst41|mem_rtl_0|auto_generated|ram_block1a15\ <= \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\inst700|ALT_INV_valor_interno\(15) <= NOT \inst700|valor_interno\(15);
\inst14|ALT_INV_valor_interno\(15) <= NOT \inst14|valor_interno\(15);
\inst33|ALT_INV_Add0~2_sumout\ <= NOT \inst33|Add0~2_sumout\;
\inst34|ALT_INV_valor_interno\(3) <= NOT \inst34|valor_interno\(3);
\inst34|ALT_INV_valor_interno\(5) <= NOT \inst34|valor_interno\(5);
\inst34|ALT_INV_valor_interno\(4) <= NOT \inst34|valor_interno\(4);
\inst34|ALT_INV_valor_interno\(2) <= NOT \inst34|valor_interno\(2);
\inst34|ALT_INV_valor_interno\(1) <= NOT \inst34|valor_interno\(1);
\inst34|ALT_INV_valor_interno\(0) <= NOT \inst34|valor_interno\(0);
\inst24|ALT_INV_valor_interno\(2) <= NOT \inst24|valor_interno\(2);
\inst24|ALT_INV_valor_interno\(3) <= NOT \inst24|valor_interno\(3);
\inst24|ALT_INV_valor_interno\(5) <= NOT \inst24|valor_interno\(5);
\inst24|ALT_INV_valor_interno\(6) <= NOT \inst24|valor_interno\(6);
\inst24|ALT_INV_valor_interno\(7) <= NOT \inst24|valor_interno\(7);
\inst24|ALT_INV_valor_interno\(9) <= NOT \inst24|valor_interno\(9);
\inst24|ALT_INV_valor_interno\(11) <= NOT \inst24|valor_interno\(11);
\inst24|ALT_INV_valor_interno\(13) <= NOT \inst24|valor_interno\(13);
\inst24|ALT_INV_valor_interno\(15) <= NOT \inst24|valor_interno\(15);
\inst700666|ACCB|ALT_INV_valor_interno\(8) <= NOT \inst700666|ACCB|valor_interno\(8);
\inst700666|ACCB|ALT_INV_valor_interno\(9) <= NOT \inst700666|ACCB|valor_interno\(9);
\inst700666|ACCB|ALT_INV_valor_interno\(10) <= NOT \inst700666|ACCB|valor_interno\(10);
\inst700666|ACCB|ALT_INV_valor_interno\(11) <= NOT \inst700666|ACCB|valor_interno\(11);
\inst700666|ACCB|ALT_INV_valor_interno\(12) <= NOT \inst700666|ACCB|valor_interno\(12);
\inst700666|ACCB|ALT_INV_valor_interno\(13) <= NOT \inst700666|ACCB|valor_interno\(13);
\inst700666|ACCB|ALT_INV_valor_interno\(14) <= NOT \inst700666|ACCB|valor_interno\(14);
\inst700666|ACCB|ALT_INV_valor_interno\(15) <= NOT \inst700666|ACCB|valor_interno\(15);
\inst23|ALT_INV_valor_interno\(5) <= NOT \inst23|valor_interno\(5);
\inst11|ALT_INV_Add0~21_sumout\ <= NOT \inst11|Add0~21_sumout\;
\inst23|ALT_INV_valor_interno\(4) <= NOT \inst23|valor_interno\(4);
\inst11|ALT_INV_Add0~17_sumout\ <= NOT \inst11|Add0~17_sumout\;
\inst23|ALT_INV_valor_interno\(3) <= NOT \inst23|valor_interno\(3);
\inst11|ALT_INV_Add0~13_sumout\ <= NOT \inst11|Add0~13_sumout\;
\inst23|ALT_INV_valor_interno\(2) <= NOT \inst23|valor_interno\(2);
\inst11|ALT_INV_Add0~9_sumout\ <= NOT \inst11|Add0~9_sumout\;
\inst23|ALT_INV_valor_interno\(1) <= NOT \inst23|valor_interno\(1);
\inst11|ALT_INV_Add0~5_sumout\ <= NOT \inst11|Add0~5_sumout\;
\inst23|ALT_INV_valor_interno\(0) <= NOT \inst23|valor_interno\(0);
\inst11|ALT_INV_Add0~1_sumout\ <= NOT \inst11|Add0~1_sumout\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a1\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a2\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a3\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a4\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a5\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a6\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a7\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a8\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a9\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a10\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a11\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a12\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a13\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a14\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a15\;
\inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\inst33|ALT_INV_Add0~66_sumout\ <= NOT \inst33|Add0~66_sumout\;
\inst33|ALT_INV_Add0~62_sumout\ <= NOT \inst33|Add0~62_sumout\;
\inst33|ALT_INV_Add0~58_sumout\ <= NOT \inst33|Add0~58_sumout\;
\inst14|ALT_INV_valor_interno\(14) <= NOT \inst14|valor_interno\(14);
\inst33|ALT_INV_Add0~54_sumout\ <= NOT \inst33|Add0~54_sumout\;
\inst14|ALT_INV_valor_interno\(13) <= NOT \inst14|valor_interno\(13);
\inst33|ALT_INV_Add0~50_sumout\ <= NOT \inst33|Add0~50_sumout\;
\inst14|ALT_INV_valor_interno\(11) <= NOT \inst14|valor_interno\(11);
\inst33|ALT_INV_Add0~46_sumout\ <= NOT \inst33|Add0~46_sumout\;
\inst14|ALT_INV_valor_interno\(10) <= NOT \inst14|valor_interno\(10);
\inst700|ALT_INV_valor_interno\(10) <= NOT \inst700|valor_interno\(10);
\inst33|ALT_INV_Add0~42_sumout\ <= NOT \inst33|Add0~42_sumout\;
\inst14|ALT_INV_valor_interno\(9) <= NOT \inst14|valor_interno\(9);
\inst700|ALT_INV_valor_interno\(9) <= NOT \inst700|valor_interno\(9);
\inst33|ALT_INV_Add0~38_sumout\ <= NOT \inst33|Add0~38_sumout\;
\inst14|ALT_INV_valor_interno\(8) <= NOT \inst14|valor_interno\(8);
\inst700|ALT_INV_valor_interno\(8) <= NOT \inst700|valor_interno\(8);
\inst33|ALT_INV_Add0~34_sumout\ <= NOT \inst33|Add0~34_sumout\;
\inst33|ALT_INV_Add0~30_sumout\ <= NOT \inst33|Add0~30_sumout\;
\inst33|ALT_INV_Add0~26_sumout\ <= NOT \inst33|Add0~26_sumout\;
\inst700|ALT_INV_valor_interno\(4) <= NOT \inst700|valor_interno\(4);
\inst33|ALT_INV_Add0~22_sumout\ <= NOT \inst33|Add0~22_sumout\;
\inst700|ALT_INV_valor_interno\(3) <= NOT \inst700|valor_interno\(3);
\inst33|ALT_INV_Add0~18_sumout\ <= NOT \inst33|Add0~18_sumout\;
\inst700|ALT_INV_valor_interno\(2) <= NOT \inst700|valor_interno\(2);
\inst700|ALT_INV_valor_interno\(0) <= NOT \inst700|valor_interno\(0);
\inst33|ALT_INV_Add0~14_sumout\ <= NOT \inst33|Add0~14_sumout\;
\inst700|ALT_INV_valor_interno\(1) <= NOT \inst700|valor_interno\(1);
\inst700|ALT_INV_valor_interno\(13) <= NOT \inst700|valor_interno\(13);
\inst700|ALT_INV_valor_interno\(11) <= NOT \inst700|valor_interno\(11);
\inst33|ALT_INV_Add0~10_sumout\ <= NOT \inst33|Add0~10_sumout\;
\inst700|ALT_INV_valor_interno\(12) <= NOT \inst700|valor_interno\(12);
\inst14|ALT_INV_valor_interno\(12) <= NOT \inst14|valor_interno\(12);
\inst700|ALT_INV_valor_interno\(7) <= NOT \inst700|valor_interno\(7);
\inst700|ALT_INV_valor_interno\(5) <= NOT \inst700|valor_interno\(5);
\inst33|ALT_INV_Add0~6_sumout\ <= NOT \inst33|Add0~6_sumout\;
\inst700|ALT_INV_valor_interno\(6) <= NOT \inst700|valor_interno\(6);
\inst700|ALT_INV_valor_interno\(14) <= NOT \inst700|valor_interno\(14);
\inst33|ALT_INV_opres[10]~26_combout\ <= NOT \inst33|opres[10]~26_combout\;
\inst33|ALT_INV_opres[9]~25_combout\ <= NOT \inst33|opres[9]~25_combout\;
\inst33|ALT_INV_opres[9]~24_combout\ <= NOT \inst33|opres[9]~24_combout\;
\inst33|ALT_INV_opres[8]~23_combout\ <= NOT \inst33|opres[8]~23_combout\;
\inst33|ALT_INV_opres[8]~22_combout\ <= NOT \inst33|opres[8]~22_combout\;
\inst33|ALT_INV_opres[7]~21_combout\ <= NOT \inst33|opres[7]~21_combout\;
\inst33|ALT_INV_opres[7]~20_combout\ <= NOT \inst33|opres[7]~20_combout\;
\inst14|ALT_INV_valor_interno\(7) <= NOT \inst14|valor_interno\(7);
\inst33|ALT_INV_opres[5]~19_combout\ <= NOT \inst33|opres[5]~19_combout\;
\inst33|ALT_INV_opres[5]~18_combout\ <= NOT \inst33|opres[5]~18_combout\;
\inst14|ALT_INV_valor_interno\(5) <= NOT \inst14|valor_interno\(5);
\inst33|ALT_INV_opres[4]~17_combout\ <= NOT \inst33|opres[4]~17_combout\;
\inst33|ALT_INV_opres[4]~16_combout\ <= NOT \inst33|opres[4]~16_combout\;
\inst14|ALT_INV_valor_interno\(4) <= NOT \inst14|valor_interno\(4);
\inst33|ALT_INV_opres[3]~15_combout\ <= NOT \inst33|opres[3]~15_combout\;
\inst33|ALT_INV_opres[3]~14_combout\ <= NOT \inst33|opres[3]~14_combout\;
\inst14|ALT_INV_valor_interno\(3) <= NOT \inst14|valor_interno\(3);
\inst33|ALT_INV_opres[2]~13_combout\ <= NOT \inst33|opres[2]~13_combout\;
\inst33|ALT_INV_opres[2]~12_combout\ <= NOT \inst33|opres[2]~12_combout\;
\inst14|ALT_INV_valor_interno\(2) <= NOT \inst14|valor_interno\(2);
\inst33|ALT_INV_opres[1]~11_combout\ <= NOT \inst33|opres[1]~11_combout\;
\inst33|ALT_INV_opres[1]~10_combout\ <= NOT \inst33|opres[1]~10_combout\;
\inst14|ALT_INV_valor_interno\(1) <= NOT \inst14|valor_interno\(1);
\inst33|ALT_INV_opres[12]~9_combout\ <= NOT \inst33|opres[12]~9_combout\;
\inst33|ALT_INV_opres[12]~8_combout\ <= NOT \inst33|opres[12]~8_combout\;
\inst33|ALT_INV_opres[6]~7_combout\ <= NOT \inst33|opres[6]~7_combout\;
\inst33|ALT_INV_opres[6]~6_combout\ <= NOT \inst33|opres[6]~6_combout\;
\inst33|ALT_INV_opres[11]~5_combout\ <= NOT \inst33|opres[11]~5_combout\;
\inst33|ALT_INV_opres[11]~4_combout\ <= NOT \inst33|opres[11]~4_combout\;
\inst33|ALT_INV_Equal0~0_combout\ <= NOT \inst33|Equal0~0_combout\;
\inst14|ALT_INV_valor_interno\(6) <= NOT \inst14|valor_interno\(6);
\inst4|ALT_INV_selfalgs~3_combout\ <= NOT \inst4|selfalgs~3_combout\;
\inst4|ALT_INV_Equal14~0_combout\ <= NOT \inst4|Equal14~0_combout\;
\inst4|ALT_INV_Equal6~1_combout\ <= NOT \inst4|Equal6~1_combout\;
\inst4|ALT_INV_Equal2~2_combout\ <= NOT \inst4|Equal2~2_combout\;
\inst4|ALT_INV_Equal9~0_combout\ <= NOT \inst4|Equal9~0_combout\;
\inst4|ALT_INV_Equal8~2_combout\ <= NOT \inst4|Equal8~2_combout\;
\inst4|ALT_INV_Equal8~1_combout\ <= NOT \inst4|Equal8~1_combout\;
\inst4|ALT_INV_memw~0_combout\ <= NOT \inst4|memw~0_combout\;
\inst4|ALT_INV_selfalgs~1_combout\ <= NOT \inst4|selfalgs~1_combout\;
\inst4|ALT_INV_Equal4~0_combout\ <= NOT \inst4|Equal4~0_combout\;
\inst4|ALT_INV_Equal6~0_combout\ <= NOT \inst4|Equal6~0_combout\;
\inst4|ALT_INV_Equal0~2_combout\ <= NOT \inst4|Equal0~2_combout\;
\inst4|ALT_INV_Equal0~1_combout\ <= NOT \inst4|Equal0~1_combout\;
\inst4|ALT_INV_Equal3~0_combout\ <= NOT \inst4|Equal3~0_combout\;
\inst4|ALT_INV_selop~0_combout\ <= NOT \inst4|selop~0_combout\;
\inst4|ALT_INV_Equal2~1_combout\ <= NOT \inst4|Equal2~1_combout\;
\inst4|ALT_INV_Equal11~0_combout\ <= NOT \inst4|Equal11~0_combout\;
\inst4|ALT_INV_Equal8~0_combout\ <= NOT \inst4|Equal8~0_combout\;
\inst4|ALT_INV_Equal2~0_combout\ <= NOT \inst4|Equal2~0_combout\;
\inst4|ALT_INV_Equal0~0_combout\ <= NOT \inst4|Equal0~0_combout\;
\inst33|ALT_INV_opres[15]~3_combout\ <= NOT \inst33|opres[15]~3_combout\;
\inst33|ALT_INV_opres[15]~2_combout\ <= NOT \inst33|opres[15]~2_combout\;
\inst33|ALT_INV_opres[15]~1_combout\ <= NOT \inst33|opres[15]~1_combout\;
\inst40|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst16|ALT_INV_cadj~q\ <= NOT \inst16|cadj~q\;
\inst16|ALT_INV_selc~q\ <= NOT \inst16|selc~q\;
\inst33|ALT_INV_opres[15]~0_combout\ <= NOT \inst33|opres[15]~0_combout\;
\inst33|ALT_INV_Add0~0_combout\ <= NOT \inst33|Add0~0_combout\;
\inst16|ALT_INV_selop\(0) <= NOT \inst16|selop\(0);
\inst16|ALT_INV_selop\(1) <= NOT \inst16|selop\(1);
\inst16|ALT_INV_selop\(2) <= NOT \inst16|selop\(2);
\inst16|ALT_INV_selresult\(0) <= NOT \inst16|selresult\(0);
\inst|ALT_INV_Equal2~1_combout\ <= NOT \inst|Equal2~1_combout\;
\inst|ALT_INV_Equal2~0_combout\ <= NOT \inst|Equal2~0_combout\;
\inst|ALT_INV_vi~0_combout\ <= NOT \inst|vi~0_combout\;
\inst33|ALT_INV_WideOr0~combout\ <= NOT \inst33|WideOr0~combout\;
\inst33|ALT_INV_WideOr0~2_combout\ <= NOT \inst33|WideOr0~2_combout\;
\inst33|ALT_INV_WideOr0~1_combout\ <= NOT \inst33|WideOr0~1_combout\;
\inst33|ALT_INV_WideOr0~0_combout\ <= NOT \inst33|WideOr0~0_combout\;
\inst|ALT_INV_ni~0_combout\ <= NOT \inst|ni~0_combout\;
\inst16|ALT_INV_selfalgs\(0) <= NOT \inst16|selfalgs\(0);
\inst16|ALT_INV_selfalgs\(2) <= NOT \inst16|selfalgs\(2);
\inst16|ALT_INV_selfalgs\(1) <= NOT \inst16|selfalgs\(1);
\inst107|ALT_INV_selregw\(0) <= NOT \inst107|selregw\(0);
\inst107|ALT_INV_selregw\(2) <= NOT \inst107|selregw\(2);
\inst8|ALT_INV_valor_interno\(16) <= NOT \inst8|valor_interno\(16);
\inst8|ALT_INV_valor_interno\(17) <= NOT \inst8|valor_interno\(17);
\inst8|ALT_INV_valor_interno\(18) <= NOT \inst8|valor_interno\(18);
\inst8|ALT_INV_valor_interno\(20) <= NOT \inst8|valor_interno\(20);
\inst8|ALT_INV_valor_interno\(21) <= NOT \inst8|valor_interno\(21);
\inst8|ALT_INV_valor_interno\(22) <= NOT \inst8|valor_interno\(22);
\inst8|ALT_INV_valor_interno\(23) <= NOT \inst8|valor_interno\(23);
\inst700666|ACCB|ALT_INV_valor_interno\(0) <= NOT \inst700666|ACCB|valor_interno\(0);
\inst700666|ACCB|ALT_INV_valor_interno\(1) <= NOT \inst700666|ACCB|valor_interno\(1);
\inst700666|ACCB|ALT_INV_valor_interno\(2) <= NOT \inst700666|ACCB|valor_interno\(2);
\inst700666|ACCB|ALT_INV_valor_interno\(3) <= NOT \inst700666|ACCB|valor_interno\(3);
\inst700666|ACCB|ALT_INV_valor_interno\(4) <= NOT \inst700666|ACCB|valor_interno\(4);
\inst700666|ACCB|ALT_INV_valor_interno\(5) <= NOT \inst700666|ACCB|valor_interno\(5);
\inst700666|ACCB|ALT_INV_valor_interno\(6) <= NOT \inst700666|ACCB|valor_interno\(6);
\inst700666|ACCB|ALT_INV_valor_interno\(7) <= NOT \inst700666|ACCB|valor_interno\(7);
\inst11|ALT_INV_Add0~27_combout\ <= NOT \inst11|Add0~27_combout\;
\inst11|ALT_INV_Add0~26_combout\ <= NOT \inst11|Add0~26_combout\;
\inst11|ALT_INV_Add0~25_combout\ <= NOT \inst11|Add0~25_combout\;
\inst11|ALT_INV_Add0~24_combout\ <= NOT \inst11|Add0~24_combout\;
\inst4|ALT_INV_sels1~1_combout\ <= NOT \inst4|sels1~1_combout\;
\inst4|ALT_INV_sels1~0_combout\ <= NOT \inst4|sels1~0_combout\;
\inst10|ALT_INV_Mux10~1_combout\ <= NOT \inst10|Mux10~1_combout\;
\inst10|ALT_INV_Mux10~0_combout\ <= NOT \inst10|Mux10~0_combout\;
\inst107|ALT_INV_memw~q\ <= NOT \inst107|memw~q\;
\inst33|ALT_INV_Equal0~1_combout\ <= NOT \inst33|Equal0~1_combout\;
\inst8|ALT_INV_valor_interno\(0) <= NOT \inst8|valor_interno\(0);
\inst33|ALT_INV_Add0~84_combout\ <= NOT \inst33|Add0~84_combout\;
\inst33|ALT_INV_Add0~83_combout\ <= NOT \inst33|Add0~83_combout\;
\inst33|ALT_INV_Add0~82_combout\ <= NOT \inst33|Add0~82_combout\;
\inst33|ALT_INV_Add0~81_combout\ <= NOT \inst33|Add0~81_combout\;
\inst33|ALT_INV_Add0~80_combout\ <= NOT \inst33|Add0~80_combout\;
\inst33|ALT_INV_Add0~79_combout\ <= NOT \inst33|Add0~79_combout\;
\inst33|ALT_INV_Add0~78_combout\ <= NOT \inst33|Add0~78_combout\;
\inst33|ALT_INV_Add0~77_combout\ <= NOT \inst33|Add0~77_combout\;
\inst33|ALT_INV_Add0~76_combout\ <= NOT \inst33|Add0~76_combout\;
\inst33|ALT_INV_Add0~75_combout\ <= NOT \inst33|Add0~75_combout\;
\inst33|ALT_INV_Add0~74_combout\ <= NOT \inst33|Add0~74_combout\;
\inst8|ALT_INV_valor_interno\(3) <= NOT \inst8|valor_interno\(3);
\inst33|ALT_INV_Add0~73_combout\ <= NOT \inst33|Add0~73_combout\;
\inst8|ALT_INV_valor_interno\(2) <= NOT \inst8|valor_interno\(2);
\inst33|ALT_INV_Add0~72_combout\ <= NOT \inst33|Add0~72_combout\;
\inst14|ALT_INV_valor_interno[1]~1_combout\ <= NOT \inst14|valor_interno[1]~1_combout\;
\inst14|ALT_INV_valor_interno[1]~0_combout\ <= NOT \inst14|valor_interno[1]~0_combout\;
\inst8|ALT_INV_valor_interno\(1) <= NOT \inst8|valor_interno\(1);
\inst33|ALT_INV_Add0~71_combout\ <= NOT \inst33|Add0~71_combout\;
\inst33|ALT_INV_Add0~70_combout\ <= NOT \inst33|Add0~70_combout\;
\inst4|ALT_INV_sr~0_combout\ <= NOT \inst4|sr~0_combout\;
\inst700|ALT_INV_valor_interno[3]~0_combout\ <= NOT \inst700|valor_interno[3]~0_combout\;
\inst700666|inst|ALT_INV_Equal0~1_combout\ <= NOT \inst700666|inst|Equal0~1_combout\;
\inst4|ALT_INV_selsrc[0]~3_combout\ <= NOT \inst4|selsrc[0]~3_combout\;
\inst202|ALT_INV_Mux17~0_combout\ <= NOT \inst202|Mux17~0_combout\;
\inst4|ALT_INV_selsrc[1]~2_combout\ <= NOT \inst4|selsrc[1]~2_combout\;
\inst4|ALT_INV_selsrc[1]~1_combout\ <= NOT \inst4|selsrc[1]~1_combout\;
\inst4|ALT_INV_selsrc[1]~0_combout\ <= NOT \inst4|selsrc[1]~0_combout\;
\inst700666|inst|ALT_INV_Equal0~0_combout\ <= NOT \inst700666|inst|Equal0~0_combout\;
\inst4|ALT_INV_selregr~7_combout\ <= NOT \inst4|selregr~7_combout\;
\inst4|ALT_INV_selregr~6_combout\ <= NOT \inst4|selregr~6_combout\;
\inst4|ALT_INV_selregr[3]~5_combout\ <= NOT \inst4|selregr[3]~5_combout\;
\inst4|ALT_INV_selregr[1]~4_combout\ <= NOT \inst4|selregr[1]~4_combout\;
\inst4|ALT_INV_selregr[0]~3_combout\ <= NOT \inst4|selregr[0]~3_combout\;
\inst4|ALT_INV_Equal7~0_combout\ <= NOT \inst4|Equal7~0_combout\;
\inst33|ALT_INV_Add0~69_combout\ <= NOT \inst33|Add0~69_combout\;
\inst4|ALT_INV_Equal13~0_combout\ <= NOT \inst4|Equal13~0_combout\;
\inst4|ALT_INV_Equal14~1_combout\ <= NOT \inst4|Equal14~1_combout\;
\inst16|ALT_INV_vf~q\ <= NOT \inst16|vf~q\;
\inst16|ALT_INV_selbranch\(1) <= NOT \inst16|selbranch\(1);
\inst4|ALT_INV_selregr[1]~2_combout\ <= NOT \inst4|selregr[1]~2_combout\;
\inst4|ALT_INV_selregr[1]~1_combout\ <= NOT \inst4|selregr[1]~1_combout\;
\inst4|ALT_INV_selregr[1]~0_combout\ <= NOT \inst4|selregr[1]~0_combout\;
\inst33|ALT_INV_opres[16]~36_combout\ <= NOT \inst33|opres[16]~36_combout\;
\inst33|ALT_INV_opres[0]~35_combout\ <= NOT \inst33|opres[0]~35_combout\;
\inst33|ALT_INV_opres[0]~34_combout\ <= NOT \inst33|opres[0]~34_combout\;
\inst14|ALT_INV_valor_interno\(0) <= NOT \inst14|valor_interno\(0);
\inst33|ALT_INV_opres[14]~33_combout\ <= NOT \inst33|opres[14]~33_combout\;
\inst33|ALT_INV_opres[14]~32_combout\ <= NOT \inst33|opres[14]~32_combout\;
\inst33|ALT_INV_opres[13]~31_combout\ <= NOT \inst33|opres[13]~31_combout\;
\inst33|ALT_INV_opres[13]~30_combout\ <= NOT \inst33|opres[13]~30_combout\;
\inst33|ALT_INV_opres[11]~29_combout\ <= NOT \inst33|opres[11]~29_combout\;
\inst33|ALT_INV_opres[11]~28_combout\ <= NOT \inst33|opres[11]~28_combout\;
\inst33|ALT_INV_opres[10]~27_combout\ <= NOT \inst33|opres[10]~27_combout\;
\inst14|ALT_INV_valor_interno[7]~DUPLICATE_q\ <= NOT \inst14|valor_interno[7]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[4]~DUPLICATE_q\ <= NOT \inst14|valor_interno[4]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[2]~DUPLICATE_q\ <= NOT \inst14|valor_interno[2]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[1]~DUPLICATE_q\ <= NOT \inst14|valor_interno[1]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[6]~DUPLICATE_q\ <= NOT \inst14|valor_interno[6]~DUPLICATE_q\;
\inst8|ALT_INV_valor_interno[16]~DUPLICATE_q\ <= NOT \inst8|valor_interno[16]~DUPLICATE_q\;
\inst8|ALT_INV_valor_interno[17]~DUPLICATE_q\ <= NOT \inst8|valor_interno[17]~DUPLICATE_q\;
\inst8|ALT_INV_valor_interno[18]~DUPLICATE_q\ <= NOT \inst8|valor_interno[18]~DUPLICATE_q\;
\inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\ <= NOT \inst8|valor_interno[19]~DUPLICATE_q\;
\inst8|ALT_INV_valor_interno[21]~DUPLICATE_q\ <= NOT \inst8|valor_interno[21]~DUPLICATE_q\;
\inst8|ALT_INV_valor_interno[22]~DUPLICATE_q\ <= NOT \inst8|valor_interno[22]~DUPLICATE_q\;
\inst700666|ACCB|ALT_INV_valor_interno[1]~DUPLICATE_q\ <= NOT \inst700666|ACCB|valor_interno[1]~DUPLICATE_q\;
\inst700666|ACCB|ALT_INV_valor_interno[8]~DUPLICATE_q\ <= NOT \inst700666|ACCB|valor_interno[8]~DUPLICATE_q\;
\inst700666|ACCB|ALT_INV_valor_interno[11]~DUPLICATE_q\ <= NOT \inst700666|ACCB|valor_interno[11]~DUPLICATE_q\;
\inst700666|ACCB|ALT_INV_valor_interno[12]~DUPLICATE_q\ <= NOT \inst700666|ACCB|valor_interno[12]~DUPLICATE_q\;
\inst700666|ACCB|ALT_INV_valor_interno[15]~DUPLICATE_q\ <= NOT \inst700666|ACCB|valor_interno[15]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\ <= NOT \inst700|valor_interno[10]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\ <= NOT \inst700|valor_interno[8]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\ <= NOT \inst700|valor_interno[3]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[0]~DUPLICATE_q\ <= NOT \inst700|valor_interno[0]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\ <= NOT \inst700|valor_interno[13]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[12]~DUPLICATE_q\ <= NOT \inst14|valor_interno[12]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[5]~DUPLICATE_q\ <= NOT \inst700|valor_interno[5]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\ <= NOT \inst700|valor_interno[15]~DUPLICATE_q\;
\inst34|ALT_INV_valor_interno[5]~DUPLICATE_q\ <= NOT \inst34|valor_interno[5]~DUPLICATE_q\;
\inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\ <= NOT \inst34|valor_interno[4]~DUPLICATE_q\;
\inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\ <= NOT \inst34|valor_interno[2]~DUPLICATE_q\;
\inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\ <= NOT \inst34|valor_interno[0]~DUPLICATE_q\;
\ALT_INV_RELOJ~inputCLKENA0_outclk\ <= NOT \RELOJ~inputCLKENA0_outclk\;
\inst33|ALT_INV_opres\(16) <= NOT \inst33|opres\(16);
\inst33|ALT_INV_opres\(0) <= NOT \inst33|opres\(0);
\inst33|ALT_INV_opres\(14) <= NOT \inst33|opres\(14);
\inst33|ALT_INV_opres\(13) <= NOT \inst33|opres\(13);
\inst33|ALT_INV_opres\(11) <= NOT \inst33|opres\(11);
\inst33|ALT_INV_opres\(10) <= NOT \inst33|opres\(10);
\inst33|ALT_INV_opres\(9) <= NOT \inst33|opres\(9);
\inst33|ALT_INV_opres\(8) <= NOT \inst33|opres\(8);
\inst33|ALT_INV_opres\(7) <= NOT \inst33|opres\(7);
\inst33|ALT_INV_opres\(5) <= NOT \inst33|opres\(5);
\inst33|ALT_INV_opres\(4) <= NOT \inst33|opres\(4);
\inst33|ALT_INV_opres\(3) <= NOT \inst33|opres\(3);
\inst33|ALT_INV_opres\(2) <= NOT \inst33|opres\(2);
\inst33|ALT_INV_opres\(1) <= NOT \inst33|opres\(1);
\inst33|ALT_INV_opres\(12) <= NOT \inst33|opres\(12);
\inst33|ALT_INV_opres\(6) <= NOT \inst33|opres\(6);
\inst33|ALT_INV_opres\(15) <= NOT \inst33|opres\(15);
\inst|ALT_INV_hi~combout\ <= NOT \inst|hi~combout\;
\inst|ALT_INV_ci~combout\ <= NOT \inst|ci~combout\;
\inst|ALT_INV_vi~combout\ <= NOT \inst|vi~combout\;
\inst|ALT_INV_zi~combout\ <= NOT \inst|zi~combout\;
\inst|ALT_INV_ni~combout\ <= NOT \inst|ni~combout\;
\inst202|ALT_INV_Mux17~2_combout\ <= NOT \inst202|Mux17~2_combout\;

-- Location: IOOBUF_X89_Y6_N22
\n~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|valor_interno~q\,
	devoe => ww_devoe,
	o => ww_n);

-- Location: IOOBUF_X60_Y0_N19
\z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|valor_interno~q\,
	devoe => ww_devoe,
	o => ww_z);

-- Location: IOOBUF_X50_Y0_N76
\v~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst103|valor_interno~q\,
	devoe => ww_devoe,
	o => ww_v);

-- Location: IOOBUF_X62_Y0_N19
\c~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst104|valor_interno~q\,
	devoe => ww_devoe,
	o => ww_c);

-- Location: IOOBUF_X54_Y0_N36
\h~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst105|valor_interno~q\,
	devoe => ww_devoe,
	o => ww_h);

-- Location: IOOBUF_X82_Y81_N93
\i~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst106|valor_interno~q\,
	devoe => ww_devoe,
	o => ww_i);

-- Location: IOOBUF_X66_Y0_N42
\ACCA_D[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(15),
	devoe => ww_devoe,
	o => ww_ACCA_D(15));

-- Location: IOOBUF_X66_Y0_N59
\ACCA_D[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(14),
	devoe => ww_devoe,
	o => ww_ACCA_D(14));

-- Location: IOOBUF_X58_Y0_N42
\ACCA_D[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(13),
	devoe => ww_devoe,
	o => ww_ACCA_D(13));

-- Location: IOOBUF_X89_Y4_N62
\ACCA_D[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(12),
	devoe => ww_devoe,
	o => ww_ACCA_D(12));

-- Location: IOOBUF_X89_Y4_N45
\ACCA_D[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(11),
	devoe => ww_devoe,
	o => ww_ACCA_D(11));

-- Location: IOOBUF_X89_Y4_N79
\ACCA_D[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(10),
	devoe => ww_devoe,
	o => ww_ACCA_D(10));

-- Location: IOOBUF_X66_Y0_N93
\ACCA_D[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(9),
	devoe => ww_devoe,
	o => ww_ACCA_D(9));

-- Location: IOOBUF_X89_Y4_N96
\ACCA_D[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(8),
	devoe => ww_devoe,
	o => ww_ACCA_D(8));

-- Location: IOOBUF_X62_Y0_N53
\ACCA_D[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(7),
	devoe => ww_devoe,
	o => ww_ACCA_D(7));

-- Location: IOOBUF_X68_Y0_N36
\ACCA_D[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(6),
	devoe => ww_devoe,
	o => ww_ACCA_D(6));

-- Location: IOOBUF_X52_Y0_N36
\ACCA_D[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(5),
	devoe => ww_devoe,
	o => ww_ACCA_D(5));

-- Location: IOOBUF_X64_Y0_N53
\ACCA_D[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(4),
	devoe => ww_devoe,
	o => ww_ACCA_D(4));

-- Location: IOOBUF_X64_Y0_N2
\ACCA_D[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(3),
	devoe => ww_devoe,
	o => ww_ACCA_D(3));

-- Location: IOOBUF_X89_Y6_N56
\ACCA_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(2),
	devoe => ww_devoe,
	o => ww_ACCA_D(2));

-- Location: IOOBUF_X66_Y0_N76
\ACCA_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(1),
	devoe => ww_devoe,
	o => ww_ACCA_D(1));

-- Location: IOOBUF_X62_Y0_N2
\ACCA_D[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(0),
	devoe => ww_devoe,
	o => ww_ACCA_D(0));

-- Location: IOOBUF_X68_Y0_N2
\ACCB_D[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno[15]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACCB_D(15));

-- Location: IOOBUF_X70_Y0_N2
\ACCB_D[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(14),
	devoe => ww_devoe,
	o => ww_ACCB_D(14));

-- Location: IOOBUF_X72_Y0_N36
\ACCB_D[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(13),
	devoe => ww_devoe,
	o => ww_ACCB_D(13));

-- Location: IOOBUF_X89_Y6_N5
\ACCB_D[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACCB_D(12));

-- Location: IOOBUF_X70_Y0_N53
\ACCB_D[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACCB_D(11));

-- Location: IOOBUF_X72_Y0_N19
\ACCB_D[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(10),
	devoe => ww_devoe,
	o => ww_ACCB_D(10));

-- Location: IOOBUF_X70_Y0_N19
\ACCB_D[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(9),
	devoe => ww_devoe,
	o => ww_ACCB_D(9));

-- Location: IOOBUF_X70_Y0_N36
\ACCB_D[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(8),
	devoe => ww_devoe,
	o => ww_ACCB_D(8));

-- Location: IOOBUF_X68_Y0_N53
\ACCB_D[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(7),
	devoe => ww_devoe,
	o => ww_ACCB_D(7));

-- Location: IOOBUF_X72_Y0_N2
\ACCB_D[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(6),
	devoe => ww_devoe,
	o => ww_ACCB_D(6));

-- Location: IOOBUF_X58_Y0_N93
\ACCB_D[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(5),
	devoe => ww_devoe,
	o => ww_ACCB_D(5));

-- Location: IOOBUF_X56_Y0_N53
\ACCB_D[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(4),
	devoe => ww_devoe,
	o => ww_ACCB_D(4));

-- Location: IOOBUF_X56_Y0_N19
\ACCB_D[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(3),
	devoe => ww_devoe,
	o => ww_ACCB_D(3));

-- Location: IOOBUF_X58_Y0_N59
\ACCB_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(2),
	devoe => ww_devoe,
	o => ww_ACCB_D(2));

-- Location: IOOBUF_X62_Y0_N36
\ACCB_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACCB_D(1));

-- Location: IOOBUF_X60_Y0_N36
\ACCB_D[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(0),
	devoe => ww_devoe,
	o => ww_ACCB_D(0));

-- Location: IOOBUF_X58_Y0_N76
\AUX_D[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(15),
	devoe => ww_devoe,
	o => ww_AUX_D(15));

-- Location: IOOBUF_X52_Y0_N53
\AUX_D[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(14),
	devoe => ww_devoe,
	o => ww_AUX_D(14));

-- Location: IOOBUF_X40_Y0_N19
\AUX_D[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(13),
	devoe => ww_devoe,
	o => ww_AUX_D(13));

-- Location: IOOBUF_X50_Y0_N42
\AUX_D[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(12),
	devoe => ww_devoe,
	o => ww_AUX_D(12));

-- Location: IOOBUF_X50_Y0_N59
\AUX_D[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(11),
	devoe => ww_devoe,
	o => ww_AUX_D(11));

-- Location: IOOBUF_X68_Y0_N19
\AUX_D[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(10),
	devoe => ww_devoe,
	o => ww_AUX_D(10));

-- Location: IOOBUF_X52_Y0_N2
\AUX_D[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(9),
	devoe => ww_devoe,
	o => ww_AUX_D(9));

-- Location: IOOBUF_X52_Y0_N19
\AUX_D[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(8),
	devoe => ww_devoe,
	o => ww_AUX_D(8));

-- Location: IOOBUF_X54_Y0_N19
\AUX_D[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(7),
	devoe => ww_devoe,
	o => ww_AUX_D(7));

-- Location: IOOBUF_X50_Y0_N93
\AUX_D[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(6),
	devoe => ww_devoe,
	o => ww_AUX_D(6));

-- Location: IOOBUF_X56_Y0_N2
\AUX_D[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(5),
	devoe => ww_devoe,
	o => ww_AUX_D(5));

-- Location: IOOBUF_X64_Y0_N19
\AUX_D[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(4),
	devoe => ww_devoe,
	o => ww_AUX_D(4));

-- Location: IOOBUF_X54_Y0_N53
\AUX_D[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(3),
	devoe => ww_devoe,
	o => ww_AUX_D(3));

-- Location: IOOBUF_X72_Y0_N53
\AUX_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(2),
	devoe => ww_devoe,
	o => ww_AUX_D(2));

-- Location: IOOBUF_X62_Y81_N53
\AUX_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(1),
	devoe => ww_devoe,
	o => ww_AUX_D(1));

-- Location: IOOBUF_X64_Y0_N36
\AUX_D[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(0),
	devoe => ww_devoe,
	o => ww_AUX_D(0));

-- Location: IOOBUF_X4_Y0_N19
\instruccion[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruccion(15));

-- Location: IOOBUF_X64_Y81_N53
\instruccion[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruccion(14));

-- Location: IOOBUF_X80_Y81_N2
\instruccion[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruccion(13));

-- Location: IOOBUF_X89_Y37_N56
\instruccion[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruccion(12));

-- Location: IOOBUF_X50_Y81_N42
\instruccion[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruccion(11));

-- Location: IOOBUF_X78_Y81_N19
\instruccion[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruccion(10));

-- Location: IOOBUF_X54_Y81_N36
\instruccion[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruccion(9));

-- Location: IOOBUF_X50_Y81_N76
\instruccion[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruccion(8));

-- Location: IOOBUF_X38_Y0_N36
\instruccion[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno\(23),
	devoe => ww_devoe,
	o => ww_instruccion(7));

-- Location: IOOBUF_X60_Y0_N53
\instruccion[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno[22]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_instruccion(6));

-- Location: IOOBUF_X56_Y0_N36
\instruccion[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno[21]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_instruccion(5));

-- Location: IOOBUF_X40_Y0_N53
\instruccion[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno\(20),
	devoe => ww_devoe,
	o => ww_instruccion(4));

-- Location: IOOBUF_X40_Y0_N36
\instruccion[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno\(19),
	devoe => ww_devoe,
	o => ww_instruccion(3));

-- Location: IOOBUF_X89_Y6_N39
\instruccion[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno\(18),
	devoe => ww_devoe,
	o => ww_instruccion(2));

-- Location: IOOBUF_X54_Y0_N2
\instruccion[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno[17]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_instruccion(1));

-- Location: IOOBUF_X60_Y0_N2
\instruccion[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno\(16),
	devoe => ww_devoe,
	o => ww_instruccion(0));

-- Location: IOOBUF_X82_Y81_N42
\IX_D[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(15));

-- Location: IOOBUF_X38_Y81_N36
\IX_D[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(14));

-- Location: IOOBUF_X66_Y81_N59
\IX_D[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(13));

-- Location: IOOBUF_X52_Y81_N53
\IX_D[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(12));

-- Location: IOOBUF_X8_Y0_N53
\IX_D[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(11));

-- Location: IOOBUF_X36_Y81_N2
\IX_D[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(10));

-- Location: IOOBUF_X34_Y0_N59
\IX_D[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(9));

-- Location: IOOBUF_X76_Y81_N2
\IX_D[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(8));

-- Location: IOOBUF_X70_Y81_N2
\IX_D[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(7));

-- Location: IOOBUF_X38_Y81_N19
\IX_D[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(6));

-- Location: IOOBUF_X84_Y81_N36
\IX_D[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(5));

-- Location: IOOBUF_X89_Y8_N22
\IX_D[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(4));

-- Location: IOOBUF_X26_Y81_N59
\IX_D[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(3));

-- Location: IOOBUF_X34_Y0_N42
\IX_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(2));

-- Location: IOOBUF_X84_Y81_N19
\IX_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(1));

-- Location: IOOBUF_X70_Y81_N19
\IX_D[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IX_D(0));

-- Location: IOOBUF_X34_Y0_N76
\IY_D[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(15));

-- Location: IOOBUF_X72_Y81_N53
\IY_D[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(14));

-- Location: IOOBUF_X2_Y0_N42
\IY_D[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(13));

-- Location: IOOBUF_X86_Y81_N2
\IY_D[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(12));

-- Location: IOOBUF_X26_Y0_N93
\IY_D[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(11));

-- Location: IOOBUF_X40_Y81_N53
\IY_D[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(10));

-- Location: IOOBUF_X34_Y81_N59
\IY_D[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(9));

-- Location: IOOBUF_X28_Y81_N53
\IY_D[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(8));

-- Location: IOOBUF_X32_Y0_N53
\IY_D[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(7));

-- Location: IOOBUF_X30_Y81_N36
\IY_D[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(6));

-- Location: IOOBUF_X32_Y81_N53
\IY_D[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(5));

-- Location: IOOBUF_X54_Y81_N53
\IY_D[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(4));

-- Location: IOOBUF_X28_Y0_N36
\IY_D[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(3));

-- Location: IOOBUF_X50_Y81_N93
\IY_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(2));

-- Location: IOOBUF_X80_Y81_N36
\IY_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(1));

-- Location: IOOBUF_X30_Y0_N53
\IY_D[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_IY_D(0));

-- Location: IOOBUF_X74_Y81_N42
\SP_D[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(15));

-- Location: IOOBUF_X26_Y81_N76
\SP_D[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(14));

-- Location: IOOBUF_X60_Y81_N36
\SP_D[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(13));

-- Location: IOOBUF_X36_Y0_N19
\SP_D[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(12));

-- Location: IOOBUF_X40_Y0_N2
\SP_D[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(11));

-- Location: IOOBUF_X4_Y0_N2
\SP_D[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(10));

-- Location: IOOBUF_X72_Y81_N36
\SP_D[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(9));

-- Location: IOOBUF_X28_Y81_N2
\SP_D[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(8));

-- Location: IOOBUF_X76_Y81_N53
\SP_D[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(7));

-- Location: IOOBUF_X62_Y81_N36
\SP_D[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(6));

-- Location: IOOBUF_X28_Y81_N19
\SP_D[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(5));

-- Location: IOOBUF_X84_Y81_N53
\SP_D[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(4));

-- Location: IOOBUF_X36_Y81_N53
\SP_D[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(3));

-- Location: IOOBUF_X56_Y81_N19
\SP_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(2));

-- Location: IOOBUF_X58_Y81_N76
\SP_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(1));

-- Location: IOOBUF_X89_Y9_N56
\SP_D[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SP_D(0));

-- Location: IOIBUF_X89_Y35_N61
\RELOJ~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RELOJ,
	o => \RELOJ~input_o\);

-- Location: CLKCTRL_G10
\RELOJ~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \RELOJ~input_o\,
	outclk => \RELOJ~inputCLKENA0_outclk\);

-- Location: LABCELL_X63_Y6_N21
\inst34|valor_interno[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[0]~_wirecell_combout\ = !\inst34|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst34|ALT_INV_valor_interno\(0),
	combout => \inst34|valor_interno[0]~_wirecell_combout\);

-- Location: IOIBUF_X89_Y35_N44
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G8
\RESET~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~input_o\,
	outclk => \RESET~inputCLKENA0_outclk\);

-- Location: LABCELL_X63_Y6_N0
\inst7|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~1_sumout\ = SUM(( \inst34|valor_interno\(1) ) + ( \inst34|valor_interno[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \inst7|Add0~2\ = CARRY(( \inst34|valor_interno\(1) ) + ( \inst34|valor_interno[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	datad => \inst34|ALT_INV_valor_interno\(1),
	cin => GND,
	sumout => \inst7|Add0~1_sumout\,
	cout => \inst7|Add0~2\);

-- Location: LABCELL_X63_Y6_N3
\inst7|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~5_sumout\ = SUM(( \inst34|valor_interno\(2) ) + ( GND ) + ( \inst7|Add0~2\ ))
-- \inst7|Add0~6\ = CARRY(( \inst34|valor_interno\(2) ) + ( GND ) + ( \inst7|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst34|ALT_INV_valor_interno\(2),
	cin => \inst7|Add0~2\,
	sumout => \inst7|Add0~5_sumout\,
	cout => \inst7|Add0~6\);

-- Location: LABCELL_X63_Y6_N6
\inst7|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~17_sumout\ = SUM(( \inst34|valor_interno\(3) ) + ( GND ) + ( \inst7|Add0~6\ ))
-- \inst7|Add0~18\ = CARRY(( \inst34|valor_interno\(3) ) + ( GND ) + ( \inst7|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst34|ALT_INV_valor_interno\(3),
	cin => \inst7|Add0~6\,
	sumout => \inst7|Add0~17_sumout\,
	cout => \inst7|Add0~18\);

-- Location: LABCELL_X63_Y6_N9
\inst7|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~9_sumout\ = SUM(( \inst34|valor_interno\(4) ) + ( GND ) + ( \inst7|Add0~18\ ))
-- \inst7|Add0~10\ = CARRY(( \inst34|valor_interno\(4) ) + ( GND ) + ( \inst7|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst34|ALT_INV_valor_interno\(4),
	cin => \inst7|Add0~18\,
	sumout => \inst7|Add0~9_sumout\,
	cout => \inst7|Add0~10\);

-- Location: LABCELL_X63_Y6_N36
\inst1|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux13~1_combout\ = ( \inst34|valor_interno\(0) & ( \inst34|valor_interno\(4) & ( (\inst34|valor_interno\(2) & (!\inst34|valor_interno\(3) & !\inst34|valor_interno\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(2),
	datab => \inst34|ALT_INV_valor_interno\(3),
	datac => \inst34|ALT_INV_valor_interno\(1),
	datae => \inst34|ALT_INV_valor_interno\(0),
	dataf => \inst34|ALT_INV_valor_interno\(4),
	combout => \inst1|Mux13~1_combout\);

-- Location: FF_X63_Y6_N37
\inst8|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst1|Mux13~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(1));

-- Location: FF_X63_Y6_N4
\inst34|valor_interno[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst7|Add0~5_sumout\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno[2]~DUPLICATE_q\);

-- Location: FF_X63_Y6_N10
\inst34|valor_interno[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst7|Add0~9_sumout\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno[4]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y6_N12
\inst1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux14~0_combout\ = ( \inst34|valor_interno[2]~DUPLICATE_q\ & ( \inst34|valor_interno[4]~DUPLICATE_q\ & ( (\inst34|valor_interno\(0) & (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(3) & !\inst34|valor_interno[5]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst34|valor_interno[2]~DUPLICATE_q\ & ( \inst34|valor_interno[4]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(0) & (\inst34|valor_interno\(1) & (!\inst34|valor_interno\(3) & !\inst34|valor_interno[5]~DUPLICATE_q\))) ) ) ) # ( 
-- \inst34|valor_interno[2]~DUPLICATE_q\ & ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( (\inst34|valor_interno\(1) & (!\inst34|valor_interno[5]~DUPLICATE_q\ & (!\inst34|valor_interno\(0) $ (\inst34|valor_interno\(3))))) ) ) ) # ( 
-- !\inst34|valor_interno[2]~DUPLICATE_q\ & ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(3) & (!\inst34|valor_interno[5]~DUPLICATE_q\ & (!\inst34|valor_interno\(0) $ (\inst34|valor_interno\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000001000010000000000100000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(0),
	datab => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno\(3),
	datad => \inst34|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datae => \inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	combout => \inst1|Mux14~0_combout\);

-- Location: FF_X62_Y6_N14
\inst8|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst1|Mux14~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(17));

-- Location: FF_X61_Y6_N55
\inst8|valor_interno[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst1|Mux15~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno[16]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y6_N33
\inst4|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = ( \inst8|valor_interno[16]~DUPLICATE_q\ & ( (!\inst8|valor_interno[18]~DUPLICATE_q\ & (!\inst8|valor_interno\(17) & !\inst8|valor_interno[19]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[18]~DUPLICATE_q\,
	datac => \inst8|ALT_INV_valor_interno\(17),
	datad => \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\,
	dataf => \inst8|ALT_INV_valor_interno[16]~DUPLICATE_q\,
	combout => \inst4|Equal2~0_combout\);

-- Location: LABCELL_X60_Y6_N24
\inst1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = ( \inst34|valor_interno[4]~DUPLICATE_q\ & ( !\inst34|valor_interno\(5) & ( (!\inst34|valor_interno\(1) & (\inst34|valor_interno\(0) & (!\inst34|valor_interno[2]~DUPLICATE_q\ & !\inst34|valor_interno\(3)))) ) ) ) # ( 
-- !\inst34|valor_interno[4]~DUPLICATE_q\ & ( !\inst34|valor_interno\(5) & ( (!\inst34|valor_interno\(3) & (!\inst34|valor_interno\(1) $ (((\inst34|valor_interno[2]~DUPLICATE_q\) # (\inst34|valor_interno\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010100000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(1),
	datab => \inst34|ALT_INV_valor_interno\(0),
	datac => \inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	datad => \inst34|ALT_INV_valor_interno\(3),
	datae => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(5),
	combout => \inst1|Mux8~0_combout\);

-- Location: FF_X61_Y6_N20
\inst8|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst1|Mux8~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(23));

-- Location: LABCELL_X61_Y6_N18
\inst1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = ( !\inst34|valor_interno[5]~DUPLICATE_q\ & ( \inst34|valor_interno\(0) & ( (!\inst34|valor_interno\(3) & (!\inst34|valor_interno\(1) & \inst34|valor_interno\(4))) ) ) ) # ( !\inst34|valor_interno[5]~DUPLICATE_q\ & ( 
-- !\inst34|valor_interno\(0) & ( (\inst34|valor_interno\(3) & (!\inst34|valor_interno\(1) & (\inst34|valor_interno[2]~DUPLICATE_q\ & !\inst34|valor_interno\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(3),
	datab => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	datad => \inst34|ALT_INV_valor_interno\(4),
	datae => \inst34|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(0),
	combout => \inst1|Mux9~0_combout\);

-- Location: FF_X61_Y6_N53
\inst8|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst1|Mux9~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(22));

-- Location: FF_X61_Y6_N5
\inst8|valor_interno[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst1|Mux10~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno[21]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y6_N6
\inst4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = ( \inst8|valor_interno\(20) & ( (!\inst8|valor_interno\(23) & (!\inst8|valor_interno\(22) & !\inst8|valor_interno[21]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(23),
	datac => \inst8|ALT_INV_valor_interno\(22),
	datad => \inst8|ALT_INV_valor_interno[21]~DUPLICATE_q\,
	dataf => \inst8|ALT_INV_valor_interno\(20),
	combout => \inst4|Equal0~0_combout\);

-- Location: FF_X62_Y6_N13
\inst8|valor_interno[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst1|Mux14~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno[17]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y6_N30
\inst4|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal8~1_combout\ = ( \inst8|valor_interno\(20) & ( \inst8|valor_interno\(22) & ( (!\inst8|valor_interno\(23) & (!\inst8|valor_interno\(21) & (\inst8|valor_interno[19]~DUPLICATE_q\ & \inst8|valor_interno[18]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(23),
	datab => \inst8|ALT_INV_valor_interno\(21),
	datac => \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\,
	datad => \inst8|ALT_INV_valor_interno[18]~DUPLICATE_q\,
	datae => \inst8|ALT_INV_valor_interno\(20),
	dataf => \inst8|ALT_INV_valor_interno\(22),
	combout => \inst4|Equal8~1_combout\);

-- Location: LABCELL_X61_Y6_N0
\inst4|selregr[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[1]~0_combout\ = ( \inst8|valor_interno[17]~DUPLICATE_q\ & ( \inst4|Equal8~1_combout\ & ( (\inst4|Equal2~0_combout\ & \inst4|Equal0~0_combout\) ) ) ) # ( !\inst8|valor_interno[17]~DUPLICATE_q\ & ( \inst4|Equal8~1_combout\ & ( 
-- (!\inst8|valor_interno\(16)) # ((\inst4|Equal2~0_combout\ & \inst4|Equal0~0_combout\)) ) ) ) # ( \inst8|valor_interno[17]~DUPLICATE_q\ & ( !\inst4|Equal8~1_combout\ & ( (\inst4|Equal2~0_combout\ & \inst4|Equal0~0_combout\) ) ) ) # ( 
-- !\inst8|valor_interno[17]~DUPLICATE_q\ & ( !\inst4|Equal8~1_combout\ & ( (\inst4|Equal2~0_combout\ & \inst4|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111110101010101011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datac => \inst4|ALT_INV_Equal2~0_combout\,
	datad => \inst4|ALT_INV_Equal0~0_combout\,
	datae => \inst8|ALT_INV_valor_interno[17]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Equal8~1_combout\,
	combout => \inst4|selregr[1]~0_combout\);

-- Location: LABCELL_X61_Y6_N27
\inst4|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal3~0_combout\ = ( \inst4|Equal0~0_combout\ & ( (!\inst8|valor_interno\(16) & (!\inst8|valor_interno\(17) & (\inst8|valor_interno[18]~DUPLICATE_q\ & \inst8|valor_interno[19]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datab => \inst8|ALT_INV_valor_interno\(17),
	datac => \inst8|ALT_INV_valor_interno[18]~DUPLICATE_q\,
	datad => \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Equal0~0_combout\,
	combout => \inst4|Equal3~0_combout\);

-- Location: FF_X61_Y6_N52
\inst8|valor_interno[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst1|Mux9~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno[22]~DUPLICATE_q\);

-- Location: FF_X62_Y6_N55
\inst8|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst1|Mux13~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(18));

-- Location: LABCELL_X62_Y6_N6
\inst4|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal6~0_combout\ = ( \inst8|valor_interno\(20) & ( \inst8|valor_interno\(23) & ( (!\inst8|valor_interno[19]~DUPLICATE_q\ & (\inst8|valor_interno\(17) & (\inst8|valor_interno[16]~DUPLICATE_q\ & \inst8|valor_interno\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\,
	datab => \inst8|ALT_INV_valor_interno\(17),
	datac => \inst8|ALT_INV_valor_interno[16]~DUPLICATE_q\,
	datad => \inst8|ALT_INV_valor_interno\(18),
	datae => \inst8|ALT_INV_valor_interno\(20),
	dataf => \inst8|ALT_INV_valor_interno\(23),
	combout => \inst4|Equal6~0_combout\);

-- Location: LABCELL_X62_Y6_N27
\inst4|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal7~0_combout\ = ( \inst4|Equal6~0_combout\ & ( (\inst8|valor_interno[22]~DUPLICATE_q\ & !\inst8|valor_interno\(21)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[22]~DUPLICATE_q\,
	datac => \inst8|ALT_INV_valor_interno\(21),
	dataf => \inst4|ALT_INV_Equal6~0_combout\,
	combout => \inst4|Equal7~0_combout\);

-- Location: LABCELL_X61_Y6_N9
\inst4|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal2~1_combout\ = ( \inst8|valor_interno\(22) & ( (\inst8|valor_interno\(23) & (\inst8|valor_interno\(20) & !\inst8|valor_interno[21]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(23),
	datac => \inst8|ALT_INV_valor_interno\(20),
	datad => \inst8|ALT_INV_valor_interno[21]~DUPLICATE_q\,
	dataf => \inst8|ALT_INV_valor_interno\(22),
	combout => \inst4|Equal2~1_combout\);

-- Location: LABCELL_X61_Y5_N21
\inst4|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal2~2_combout\ = ( \inst4|Equal2~1_combout\ & ( \inst4|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_Equal2~0_combout\,
	dataf => \inst4|ALT_INV_Equal2~1_combout\,
	combout => \inst4|Equal2~2_combout\);

-- Location: LABCELL_X60_Y6_N18
\inst4|selregr[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[0]~3_combout\ = ( \inst4|Equal2~2_combout\ & ( !\inst4|Equal0~2_combout\ ) ) # ( !\inst4|Equal2~2_combout\ & ( !\inst4|Equal0~2_combout\ $ (((!\inst4|selregr[1]~0_combout\ & (!\inst4|Equal3~0_combout\ & !\inst4|Equal7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011110000011110001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[1]~0_combout\,
	datab => \inst4|ALT_INV_Equal3~0_combout\,
	datac => \inst4|ALT_INV_Equal0~2_combout\,
	datad => \inst4|ALT_INV_Equal7~0_combout\,
	dataf => \inst4|ALT_INV_Equal2~2_combout\,
	combout => \inst4|selregr[0]~3_combout\);

-- Location: LABCELL_X61_Y6_N48
\inst4|memw~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|memw~0_combout\ = ( \inst8|valor_interno[17]~DUPLICATE_q\ & ( \inst4|Equal2~1_combout\ & ( (\inst8|valor_interno\(16) & (!\inst8|valor_interno[18]~DUPLICATE_q\ & (\inst8|valor_interno[19]~DUPLICATE_q\ & \inst4|Equal0~0_combout\))) ) ) ) # ( 
-- !\inst8|valor_interno[17]~DUPLICATE_q\ & ( \inst4|Equal2~1_combout\ & ( (\inst8|valor_interno\(16) & (!\inst8|valor_interno[18]~DUPLICATE_q\ & !\inst8|valor_interno[19]~DUPLICATE_q\)) ) ) ) # ( \inst8|valor_interno[17]~DUPLICATE_q\ & ( 
-- !\inst4|Equal2~1_combout\ & ( (\inst8|valor_interno\(16) & (!\inst8|valor_interno[18]~DUPLICATE_q\ & (\inst8|valor_interno[19]~DUPLICATE_q\ & \inst4|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010001000000010000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datab => \inst8|ALT_INV_valor_interno[18]~DUPLICATE_q\,
	datac => \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_Equal0~0_combout\,
	datae => \inst8|ALT_INV_valor_interno[17]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Equal2~1_combout\,
	combout => \inst4|memw~0_combout\);

-- Location: LABCELL_X62_Y6_N18
\inst4|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal4~0_combout\ = ( \inst8|valor_interno\(23) & ( (!\inst8|valor_interno[19]~DUPLICATE_q\ & (\inst8|valor_interno\(18) & (!\inst8|valor_interno[22]~DUPLICATE_q\ & !\inst8|valor_interno\(20)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\,
	datab => \inst8|ALT_INV_valor_interno\(18),
	datac => \inst8|ALT_INV_valor_interno[22]~DUPLICATE_q\,
	datad => \inst8|ALT_INV_valor_interno\(20),
	dataf => \inst8|ALT_INV_valor_interno\(23),
	combout => \inst4|Equal4~0_combout\);

-- Location: LABCELL_X61_Y6_N45
\inst4|selfalgs~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs~1_combout\ = ( \inst4|Equal6~0_combout\ & ( \inst4|Equal4~0_combout\ & ( (!\inst8|valor_interno\(21) & (((!\inst8|valor_interno\(16) & \inst8|valor_interno\(17))) # (\inst8|valor_interno\(22)))) # (\inst8|valor_interno\(21) & 
-- ((!\inst8|valor_interno\(22)) # ((\inst8|valor_interno\(16) & !\inst8|valor_interno\(17))))) ) ) ) # ( !\inst4|Equal6~0_combout\ & ( \inst4|Equal4~0_combout\ & ( (!\inst8|valor_interno\(16) & (\inst8|valor_interno\(17) & !\inst8|valor_interno\(21))) # 
-- (\inst8|valor_interno\(16) & (!\inst8|valor_interno\(17) & \inst8|valor_interno\(21))) ) ) ) # ( \inst4|Equal6~0_combout\ & ( !\inst4|Equal4~0_combout\ & ( !\inst8|valor_interno\(21) $ (!\inst8|valor_interno\(22)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000100100001001000010111111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datab => \inst8|ALT_INV_valor_interno\(17),
	datac => \inst8|ALT_INV_valor_interno\(21),
	datad => \inst8|ALT_INV_valor_interno\(22),
	datae => \inst4|ALT_INV_Equal6~0_combout\,
	dataf => \inst4|ALT_INV_Equal4~0_combout\,
	combout => \inst4|selfalgs~1_combout\);

-- Location: LABCELL_X60_Y6_N15
\inst4|selregr[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[3]~5_combout\ = ( !\inst4|selfalgs~1_combout\ & ( (!\inst4|memw~0_combout\ & (\inst4|Equal14~1_combout\ & !\inst4|Equal3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_memw~0_combout\,
	datac => \inst4|ALT_INV_Equal14~1_combout\,
	datad => \inst4|ALT_INV_Equal3~0_combout\,
	dataf => \inst4|ALT_INV_selfalgs~1_combout\,
	combout => \inst4|selregr[3]~5_combout\);

-- Location: LABCELL_X62_Y6_N21
\inst4|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = ( \inst8|valor_interno\(17) & ( !\inst8|valor_interno[18]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|ALT_INV_valor_interno[18]~DUPLICATE_q\,
	dataf => \inst8|ALT_INV_valor_interno\(17),
	combout => \inst4|Equal0~1_combout\);

-- Location: LABCELL_X61_Y6_N57
\inst4|selregr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[1]~1_combout\ = ( \inst4|Equal0~1_combout\ & ( \inst4|Equal8~0_combout\ & ( (!\inst8|valor_interno\(16) & (((\inst4|Equal0~0_combout\ & !\inst8|valor_interno[19]~DUPLICATE_q\)) # (\inst4|Equal11~0_combout\))) ) ) ) # ( 
-- !\inst4|Equal0~1_combout\ & ( \inst4|Equal8~0_combout\ & ( (!\inst8|valor_interno\(16) & \inst4|Equal11~0_combout\) ) ) ) # ( \inst4|Equal0~1_combout\ & ( !\inst4|Equal8~0_combout\ & ( (!\inst8|valor_interno\(16) & (\inst4|Equal0~0_combout\ & 
-- !\inst8|valor_interno[19]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000000000100010001000100010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datab => \inst4|ALT_INV_Equal11~0_combout\,
	datac => \inst4|ALT_INV_Equal0~0_combout\,
	datad => \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\,
	datae => \inst4|ALT_INV_Equal0~1_combout\,
	dataf => \inst4|ALT_INV_Equal8~0_combout\,
	combout => \inst4|selregr[1]~1_combout\);

-- Location: LABCELL_X60_Y6_N0
\inst4|selregr[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[1]~4_combout\ = ( !\inst4|selregr[1]~1_combout\ & ( !\inst4|selfalgs~1_combout\ & ( (!\inst4|selregr[1]~0_combout\ & (!\inst4|memw~0_combout\ & (!\inst4|Equal3~0_combout\ & \inst4|Equal14~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[1]~0_combout\,
	datab => \inst4|ALT_INV_memw~0_combout\,
	datac => \inst4|ALT_INV_Equal3~0_combout\,
	datad => \inst4|ALT_INV_Equal14~1_combout\,
	datae => \inst4|ALT_INV_selregr[1]~1_combout\,
	dataf => \inst4|ALT_INV_selfalgs~1_combout\,
	combout => \inst4|selregr[1]~4_combout\);

-- Location: LABCELL_X61_Y6_N12
\inst4|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal8~2_combout\ = ( \inst4|Equal8~1_combout\ & ( (!\inst8|valor_interno\(16) & !\inst8|valor_interno[17]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_valor_interno\(16),
	datad => \inst8|ALT_INV_valor_interno[17]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Equal8~1_combout\,
	combout => \inst4|Equal8~2_combout\);

-- Location: LABCELL_X61_Y5_N30
\inst4|selregr~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr~6_combout\ = ( \inst4|Equal6~0_combout\ & ( !\inst8|valor_interno[22]~DUPLICATE_q\ $ (!\inst8|valor_interno[21]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_valor_interno[22]~DUPLICATE_q\,
	datac => \inst8|ALT_INV_valor_interno[21]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Equal6~0_combout\,
	combout => \inst4|selregr~6_combout\);

-- Location: LABCELL_X61_Y5_N0
\inst4|selregr~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr~7_combout\ = ( !\inst4|Equal2~2_combout\ & ( !\inst4|selregr~6_combout\ & ( !\inst4|Equal8~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal8~2_combout\,
	datae => \inst4|ALT_INV_Equal2~2_combout\,
	dataf => \inst4|ALT_INV_selregr~6_combout\,
	combout => \inst4|selregr~7_combout\);

-- Location: LABCELL_X60_Y6_N51
\inst700666|inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst|Equal0~0_combout\ = ( \inst4|selregr~7_combout\ & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[3]~5_combout\ & !\inst4|selregr[1]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datac => \inst4|ALT_INV_selregr[3]~5_combout\,
	datad => \inst4|ALT_INV_selregr[1]~4_combout\,
	dataf => \inst4|ALT_INV_selregr~7_combout\,
	combout => \inst700666|inst|Equal0~0_combout\);

-- Location: LABCELL_X60_Y5_N54
\inst4|selregr[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[1]~2_combout\ = ( !\inst4|selfalgs~1_combout\ & ( !\inst4|selregr[1]~1_combout\ & ( (!\inst4|Equal3~0_combout\ & !\inst4|selregr[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Equal3~0_combout\,
	datac => \inst4|ALT_INV_selregr[1]~0_combout\,
	datae => \inst4|ALT_INV_selfalgs~1_combout\,
	dataf => \inst4|ALT_INV_selregr[1]~1_combout\,
	combout => \inst4|selregr[1]~2_combout\);

-- Location: LABCELL_X61_Y5_N9
\inst4|selsrc[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selsrc[1]~1_combout\ = ( !\inst4|Equal0~2_combout\ & ( !\inst4|selregr[1]~0_combout\ & ( (!\inst4|Equal3~0_combout\ & ((!\inst4|Equal6~0_combout\) # (!\inst8|valor_interno[21]~DUPLICATE_q\ $ (\inst8|valor_interno[22]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[21]~DUPLICATE_q\,
	datab => \inst8|ALT_INV_valor_interno[22]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_Equal3~0_combout\,
	datad => \inst4|ALT_INV_Equal6~0_combout\,
	datae => \inst4|ALT_INV_Equal0~2_combout\,
	dataf => \inst4|ALT_INV_selregr[1]~0_combout\,
	combout => \inst4|selsrc[1]~1_combout\);

-- Location: LABCELL_X66_Y5_N36
\inst14|valor_interno[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[1]~0_combout\ = ( \inst4|selregr[1]~2_combout\ & ( \inst4|selsrc[1]~1_combout\ & ( ((!\inst4|Equal0~2_combout\ & (!\inst4|Equal14~1_combout\ $ (!\inst4|Equal13~0_combout\)))) # (\inst4|Equal2~2_combout\) ) ) ) # ( 
-- !\inst4|selregr[1]~2_combout\ & ( \inst4|selsrc[1]~1_combout\ & ( \inst4|Equal2~2_combout\ ) ) ) # ( \inst4|selregr[1]~2_combout\ & ( !\inst4|selsrc[1]~1_combout\ & ( (!\inst4|Equal2~2_combout\ & ((!\inst4|Equal14~1_combout\ $ 
-- (!\inst4|Equal13~0_combout\)) # (\inst4|Equal0~2_combout\))) ) ) ) # ( !\inst4|selregr[1]~2_combout\ & ( !\inst4|selsrc[1]~1_combout\ & ( !\inst4|Equal2~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100010010001100110000110011001100110111101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal14~1_combout\,
	datab => \inst4|ALT_INV_Equal2~2_combout\,
	datac => \inst4|ALT_INV_Equal13~0_combout\,
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	datae => \inst4|ALT_INV_selregr[1]~2_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~1_combout\,
	combout => \inst14|valor_interno[1]~0_combout\);

-- Location: LABCELL_X61_Y5_N18
\inst14|valor_interno[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[1]~1_combout\ = ( \inst4|selregr[1]~2_combout\ & ( (!\inst4|Equal0~2_combout\ & ((!\inst4|Equal14~1_combout\) # (\inst4|Equal2~2_combout\))) ) ) # ( !\inst4|selregr[1]~2_combout\ & ( (\inst4|Equal2~2_combout\ & 
-- !\inst4|Equal0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Equal2~2_combout\,
	datac => \inst4|ALT_INV_Equal0~2_combout\,
	datad => \inst4|ALT_INV_Equal14~1_combout\,
	dataf => \inst4|ALT_INV_selregr[1]~2_combout\,
	combout => \inst14|valor_interno[1]~1_combout\);

-- Location: LABCELL_X61_Y5_N48
\inst4|selregw[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregw[0]~1_combout\ = ( \inst4|Equal0~2_combout\ & ( \inst8|valor_interno\(16) ) ) # ( \inst4|Equal0~2_combout\ & ( !\inst8|valor_interno\(16) ) ) # ( !\inst4|Equal0~2_combout\ & ( !\inst8|valor_interno\(16) & ( 
-- (!\inst8|valor_interno[21]~DUPLICATE_q\ & (\inst4|Equal4~0_combout\ & \inst8|valor_interno[17]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[21]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_Equal4~0_combout\,
	datac => \inst8|ALT_INV_valor_interno[17]~DUPLICATE_q\,
	datae => \inst4|ALT_INV_Equal0~2_combout\,
	dataf => \inst8|ALT_INV_valor_interno\(16),
	combout => \inst4|selregw[0]~1_combout\);

-- Location: FF_X61_Y5_N49
\inst16|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst4|selregw[0]~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selregw\(0));

-- Location: FF_X61_Y5_N53
\inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst16|selregw\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(0));

-- Location: LABCELL_X61_Y5_N12
\inst4|selregw~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregw~0_combout\ = ( \inst8|valor_interno\(16) & ( \inst8|valor_interno[21]~DUPLICATE_q\ & ( (((\inst4|Equal4~0_combout\ & !\inst8|valor_interno[17]~DUPLICATE_q\)) # (\inst4|Equal8~2_combout\)) # (\inst4|Equal3~0_combout\) ) ) ) # ( 
-- !\inst8|valor_interno\(16) & ( \inst8|valor_interno[21]~DUPLICATE_q\ & ( (\inst4|Equal8~2_combout\) # (\inst4|Equal3~0_combout\) ) ) ) # ( \inst8|valor_interno\(16) & ( !\inst8|valor_interno[21]~DUPLICATE_q\ & ( (\inst4|Equal8~2_combout\) # 
-- (\inst4|Equal3~0_combout\) ) ) ) # ( !\inst8|valor_interno\(16) & ( !\inst8|valor_interno[21]~DUPLICATE_q\ & ( (\inst4|Equal8~2_combout\) # (\inst4|Equal3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal3~0_combout\,
	datab => \inst4|ALT_INV_Equal4~0_combout\,
	datac => \inst4|ALT_INV_Equal8~2_combout\,
	datad => \inst8|ALT_INV_valor_interno[17]~DUPLICATE_q\,
	datae => \inst8|ALT_INV_valor_interno\(16),
	dataf => \inst8|ALT_INV_valor_interno[21]~DUPLICATE_q\,
	combout => \inst4|selregw~0_combout\);

-- Location: FF_X61_Y5_N13
\inst16|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst4|selregw~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selregw\(2));

-- Location: FF_X61_Y5_N16
\inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst16|selregw\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(2));

-- Location: LABCELL_X62_Y4_N18
\inst700666|inst1000|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal0~1_combout\ = ( \inst107|selregw\(2) & ( !\inst107|selregw\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst107|ALT_INV_selregw\(0),
	dataf => \inst107|ALT_INV_selregw\(2),
	combout => \inst700666|inst1000|Equal0~1_combout\);

-- Location: FF_X65_Y5_N11
\inst700666|ACCB|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(4));

-- Location: LABCELL_X61_Y6_N24
\inst4|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal6~1_combout\ = ( \inst8|valor_interno\(18) & ( (\inst8|valor_interno\(16) & (\inst8|valor_interno\(17) & \inst8|valor_interno\(23))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datab => \inst8|ALT_INV_valor_interno\(17),
	datac => \inst8|ALT_INV_valor_interno\(23),
	dataf => \inst8|ALT_INV_valor_interno\(18),
	combout => \inst4|Equal6~1_combout\);

-- Location: LABCELL_X61_Y6_N15
\inst4|selfalgs~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs~3_combout\ = ( \inst4|Equal8~0_combout\ & ( (!\inst8|valor_interno\(16) & (((\inst4|Equal14~0_combout\ & \inst4|Equal6~1_combout\)))) # (\inst8|valor_interno\(16) & (((\inst4|Equal14~0_combout\ & \inst4|Equal6~1_combout\)) # 
-- (\inst4|Equal11~0_combout\))) ) ) # ( !\inst4|Equal8~0_combout\ & ( (\inst4|Equal14~0_combout\ & \inst4|Equal6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datab => \inst4|ALT_INV_Equal11~0_combout\,
	datac => \inst4|ALT_INV_Equal14~0_combout\,
	datad => \inst4|ALT_INV_Equal6~1_combout\,
	dataf => \inst4|ALT_INV_Equal8~0_combout\,
	combout => \inst4|selfalgs~3_combout\);

-- Location: LABCELL_X61_Y5_N39
\inst4|memw~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|memw~1_combout\ = ( \inst4|selregr~6_combout\ & ( (!\inst4|memw~0_combout\ & ((!\inst4|selregr[1]~2_combout\) # (\inst4|selfalgs~3_combout\))) ) ) # ( !\inst4|selregr~6_combout\ & ( (\inst4|selregr[1]~2_combout\ & (!\inst4|memw~0_combout\ & 
-- \inst4|selfalgs~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[1]~2_combout\,
	datab => \inst4|ALT_INV_memw~0_combout\,
	datac => \inst4|ALT_INV_selfalgs~3_combout\,
	dataf => \inst4|ALT_INV_selregr~6_combout\,
	combout => \inst4|memw~1_combout\);

-- Location: FF_X61_Y5_N40
\inst16|memw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst4|memw~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|memw~q\);

-- Location: FF_X59_Y6_N23
\inst107|memw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst16|memw~q\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|memw~q\);

-- Location: MLABCELL_X59_Y6_N6
\inst4|selsrc[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selsrc[1]~0_combout\ = ( \inst4|Equal11~0_combout\ & ( \inst4|Equal8~0_combout\ & ( ((\inst4|Equal2~0_combout\ & \inst4|Equal2~1_combout\)) # (\inst8|valor_interno\(16)) ) ) ) # ( !\inst4|Equal11~0_combout\ & ( \inst4|Equal8~0_combout\ & ( 
-- (\inst4|Equal2~0_combout\ & \inst4|Equal2~1_combout\) ) ) ) # ( \inst4|Equal11~0_combout\ & ( !\inst4|Equal8~0_combout\ & ( (\inst4|Equal2~0_combout\ & \inst4|Equal2~1_combout\) ) ) ) # ( !\inst4|Equal11~0_combout\ & ( !\inst4|Equal8~0_combout\ & ( 
-- (\inst4|Equal2~0_combout\ & \inst4|Equal2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Equal2~0_combout\,
	datac => \inst8|ALT_INV_valor_interno\(16),
	datad => \inst4|ALT_INV_Equal2~1_combout\,
	datae => \inst4|ALT_INV_Equal11~0_combout\,
	dataf => \inst4|ALT_INV_Equal8~0_combout\,
	combout => \inst4|selsrc[1]~0_combout\);

-- Location: MLABCELL_X59_Y6_N21
\inst10|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~0_combout\ = ( \inst4|selsrc[1]~0_combout\ & ( (!\inst4|Equal0~2_combout\) # (\inst107|memw~q\) ) ) # ( !\inst4|selsrc[1]~0_combout\ & ( \inst107|memw~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal0~2_combout\,
	datad => \inst107|ALT_INV_memw~q\,
	dataf => \inst4|ALT_INV_selsrc[1]~0_combout\,
	combout => \inst10|Mux10~0_combout\);

-- Location: MLABCELL_X59_Y6_N57
\inst10|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~1_combout\ = ( \inst4|selsrc[1]~0_combout\ & ( (!\inst4|Equal0~2_combout\ & !\inst107|memw~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal0~2_combout\,
	datad => \inst107|ALT_INV_memw~q\,
	dataf => \inst4|ALT_INV_selsrc[1]~0_combout\,
	combout => \inst10|Mux10~1_combout\);

-- Location: LABCELL_X63_Y6_N30
\inst1|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux31~0_combout\ = ( \inst34|valor_interno\(0) & ( \inst34|valor_interno\(4) & ( (\inst34|valor_interno\(2) & (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(1) & !\inst34|valor_interno\(3)))) ) ) ) # ( !\inst34|valor_interno\(0) & ( 
-- !\inst34|valor_interno\(4) & ( (!\inst34|valor_interno\(2) & (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(1) & !\inst34|valor_interno\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(2),
	datab => \inst34|ALT_INV_valor_interno\(5),
	datac => \inst34|ALT_INV_valor_interno\(1),
	datad => \inst34|ALT_INV_valor_interno\(3),
	datae => \inst34|ALT_INV_valor_interno\(0),
	dataf => \inst34|ALT_INV_valor_interno\(4),
	combout => \inst1|Mux31~0_combout\);

-- Location: FF_X63_Y6_N31
\inst8|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst1|Mux31~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(0));

-- Location: LABCELL_X60_Y6_N6
\inst700666|inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst|Equal0~1_combout\ = ( \inst4|selregr~7_combout\ & ( (!\inst4|selregr[3]~5_combout\ & (!\inst4|selregr[0]~3_combout\ & !\inst4|selregr[1]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr[3]~5_combout\,
	datac => \inst4|ALT_INV_selregr[0]~3_combout\,
	datad => \inst4|ALT_INV_selregr[1]~4_combout\,
	dataf => \inst4|ALT_INV_selregr~7_combout\,
	combout => \inst700666|inst|Equal0~1_combout\);

-- Location: FF_X62_Y4_N29
\inst700666|ACCB|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(0));

-- Location: LABCELL_X60_Y6_N57
\inst4|sr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr~0_combout\ = ( \inst4|selfalgs~3_combout\ & ( \inst4|selfalgs~1_combout\ ) ) # ( !\inst4|selfalgs~3_combout\ & ( \inst4|selfalgs~1_combout\ ) ) # ( \inst4|selfalgs~3_combout\ & ( !\inst4|selfalgs~1_combout\ & ( (((!\inst4|selregr[1]~1_combout\) 
-- # (\inst4|Equal3~0_combout\)) # (\inst4|memw~0_combout\)) # (\inst4|selregr[1]~0_combout\) ) ) ) # ( !\inst4|selfalgs~3_combout\ & ( !\inst4|selfalgs~1_combout\ & ( ((\inst4|Equal3~0_combout\) # (\inst4|memw~0_combout\)) # (\inst4|selregr[1]~0_combout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[1]~0_combout\,
	datab => \inst4|ALT_INV_memw~0_combout\,
	datac => \inst4|ALT_INV_selregr[1]~1_combout\,
	datad => \inst4|ALT_INV_Equal3~0_combout\,
	datae => \inst4|ALT_INV_selfalgs~3_combout\,
	dataf => \inst4|ALT_INV_selfalgs~1_combout\,
	combout => \inst4|sr~0_combout\);

-- Location: LABCELL_X62_Y6_N45
\inst4|sels1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sels1~0_combout\ = ( \inst4|Equal4~0_combout\ & ( (!\inst8|valor_interno[16]~DUPLICATE_q\ & (!\inst8|valor_interno\(21) & \inst8|valor_interno[17]~DUPLICATE_q\)) # (\inst8|valor_interno[16]~DUPLICATE_q\ & (\inst8|valor_interno\(21) & 
-- !\inst8|valor_interno[17]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011000000110000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[16]~DUPLICATE_q\,
	datab => \inst8|ALT_INV_valor_interno\(21),
	datac => \inst8|ALT_INV_valor_interno[17]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Equal4~0_combout\,
	combout => \inst4|sels1~0_combout\);

-- Location: LABCELL_X61_Y6_N39
\inst4|sels1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sels1~1_combout\ = ( \inst4|sels1~0_combout\ & ( (!\inst4|memw~0_combout\ & (!\inst4|Equal3~0_combout\ & (!\inst4|selfalgs~1_combout\ & \inst4|Equal14~1_combout\))) ) ) # ( !\inst4|sels1~0_combout\ & ( (!\inst4|memw~0_combout\ & 
-- (!\inst4|Equal3~0_combout\ & ((\inst4|Equal14~1_combout\) # (\inst4|selfalgs~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_memw~0_combout\,
	datab => \inst4|ALT_INV_Equal3~0_combout\,
	datac => \inst4|ALT_INV_selfalgs~1_combout\,
	datad => \inst4|ALT_INV_Equal14~1_combout\,
	dataf => \inst4|ALT_INV_sels1~0_combout\,
	combout => \inst4|sels1~1_combout\);

-- Location: LABCELL_X60_Y6_N21
\inst11|Add0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~24_combout\ = ( \inst4|sels1~1_combout\ & ( !\inst8|valor_interno\(0) $ (!\inst4|sr~0_combout\) ) ) # ( !\inst4|sels1~1_combout\ & ( \inst4|sr~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_valor_interno\(0),
	datad => \inst4|ALT_INV_sr~0_combout\,
	dataf => \inst4|ALT_INV_sels1~1_combout\,
	combout => \inst11|Add0~24_combout\);

-- Location: LABCELL_X60_Y6_N30
\inst11|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~1_sumout\ = SUM(( !\inst11|Add0~24_combout\ ) + ( (\inst700666|inst|Equal0~0_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(0))) ) + ( !VCC ))
-- \inst11|Add0~2\ = CARRY(( !\inst11|Add0~24_combout\ ) + ( (\inst700666|inst|Equal0~0_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(0))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111111101100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(0),
	datad => \inst11|ALT_INV_Add0~24_combout\,
	cin => GND,
	sumout => \inst11|Add0~1_sumout\,
	cout => \inst11|Add0~2\);

-- Location: MLABCELL_X59_Y6_N3
\inst10|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux15~1_combout\ = ( \inst4|selsrc[1]~0_combout\ & ( (!\inst107|memw~q\ & ((!\inst4|Equal0~2_combout\ & (\inst8|valor_interno\(0))) # (\inst4|Equal0~2_combout\ & ((\inst23|valor_interno\(0)))))) # (\inst107|memw~q\ & 
-- (((\inst23|valor_interno\(0))))) ) ) # ( !\inst4|selsrc[1]~0_combout\ & ( \inst23|valor_interno\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100111000011110010011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_memw~q\,
	datab => \inst8|ALT_INV_valor_interno\(0),
	datac => \inst23|ALT_INV_valor_interno\(0),
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~0_combout\,
	combout => \inst10|Mux15~1_combout\);

-- Location: FF_X60_Y6_N31
\inst15|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst11|Add0~1_sumout\,
	asdata => \inst10|Mux15~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(0));

-- Location: LABCELL_X60_Y5_N36
\inst4|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal9~0_combout\ = ( \inst4|Equal2~0_combout\ & ( \inst4|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal0~0_combout\,
	dataf => \inst4|ALT_INV_Equal2~0_combout\,
	combout => \inst4|Equal9~0_combout\);

-- Location: LABCELL_X61_Y5_N24
\inst4|selresult[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selresult[0]~0_combout\ = ( \inst4|Equal0~2_combout\ & ( \inst4|selregr[1]~2_combout\ ) ) # ( !\inst4|Equal0~2_combout\ & ( \inst4|selregr[1]~2_combout\ & ( (!\inst4|Equal2~2_combout\ & \inst4|selfalgs~3_combout\) ) ) ) # ( \inst4|Equal0~2_combout\ 
-- & ( !\inst4|selregr[1]~2_combout\ ) ) # ( !\inst4|Equal0~2_combout\ & ( !\inst4|selregr[1]~2_combout\ & ( (!\inst4|Equal2~2_combout\ & !\inst4|Equal9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000111111111111111100000000110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Equal2~2_combout\,
	datac => \inst4|ALT_INV_Equal9~0_combout\,
	datad => \inst4|ALT_INV_selfalgs~3_combout\,
	datae => \inst4|ALT_INV_Equal0~2_combout\,
	dataf => \inst4|ALT_INV_selregr[1]~2_combout\,
	combout => \inst4|selresult[0]~0_combout\);

-- Location: FF_X61_Y5_N26
\inst16|selresult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst4|selresult[0]~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selresult\(0));

-- Location: FF_X59_Y6_N32
\inst23|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst15|valor_interno\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|valor_interno\(0));

-- Location: MLABCELL_X59_Y6_N30
\inst10|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux15~0_combout\ = ( \inst11|Add0~1_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(0)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(0)))) ) ) # ( !\inst11|Add0~1_sumout\ & ( 
-- (\inst10|Mux10~0_combout\ & ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(0)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Mux10~0_combout\,
	datab => \inst10|ALT_INV_Mux10~1_combout\,
	datac => \inst8|ALT_INV_valor_interno\(0),
	datad => \inst23|ALT_INV_valor_interno\(0),
	dataf => \inst11|ALT_INV_Add0~1_sumout\,
	combout => \inst10|Mux15~0_combout\);

-- Location: LABCELL_X60_Y6_N12
\inst11|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~25_combout\ = ( \inst4|sels1~1_combout\ & ( !\inst8|valor_interno\(1) $ (!\inst4|sr~0_combout\) ) ) # ( !\inst4|sels1~1_combout\ & ( \inst4|sr~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_valor_interno\(1),
	datad => \inst4|ALT_INV_sr~0_combout\,
	dataf => \inst4|ALT_INV_sels1~1_combout\,
	combout => \inst11|Add0~25_combout\);

-- Location: FF_X62_Y4_N58
\inst700666|ACCB|valor_interno[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno[1]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y4_N0
\inst202|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux14~0_combout\ = ( !\inst4|selregr~7_combout\ & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & \inst700666|ACCB|valor_interno[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_selregr~7_combout\,
	combout => \inst202|Mux14~0_combout\);

-- Location: LABCELL_X62_Y4_N9
\inst700666|inst1000|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal0~0_combout\ = ( \inst107|selregw\(0) & ( !\inst107|selregw\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst107|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst700666|inst1000|Equal0~0_combout\);

-- Location: FF_X62_Y4_N11
\inst700666|ACCA|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(1));

-- Location: MLABCELL_X65_Y4_N30
\inst700|valor_interno[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[3]~0_combout\ = ( \inst4|selregr[3]~5_combout\ & ( (!\inst4|selregr[1]~4_combout\ & (!\inst4|selregr~7_combout\ & !\inst4|selregr[0]~3_combout\)) ) ) # ( !\inst4|selregr[3]~5_combout\ & ( (!\inst4|selregr[1]~4_combout\ & 
-- (!\inst4|selregr~7_combout\ $ (\inst4|selregr[0]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr~7_combout\,
	datad => \inst4|ALT_INV_selregr[0]~3_combout\,
	dataf => \inst4|ALT_INV_selregr[3]~5_combout\,
	combout => \inst700|valor_interno[3]~0_combout\);

-- Location: LABCELL_X66_Y5_N21
\inst4|selsrc[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selsrc[0]~3_combout\ = ( \inst4|selregr[1]~2_combout\ & ( (!\inst4|Equal2~2_combout\ & ((\inst4|Equal0~2_combout\) # (\inst4|Equal14~1_combout\))) ) ) # ( !\inst4|selregr[1]~2_combout\ & ( !\inst4|Equal2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal14~1_combout\,
	datac => \inst4|ALT_INV_Equal2~2_combout\,
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	dataf => \inst4|ALT_INV_selregr[1]~2_combout\,
	combout => \inst4|selsrc[0]~3_combout\);

-- Location: LABCELL_X61_Y5_N36
\inst4|selsrc[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selsrc[1]~2_combout\ = ( \inst4|selsrc[1]~1_combout\ & ( (\inst4|selregr[1]~2_combout\ & (!\inst4|memw~0_combout\ & !\inst4|selsrc[1]~0_combout\)) ) ) # ( !\inst4|selsrc[1]~1_combout\ & ( (!\inst4|selregr[1]~2_combout\) # 
-- ((!\inst4|selsrc[1]~0_combout\) # (\inst4|memw~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111111101101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[1]~2_combout\,
	datab => \inst4|ALT_INV_memw~0_combout\,
	datac => \inst4|ALT_INV_selsrc[1]~0_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~1_combout\,
	combout => \inst4|selsrc[1]~2_combout\);

-- Location: MLABCELL_X65_Y4_N6
\inst700|valor_interno[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[3]~1_combout\ = ( \inst4|selsrc[0]~3_combout\ & ( \inst4|selsrc[1]~2_combout\ & ( (!\inst700|valor_interno[3]~0_combout\ & (((!\inst4|selregr[0]~3_combout\) # (\inst4|selregr[1]~4_combout\)) # (\inst4|selregr~7_combout\))) ) ) ) # ( 
-- !\inst4|selsrc[0]~3_combout\ & ( \inst4|selsrc[1]~2_combout\ ) ) # ( \inst4|selsrc[0]~3_combout\ & ( !\inst4|selsrc[1]~2_combout\ & ( (!\inst700|valor_interno[3]~0_combout\ & (((!\inst4|selregr[0]~3_combout\) # (\inst4|selregr[1]~4_combout\)) # 
-- (\inst4|selregr~7_combout\))) ) ) ) # ( !\inst4|selsrc[0]~3_combout\ & ( !\inst4|selsrc[1]~2_combout\ & ( (!\inst700|valor_interno[3]~0_combout\ & (((!\inst4|selregr[0]~3_combout\) # (\inst4|selregr[1]~4_combout\)) # (\inst4|selregr~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000111101110000000011111111111111111111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr~7_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr[0]~3_combout\,
	datad => \inst700|ALT_INV_valor_interno[3]~0_combout\,
	datae => \inst4|ALT_INV_selsrc[0]~3_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~2_combout\,
	combout => \inst700|valor_interno[3]~1_combout\);

-- Location: FF_X65_Y4_N1
\inst700|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux14~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(1));

-- Location: LABCELL_X66_Y5_N33
\inst33|opres[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~4_combout\ = (!\inst16|selop\(1) & \inst16|selop\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	combout => \inst33|opres[11]~4_combout\);

-- Location: LABCELL_X63_Y6_N54
\inst1|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux29~0_combout\ = ( \inst34|valor_interno\(0) & ( \inst34|valor_interno\(4) & ( (!\inst34|valor_interno\(2) & (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(1) & !\inst34|valor_interno\(3)))) ) ) ) # ( !\inst34|valor_interno\(0) & ( 
-- \inst34|valor_interno\(4) & ( (!\inst34|valor_interno\(2) & (!\inst34|valor_interno\(5) & (\inst34|valor_interno\(1) & !\inst34|valor_interno\(3)))) ) ) ) # ( \inst34|valor_interno\(0) & ( !\inst34|valor_interno\(4) & ( (!\inst34|valor_interno\(2) & 
-- (!\inst34|valor_interno\(5) & (\inst34|valor_interno\(1) & !\inst34|valor_interno\(3)))) ) ) ) # ( !\inst34|valor_interno\(0) & ( !\inst34|valor_interno\(4) & ( (!\inst34|valor_interno\(2) & (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(1) & 
-- !\inst34|valor_interno\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000010000000000000001000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(2),
	datab => \inst34|ALT_INV_valor_interno\(5),
	datac => \inst34|ALT_INV_valor_interno\(1),
	datad => \inst34|ALT_INV_valor_interno\(3),
	datae => \inst34|ALT_INV_valor_interno\(0),
	dataf => \inst34|ALT_INV_valor_interno\(4),
	combout => \inst1|Mux29~0_combout\);

-- Location: FF_X63_Y6_N55
\inst8|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst1|Mux29~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(2));

-- Location: LABCELL_X60_Y6_N48
\inst11|Add0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~26_combout\ = ( \inst4|sels1~1_combout\ & ( !\inst8|valor_interno\(2) $ (!\inst4|sr~0_combout\) ) ) # ( !\inst4|sels1~1_combout\ & ( \inst4|sr~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_valor_interno\(2),
	datad => \inst4|ALT_INV_sr~0_combout\,
	dataf => \inst4|ALT_INV_sels1~1_combout\,
	combout => \inst11|Add0~26_combout\);

-- Location: FF_X62_Y4_N53
\inst700666|ACCB|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(2));

-- Location: LABCELL_X60_Y6_N33
\inst11|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~5_sumout\ = SUM(( (\inst700666|inst|Equal0~0_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(1))) ) + ( !\inst11|Add0~25_combout\ ) + ( \inst11|Add0~2\ ))
-- \inst11|Add0~6\ = CARRY(( (\inst700666|inst|Equal0~0_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(1))) ) + ( !\inst11|Add0~25_combout\ ) + ( \inst11|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datac => \inst11|ALT_INV_Add0~25_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(1),
	cin => \inst11|Add0~2\,
	sumout => \inst11|Add0~5_sumout\,
	cout => \inst11|Add0~6\);

-- Location: LABCELL_X60_Y6_N36
\inst11|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~9_sumout\ = SUM(( (\inst700666|inst|Equal0~0_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(2))) ) + ( !\inst11|Add0~26_combout\ ) + ( \inst11|Add0~6\ ))
-- \inst11|Add0~10\ = CARRY(( (\inst700666|inst|Equal0~0_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(2))) ) + ( !\inst11|Add0~26_combout\ ) + ( \inst11|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datac => \inst11|ALT_INV_Add0~26_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(2),
	cin => \inst11|Add0~6\,
	sumout => \inst11|Add0~9_sumout\,
	cout => \inst11|Add0~10\);

-- Location: MLABCELL_X59_Y6_N39
\inst10|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux13~1_combout\ = ( \inst23|valor_interno\(2) & ( ((!\inst4|selsrc[1]~0_combout\) # ((\inst4|Equal0~2_combout\) # (\inst8|valor_interno\(2)))) # (\inst107|memw~q\) ) ) # ( !\inst23|valor_interno\(2) & ( (!\inst107|memw~q\ & 
-- (\inst4|selsrc[1]~0_combout\ & (\inst8|valor_interno\(2) & !\inst4|Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000011011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_memw~q\,
	datab => \inst4|ALT_INV_selsrc[1]~0_combout\,
	datac => \inst8|ALT_INV_valor_interno\(2),
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	dataf => \inst23|ALT_INV_valor_interno\(2),
	combout => \inst10|Mux13~1_combout\);

-- Location: FF_X60_Y6_N37
\inst15|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst11|Add0~9_sumout\,
	asdata => \inst10|Mux13~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(2));

-- Location: FF_X59_Y6_N35
\inst23|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst15|valor_interno\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|valor_interno\(2));

-- Location: MLABCELL_X59_Y6_N33
\inst10|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux13~0_combout\ = ( \inst11|Add0~9_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(2)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(2)))) ) ) # ( !\inst11|Add0~9_sumout\ & ( 
-- (\inst10|Mux10~0_combout\ & ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(2)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Mux10~0_combout\,
	datab => \inst10|ALT_INV_Mux10~1_combout\,
	datac => \inst8|ALT_INV_valor_interno\(2),
	datad => \inst23|ALT_INV_valor_interno\(2),
	dataf => \inst11|ALT_INV_Add0~9_sumout\,
	combout => \inst10|Mux13~0_combout\);

-- Location: LABCELL_X63_Y6_N48
\inst1|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux28~0_combout\ = ( !\inst34|valor_interno\(0) & ( \inst34|valor_interno\(4) & ( (!\inst34|valor_interno\(2) & (!\inst34|valor_interno\(5) & (\inst34|valor_interno\(1) & !\inst34|valor_interno\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(2),
	datab => \inst34|ALT_INV_valor_interno\(5),
	datac => \inst34|ALT_INV_valor_interno\(1),
	datad => \inst34|ALT_INV_valor_interno\(3),
	datae => \inst34|ALT_INV_valor_interno\(0),
	dataf => \inst34|ALT_INV_valor_interno\(4),
	combout => \inst1|Mux28~0_combout\);

-- Location: FF_X63_Y6_N49
\inst8|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst1|Mux28~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(3));

-- Location: LABCELL_X60_Y6_N9
\inst11|Add0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~27_combout\ = ( \inst4|sels1~1_combout\ & ( !\inst8|valor_interno\(3) $ (!\inst4|sr~0_combout\) ) ) # ( !\inst4|sels1~1_combout\ & ( \inst4|sr~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_valor_interno\(3),
	datad => \inst4|ALT_INV_sr~0_combout\,
	dataf => \inst4|ALT_INV_sels1~1_combout\,
	combout => \inst11|Add0~27_combout\);

-- Location: LABCELL_X60_Y6_N39
\inst11|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~13_sumout\ = SUM(( (\inst700666|inst|Equal0~0_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(3))) ) + ( !\inst11|Add0~27_combout\ ) + ( \inst11|Add0~10\ ))
-- \inst11|Add0~14\ = CARRY(( (\inst700666|inst|Equal0~0_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(3))) ) + ( !\inst11|Add0~27_combout\ ) + ( \inst11|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datac => \inst11|ALT_INV_Add0~27_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(3),
	cin => \inst11|Add0~10\,
	sumout => \inst11|Add0~13_sumout\,
	cout => \inst11|Add0~14\);

-- Location: LABCELL_X60_Y6_N42
\inst11|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~17_sumout\ = SUM(( !\inst11|Add0~25_combout\ ) + ( (\inst700666|inst|Equal0~0_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(4))) ) + ( \inst11|Add0~14\ ))
-- \inst11|Add0~18\ = CARRY(( !\inst11|Add0~25_combout\ ) + ( (\inst700666|inst|Equal0~0_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(4))) ) + ( \inst11|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111111101100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(4),
	datad => \inst11|ALT_INV_Add0~25_combout\,
	cin => \inst11|Add0~14\,
	sumout => \inst11|Add0~17_sumout\,
	cout => \inst11|Add0~18\);

-- Location: MLABCELL_X59_Y6_N48
\inst10|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux11~1_combout\ = ( \inst23|valor_interno\(4) & ( (((!\inst4|selsrc[1]~0_combout\) # (\inst107|memw~q\)) # (\inst4|Equal0~2_combout\)) # (\inst8|valor_interno\(1)) ) ) # ( !\inst23|valor_interno\(4) & ( (\inst8|valor_interno\(1) & 
-- (!\inst4|Equal0~2_combout\ & (\inst4|selsrc[1]~0_combout\ & !\inst107|memw~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000011110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(1),
	datab => \inst4|ALT_INV_Equal0~2_combout\,
	datac => \inst4|ALT_INV_selsrc[1]~0_combout\,
	datad => \inst107|ALT_INV_memw~q\,
	dataf => \inst23|ALT_INV_valor_interno\(4),
	combout => \inst10|Mux11~1_combout\);

-- Location: FF_X60_Y6_N43
\inst15|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst11|Add0~17_sumout\,
	asdata => \inst10|Mux11~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(4));

-- Location: FF_X59_Y6_N14
\inst23|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst15|valor_interno\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|valor_interno\(4));

-- Location: MLABCELL_X59_Y6_N12
\inst10|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux11~0_combout\ = ( \inst11|Add0~17_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(4)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(1)))) ) ) # ( !\inst11|Add0~17_sumout\ & ( 
-- (\inst10|Mux10~0_combout\ & ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(4)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110111110001111111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(1),
	datab => \inst10|ALT_INV_Mux10~1_combout\,
	datac => \inst10|ALT_INV_Mux10~0_combout\,
	datad => \inst23|ALT_INV_valor_interno\(4),
	dataf => \inst11|ALT_INV_Add0~17_sumout\,
	combout => \inst10|Mux11~0_combout\);

-- Location: LABCELL_X61_Y4_N12
\inst700666|ACCB|valor_interno[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[5]~feeder_combout\ = ( \inst24|valor_interno\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(5),
	combout => \inst700666|ACCB|valor_interno[5]~feeder_combout\);

-- Location: FF_X61_Y4_N13
\inst700666|ACCB|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|ACCB|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(5));

-- Location: LABCELL_X60_Y6_N45
\inst11|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~21_sumout\ = SUM(( !\inst4|sr~0_combout\ ) + ( (\inst700666|inst|Equal0~0_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(5))) ) + ( \inst11|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111111101100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(5),
	datad => \inst4|ALT_INV_sr~0_combout\,
	cin => \inst11|Add0~18\,
	sumout => \inst11|Add0~21_sumout\);

-- Location: MLABCELL_X59_Y6_N18
\inst10|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~3_combout\ = (\inst23|valor_interno\(5) & ((!\inst4|selsrc[1]~0_combout\) # ((\inst107|memw~q\) # (\inst4|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001111000010110000111100001011000011110000101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc[1]~0_combout\,
	datab => \inst4|ALT_INV_Equal0~2_combout\,
	datac => \inst23|ALT_INV_valor_interno\(5),
	datad => \inst107|ALT_INV_memw~q\,
	combout => \inst10|Mux10~3_combout\);

-- Location: FF_X60_Y6_N46
\inst15|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst11|Add0~21_sumout\,
	asdata => \inst10|Mux10~3_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(5));

-- Location: FF_X59_Y6_N2
\inst23|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst15|valor_interno\(5),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|valor_interno\(5));

-- Location: MLABCELL_X59_Y6_N0
\inst10|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~2_combout\ = ( \inst11|Add0~21_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((\inst107|memw~q\ & \inst23|valor_interno\(5))) ) ) # ( !\inst11|Add0~21_sumout\ & ( (\inst107|memw~q\ & \inst23|valor_interno\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111110000111101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_memw~q\,
	datac => \inst10|ALT_INV_Mux10~0_combout\,
	datad => \inst23|ALT_INV_valor_interno\(5),
	dataf => \inst11|ALT_INV_Add0~21_sumout\,
	combout => \inst10|Mux10~2_combout\);

-- Location: FF_X65_Y5_N35
\inst700666|ACCB|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(6),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(6));

-- Location: FF_X65_Y5_N32
\inst700666|ACCB|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(7),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(7));

-- Location: MLABCELL_X65_Y4_N57
\inst202|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux8~0_combout\ = ( \inst700666|ACCB|valor_interno\(7) & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & !\inst4|selregr~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr~7_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(7),
	combout => \inst202|Mux8~0_combout\);

-- Location: FF_X62_Y4_N7
\inst700666|ACCA|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(7),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(7));

-- Location: FF_X65_Y4_N58
\inst700|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux8~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(7),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(7));

-- Location: LABCELL_X66_Y5_N48
\inst202|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux17~0_combout\ = ( \inst4|Equal2~2_combout\ & ( \inst4|selsrc[1]~1_combout\ ) ) # ( !\inst4|Equal2~2_combout\ & ( \inst4|selsrc[1]~1_combout\ & ( (\inst4|Equal13~0_combout\ & (\inst4|selregr[1]~2_combout\ & (!\inst4|Equal14~1_combout\ & 
-- !\inst4|Equal0~2_combout\))) ) ) ) # ( !\inst4|Equal2~2_combout\ & ( !\inst4|selsrc[1]~1_combout\ & ( (\inst4|Equal13~0_combout\ & (\inst4|selregr[1]~2_combout\ & (!\inst4|Equal14~1_combout\ & !\inst4|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal13~0_combout\,
	datab => \inst4|ALT_INV_selregr[1]~2_combout\,
	datac => \inst4|ALT_INV_Equal14~1_combout\,
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	datae => \inst4|ALT_INV_Equal2~2_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~1_combout\,
	combout => \inst202|Mux17~0_combout\);

-- Location: MLABCELL_X65_Y4_N3
\inst202|Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux17~2_combout\ = ( \inst4|selsrc[1]~2_combout\ & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & (!\inst4|selregr[3]~5_combout\ & \inst4|selregr~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr[3]~5_combout\,
	datad => \inst4|ALT_INV_selregr~7_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~2_combout\,
	combout => \inst202|Mux17~2_combout\);

-- Location: FF_X65_Y4_N10
\inst700666|ACCB|valor_interno[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(11),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno[11]~DUPLICATE_q\);

-- Location: FF_X66_Y5_N58
\inst700666|ACCB|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(13),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(13));

-- Location: MLABCELL_X65_Y4_N54
\inst202|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux2~0_combout\ = ( \inst700666|ACCB|valor_interno\(13) & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & !\inst4|selregr~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr~7_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(13),
	combout => \inst202|Mux2~0_combout\);

-- Location: FF_X64_Y4_N44
\inst700666|ACCA|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(13),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(13));

-- Location: FF_X65_Y4_N55
\inst700|valor_interno[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux2~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(13),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[13]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N30
\inst33|opres[11]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~5_combout\ = (\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst16|ALT_INV_selop\(2),
	combout => \inst33|opres[11]~5_combout\);

-- Location: FF_X66_Y5_N52
\inst700666|ACCB|valor_interno[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(12),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno[12]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y4_N39
\inst202|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux3~0_combout\ = ( \inst700666|ACCB|valor_interno[12]~DUPLICATE_q\ & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & !\inst4|selregr~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr~7_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno[12]~DUPLICATE_q\,
	combout => \inst202|Mux3~0_combout\);

-- Location: FF_X64_Y4_N16
\inst700666|ACCA|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(12),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(12));

-- Location: FF_X65_Y4_N40
\inst700|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux3~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(12),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(12));

-- Location: FF_X65_Y4_N8
\inst700666|ACCB|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(14),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(14));

-- Location: FF_X66_Y5_N40
\inst700666|ACCB|valor_interno[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(15),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno[15]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y4_N45
\inst202|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux0~0_combout\ = ( \inst700666|ACCB|valor_interno[15]~DUPLICATE_q\ & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & !\inst4|selregr~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr~7_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	combout => \inst202|Mux0~0_combout\);

-- Location: FF_X64_Y4_N2
\inst700666|ACCA|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(15),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(15));

-- Location: FF_X65_Y4_N46
\inst700|valor_interno[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux0~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(15),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[15]~DUPLICATE_q\);

-- Location: M10K_X58_Y6_N0
\inst41|mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memoria_datos:inst41|altsyncram:mem_rtl_0|altsyncram_20q1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 51,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 51,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst107|memw~q\,
	portbre => \inst107|ALT_INV_memw~q\,
	clk0 => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	portadatain => \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X66_Y5_N41
\inst700666|ACCB|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(15),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(15));

-- Location: LABCELL_X66_Y5_N3
\inst202|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux16~0_combout\ = ( \inst700666|ACCB|valor_interno\(15) & ( ((\inst202|Mux17~0_combout\ & \inst41|mem_rtl_0|auto_generated|ram_block1a15\)) # (\inst202|Mux17~2_combout\) ) ) # ( !\inst700666|ACCB|valor_interno\(15) & ( (\inst202|Mux17~0_combout\ 
-- & \inst41|mem_rtl_0|auto_generated|ram_block1a15\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst202|ALT_INV_Mux17~2_combout\,
	datab => \inst202|ALT_INV_Mux17~0_combout\,
	datad => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(15),
	combout => \inst202|Mux16~0_combout\);

-- Location: LABCELL_X66_Y5_N24
\inst14|valor_interno[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[12]~2_combout\ = ( \inst4|selregr[0]~3_combout\ & ( \inst4|selsrc[1]~2_combout\ & ( (!\inst4|selsrc[0]~3_combout\) # ((!\inst4|selregr[3]~5_combout\ & (!\inst4|selregr~7_combout\ $ (\inst4|selregr[1]~4_combout\)))) ) ) ) # ( 
-- !\inst4|selregr[0]~3_combout\ & ( \inst4|selsrc[1]~2_combout\ & ( (!\inst4|selsrc[0]~3_combout\) # ((!\inst4|selregr~7_combout\ & (!\inst4|selregr[1]~4_combout\ & !\inst4|selregr[3]~5_combout\)) # (\inst4|selregr~7_combout\ & 
-- ((!\inst4|selregr[1]~4_combout\) # (!\inst4|selregr[3]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111011101110101110101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr~7_combout\,
	datac => \inst4|ALT_INV_selregr[1]~4_combout\,
	datad => \inst4|ALT_INV_selregr[3]~5_combout\,
	datae => \inst4|ALT_INV_selregr[0]~3_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~2_combout\,
	combout => \inst14|valor_interno[12]~2_combout\);

-- Location: FF_X66_Y5_N4
\inst14|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux16~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(15));

-- Location: MLABCELL_X65_Y4_N51
\inst202|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux1~0_combout\ = ( \inst700666|ACCB|valor_interno\(14) & ( (!\inst4|selregr~7_combout\ & (!\inst4|selregr[1]~4_combout\ & \inst4|selregr[0]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr~7_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr[0]~3_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(14),
	combout => \inst202|Mux1~0_combout\);

-- Location: FF_X65_Y4_N17
\inst700666|ACCA|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(14),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(14));

-- Location: FF_X65_Y4_N52
\inst700|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux1~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(14),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(14));

-- Location: LABCELL_X62_Y5_N0
\inst33|opres[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~0_combout\ = ( \inst700|valor_interno\(14) & ( (!\inst16|selop\(1) & ((!\inst700|valor_interno[15]~DUPLICATE_q\ & ((!\inst14|valor_interno\(15)))) # (\inst700|valor_interno[15]~DUPLICATE_q\ & (\inst16|selop\(0) & 
-- \inst14|valor_interno\(15))))) # (\inst16|selop\(1) & (\inst16|selop\(0) & (!\inst700|valor_interno[15]~DUPLICATE_q\))) ) ) # ( !\inst700|valor_interno\(14) & ( (!\inst16|selop\(1) & ((!\inst700|valor_interno[15]~DUPLICATE_q\ & 
-- ((!\inst14|valor_interno\(15)))) # (\inst700|valor_interno[15]~DUPLICATE_q\ & (\inst16|selop\(0) & \inst14|valor_interno\(15))))) # (\inst16|selop\(1) & ((!\inst16|selop\(0)) # ((!\inst700|valor_interno[15]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010001010110111101000101011010110000000100101011000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(0),
	datac => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datad => \inst14|ALT_INV_valor_interno\(15),
	dataf => \inst700|ALT_INV_valor_interno\(14),
	combout => \inst33|opres[15]~0_combout\);

-- Location: FF_X63_Y5_N5
\inst16|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst4|sr~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selc~q\);

-- Location: LABCELL_X61_Y5_N33
\inst4|cadj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cadj~0_combout\ = ( \inst4|selregr[1]~0_combout\ ) # ( !\inst4|selregr[1]~0_combout\ & ( \inst4|Equal2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal2~2_combout\,
	dataf => \inst4|ALT_INV_selregr[1]~0_combout\,
	combout => \inst4|cadj~0_combout\);

-- Location: FF_X63_Y5_N29
\inst16|cadj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst4|cadj~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|cadj~q\);

-- Location: LABCELL_X62_Y5_N39
\inst4|selfalgs[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs[2]~2_combout\ = ( \inst4|Equal8~2_combout\ & ( (!\inst4|selfalgs~1_combout\ & (!\inst4|Equal3~0_combout\ & !\inst4|memw~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selfalgs~1_combout\,
	datac => \inst4|ALT_INV_Equal3~0_combout\,
	datad => \inst4|ALT_INV_memw~0_combout\,
	dataf => \inst4|ALT_INV_Equal8~2_combout\,
	combout => \inst4|selfalgs[2]~2_combout\);

-- Location: FF_X62_Y5_N41
\inst16|selfalgs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst4|selfalgs[2]~2_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(2));

-- Location: LABCELL_X62_Y5_N12
\inst|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = ( !\inst16|selfalgs\(2) & ( \inst16|selfalgs\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_selfalgs\(1),
	dataf => \inst16|ALT_INV_selfalgs\(2),
	combout => \inst|Equal2~0_combout\);

-- Location: LABCELL_X63_Y5_N57
\inst202|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux15~0_combout\ = (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & (\inst700666|ACCB|valor_interno\(0) & !\inst4|selregr~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(0),
	datad => \inst4|ALT_INV_selregr~7_combout\,
	combout => \inst202|Mux15~0_combout\);

-- Location: FF_X62_Y4_N47
\inst700666|ACCA|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(0));

-- Location: FF_X63_Y5_N59
\inst700|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux15~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(0));

-- Location: LABCELL_X66_Y5_N45
\inst33|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Equal0~1_combout\ = (\inst16|selop\(0) & (!\inst16|selop\(1) & !\inst16|selop\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datac => \inst16|ALT_INV_selop\(1),
	datad => \inst16|ALT_INV_selop\(2),
	combout => \inst33|Equal0~1_combout\);

-- Location: MLABCELL_X65_Y5_N12
\inst33|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~69_combout\ = ( \inst14|valor_interno\(15) & ( ((!\inst16|selop\(1)) # (\inst16|selop\(0))) # (\inst16|selop\(2)) ) ) # ( !\inst14|valor_interno\(15) & ( (!\inst16|selop\(2) & (!\inst16|selop\(0) & \inst16|selop\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100011111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(0),
	datad => \inst16|ALT_INV_selop\(1),
	dataf => \inst14|ALT_INV_valor_interno\(15),
	combout => \inst33|Add0~69_combout\);

-- Location: FF_X65_Y4_N47
\inst700|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux0~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(15),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(15));

-- Location: LABCELL_X63_Y5_N51
\inst33|Add0~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~83_combout\ = ( \inst16|selop\(1) & ( !\inst14|valor_interno\(14) $ (((\inst16|selop\(0)) # (\inst16|selop\(2)))) ) ) # ( !\inst16|selop\(1) & ( \inst14|valor_interno\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110001000011101111000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(0),
	datad => \inst14|ALT_INV_valor_interno\(14),
	dataf => \inst16|ALT_INV_selop\(1),
	combout => \inst33|Add0~83_combout\);

-- Location: LABCELL_X63_Y5_N9
\inst33|Add0~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~82_combout\ = ( \inst14|valor_interno\(13) & ( (!\inst16|selop\(1)) # ((\inst16|selop\(2)) # (\inst16|selop\(0))) ) ) # ( !\inst14|valor_interno\(13) & ( (\inst16|selop\(1) & (!\inst16|selop\(0) & !\inst16|selop\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst16|ALT_INV_selop\(2),
	dataf => \inst14|ALT_INV_valor_interno\(13),
	combout => \inst33|Add0~82_combout\);

-- Location: FF_X65_Y4_N56
\inst700|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux2~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(13),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(13));

-- Location: FF_X66_Y5_N20
\inst14|valor_interno[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux19~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[12]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N3
\inst33|Add0~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~71_combout\ = ( \inst14|valor_interno[12]~DUPLICATE_q\ & ( ((!\inst16|selop\(1)) # (\inst16|selop\(0))) # (\inst16|selop\(2)) ) ) # ( !\inst14|valor_interno[12]~DUPLICATE_q\ & ( (!\inst16|selop\(2) & (\inst16|selop\(1) & !\inst16|selop\(0))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(0),
	dataf => \inst14|ALT_INV_valor_interno[12]~DUPLICATE_q\,
	combout => \inst33|Add0~71_combout\);

-- Location: MLABCELL_X65_Y5_N15
\inst33|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~81_combout\ = ( \inst16|selop\(1) & ( !\inst14|valor_interno\(11) $ (((\inst16|selop\(0)) # (\inst16|selop\(2)))) ) ) # ( !\inst16|selop\(1) & ( \inst14|valor_interno\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(0),
	datac => \inst14|ALT_INV_valor_interno\(11),
	dataf => \inst16|ALT_INV_selop\(1),
	combout => \inst33|Add0~81_combout\);

-- Location: FF_X66_Y5_N35
\inst700666|ACCB|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(10),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(10));

-- Location: LABCELL_X66_Y5_N12
\inst202|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux21~0_combout\ = ( \inst700666|ACCB|valor_interno\(10) & ( ((\inst202|Mux17~0_combout\ & \inst41|mem_rtl_0|auto_generated|ram_block1a10\)) # (\inst202|Mux17~2_combout\) ) ) # ( !\inst700666|ACCB|valor_interno\(10) & ( (\inst202|Mux17~0_combout\ 
-- & \inst41|mem_rtl_0|auto_generated|ram_block1a10\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst202|ALT_INV_Mux17~2_combout\,
	datab => \inst202|ALT_INV_Mux17~0_combout\,
	datac => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(10),
	combout => \inst202|Mux21~0_combout\);

-- Location: FF_X66_Y5_N14
\inst14|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux21~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(10));

-- Location: MLABCELL_X65_Y5_N39
\inst33|Add0~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~80_combout\ = ( \inst14|valor_interno\(10) & ( ((!\inst16|selop\(1)) # (\inst16|selop\(0))) # (\inst16|selop\(2)) ) ) # ( !\inst14|valor_interno\(10) & ( (!\inst16|selop\(2) & (\inst16|selop\(1) & !\inst16|selop\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(0),
	dataf => \inst14|ALT_INV_valor_interno\(10),
	combout => \inst33|Add0~80_combout\);

-- Location: MLABCELL_X65_Y4_N18
\inst202|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux5~0_combout\ = ( \inst700666|ACCB|valor_interno\(10) & ( (!\inst4|selregr~7_combout\ & (!\inst4|selregr[1]~4_combout\ & \inst4|selregr[0]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr~7_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr[0]~3_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(10),
	combout => \inst202|Mux5~0_combout\);

-- Location: FF_X63_Y4_N20
\inst700666|ACCA|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(10),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(10));

-- Location: FF_X65_Y4_N19
\inst700|valor_interno[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux5~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(10),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[10]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N0
\inst33|Add0~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~79_combout\ = !\inst14|valor_interno\(9) $ ((((!\inst16|selop\(1)) # (\inst16|selop\(0))) # (\inst16|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011011111001000001101111100100000110111110010000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst14|ALT_INV_valor_interno\(9),
	combout => \inst33|Add0~79_combout\);

-- Location: FF_X66_Y5_N29
\inst700666|ACCB|valor_interno[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(8),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno[8]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N15
\inst202|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux23~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a8\ & ( ((\inst202|Mux17~2_combout\ & \inst700666|ACCB|valor_interno[8]~DUPLICATE_q\)) # (\inst202|Mux17~0_combout\) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a8\ & ( 
-- (\inst202|Mux17~2_combout\ & \inst700666|ACCB|valor_interno[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst202|ALT_INV_Mux17~2_combout\,
	datab => \inst202|ALT_INV_Mux17~0_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \inst202|Mux23~0_combout\);

-- Location: FF_X65_Y5_N44
\inst14|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux23~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[12]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(8));

-- Location: MLABCELL_X65_Y5_N45
\inst33|Add0~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~78_combout\ = ( \inst14|valor_interno\(8) & ( ((!\inst16|selop\(1)) # (\inst16|selop\(0))) # (\inst16|selop\(2)) ) ) # ( !\inst14|valor_interno\(8) & ( (!\inst16|selop\(2) & (\inst16|selop\(1) & !\inst16|selop\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(0),
	dataf => \inst14|ALT_INV_valor_interno\(8),
	combout => \inst33|Add0~78_combout\);

-- Location: FF_X66_Y5_N28
\inst700666|ACCB|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(8),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(8));

-- Location: MLABCELL_X65_Y4_N48
\inst202|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux7~0_combout\ = ( \inst700666|ACCB|valor_interno\(8) & ( (!\inst4|selregr~7_combout\ & (!\inst4|selregr[1]~4_combout\ & \inst4|selregr[0]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr~7_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr[0]~3_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(8),
	combout => \inst202|Mux7~0_combout\);

-- Location: FF_X63_Y4_N47
\inst700666|ACCA|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(8),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(8));

-- Location: FF_X65_Y4_N50
\inst700|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux7~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(8),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(8));

-- Location: FF_X65_Y5_N26
\inst14|valor_interno[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux24~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[7]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N21
\inst33|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~77_combout\ = ( \inst14|valor_interno[7]~DUPLICATE_q\ & ( ((!\inst16|selop\(1)) # (\inst16|selop\(0))) # (\inst16|selop\(2)) ) ) # ( !\inst14|valor_interno[7]~DUPLICATE_q\ & ( (!\inst16|selop\(2) & (\inst16|selop\(1) & !\inst16|selop\(0))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datad => \inst16|ALT_INV_selop\(0),
	dataf => \inst14|ALT_INV_valor_interno[7]~DUPLICATE_q\,
	combout => \inst33|Add0~77_combout\);

-- Location: MLABCELL_X65_Y4_N36
\inst202|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux9~0_combout\ = ( !\inst4|selregr~7_combout\ & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & \inst700666|ACCB|valor_interno\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(6),
	dataf => \inst4|ALT_INV_selregr~7_combout\,
	combout => \inst202|Mux9~0_combout\);

-- Location: FF_X64_Y4_N47
\inst700666|ACCA|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(6),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(6));

-- Location: FF_X65_Y4_N37
\inst700|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux9~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(6),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(6));

-- Location: LABCELL_X57_Y6_N39
\inst202|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux26~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a5\ & ( \inst14|valor_interno[1]~0_combout\ & ( ((\inst700666|ACCB|valor_interno\(5) & \inst700666|inst|Equal0~0_combout\)) # (\inst14|valor_interno[1]~1_combout\) ) ) ) # ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a5\ & ( \inst14|valor_interno[1]~0_combout\ & ( (\inst700666|ACCB|valor_interno\(5) & (\inst700666|inst|Equal0~0_combout\ & !\inst14|valor_interno[1]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|ALT_INV_valor_interno\(5),
	datab => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datad => \inst14|ALT_INV_valor_interno[1]~1_combout\,
	datae => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \inst14|ALT_INV_valor_interno[1]~0_combout\,
	combout => \inst202|Mux26~0_combout\);

-- Location: FF_X65_Y5_N5
\inst14|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux26~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(5));

-- Location: MLABCELL_X65_Y5_N42
\inst33|Add0~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~76_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno\(5) ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno\(5) $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100101101001011010010110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst14|ALT_INV_valor_interno\(5),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~76_combout\);

-- Location: LABCELL_X63_Y5_N54
\inst202|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux10~0_combout\ = (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & (\inst700666|ACCB|valor_interno\(5) & !\inst4|selregr~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(5),
	datad => \inst4|ALT_INV_selregr~7_combout\,
	combout => \inst202|Mux10~0_combout\);

-- Location: FF_X63_Y4_N23
\inst700666|ACCA|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(5));

-- Location: FF_X63_Y5_N55
\inst700|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux10~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(5),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(5));

-- Location: MLABCELL_X65_Y4_N33
\inst202|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux11~0_combout\ = ( \inst700666|ACCB|valor_interno\(4) & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & !\inst4|selregr~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr~7_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(4),
	combout => \inst202|Mux11~0_combout\);

-- Location: FF_X64_Y4_N34
\inst700666|ACCA|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(4));

-- Location: FF_X65_Y4_N35
\inst700|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux11~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(4));

-- Location: MLABCELL_X65_Y4_N42
\inst202|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux12~0_combout\ = ( !\inst4|selregr~7_combout\ & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & \inst700666|ACCB|valor_interno\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(3),
	dataf => \inst4|ALT_INV_selregr~7_combout\,
	combout => \inst202|Mux12~0_combout\);

-- Location: FF_X64_Y4_N52
\inst700666|ACCA|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(3));

-- Location: FF_X65_Y4_N44
\inst700|valor_interno[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux12~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(3),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[3]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y6_N0
\inst202|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux29~0_combout\ = ( \inst14|valor_interno[1]~1_combout\ & ( \inst14|valor_interno[1]~0_combout\ & ( \inst41|mem_rtl_0|auto_generated|ram_block1a2\ ) ) ) # ( !\inst14|valor_interno[1]~1_combout\ & ( \inst14|valor_interno[1]~0_combout\ & ( 
-- (\inst700666|ACCB|valor_interno\(2) & \inst700666|inst|Equal0~0_combout\) ) ) ) # ( !\inst14|valor_interno[1]~1_combout\ & ( !\inst14|valor_interno[1]~0_combout\ & ( \inst8|valor_interno\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(2),
	datab => \inst700666|ACCB|ALT_INV_valor_interno\(2),
	datac => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datad => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datae => \inst14|ALT_INV_valor_interno[1]~1_combout\,
	dataf => \inst14|ALT_INV_valor_interno[1]~0_combout\,
	combout => \inst202|Mux29~0_combout\);

-- Location: FF_X63_Y5_N38
\inst14|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux29~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(2));

-- Location: LABCELL_X64_Y5_N57
\inst33|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~73_combout\ = ( \inst16|selop\(2) & ( \inst14|valor_interno\(2) ) ) # ( !\inst16|selop\(2) & ( !\inst14|valor_interno\(2) $ (((!\inst16|selop\(1)) # (\inst16|selop\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001111001111000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst14|ALT_INV_valor_interno\(2),
	datad => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(2),
	combout => \inst33|Add0~73_combout\);

-- Location: LABCELL_X63_Y5_N0
\inst202|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux13~0_combout\ = ( \inst700666|ACCB|valor_interno\(2) & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr[1]~4_combout\ & !\inst4|selregr~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr[1]~4_combout\,
	datac => \inst4|ALT_INV_selregr~7_combout\,
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(2),
	combout => \inst202|Mux13~0_combout\);

-- Location: FF_X62_Y4_N40
\inst700666|ACCA|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(2));

-- Location: FF_X63_Y5_N1
\inst700|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux13~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(2));

-- Location: FF_X65_Y5_N56
\inst14|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux30~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(1));

-- Location: MLABCELL_X65_Y5_N36
\inst33|Add0~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~72_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno\(1) ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno\(1) $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111001100001100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst14|ALT_INV_valor_interno\(1),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~72_combout\);

-- Location: MLABCELL_X65_Y5_N48
\inst202|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux31~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( \inst700666|inst|Equal0~0_combout\ & ( (!\inst14|valor_interno[1]~0_combout\ & (((!\inst14|valor_interno[1]~1_combout\ & \inst8|valor_interno\(0))))) # 
-- (\inst14|valor_interno[1]~0_combout\ & (((\inst14|valor_interno[1]~1_combout\)) # (\inst700666|ACCB|valor_interno\(0)))) ) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( \inst700666|inst|Equal0~0_combout\ & ( 
-- (!\inst14|valor_interno[1]~1_combout\ & ((!\inst14|valor_interno[1]~0_combout\ & ((\inst8|valor_interno\(0)))) # (\inst14|valor_interno[1]~0_combout\ & (\inst700666|ACCB|valor_interno\(0))))) ) ) ) # ( 
-- \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( !\inst700666|inst|Equal0~0_combout\ & ( (!\inst14|valor_interno[1]~0_combout\ & (!\inst14|valor_interno[1]~1_combout\ & \inst8|valor_interno\(0))) # (\inst14|valor_interno[1]~0_combout\ & 
-- (\inst14|valor_interno[1]~1_combout\)) ) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( !\inst700666|inst|Equal0~0_combout\ & ( (!\inst14|valor_interno[1]~0_combout\ & (!\inst14|valor_interno[1]~1_combout\ & 
-- \inst8|valor_interno\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000111100001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|ALT_INV_valor_interno\(0),
	datab => \inst14|ALT_INV_valor_interno[1]~0_combout\,
	datac => \inst14|ALT_INV_valor_interno[1]~1_combout\,
	datad => \inst8|ALT_INV_valor_interno\(0),
	datae => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	dataf => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	combout => \inst202|Mux31~0_combout\);

-- Location: FF_X65_Y5_N50
\inst14|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux31~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(0));

-- Location: LABCELL_X64_Y5_N54
\inst33|Add0~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~84_combout\ = ( \inst16|selop\(1) & ( !\inst14|valor_interno\(0) $ (((\inst16|selop\(0)) # (\inst16|selop\(2)))) ) ) # ( !\inst16|selop\(1) & ( \inst14|valor_interno\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno\(0),
	datad => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(1),
	combout => \inst33|Add0~84_combout\);

-- Location: LABCELL_X64_Y5_N0
\inst33|Add0~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~87_cout\ = CARRY(( \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst40|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => GND,
	cout => \inst33|Add0~87_cout\);

-- Location: LABCELL_X64_Y5_N3
\inst33|Add0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~62_sumout\ = SUM(( \inst33|Add0~84_combout\ ) + ( !\inst700|valor_interno\(0) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~87_cout\ ))
-- \inst33|Add0~63\ = CARRY(( \inst33|Add0~84_combout\ ) + ( !\inst700|valor_interno\(0) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~87_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010001101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(0),
	datac => \inst16|ALT_INV_selop\(1),
	datad => \inst33|ALT_INV_Add0~84_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(0),
	cin => \inst33|Add0~87_cout\,
	sumout => \inst33|Add0~62_sumout\,
	cout => \inst33|Add0~63\);

-- Location: LABCELL_X64_Y5_N6
\inst33|Add0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~14_sumout\ = SUM(( \inst33|Add0~72_combout\ ) + ( !\inst700|valor_interno\(1) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~63\ ))
-- \inst33|Add0~15\ = CARRY(( \inst33|Add0~72_combout\ ) + ( !\inst700|valor_interno\(1) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~63\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~72_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(1),
	cin => \inst33|Add0~63\,
	sumout => \inst33|Add0~14_sumout\,
	cout => \inst33|Add0~15\);

-- Location: LABCELL_X64_Y5_N9
\inst33|Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~18_sumout\ = SUM(( \inst33|Add0~73_combout\ ) + ( !\inst700|valor_interno\(2) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~15\ ))
-- \inst33|Add0~19\ = CARRY(( \inst33|Add0~73_combout\ ) + ( !\inst700|valor_interno\(2) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~15\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~73_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(2),
	cin => \inst33|Add0~15\,
	sumout => \inst33|Add0~18_sumout\,
	cout => \inst33|Add0~19\);

-- Location: LABCELL_X64_Y5_N12
\inst33|Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~22_sumout\ = SUM(( \inst33|Add0~74_combout\ ) + ( !\inst700|valor_interno[3]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~19\ ))
-- \inst33|Add0~23\ = CARRY(( \inst33|Add0~74_combout\ ) + ( !\inst700|valor_interno[3]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~19\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~74_combout\,
	dataf => \inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	cin => \inst33|Add0~19\,
	sumout => \inst33|Add0~22_sumout\,
	cout => \inst33|Add0~23\);

-- Location: LABCELL_X64_Y5_N15
\inst33|Add0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~26_sumout\ = SUM(( \inst33|Add0~75_combout\ ) + ( !\inst700|valor_interno\(4) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~23\ ))
-- \inst33|Add0~27\ = CARRY(( \inst33|Add0~75_combout\ ) + ( !\inst700|valor_interno\(4) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~23\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~75_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(4),
	cin => \inst33|Add0~23\,
	sumout => \inst33|Add0~26_sumout\,
	cout => \inst33|Add0~27\);

-- Location: LABCELL_X64_Y5_N18
\inst33|Add0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~30_sumout\ = SUM(( \inst33|Add0~76_combout\ ) + ( !\inst700|valor_interno\(5) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~27\ ))
-- \inst33|Add0~31\ = CARRY(( \inst33|Add0~76_combout\ ) + ( !\inst700|valor_interno\(5) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~27\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~76_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(5),
	cin => \inst33|Add0~27\,
	sumout => \inst33|Add0~30_sumout\,
	cout => \inst33|Add0~31\);

-- Location: LABCELL_X64_Y5_N21
\inst33|Add0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~6_sumout\ = SUM(( \inst33|Add0~70_combout\ ) + ( !\inst700|valor_interno\(6) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~31\ ))
-- \inst33|Add0~7\ = CARRY(( \inst33|Add0~70_combout\ ) + ( !\inst700|valor_interno\(6) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~31\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~70_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(6),
	cin => \inst33|Add0~31\,
	sumout => \inst33|Add0~6_sumout\,
	cout => \inst33|Add0~7\);

-- Location: LABCELL_X64_Y5_N24
\inst33|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~34_sumout\ = SUM(( \inst33|Add0~77_combout\ ) + ( !\inst700|valor_interno\(7) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~7\ ))
-- \inst33|Add0~35\ = CARRY(( \inst33|Add0~77_combout\ ) + ( !\inst700|valor_interno\(7) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~77_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(7),
	cin => \inst33|Add0~7\,
	sumout => \inst33|Add0~34_sumout\,
	cout => \inst33|Add0~35\);

-- Location: LABCELL_X64_Y5_N27
\inst33|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~38_sumout\ = SUM(( \inst33|Add0~78_combout\ ) + ( !\inst700|valor_interno\(8) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~35\ ))
-- \inst33|Add0~39\ = CARRY(( \inst33|Add0~78_combout\ ) + ( !\inst700|valor_interno\(8) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~35\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~78_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(8),
	cin => \inst33|Add0~35\,
	sumout => \inst33|Add0~38_sumout\,
	cout => \inst33|Add0~39\);

-- Location: LABCELL_X64_Y5_N30
\inst33|Add0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~42_sumout\ = SUM(( \inst33|Add0~79_combout\ ) + ( !\inst700|valor_interno\(9) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~39\ ))
-- \inst33|Add0~43\ = CARRY(( \inst33|Add0~79_combout\ ) + ( !\inst700|valor_interno\(9) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~39\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~79_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(9),
	cin => \inst33|Add0~39\,
	sumout => \inst33|Add0~42_sumout\,
	cout => \inst33|Add0~43\);

-- Location: LABCELL_X64_Y5_N33
\inst33|Add0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~46_sumout\ = SUM(( \inst33|Add0~80_combout\ ) + ( !\inst700|valor_interno[10]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~43\ ))
-- \inst33|Add0~47\ = CARRY(( \inst33|Add0~80_combout\ ) + ( !\inst700|valor_interno[10]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~43\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~80_combout\,
	dataf => \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	cin => \inst33|Add0~43\,
	sumout => \inst33|Add0~46_sumout\,
	cout => \inst33|Add0~47\);

-- Location: LABCELL_X64_Y5_N36
\inst33|Add0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~50_sumout\ = SUM(( \inst33|Add0~81_combout\ ) + ( !\inst700|valor_interno\(11) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~47\ ))
-- \inst33|Add0~51\ = CARRY(( \inst33|Add0~81_combout\ ) + ( !\inst700|valor_interno\(11) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~47\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010001101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst33|ALT_INV_Add0~81_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(11),
	cin => \inst33|Add0~47\,
	sumout => \inst33|Add0~50_sumout\,
	cout => \inst33|Add0~51\);

-- Location: LABCELL_X64_Y5_N39
\inst33|Add0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~10_sumout\ = SUM(( \inst33|Add0~71_combout\ ) + ( !\inst700|valor_interno\(12) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~51\ ))
-- \inst33|Add0~11\ = CARRY(( \inst33|Add0~71_combout\ ) + ( !\inst700|valor_interno\(12) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~51\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010001101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst33|ALT_INV_Add0~71_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(12),
	cin => \inst33|Add0~51\,
	sumout => \inst33|Add0~10_sumout\,
	cout => \inst33|Add0~11\);

-- Location: LABCELL_X64_Y5_N42
\inst33|Add0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~54_sumout\ = SUM(( \inst33|Add0~82_combout\ ) + ( !\inst700|valor_interno\(13) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~11\ ))
-- \inst33|Add0~55\ = CARRY(( \inst33|Add0~82_combout\ ) + ( !\inst700|valor_interno\(13) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~11\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~82_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(13),
	cin => \inst33|Add0~11\,
	sumout => \inst33|Add0~54_sumout\,
	cout => \inst33|Add0~55\);

-- Location: LABCELL_X64_Y5_N45
\inst33|Add0~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~58_sumout\ = SUM(( \inst33|Add0~83_combout\ ) + ( !\inst700|valor_interno\(14) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~55\ ))
-- \inst33|Add0~59\ = CARRY(( \inst33|Add0~83_combout\ ) + ( !\inst700|valor_interno\(14) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~55\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~83_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(14),
	cin => \inst33|Add0~55\,
	sumout => \inst33|Add0~58_sumout\,
	cout => \inst33|Add0~59\);

-- Location: LABCELL_X64_Y5_N48
\inst33|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~2_sumout\ = SUM(( \inst33|Add0~69_combout\ ) + ( !\inst700|valor_interno\(15) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~59\ ))
-- \inst33|Add0~3\ = CARRY(( \inst33|Add0~69_combout\ ) + ( !\inst700|valor_interno\(15) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~59\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~69_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(15),
	cin => \inst33|Add0~59\,
	sumout => \inst33|Add0~2_sumout\,
	cout => \inst33|Add0~3\);

-- Location: LABCELL_X64_Y5_N51
\inst33|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~66_sumout\ = SUM(( !\inst33|Equal0~1_combout\ ) + ( GND ) + ( \inst33|Add0~3\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_Equal0~1_combout\,
	cin => \inst33|Add0~3\,
	sumout => \inst33|Add0~66_sumout\);

-- Location: LABCELL_X63_Y5_N39
\inst33|opres[16]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~36_combout\ = ( \inst16|selop\(0) & ( \inst33|Add0~66_sumout\ & ( (!\inst16|selop\(1) & ((!\inst16|selop\(2)))) # (\inst16|selop\(1) & (\inst700|valor_interno\(0) & \inst16|selop\(2))) ) ) ) # ( !\inst16|selop\(0) & ( 
-- \inst33|Add0~66_sumout\ & ( (!\inst16|selop\(1) & (\inst700|valor_interno\(0) & (!\inst16|selop\(2)))) # (\inst16|selop\(1) & (((!\inst16|selop\(2)) # (\inst700|valor_interno[15]~DUPLICATE_q\)))) ) ) ) # ( \inst16|selop\(0) & ( !\inst33|Add0~66_sumout\ & 
-- ( (\inst16|selop\(1) & (\inst700|valor_interno\(0) & \inst16|selop\(2))) ) ) ) # ( !\inst16|selop\(0) & ( !\inst33|Add0~66_sumout\ & ( (!\inst16|selop\(1) & (\inst700|valor_interno\(0) & (!\inst16|selop\(2)))) # (\inst16|selop\(1) & (((\inst16|selop\(2) & 
-- \inst700|valor_interno[15]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101000000010000000101110000011101011010000110100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst700|ALT_INV_valor_interno\(0),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst33|ALT_INV_Add0~66_sumout\,
	combout => \inst33|opres[16]~36_combout\);

-- Location: LABCELL_X62_Y5_N54
\inst33|opres[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(16) = ( \inst33|opres[16]~36_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(16)) ) ) # ( !\inst33|opres[16]~36_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres[15]~3_combout\,
	datad => \inst33|ALT_INV_opres\(16),
	dataf => \inst33|ALT_INV_opres[16]~36_combout\,
	combout => \inst33|opres\(16));

-- Location: LABCELL_X62_Y5_N3
\inst|ci\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ci~combout\ = ( \inst33|opres\(16) & ( (\inst|ci~combout\) # (\inst|Equal2~0_combout\) ) ) # ( !\inst33|opres\(16) & ( (!\inst|Equal2~0_combout\ & \inst|ci~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Equal2~0_combout\,
	datad => \inst|ALT_INV_ci~combout\,
	dataf => \inst33|ALT_INV_opres\(16),
	combout => \inst|ci~combout\);

-- Location: LABCELL_X63_Y5_N48
\inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|ci~combout\ & ( (!\inst16|selc~q\) # (\inst16|cadj~q\) ) ) # ( !\inst|ci~combout\ & ( (\inst16|selc~q\ & \inst16|cadj~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_selc~q\,
	datad => \inst16|ALT_INV_cadj~q\,
	dataf => \inst|ALT_INV_ci~combout\,
	combout => \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X63_Y5_N24
\inst33|opres[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~1_combout\ = ( \inst16|selop\(1) & ( \inst16|selop\(0) & ( (\inst14|valor_interno\(15) & (\inst700|valor_interno[15]~DUPLICATE_q\ & !\inst16|selop\(2))) ) ) ) # ( !\inst16|selop\(1) & ( \inst16|selop\(0) & ( 
-- (\inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst16|selop\(2)) ) ) ) # ( \inst16|selop\(1) & ( !\inst16|selop\(0) & ( (\inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst16|selop\(2)) ) ) ) # ( !\inst16|selop\(1) & 
-- ( !\inst16|selop\(0) & ( (\inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst16|selop\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst14|ALT_INV_valor_interno\(15),
	datac => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datad => \inst16|ALT_INV_selop\(2),
	datae => \inst16|ALT_INV_selop\(1),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[15]~1_combout\);

-- Location: LABCELL_X63_Y5_N18
\inst33|opres[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~2_combout\ = ( \inst33|Add0~2_sumout\ & ( (((!\inst33|opres[15]~0_combout\ & \inst16|selop\(2))) # (\inst33|opres[15]~1_combout\)) # (\inst33|Add0~0_combout\) ) ) # ( !\inst33|Add0~2_sumout\ & ( (!\inst33|Add0~0_combout\ & 
-- (((!\inst33|opres[15]~0_combout\ & \inst16|selop\(2))) # (\inst33|opres[15]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010001100000011001000110000111111101111110011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[15]~0_combout\,
	datab => \inst33|ALT_INV_Add0~0_combout\,
	datac => \inst33|ALT_INV_opres[15]~1_combout\,
	datad => \inst16|ALT_INV_selop\(2),
	dataf => \inst33|ALT_INV_Add0~2_sumout\,
	combout => \inst33|opres[15]~2_combout\);

-- Location: LABCELL_X62_Y5_N27
\inst33|opres[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(15) = (!\inst33|opres[15]~3_combout\ & (\inst33|opres[15]~2_combout\)) # (\inst33|opres[15]~3_combout\ & ((\inst33|opres\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres[15]~3_combout\,
	datac => \inst33|ALT_INV_opres[15]~2_combout\,
	datad => \inst33|ALT_INV_opres\(15),
	combout => \inst33|opres\(15));

-- Location: FF_X62_Y5_N26
\inst24|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(15),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(15));

-- Location: LABCELL_X66_Y5_N0
\inst202|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux17~1_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a14\ & ( ((\inst202|Mux17~2_combout\ & \inst700666|ACCB|valor_interno\(14))) # (\inst202|Mux17~0_combout\) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a14\ & ( 
-- (\inst202|Mux17~2_combout\ & \inst700666|ACCB|valor_interno\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst202|ALT_INV_Mux17~2_combout\,
	datab => \inst202|ALT_INV_Mux17~0_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(14),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \inst202|Mux17~1_combout\);

-- Location: FF_X66_Y5_N1
\inst14|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux17~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(14));

-- Location: LABCELL_X66_Y4_N0
\inst33|opres[14]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~32_combout\ = ( \inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( !\inst700|valor_interno\(14) $ (\inst14|valor_interno\(14)) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( 
-- !\inst700|valor_interno[13]~DUPLICATE_q\ ) ) ) # ( \inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & ( (!\inst700|valor_interno\(14) & !\inst14|valor_interno\(14)) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & 
-- ( !\inst700|valor_interno[15]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101010100000000011001100110011001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(14),
	datab => \inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\,
	datac => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datad => \inst14|ALT_INV_valor_interno\(14),
	datae => \inst33|ALT_INV_opres[11]~4_combout\,
	dataf => \inst33|ALT_INV_opres[11]~5_combout\,
	combout => \inst33|opres[14]~32_combout\);

-- Location: LABCELL_X63_Y5_N42
\inst33|opres[14]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~33_combout\ = ( \inst33|Equal0~0_combout\ & ( \inst33|Add0~58_sumout\ & ( ((\inst14|valor_interno\(14) & \inst700|valor_interno\(14))) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Equal0~0_combout\ & ( \inst33|Add0~58_sumout\ & ( 
-- (!\inst33|opres[14]~32_combout\) # (\inst33|Add0~0_combout\) ) ) ) # ( \inst33|Equal0~0_combout\ & ( !\inst33|Add0~58_sumout\ & ( (\inst14|valor_interno\(14) & (\inst700|valor_interno\(14) & !\inst33|Add0~0_combout\)) ) ) ) # ( !\inst33|Equal0~0_combout\ 
-- & ( !\inst33|Add0~58_sumout\ & ( (!\inst33|opres[14]~32_combout\ & !\inst33|Add0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000001010000000011001100111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(14),
	datab => \inst33|ALT_INV_opres[14]~32_combout\,
	datac => \inst700|ALT_INV_valor_interno\(14),
	datad => \inst33|ALT_INV_Add0~0_combout\,
	datae => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_Add0~58_sumout\,
	combout => \inst33|opres[14]~33_combout\);

-- Location: LABCELL_X63_Y5_N6
\inst33|opres[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(14) = ( \inst33|opres[14]~33_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(14)) ) ) # ( !\inst33|opres[14]~33_combout\ & ( (\inst33|opres\(14) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres\(14),
	datad => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[14]~33_combout\,
	combout => \inst33|opres\(14));

-- Location: FF_X62_Y5_N44
\inst24|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(14),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(14));

-- Location: LABCELL_X66_Y5_N6
\inst202|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux18~0_combout\ = ( \inst700666|ACCB|valor_interno\(13) & ( ((\inst202|Mux17~0_combout\ & \inst41|mem_rtl_0|auto_generated|ram_block1a13\)) # (\inst202|Mux17~2_combout\) ) ) # ( !\inst700666|ACCB|valor_interno\(13) & ( (\inst202|Mux17~0_combout\ 
-- & \inst41|mem_rtl_0|auto_generated|ram_block1a13\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst202|ALT_INV_Mux17~2_combout\,
	datab => \inst202|ALT_INV_Mux17~0_combout\,
	datac => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(13),
	combout => \inst202|Mux18~0_combout\);

-- Location: FF_X66_Y5_N7
\inst14|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux18~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(13));

-- Location: LABCELL_X62_Y5_N42
\inst33|opres[13]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~30_combout\ = ( \inst14|valor_interno\(13) & ( \inst700|valor_interno\(14) & ( (\inst33|opres[11]~5_combout\ & ((!\inst33|opres[11]~4_combout\ & ((!\inst700|valor_interno\(12)))) # (\inst33|opres[11]~4_combout\ & 
-- (\inst700|valor_interno[13]~DUPLICATE_q\)))) ) ) ) # ( !\inst14|valor_interno\(13) & ( \inst700|valor_interno\(14) & ( (!\inst33|opres[11]~4_combout\ & (\inst33|opres[11]~5_combout\ & ((!\inst700|valor_interno\(12))))) # (\inst33|opres[11]~4_combout\ & 
-- (((!\inst700|valor_interno[13]~DUPLICATE_q\)))) ) ) ) # ( \inst14|valor_interno\(13) & ( !\inst700|valor_interno\(14) & ( (!\inst33|opres[11]~5_combout\ & (((!\inst33|opres[11]~4_combout\)))) # (\inst33|opres[11]~5_combout\ & 
-- ((!\inst33|opres[11]~4_combout\ & ((!\inst700|valor_interno\(12)))) # (\inst33|opres[11]~4_combout\ & (\inst700|valor_interno[13]~DUPLICATE_q\)))) ) ) ) # ( !\inst14|valor_interno\(13) & ( !\inst700|valor_interno\(14) & ( (!\inst33|opres[11]~4_combout\ & 
-- ((!\inst33|opres[11]~5_combout\) # ((!\inst700|valor_interno\(12))))) # (\inst33|opres[11]~4_combout\ & (((!\inst700|valor_interno[13]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001100111110100001000101010000110011000101000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[11]~5_combout\,
	datab => \inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\,
	datac => \inst700|ALT_INV_valor_interno\(12),
	datad => \inst33|ALT_INV_opres[11]~4_combout\,
	datae => \inst14|ALT_INV_valor_interno\(13),
	dataf => \inst700|ALT_INV_valor_interno\(14),
	combout => \inst33|opres[13]~30_combout\);

-- Location: LABCELL_X63_Y5_N12
\inst33|opres[13]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~31_combout\ = ( \inst33|Equal0~0_combout\ & ( \inst33|Add0~54_sumout\ & ( ((\inst700|valor_interno[13]~DUPLICATE_q\ & \inst14|valor_interno\(13))) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Equal0~0_combout\ & ( 
-- \inst33|Add0~54_sumout\ & ( (!\inst33|opres[13]~30_combout\) # (\inst33|Add0~0_combout\) ) ) ) # ( \inst33|Equal0~0_combout\ & ( !\inst33|Add0~54_sumout\ & ( (\inst700|valor_interno[13]~DUPLICATE_q\ & (!\inst33|Add0~0_combout\ & 
-- \inst14|valor_interno\(13))) ) ) ) # ( !\inst33|Equal0~0_combout\ & ( !\inst33|Add0~54_sumout\ & ( (!\inst33|opres[13]~30_combout\ & !\inst33|Add0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000101000011001111110011110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\,
	datab => \inst33|ALT_INV_opres[13]~30_combout\,
	datac => \inst33|ALT_INV_Add0~0_combout\,
	datad => \inst14|ALT_INV_valor_interno\(13),
	datae => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_Add0~54_sumout\,
	combout => \inst33|opres[13]~31_combout\);

-- Location: LABCELL_X62_Y5_N15
\inst33|opres[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(13) = ( \inst33|opres[13]~31_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(13)) ) ) # ( !\inst33|opres[13]~31_combout\ & ( (\inst33|opres\(13) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres\(13),
	datac => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[13]~31_combout\,
	combout => \inst33|opres\(13));

-- Location: FF_X62_Y5_N23
\inst24|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(13),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(13));

-- Location: FF_X66_Y5_N53
\inst700666|ACCB|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(12),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(12));

-- Location: LABCELL_X66_Y5_N18
\inst202|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux19~0_combout\ = ( \inst700666|ACCB|valor_interno\(12) & ( ((\inst202|Mux17~0_combout\ & \inst41|mem_rtl_0|auto_generated|ram_block1a12\)) # (\inst202|Mux17~2_combout\) ) ) # ( !\inst700666|ACCB|valor_interno\(12) & ( (\inst202|Mux17~0_combout\ 
-- & \inst41|mem_rtl_0|auto_generated|ram_block1a12\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst202|ALT_INV_Mux17~0_combout\,
	datac => \inst202|ALT_INV_Mux17~2_combout\,
	datad => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(12),
	combout => \inst202|Mux19~0_combout\);

-- Location: FF_X66_Y5_N19
\inst14|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux19~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(12));

-- Location: LABCELL_X66_Y5_N54
\inst33|opres[12]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~8_combout\ = ( \inst700|valor_interno[13]~DUPLICATE_q\ & ( \inst33|opres[11]~5_combout\ & ( (!\inst33|opres[11]~4_combout\ & (((!\inst700|valor_interno\(11))))) # (\inst33|opres[11]~4_combout\ & (!\inst700|valor_interno\(12) $ 
-- ((\inst14|valor_interno[12]~DUPLICATE_q\)))) ) ) ) # ( !\inst700|valor_interno[13]~DUPLICATE_q\ & ( \inst33|opres[11]~5_combout\ & ( (!\inst33|opres[11]~4_combout\ & (((!\inst700|valor_interno\(11))))) # (\inst33|opres[11]~4_combout\ & 
-- (!\inst700|valor_interno\(12) $ ((\inst14|valor_interno[12]~DUPLICATE_q\)))) ) ) ) # ( \inst700|valor_interno[13]~DUPLICATE_q\ & ( !\inst33|opres[11]~5_combout\ & ( (\inst33|opres[11]~4_combout\ & (!\inst700|valor_interno\(12) & 
-- !\inst14|valor_interno[12]~DUPLICATE_q\)) ) ) ) # ( !\inst700|valor_interno[13]~DUPLICATE_q\ & ( !\inst33|opres[11]~5_combout\ & ( (!\inst33|opres[11]~4_combout\) # ((!\inst700|valor_interno\(12) & !\inst14|valor_interno[12]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101010010000000100000011101011010000011110101101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[11]~4_combout\,
	datab => \inst700|ALT_INV_valor_interno\(12),
	datac => \inst14|ALT_INV_valor_interno[12]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno\(11),
	datae => \inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\,
	dataf => \inst33|ALT_INV_opres[11]~5_combout\,
	combout => \inst33|opres[12]~8_combout\);

-- Location: LABCELL_X63_Y5_N33
\inst33|opres[12]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~9_combout\ = ( \inst33|Equal0~0_combout\ & ( \inst33|Add0~10_sumout\ & ( ((\inst14|valor_interno\(12) & \inst700|valor_interno\(12))) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Equal0~0_combout\ & ( \inst33|Add0~10_sumout\ & ( 
-- (!\inst33|opres[12]~8_combout\) # (\inst33|Add0~0_combout\) ) ) ) # ( \inst33|Equal0~0_combout\ & ( !\inst33|Add0~10_sumout\ & ( (\inst14|valor_interno\(12) & (\inst700|valor_interno\(12) & !\inst33|Add0~0_combout\)) ) ) ) # ( !\inst33|Equal0~0_combout\ & 
-- ( !\inst33|Add0~10_sumout\ & ( (!\inst33|opres[12]~8_combout\ & !\inst33|Add0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000001010000000011001100111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(12),
	datab => \inst33|ALT_INV_opres[12]~8_combout\,
	datac => \inst700|ALT_INV_valor_interno\(12),
	datad => \inst33|ALT_INV_Add0~0_combout\,
	datae => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_Add0~10_sumout\,
	combout => \inst33|opres[12]~9_combout\);

-- Location: LABCELL_X63_Y5_N21
\inst33|opres[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(12) = ( \inst33|opres[12]~9_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(12)) ) ) # ( !\inst33|opres[12]~9_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres[15]~3_combout\,
	datad => \inst33|ALT_INV_opres\(12),
	dataf => \inst33|ALT_INV_opres[12]~9_combout\,
	combout => \inst33|opres\(12));

-- Location: FF_X63_Y4_N38
\inst24|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(12),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(12));

-- Location: LABCELL_X66_Y5_N9
\inst202|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux20~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a11\ & ( ((\inst202|Mux17~2_combout\ & \inst700666|ACCB|valor_interno[11]~DUPLICATE_q\)) # (\inst202|Mux17~0_combout\) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a11\ & ( 
-- (\inst202|Mux17~2_combout\ & \inst700666|ACCB|valor_interno[11]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst202|ALT_INV_Mux17~2_combout\,
	datab => \inst202|ALT_INV_Mux17~0_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno[11]~DUPLICATE_q\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \inst202|Mux20~0_combout\);

-- Location: FF_X66_Y5_N10
\inst14|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux20~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(11));

-- Location: LABCELL_X66_Y4_N33
\inst33|opres[11]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~28_combout\ = ( \inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( !\inst14|valor_interno\(11) $ (\inst700|valor_interno\(11)) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( 
-- !\inst700|valor_interno[10]~DUPLICATE_q\ ) ) ) # ( \inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & ( (!\inst14|valor_interno\(11) & !\inst700|valor_interno\(11)) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & 
-- ( !\inst700|valor_interno\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011000000000011110000111100001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(12),
	datab => \inst14|ALT_INV_valor_interno\(11),
	datac => \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno\(11),
	datae => \inst33|ALT_INV_opres[11]~4_combout\,
	dataf => \inst33|ALT_INV_opres[11]~5_combout\,
	combout => \inst33|opres[11]~28_combout\);

-- Location: LABCELL_X63_Y4_N24
\inst33|opres[11]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~29_combout\ = ( \inst33|Add0~50_sumout\ & ( \inst33|Add0~0_combout\ ) ) # ( \inst33|Add0~50_sumout\ & ( !\inst33|Add0~0_combout\ & ( (!\inst33|Equal0~0_combout\ & (((!\inst33|opres[11]~28_combout\)))) # (\inst33|Equal0~0_combout\ & 
-- (\inst700|valor_interno\(11) & (\inst14|valor_interno\(11)))) ) ) ) # ( !\inst33|Add0~50_sumout\ & ( !\inst33|Add0~0_combout\ & ( (!\inst33|Equal0~0_combout\ & (((!\inst33|opres[11]~28_combout\)))) # (\inst33|Equal0~0_combout\ & 
-- (\inst700|valor_interno\(11) & (\inst14|valor_interno\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101100000001101010110000000100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datab => \inst700|ALT_INV_valor_interno\(11),
	datac => \inst14|ALT_INV_valor_interno\(11),
	datad => \inst33|ALT_INV_opres[11]~28_combout\,
	datae => \inst33|ALT_INV_Add0~50_sumout\,
	dataf => \inst33|ALT_INV_Add0~0_combout\,
	combout => \inst33|opres[11]~29_combout\);

-- Location: LABCELL_X63_Y4_N21
\inst33|opres[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(11) = ( \inst33|opres[11]~29_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(11)) ) ) # ( !\inst33|opres[11]~29_combout\ & ( (\inst33|opres\(11) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(11),
	datac => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[11]~29_combout\,
	combout => \inst33|opres\(11));

-- Location: FF_X63_Y4_N29
\inst24|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(11),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(11));

-- Location: FF_X65_Y4_N11
\inst700666|ACCB|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(11),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(11));

-- Location: MLABCELL_X65_Y4_N27
\inst202|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux4~0_combout\ = ( \inst700666|ACCB|valor_interno\(11) & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr~7_combout\ & !\inst4|selregr[1]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr~7_combout\,
	datac => \inst4|ALT_INV_selregr[1]~4_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(11),
	combout => \inst202|Mux4~0_combout\);

-- Location: FF_X63_Y4_N34
\inst700666|ACCA|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(11),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(11));

-- Location: FF_X65_Y4_N28
\inst700|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux4~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(11),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(11));

-- Location: LABCELL_X66_Y4_N24
\inst33|opres[10]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~26_combout\ = ( \inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( !\inst14|valor_interno\(10) $ (\inst700|valor_interno[10]~DUPLICATE_q\) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( 
-- !\inst700|valor_interno\(9) ) ) ) # ( \inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & ( (!\inst14|valor_interno\(10) & !\inst700|valor_interno[10]~DUPLICATE_q\) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & ( 
-- !\inst700|valor_interno\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011000000000011110000111100001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(11),
	datab => \inst14|ALT_INV_valor_interno\(10),
	datac => \inst700|ALT_INV_valor_interno\(9),
	datad => \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	datae => \inst33|ALT_INV_opres[11]~4_combout\,
	dataf => \inst33|ALT_INV_opres[11]~5_combout\,
	combout => \inst33|opres[10]~26_combout\);

-- Location: FF_X65_Y4_N20
\inst700|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux5~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(10),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(10));

-- Location: LABCELL_X63_Y4_N42
\inst33|opres[10]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~27_combout\ = ( \inst33|Add0~46_sumout\ & ( \inst33|Add0~0_combout\ ) ) # ( \inst33|Add0~46_sumout\ & ( !\inst33|Add0~0_combout\ & ( (!\inst33|Equal0~0_combout\ & (!\inst33|opres[10]~26_combout\)) # (\inst33|Equal0~0_combout\ & 
-- (((\inst700|valor_interno\(10) & \inst14|valor_interno\(10))))) ) ) ) # ( !\inst33|Add0~46_sumout\ & ( !\inst33|Add0~0_combout\ & ( (!\inst33|Equal0~0_combout\ & (!\inst33|opres[10]~26_combout\)) # (\inst33|Equal0~0_combout\ & 
-- (((\inst700|valor_interno\(10) & \inst14|valor_interno\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001101100010001000110100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datab => \inst33|ALT_INV_opres[10]~26_combout\,
	datac => \inst700|ALT_INV_valor_interno\(10),
	datad => \inst14|ALT_INV_valor_interno\(10),
	datae => \inst33|ALT_INV_Add0~46_sumout\,
	dataf => \inst33|ALT_INV_Add0~0_combout\,
	combout => \inst33|opres[10]~27_combout\);

-- Location: LABCELL_X63_Y4_N51
\inst33|opres[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(10) = ( \inst33|opres[10]~27_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(10)) ) ) # ( !\inst33|opres[10]~27_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres[15]~3_combout\,
	datad => \inst33|ALT_INV_opres\(10),
	dataf => \inst33|ALT_INV_opres[10]~27_combout\,
	combout => \inst33|opres\(10));

-- Location: FF_X63_Y4_N11
\inst24|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(10),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(10));

-- Location: LABCELL_X66_Y5_N42
\inst202|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux22~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a9\ & ( ((\inst202|Mux17~2_combout\ & \inst700666|ACCB|valor_interno\(9))) # (\inst202|Mux17~0_combout\) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a9\ & ( 
-- (\inst202|Mux17~2_combout\ & \inst700666|ACCB|valor_interno\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst202|ALT_INV_Mux17~0_combout\,
	datac => \inst202|ALT_INV_Mux17~2_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(9),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \inst202|Mux22~0_combout\);

-- Location: FF_X65_Y5_N47
\inst14|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux22~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[12]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(9));

-- Location: FF_X65_Y4_N49
\inst700|valor_interno[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux7~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(8),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[8]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y4_N24
\inst33|opres[9]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~24_combout\ = ( \inst700|valor_interno\(9) & ( \inst33|opres[11]~4_combout\ & ( (\inst14|valor_interno\(9) & \inst33|opres[11]~5_combout\) ) ) ) # ( !\inst700|valor_interno\(9) & ( \inst33|opres[11]~4_combout\ & ( 
-- !\inst14|valor_interno\(9) ) ) ) # ( \inst700|valor_interno\(9) & ( !\inst33|opres[11]~4_combout\ & ( (!\inst33|opres[11]~5_combout\ & ((!\inst700|valor_interno\(10)))) # (\inst33|opres[11]~5_combout\ & (!\inst700|valor_interno[8]~DUPLICATE_q\)) ) ) ) # ( 
-- !\inst700|valor_interno\(9) & ( !\inst33|opres[11]~4_combout\ & ( (!\inst33|opres[11]~5_combout\ & ((!\inst700|valor_interno\(10)))) # (\inst33|opres[11]~5_combout\ & (!\inst700|valor_interno[8]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000001100111111000000110010101010101010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(9),
	datab => \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	datac => \inst33|ALT_INV_opres[11]~5_combout\,
	datad => \inst700|ALT_INV_valor_interno\(10),
	datae => \inst700|ALT_INV_valor_interno\(9),
	dataf => \inst33|ALT_INV_opres[11]~4_combout\,
	combout => \inst33|opres[9]~24_combout\);

-- Location: LABCELL_X63_Y4_N12
\inst33|opres[9]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~25_combout\ = ( \inst33|Add0~42_sumout\ & ( \inst700|valor_interno\(9) & ( ((!\inst33|Equal0~0_combout\ & (!\inst33|opres[9]~24_combout\)) # (\inst33|Equal0~0_combout\ & ((\inst14|valor_interno\(9))))) # (\inst33|Add0~0_combout\) ) ) ) # 
-- ( !\inst33|Add0~42_sumout\ & ( \inst700|valor_interno\(9) & ( (!\inst33|Add0~0_combout\ & ((!\inst33|Equal0~0_combout\ & (!\inst33|opres[9]~24_combout\)) # (\inst33|Equal0~0_combout\ & ((\inst14|valor_interno\(9)))))) ) ) ) # ( \inst33|Add0~42_sumout\ & ( 
-- !\inst700|valor_interno\(9) & ( ((!\inst33|opres[9]~24_combout\ & !\inst33|Equal0~0_combout\)) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Add0~42_sumout\ & ( !\inst700|valor_interno\(9) & ( (!\inst33|opres[9]~24_combout\ & (!\inst33|Equal0~0_combout\ 
-- & !\inst33|Add0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100011111000111110000000101100001000111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[9]~24_combout\,
	datab => \inst33|ALT_INV_Equal0~0_combout\,
	datac => \inst33|ALT_INV_Add0~0_combout\,
	datad => \inst14|ALT_INV_valor_interno\(9),
	datae => \inst33|ALT_INV_Add0~42_sumout\,
	dataf => \inst700|ALT_INV_valor_interno\(9),
	combout => \inst33|opres[9]~25_combout\);

-- Location: LABCELL_X63_Y4_N0
\inst33|opres[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(9) = ( \inst33|opres[9]~25_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(9)) ) ) # ( !\inst33|opres[9]~25_combout\ & ( (\inst33|opres\(9) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres\(9),
	datad => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[9]~25_combout\,
	combout => \inst33|opres\(9));

-- Location: FF_X63_Y4_N2
\inst24|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst33|opres\(9),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(9));

-- Location: FF_X65_Y5_N7
\inst700666|ACCB|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(9),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(9));

-- Location: MLABCELL_X65_Y4_N24
\inst202|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux6~0_combout\ = ( !\inst4|selregr[1]~4_combout\ & ( (\inst4|selregr[0]~3_combout\ & (!\inst4|selregr~7_combout\ & \inst700666|ACCB|valor_interno\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~3_combout\,
	datab => \inst4|ALT_INV_selregr~7_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(9),
	dataf => \inst4|ALT_INV_selregr[1]~4_combout\,
	combout => \inst202|Mux6~0_combout\);

-- Location: FF_X65_Y4_N14
\inst700666|ACCA|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(9),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(9));

-- Location: FF_X65_Y4_N26
\inst700|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux6~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(9),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(9));

-- Location: LABCELL_X66_Y4_N42
\inst33|opres[8]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~22_combout\ = ( \inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( !\inst14|valor_interno\(8) $ (\inst700|valor_interno[8]~DUPLICATE_q\) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( 
-- !\inst700|valor_interno\(7) ) ) ) # ( \inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & ( (!\inst14|valor_interno\(8) & !\inst700|valor_interno[8]~DUPLICATE_q\) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & ( 
-- !\inst700|valor_interno\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111100000000000011001100110011001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(9),
	datab => \inst700|ALT_INV_valor_interno\(7),
	datac => \inst14|ALT_INV_valor_interno\(8),
	datad => \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	datae => \inst33|ALT_INV_opres[11]~4_combout\,
	dataf => \inst33|ALT_INV_opres[11]~5_combout\,
	combout => \inst33|opres[8]~22_combout\);

-- Location: LABCELL_X63_Y4_N6
\inst33|opres[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~23_combout\ = ( \inst700|valor_interno[8]~DUPLICATE_q\ & ( \inst33|Add0~38_sumout\ & ( ((!\inst33|Equal0~0_combout\ & (!\inst33|opres[8]~22_combout\)) # (\inst33|Equal0~0_combout\ & ((\inst14|valor_interno\(8))))) # 
-- (\inst33|Add0~0_combout\) ) ) ) # ( !\inst700|valor_interno[8]~DUPLICATE_q\ & ( \inst33|Add0~38_sumout\ & ( ((!\inst33|Equal0~0_combout\ & !\inst33|opres[8]~22_combout\)) # (\inst33|Add0~0_combout\) ) ) ) # ( \inst700|valor_interno[8]~DUPLICATE_q\ & ( 
-- !\inst33|Add0~38_sumout\ & ( (!\inst33|Add0~0_combout\ & ((!\inst33|Equal0~0_combout\ & (!\inst33|opres[8]~22_combout\)) # (\inst33|Equal0~0_combout\ & ((\inst14|valor_interno\(8)))))) ) ) ) # ( !\inst700|valor_interno[8]~DUPLICATE_q\ & ( 
-- !\inst33|Add0~38_sumout\ & ( (!\inst33|Equal0~0_combout\ & (!\inst33|opres[8]~22_combout\ & !\inst33|Add0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001101000010001111100011111000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datab => \inst33|ALT_INV_opres[8]~22_combout\,
	datac => \inst33|ALT_INV_Add0~0_combout\,
	datad => \inst14|ALT_INV_valor_interno\(8),
	datae => \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	dataf => \inst33|ALT_INV_Add0~38_sumout\,
	combout => \inst33|opres[8]~23_combout\);

-- Location: LABCELL_X63_Y4_N3
\inst33|opres[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(8) = ( \inst33|opres[8]~23_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(8)) ) ) # ( !\inst33|opres[8]~23_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres[15]~3_combout\,
	datad => \inst33|ALT_INV_opres\(8),
	dataf => \inst33|ALT_INV_opres[8]~23_combout\,
	combout => \inst33|opres\(8));

-- Location: FF_X63_Y4_N5
\inst24|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst33|opres\(8),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(8));

-- Location: MLABCELL_X65_Y5_N24
\inst202|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux24~0_combout\ = ( \inst700666|ACCB|valor_interno\(7) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a7\ & ( (!\inst4|selsrc[1]~2_combout\ & (!\inst4|selsrc[0]~3_combout\)) # (\inst4|selsrc[1]~2_combout\ & (\inst4|selsrc[0]~3_combout\ & 
-- (!\inst700666|inst|Equal0~1_combout\ & \inst700666|inst|Equal0~0_combout\))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(7) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a7\ & ( (!\inst4|selsrc[1]~2_combout\ & !\inst4|selsrc[0]~3_combout\) ) ) ) # ( 
-- \inst700666|ACCB|valor_interno\(7) & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a7\ & ( (\inst4|selsrc[1]~2_combout\ & (\inst4|selsrc[0]~3_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|inst|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000010001000100010001000100010011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc[1]~2_combout\,
	datab => \inst4|ALT_INV_selsrc[0]~3_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datad => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(7),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \inst202|Mux24~0_combout\);

-- Location: FF_X65_Y5_N25
\inst14|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux24~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(7));

-- Location: LABCELL_X66_Y4_N15
\inst33|opres[7]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~20_combout\ = ( \inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( !\inst14|valor_interno\(7) $ (\inst700|valor_interno\(7)) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( 
-- !\inst700|valor_interno\(6) ) ) ) # ( \inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & ( (!\inst14|valor_interno\(7) & !\inst700|valor_interno\(7)) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & ( 
-- !\inst700|valor_interno[8]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100101000001010000011111111000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(7),
	datab => \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	datac => \inst700|ALT_INV_valor_interno\(7),
	datad => \inst700|ALT_INV_valor_interno\(6),
	datae => \inst33|ALT_INV_opres[11]~4_combout\,
	dataf => \inst33|ALT_INV_opres[11]~5_combout\,
	combout => \inst33|opres[7]~20_combout\);

-- Location: LABCELL_X63_Y4_N30
\inst33|opres[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~21_combout\ = ( \inst33|opres[7]~20_combout\ & ( \inst33|Add0~34_sumout\ & ( ((\inst700|valor_interno\(7) & (\inst33|Equal0~0_combout\ & \inst14|valor_interno\(7)))) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|opres[7]~20_combout\ & ( 
-- \inst33|Add0~34_sumout\ & ( (!\inst33|Equal0~0_combout\) # (((\inst700|valor_interno\(7) & \inst14|valor_interno\(7))) # (\inst33|Add0~0_combout\)) ) ) ) # ( \inst33|opres[7]~20_combout\ & ( !\inst33|Add0~34_sumout\ & ( (\inst700|valor_interno\(7) & 
-- (\inst33|Equal0~0_combout\ & (!\inst33|Add0~0_combout\ & \inst14|valor_interno\(7)))) ) ) ) # ( !\inst33|opres[7]~20_combout\ & ( !\inst33|Add0~34_sumout\ & ( (!\inst33|Add0~0_combout\ & ((!\inst33|Equal0~0_combout\) # ((\inst700|valor_interno\(7) & 
-- \inst14|valor_interno\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011010000000000000001000011001111110111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(7),
	datab => \inst33|ALT_INV_Equal0~0_combout\,
	datac => \inst33|ALT_INV_Add0~0_combout\,
	datad => \inst14|ALT_INV_valor_interno\(7),
	datae => \inst33|ALT_INV_opres[7]~20_combout\,
	dataf => \inst33|ALT_INV_Add0~34_sumout\,
	combout => \inst33|opres[7]~21_combout\);

-- Location: LABCELL_X63_Y4_N57
\inst33|opres[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(7) = ( \inst33|opres[7]~21_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(7)) ) ) # ( !\inst33|opres[7]~21_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres[15]~3_combout\,
	datad => \inst33|ALT_INV_opres\(7),
	dataf => \inst33|ALT_INV_opres[7]~21_combout\,
	combout => \inst33|opres\(7));

-- Location: FF_X63_Y4_N59
\inst24|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst33|opres\(7),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(7));

-- Location: MLABCELL_X65_Y5_N27
\inst202|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux25~0_combout\ = ( \inst700666|ACCB|valor_interno\(6) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a6\ & ( (!\inst4|selsrc[1]~2_combout\ & (!\inst4|selsrc[0]~3_combout\)) # (\inst4|selsrc[1]~2_combout\ & (\inst4|selsrc[0]~3_combout\ & 
-- (\inst700666|inst|Equal0~0_combout\ & !\inst700666|inst|Equal0~1_combout\))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(6) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a6\ & ( (!\inst4|selsrc[1]~2_combout\ & !\inst4|selsrc[0]~3_combout\) ) ) ) # ( 
-- \inst700666|ACCB|valor_interno\(6) & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a6\ & ( (\inst4|selsrc[1]~2_combout\ & (\inst4|selsrc[0]~3_combout\ & (\inst700666|inst|Equal0~0_combout\ & !\inst700666|inst|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000010001000100010001000100110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc[1]~2_combout\,
	datab => \inst4|ALT_INV_selsrc[0]~3_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datad => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(6),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \inst202|Mux25~0_combout\);

-- Location: FF_X65_Y5_N29
\inst14|valor_interno[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux25~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[6]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N30
\inst33|Add0~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~70_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno[6]~DUPLICATE_q\ ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno[6]~DUPLICATE_q\ $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100101101001011010010110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst14|ALT_INV_valor_interno[6]~DUPLICATE_q\,
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~70_combout\);

-- Location: FF_X65_Y5_N28
\inst14|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux25~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(6));

-- Location: FF_X63_Y5_N56
\inst700|valor_interno[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux10~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(5),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[5]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y4_N36
\inst33|opres[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~6_combout\ = ( \inst14|valor_interno\(6) & ( \inst33|opres[11]~4_combout\ & ( (\inst700|valor_interno\(6) & \inst33|opres[11]~5_combout\) ) ) ) # ( !\inst14|valor_interno\(6) & ( \inst33|opres[11]~4_combout\ & ( 
-- !\inst700|valor_interno\(6) ) ) ) # ( \inst14|valor_interno\(6) & ( !\inst33|opres[11]~4_combout\ & ( (!\inst33|opres[11]~5_combout\ & (!\inst700|valor_interno\(7))) # (\inst33|opres[11]~5_combout\ & ((!\inst700|valor_interno[5]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst14|valor_interno\(6) & ( !\inst33|opres[11]~4_combout\ & ( (!\inst33|opres[11]~5_combout\ & (!\inst700|valor_interno\(7))) # (\inst33|opres[11]~5_combout\ & ((!\inst700|valor_interno[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110100000101011111010000011001100110011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(7),
	datab => \inst700|ALT_INV_valor_interno\(6),
	datac => \inst33|ALT_INV_opres[11]~5_combout\,
	datad => \inst700|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datae => \inst14|ALT_INV_valor_interno\(6),
	dataf => \inst33|ALT_INV_opres[11]~4_combout\,
	combout => \inst33|opres[6]~6_combout\);

-- Location: LABCELL_X64_Y4_N6
\inst33|opres[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~7_combout\ = ( \inst33|opres[6]~6_combout\ & ( \inst33|Add0~0_combout\ & ( \inst33|Add0~6_sumout\ ) ) ) # ( !\inst33|opres[6]~6_combout\ & ( \inst33|Add0~0_combout\ & ( \inst33|Add0~6_sumout\ ) ) ) # ( \inst33|opres[6]~6_combout\ & ( 
-- !\inst33|Add0~0_combout\ & ( (\inst33|Equal0~0_combout\ & (\inst700|valor_interno\(6) & \inst14|valor_interno\(6))) ) ) ) # ( !\inst33|opres[6]~6_combout\ & ( !\inst33|Add0~0_combout\ & ( (!\inst33|Equal0~0_combout\) # ((\inst700|valor_interno\(6) & 
-- \inst14|valor_interno\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111000000000000001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Add0~6_sumout\,
	datab => \inst33|ALT_INV_Equal0~0_combout\,
	datac => \inst700|ALT_INV_valor_interno\(6),
	datad => \inst14|ALT_INV_valor_interno\(6),
	datae => \inst33|ALT_INV_opres[6]~6_combout\,
	dataf => \inst33|ALT_INV_Add0~0_combout\,
	combout => \inst33|opres[6]~7_combout\);

-- Location: LABCELL_X64_Y4_N18
\inst33|opres[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(6) = ( \inst33|opres[6]~7_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(6)) ) ) # ( !\inst33|opres[6]~7_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[15]~3_combout\,
	datac => \inst33|ALT_INV_opres\(6),
	dataf => \inst33|ALT_INV_opres[6]~7_combout\,
	combout => \inst33|opres\(6));

-- Location: FF_X64_Y4_N59
\inst24|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(6),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(6));

-- Location: LABCELL_X57_Y6_N42
\inst202|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux28~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a3\ & ( \inst14|valor_interno[1]~0_combout\ & ( ((\inst700666|ACCB|valor_interno\(3) & \inst700666|inst|Equal0~0_combout\)) # (\inst14|valor_interno[1]~1_combout\) ) ) ) # ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a3\ & ( \inst14|valor_interno[1]~0_combout\ & ( (\inst700666|ACCB|valor_interno\(3) & (\inst700666|inst|Equal0~0_combout\ & !\inst14|valor_interno[1]~1_combout\)) ) ) ) # ( 
-- \inst41|mem_rtl_0|auto_generated|ram_block1a3\ & ( !\inst14|valor_interno[1]~0_combout\ & ( (\inst8|valor_interno\(3) & !\inst14|valor_interno[1]~1_combout\) ) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a3\ & ( 
-- !\inst14|valor_interno[1]~0_combout\ & ( (\inst8|valor_interno\(3) & !\inst14|valor_interno[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000010001000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|ALT_INV_valor_interno\(3),
	datab => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datac => \inst8|ALT_INV_valor_interno\(3),
	datad => \inst14|ALT_INV_valor_interno[1]~1_combout\,
	datae => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \inst14|ALT_INV_valor_interno[1]~0_combout\,
	combout => \inst202|Mux28~0_combout\);

-- Location: FF_X65_Y5_N17
\inst14|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux28~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(3));

-- Location: MLABCELL_X65_Y5_N18
\inst33|Add0~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~74_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno\(3) ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno\(3) $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111001100001100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst14|ALT_INV_valor_interno\(3),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~74_combout\);

-- Location: MLABCELL_X65_Y4_N15
\inst33|opres[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~14_combout\ = ( \inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( !\inst14|valor_interno\(3) $ (\inst700|valor_interno[3]~DUPLICATE_q\) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( \inst33|opres[11]~5_combout\ & ( 
-- !\inst700|valor_interno\(2) ) ) ) # ( \inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & ( (!\inst14|valor_interno\(3) & !\inst700|valor_interno[3]~DUPLICATE_q\) ) ) ) # ( !\inst33|opres[11]~4_combout\ & ( !\inst33|opres[11]~5_combout\ & ( 
-- !\inst700|valor_interno\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110000001100000011111111000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(4),
	datab => \inst14|ALT_INV_valor_interno\(3),
	datac => \inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno\(2),
	datae => \inst33|ALT_INV_opres[11]~4_combout\,
	dataf => \inst33|ALT_INV_opres[11]~5_combout\,
	combout => \inst33|opres[3]~14_combout\);

-- Location: FF_X65_Y4_N43
\inst700|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux12~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(3),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(3));

-- Location: LABCELL_X64_Y4_N48
\inst33|opres[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~15_combout\ = ( \inst700|valor_interno\(3) & ( \inst33|Add0~0_combout\ & ( \inst33|Add0~22_sumout\ ) ) ) # ( !\inst700|valor_interno\(3) & ( \inst33|Add0~0_combout\ & ( \inst33|Add0~22_sumout\ ) ) ) # ( \inst700|valor_interno\(3) & ( 
-- !\inst33|Add0~0_combout\ & ( (!\inst33|Equal0~0_combout\ & ((!\inst33|opres[3]~14_combout\))) # (\inst33|Equal0~0_combout\ & (\inst14|valor_interno\(3))) ) ) ) # ( !\inst700|valor_interno\(3) & ( !\inst33|Add0~0_combout\ & ( (!\inst33|Equal0~0_combout\ & 
-- !\inst33|opres[3]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101011110000010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datab => \inst33|ALT_INV_Add0~22_sumout\,
	datac => \inst14|ALT_INV_valor_interno\(3),
	datad => \inst33|ALT_INV_opres[3]~14_combout\,
	datae => \inst700|ALT_INV_valor_interno\(3),
	dataf => \inst33|ALT_INV_Add0~0_combout\,
	combout => \inst33|opres[3]~15_combout\);

-- Location: LABCELL_X64_Y4_N3
\inst33|opres[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(3) = ( \inst33|opres[3]~15_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(3)) ) ) # ( !\inst33|opres[3]~15_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[15]~3_combout\,
	datad => \inst33|ALT_INV_opres\(3),
	dataf => \inst33|ALT_INV_opres[3]~15_combout\,
	combout => \inst33|opres\(3));

-- Location: FF_X64_Y4_N41
\inst24|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(3),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(3));

-- Location: FF_X61_Y5_N4
\inst700666|ACCB|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(3));

-- Location: MLABCELL_X59_Y6_N36
\inst10|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux12~1_combout\ = ( \inst8|valor_interno\(3) & ( ((!\inst107|memw~q\ & (\inst4|selsrc[1]~0_combout\ & !\inst4|Equal0~2_combout\))) # (\inst23|valor_interno\(3)) ) ) # ( !\inst8|valor_interno\(3) & ( (\inst23|valor_interno\(3) & 
-- (((!\inst4|selsrc[1]~0_combout\) # (\inst4|Equal0~2_combout\)) # (\inst107|memw~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001111000011010000111100101111000011110010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_memw~q\,
	datab => \inst4|ALT_INV_selsrc[1]~0_combout\,
	datac => \inst23|ALT_INV_valor_interno\(3),
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	dataf => \inst8|ALT_INV_valor_interno\(3),
	combout => \inst10|Mux12~1_combout\);

-- Location: FF_X60_Y6_N40
\inst15|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst11|Add0~13_sumout\,
	asdata => \inst10|Mux12~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(3));

-- Location: FF_X59_Y6_N56
\inst23|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst15|valor_interno\(3),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|valor_interno\(3));

-- Location: MLABCELL_X59_Y6_N54
\inst10|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux12~0_combout\ = ( \inst11|Add0~13_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(3)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(3)))) ) ) # ( !\inst11|Add0~13_sumout\ & ( 
-- (\inst10|Mux10~0_combout\ & ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(3)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Mux10~0_combout\,
	datab => \inst10|ALT_INV_Mux10~1_combout\,
	datac => \inst8|ALT_INV_valor_interno\(3),
	datad => \inst23|ALT_INV_valor_interno\(3),
	dataf => \inst11|ALT_INV_Add0~13_sumout\,
	combout => \inst10|Mux12~0_combout\);

-- Location: MLABCELL_X65_Y5_N54
\inst202|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux30~0_combout\ = ( \inst700666|ACCB|valor_interno[1]~DUPLICATE_q\ & ( \inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( (!\inst14|valor_interno[1]~1_combout\ & ((!\inst14|valor_interno[1]~0_combout\ & (\inst8|valor_interno\(1))) # 
-- (\inst14|valor_interno[1]~0_combout\ & ((\inst700666|inst|Equal0~0_combout\))))) # (\inst14|valor_interno[1]~1_combout\ & (((\inst14|valor_interno[1]~0_combout\)))) ) ) ) # ( !\inst700666|ACCB|valor_interno[1]~DUPLICATE_q\ & ( 
-- \inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( (!\inst14|valor_interno[1]~1_combout\ & (\inst8|valor_interno\(1) & !\inst14|valor_interno[1]~0_combout\)) # (\inst14|valor_interno[1]~1_combout\ & ((\inst14|valor_interno[1]~0_combout\))) ) ) ) # ( 
-- \inst700666|ACCB|valor_interno[1]~DUPLICATE_q\ & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( (!\inst14|valor_interno[1]~1_combout\ & ((!\inst14|valor_interno[1]~0_combout\ & (\inst8|valor_interno\(1))) # (\inst14|valor_interno[1]~0_combout\ & 
-- ((\inst700666|inst|Equal0~0_combout\))))) ) ) ) # ( !\inst700666|ACCB|valor_interno[1]~DUPLICATE_q\ & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( (\inst8|valor_interno\(1) & (!\inst14|valor_interno[1]~1_combout\ & 
-- !\inst14|valor_interno[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000011000001010000000011110101000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(1),
	datab => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datac => \inst14|ALT_INV_valor_interno[1]~1_combout\,
	datad => \inst14|ALT_INV_valor_interno[1]~0_combout\,
	datae => \inst700666|ACCB|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \inst202|Mux30~0_combout\);

-- Location: FF_X65_Y5_N55
\inst14|valor_interno[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux30~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[1]~DUPLICATE_q\);

-- Location: FF_X63_Y5_N58
\inst700|valor_interno[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux15~0_combout\,
	asdata => \inst700666|ACCA|valor_interno\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[3]~1_combout\,
	sload => \inst700|valor_interno[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[0]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y4_N24
\inst33|opres[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~10_combout\ = ( \inst700|valor_interno\(1) & ( \inst33|opres[11]~5_combout\ & ( (!\inst33|opres[11]~4_combout\ & ((!\inst700|valor_interno[0]~DUPLICATE_q\))) # (\inst33|opres[11]~4_combout\ & (\inst14|valor_interno[1]~DUPLICATE_q\)) ) ) ) 
-- # ( !\inst700|valor_interno\(1) & ( \inst33|opres[11]~5_combout\ & ( (!\inst33|opres[11]~4_combout\ & ((!\inst700|valor_interno[0]~DUPLICATE_q\))) # (\inst33|opres[11]~4_combout\ & (!\inst14|valor_interno[1]~DUPLICATE_q\)) ) ) ) # ( 
-- \inst700|valor_interno\(1) & ( !\inst33|opres[11]~5_combout\ & ( (!\inst33|opres[11]~4_combout\ & !\inst700|valor_interno\(2)) ) ) ) # ( !\inst700|valor_interno\(1) & ( !\inst33|opres[11]~5_combout\ & ( (!\inst33|opres[11]~4_combout\ & 
-- ((!\inst700|valor_interno\(2)))) # (\inst33|opres[11]~4_combout\ & (!\inst14|valor_interno[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001000100101010100000000011100100111001001011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[11]~4_combout\,
	datab => \inst14|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	datac => \inst700|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno\(2),
	datae => \inst700|ALT_INV_valor_interno\(1),
	dataf => \inst33|ALT_INV_opres[11]~5_combout\,
	combout => \inst33|opres[1]~10_combout\);

-- Location: LABCELL_X62_Y4_N12
\inst33|opres[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~11_combout\ = ( \inst33|Add0~14_sumout\ & ( \inst14|valor_interno[1]~DUPLICATE_q\ & ( ((!\inst33|Equal0~0_combout\ & ((!\inst33|opres[1]~10_combout\))) # (\inst33|Equal0~0_combout\ & (\inst700|valor_interno\(1)))) # 
-- (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Add0~14_sumout\ & ( \inst14|valor_interno[1]~DUPLICATE_q\ & ( (!\inst33|Add0~0_combout\ & ((!\inst33|Equal0~0_combout\ & ((!\inst33|opres[1]~10_combout\))) # (\inst33|Equal0~0_combout\ & 
-- (\inst700|valor_interno\(1))))) ) ) ) # ( \inst33|Add0~14_sumout\ & ( !\inst14|valor_interno[1]~DUPLICATE_q\ & ( ((!\inst33|Equal0~0_combout\ & !\inst33|opres[1]~10_combout\)) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Add0~14_sumout\ & ( 
-- !\inst14|valor_interno[1]~DUPLICATE_q\ & ( (!\inst33|Equal0~0_combout\ & (!\inst33|Add0~0_combout\ & !\inst33|opres[1]~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000101110110011001110001100000001001011111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datab => \inst33|ALT_INV_Add0~0_combout\,
	datac => \inst700|ALT_INV_valor_interno\(1),
	datad => \inst33|ALT_INV_opres[1]~10_combout\,
	datae => \inst33|ALT_INV_Add0~14_sumout\,
	dataf => \inst14|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	combout => \inst33|opres[1]~11_combout\);

-- Location: LABCELL_X62_Y4_N36
\inst33|opres[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(1) = ( \inst33|opres[15]~3_combout\ & ( \inst33|opres[1]~11_combout\ & ( \inst33|opres\(1) ) ) ) # ( !\inst33|opres[15]~3_combout\ & ( \inst33|opres[1]~11_combout\ ) ) # ( \inst33|opres[15]~3_combout\ & ( !\inst33|opres[1]~11_combout\ & ( 
-- \inst33|opres\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres\(1),
	datae => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[1]~11_combout\,
	combout => \inst33|opres\(1));

-- Location: FF_X62_Y4_N32
\inst24|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(1));

-- Location: FF_X62_Y4_N59
\inst700666|ACCB|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(1));

-- Location: MLABCELL_X59_Y6_N51
\inst10|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux14~1_combout\ = ( \inst23|valor_interno\(1) & ( (((!\inst4|selsrc[1]~0_combout\) # (\inst107|memw~q\)) # (\inst4|Equal0~2_combout\)) # (\inst8|valor_interno\(1)) ) ) # ( !\inst23|valor_interno\(1) & ( (\inst8|valor_interno\(1) & 
-- (!\inst4|Equal0~2_combout\ & (!\inst107|memw~q\ & \inst4|selsrc[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000011111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(1),
	datab => \inst4|ALT_INV_Equal0~2_combout\,
	datac => \inst107|ALT_INV_memw~q\,
	datad => \inst4|ALT_INV_selsrc[1]~0_combout\,
	dataf => \inst23|ALT_INV_valor_interno\(1),
	combout => \inst10|Mux14~1_combout\);

-- Location: FF_X60_Y6_N34
\inst15|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst11|Add0~5_sumout\,
	asdata => \inst10|Mux14~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(1));

-- Location: FF_X59_Y6_N17
\inst23|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst15|valor_interno\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|valor_interno\(1));

-- Location: MLABCELL_X59_Y6_N15
\inst10|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux14~0_combout\ = ( \inst11|Add0~5_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(1)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(1)))) ) ) # ( !\inst11|Add0~5_sumout\ & ( 
-- (\inst10|Mux10~0_combout\ & ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(1)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110111110001111111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(1),
	datab => \inst10|ALT_INV_Mux10~1_combout\,
	datac => \inst10|ALT_INV_Mux10~0_combout\,
	datad => \inst23|ALT_INV_valor_interno\(1),
	dataf => \inst11|ALT_INV_Add0~5_sumout\,
	combout => \inst10|Mux14~0_combout\);

-- Location: MLABCELL_X65_Y5_N57
\inst202|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux27~0_combout\ = ( \inst700666|ACCB|valor_interno\(4) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\inst14|valor_interno[1]~0_combout\ & (\inst8|valor_interno\(1) & ((!\inst14|valor_interno[1]~1_combout\)))) # 
-- (\inst14|valor_interno[1]~0_combout\ & (((\inst14|valor_interno[1]~1_combout\) # (\inst700666|inst|Equal0~0_combout\)))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(4) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a4\ & ( 
-- (!\inst14|valor_interno[1]~0_combout\ & (\inst8|valor_interno\(1) & !\inst14|valor_interno[1]~1_combout\)) # (\inst14|valor_interno[1]~0_combout\ & ((\inst14|valor_interno[1]~1_combout\))) ) ) ) # ( \inst700666|ACCB|valor_interno\(4) & ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\inst14|valor_interno[1]~1_combout\ & ((!\inst14|valor_interno[1]~0_combout\ & (\inst8|valor_interno\(1))) # (\inst14|valor_interno[1]~0_combout\ & ((\inst700666|inst|Equal0~0_combout\))))) ) ) ) # ( 
-- !\inst700666|ACCB|valor_interno\(4) & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a4\ & ( (\inst8|valor_interno\(1) & (!\inst14|valor_interno[1]~0_combout\ & !\inst14|valor_interno[1]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100110000000001010000000011110101001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(1),
	datab => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datac => \inst14|ALT_INV_valor_interno[1]~0_combout\,
	datad => \inst14|ALT_INV_valor_interno[1]~1_combout\,
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(4),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \inst202|Mux27~0_combout\);

-- Location: FF_X65_Y5_N59
\inst14|valor_interno[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux27~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[4]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N33
\inst33|Add0~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~75_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno[4]~DUPLICATE_q\ ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno[4]~DUPLICATE_q\ $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100101101001011010010110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst14|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~75_combout\);

-- Location: FF_X65_Y5_N58
\inst14|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux27~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(4));

-- Location: LABCELL_X64_Y4_N12
\inst33|opres[4]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~16_combout\ = ( \inst700|valor_interno\(3) & ( \inst33|opres[11]~4_combout\ & ( (!\inst14|valor_interno\(4) & ((!\inst700|valor_interno\(4)))) # (\inst14|valor_interno\(4) & (\inst33|opres[11]~5_combout\ & \inst700|valor_interno\(4))) ) ) 
-- ) # ( !\inst700|valor_interno\(3) & ( \inst33|opres[11]~4_combout\ & ( (!\inst14|valor_interno\(4) & ((!\inst700|valor_interno\(4)))) # (\inst14|valor_interno\(4) & (\inst33|opres[11]~5_combout\ & \inst700|valor_interno\(4))) ) ) ) # ( 
-- \inst700|valor_interno\(3) & ( !\inst33|opres[11]~4_combout\ & ( (!\inst33|opres[11]~5_combout\ & !\inst700|valor_interno[5]~DUPLICATE_q\) ) ) ) # ( !\inst700|valor_interno\(3) & ( !\inst33|opres[11]~4_combout\ & ( 
-- (!\inst700|valor_interno[5]~DUPLICATE_q\) # (\inst33|opres[11]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101101010100000000011000001110000011100000111000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[11]~5_combout\,
	datab => \inst14|ALT_INV_valor_interno\(4),
	datac => \inst700|ALT_INV_valor_interno\(4),
	datad => \inst700|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datae => \inst700|ALT_INV_valor_interno\(3),
	dataf => \inst33|ALT_INV_opres[11]~4_combout\,
	combout => \inst33|opres[4]~16_combout\);

-- Location: LABCELL_X64_Y4_N54
\inst33|opres[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~17_combout\ = ( \inst33|opres[4]~16_combout\ & ( \inst33|Add0~0_combout\ & ( \inst33|Add0~26_sumout\ ) ) ) # ( !\inst33|opres[4]~16_combout\ & ( \inst33|Add0~0_combout\ & ( \inst33|Add0~26_sumout\ ) ) ) # ( \inst33|opres[4]~16_combout\ & 
-- ( !\inst33|Add0~0_combout\ & ( (\inst33|Equal0~0_combout\ & (\inst700|valor_interno\(4) & \inst14|valor_interno\(4))) ) ) ) # ( !\inst33|opres[4]~16_combout\ & ( !\inst33|Add0~0_combout\ & ( (!\inst33|Equal0~0_combout\) # ((\inst700|valor_interno\(4) & 
-- \inst14|valor_interno\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111000000000000010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datab => \inst33|ALT_INV_Add0~26_sumout\,
	datac => \inst700|ALT_INV_valor_interno\(4),
	datad => \inst14|ALT_INV_valor_interno\(4),
	datae => \inst33|ALT_INV_opres[4]~16_combout\,
	dataf => \inst33|ALT_INV_Add0~0_combout\,
	combout => \inst33|opres[4]~17_combout\);

-- Location: LABCELL_X64_Y4_N21
\inst33|opres[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(4) = ( \inst33|opres[4]~17_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(4)) ) ) # ( !\inst33|opres[4]~17_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[15]~3_combout\,
	datad => \inst33|ALT_INV_opres\(4),
	dataf => \inst33|ALT_INV_opres[4]~17_combout\,
	combout => \inst33|opres\(4));

-- Location: FF_X64_Y4_N23
\inst24|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst33|opres\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(4));

-- Location: FF_X63_Y6_N11
\inst34|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst7|Add0~9_sumout\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(4));

-- Location: LABCELL_X63_Y6_N45
\inst1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = ( \inst34|valor_interno\(1) & ( \inst34|valor_interno[0]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(3) $ (\inst34|valor_interno\(2))))) ) ) ) # ( 
-- !\inst34|valor_interno\(1) & ( \inst34|valor_interno[0]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(3) & (\inst34|valor_interno\(4) & !\inst34|valor_interno\(5))) ) ) ) # ( \inst34|valor_interno\(1) & ( !\inst34|valor_interno[0]~DUPLICATE_q\ & ( 
-- (!\inst34|valor_interno\(3) & (\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & !\inst34|valor_interno\(2)))) ) ) ) # ( !\inst34|valor_interno\(1) & ( !\inst34|valor_interno[0]~DUPLICATE_q\ & ( (\inst34|valor_interno\(3) & 
-- (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & \inst34|valor_interno\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000001000000000000000100000001000001000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(3),
	datab => \inst34|ALT_INV_valor_interno\(4),
	datac => \inst34|ALT_INV_valor_interno\(5),
	datad => \inst34|ALT_INV_valor_interno\(2),
	datae => \inst34|ALT_INV_valor_interno\(1),
	dataf => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	combout => \inst1|Mux11~0_combout\);

-- Location: FF_X62_Y6_N38
\inst8|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst1|Mux11~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(20));

-- Location: LABCELL_X62_Y6_N42
\inst4|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal14~0_combout\ = ( \inst8|valor_interno[22]~DUPLICATE_q\ & ( (\inst8|valor_interno\(21) & (\inst8|valor_interno[19]~DUPLICATE_q\ & !\inst8|valor_interno\(20))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_valor_interno\(21),
	datac => \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\,
	datad => \inst8|ALT_INV_valor_interno\(20),
	dataf => \inst8|ALT_INV_valor_interno[22]~DUPLICATE_q\,
	combout => \inst4|Equal14~0_combout\);

-- Location: LABCELL_X61_Y6_N36
\inst4|Equal14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal14~1_combout\ = ( \inst4|Equal6~1_combout\ & ( \inst4|Equal14~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_Equal14~0_combout\,
	dataf => \inst4|ALT_INV_Equal6~1_combout\,
	combout => \inst4|Equal14~1_combout\);

-- Location: LABCELL_X60_Y5_N15
\inst4|selop[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop[2]~1_combout\ = ( !\inst4|selregr[1]~0_combout\ & ( \inst4|selregr[1]~1_combout\ & ( (!\inst4|memw~0_combout\ & !\inst4|Equal3~0_combout\) ) ) ) # ( !\inst4|selregr[1]~0_combout\ & ( !\inst4|selregr[1]~1_combout\ & ( (!\inst4|memw~0_combout\ 
-- & (!\inst4|Equal3~0_combout\ & ((\inst4|selfalgs~1_combout\) # (\inst4|Equal14~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal14~1_combout\,
	datab => \inst4|ALT_INV_memw~0_combout\,
	datac => \inst4|ALT_INV_Equal3~0_combout\,
	datad => \inst4|ALT_INV_selfalgs~1_combout\,
	datae => \inst4|ALT_INV_selregr[1]~0_combout\,
	dataf => \inst4|ALT_INV_selregr[1]~1_combout\,
	combout => \inst4|selop[2]~1_combout\);

-- Location: FF_X65_Y5_N53
\inst16|selop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst4|selop[2]~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(2));

-- Location: LABCELL_X62_Y4_N54
\inst33|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Equal0~0_combout\ = ( \inst16|selop\(0) & ( (!\inst16|selop\(2) & \inst16|selop\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(1),
	datae => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Equal0~0_combout\);

-- Location: LABCELL_X64_Y4_N30
\inst33|opres[5]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~18_combout\ = ( \inst14|valor_interno\(5) & ( \inst700|valor_interno\(4) & ( (!\inst33|opres[11]~4_combout\ & (!\inst700|valor_interno\(6) & (!\inst33|opres[11]~5_combout\))) # (\inst33|opres[11]~4_combout\ & 
-- (((\inst33|opres[11]~5_combout\ & \inst700|valor_interno[5]~DUPLICATE_q\)))) ) ) ) # ( !\inst14|valor_interno\(5) & ( \inst700|valor_interno\(4) & ( (!\inst33|opres[11]~4_combout\ & (!\inst700|valor_interno\(6) & (!\inst33|opres[11]~5_combout\))) # 
-- (\inst33|opres[11]~4_combout\ & (((!\inst700|valor_interno[5]~DUPLICATE_q\)))) ) ) ) # ( \inst14|valor_interno\(5) & ( !\inst700|valor_interno\(4) & ( (!\inst33|opres[11]~4_combout\ & ((!\inst700|valor_interno\(6)) # ((\inst33|opres[11]~5_combout\)))) # 
-- (\inst33|opres[11]~4_combout\ & (((\inst33|opres[11]~5_combout\ & \inst700|valor_interno[5]~DUPLICATE_q\)))) ) ) ) # ( !\inst14|valor_interno\(5) & ( !\inst700|valor_interno\(4) & ( (!\inst33|opres[11]~4_combout\ & ((!\inst700|valor_interno\(6)) # 
-- ((\inst33|opres[11]~5_combout\)))) # (\inst33|opres[11]~4_combout\ & (((!\inst700|valor_interno[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110001100100011001000111110110011100000001000000010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(6),
	datab => \inst33|ALT_INV_opres[11]~4_combout\,
	datac => \inst33|ALT_INV_opres[11]~5_combout\,
	datad => \inst700|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datae => \inst14|ALT_INV_valor_interno\(5),
	dataf => \inst700|ALT_INV_valor_interno\(4),
	combout => \inst33|opres[5]~18_combout\);

-- Location: LABCELL_X64_Y4_N42
\inst33|opres[5]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~19_combout\ = ( \inst33|Add0~30_sumout\ & ( \inst33|Add0~0_combout\ ) ) # ( \inst33|Add0~30_sumout\ & ( !\inst33|Add0~0_combout\ & ( (!\inst33|Equal0~0_combout\ & (!\inst33|opres[5]~18_combout\)) # (\inst33|Equal0~0_combout\ & 
-- (((\inst14|valor_interno\(5) & \inst700|valor_interno[5]~DUPLICATE_q\)))) ) ) ) # ( !\inst33|Add0~30_sumout\ & ( !\inst33|Add0~0_combout\ & ( (!\inst33|Equal0~0_combout\ & (!\inst33|opres[5]~18_combout\)) # (\inst33|Equal0~0_combout\ & 
-- (((\inst14|valor_interno\(5) & \inst700|valor_interno[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001101100010001000110100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datab => \inst33|ALT_INV_opres[5]~18_combout\,
	datac => \inst14|ALT_INV_valor_interno\(5),
	datad => \inst700|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datae => \inst33|ALT_INV_Add0~30_sumout\,
	dataf => \inst33|ALT_INV_Add0~0_combout\,
	combout => \inst33|opres[5]~19_combout\);

-- Location: LABCELL_X64_Y4_N0
\inst33|opres[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(5) = ( \inst33|opres[5]~19_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(5)) ) ) # ( !\inst33|opres[5]~19_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[15]~3_combout\,
	datac => \inst33|ALT_INV_opres\(5),
	dataf => \inst33|ALT_INV_opres[5]~19_combout\,
	combout => \inst33|opres\(5));

-- Location: FF_X63_Y4_N17
\inst24|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(5),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(5));

-- Location: FF_X63_Y6_N14
\inst34|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst7|Add0~13_sumout\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(5));

-- Location: LABCELL_X63_Y6_N12
\inst7|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~13_sumout\ = SUM(( \inst34|valor_interno\(5) ) + ( GND ) + ( \inst7|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst34|ALT_INV_valor_interno\(5),
	cin => \inst7|Add0~10\,
	sumout => \inst7|Add0~13_sumout\);

-- Location: FF_X63_Y6_N13
\inst34|valor_interno[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst7|Add0~13_sumout\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno[5]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y6_N36
\inst1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = ( \inst34|valor_interno[2]~DUPLICATE_q\ & ( \inst34|valor_interno[4]~DUPLICATE_q\ & ( (\inst34|valor_interno\(0) & (!\inst34|valor_interno\(3) & (!\inst34|valor_interno\(1) & !\inst34|valor_interno[5]~DUPLICATE_q\))) ) ) ) # ( 
-- \inst34|valor_interno[2]~DUPLICATE_q\ & ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( (\inst34|valor_interno\(0) & (!\inst34|valor_interno\(3) & (\inst34|valor_interno\(1) & !\inst34|valor_interno[5]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst34|valor_interno[2]~DUPLICATE_q\ & ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( (\inst34|valor_interno\(0) & (!\inst34|valor_interno\(3) & (\inst34|valor_interno\(1) & !\inst34|valor_interno[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(0),
	datab => \inst34|ALT_INV_valor_interno\(3),
	datac => \inst34|ALT_INV_valor_interno\(1),
	datad => \inst34|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datae => \inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	combout => \inst1|Mux10~0_combout\);

-- Location: FF_X61_Y6_N4
\inst8|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst1|Mux10~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(21));

-- Location: LABCELL_X62_Y6_N24
\inst4|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal11~0_combout\ = ( \inst8|valor_interno[17]~DUPLICATE_q\ & ( (\inst8|valor_interno\(21) & \inst8|valor_interno[22]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_valor_interno\(21),
	datac => \inst8|ALT_INV_valor_interno[22]~DUPLICATE_q\,
	dataf => \inst8|ALT_INV_valor_interno[17]~DUPLICATE_q\,
	combout => \inst4|Equal11~0_combout\);

-- Location: LABCELL_X63_Y6_N18
\inst4|Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal13~0_combout\ = ( \inst4|Equal11~0_combout\ & ( (\inst8|valor_interno\(16) & \inst4|Equal8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_valor_interno\(16),
	datac => \inst4|ALT_INV_Equal8~0_combout\,
	dataf => \inst4|ALT_INV_Equal11~0_combout\,
	combout => \inst4|Equal13~0_combout\);

-- Location: LABCELL_X61_Y5_N54
\inst4|selop[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop[0]~2_combout\ = ( \inst4|Equal3~0_combout\ & ( \inst4|selregr[1]~2_combout\ & ( ((\inst4|Equal13~0_combout\ & !\inst4|Equal2~2_combout\)) # (\inst4|Equal0~2_combout\) ) ) ) # ( !\inst4|Equal3~0_combout\ & ( \inst4|selregr[1]~2_combout\ & ( 
-- ((\inst4|Equal13~0_combout\ & !\inst4|Equal2~2_combout\)) # (\inst4|Equal0~2_combout\) ) ) ) # ( \inst4|Equal3~0_combout\ & ( !\inst4|selregr[1]~2_combout\ & ( (!\inst4|Equal2~2_combout\) # (\inst4|Equal0~2_combout\) ) ) ) # ( !\inst4|Equal3~0_combout\ & 
-- ( !\inst4|selregr[1]~2_combout\ & ( ((\inst4|Equal8~2_combout\ & !\inst4|Equal2~2_combout\)) # (\inst4|Equal0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101111111110101010101110111010101010111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~2_combout\,
	datab => \inst4|ALT_INV_Equal13~0_combout\,
	datac => \inst4|ALT_INV_Equal8~2_combout\,
	datad => \inst4|ALT_INV_Equal2~2_combout\,
	datae => \inst4|ALT_INV_Equal3~0_combout\,
	dataf => \inst4|ALT_INV_selregr[1]~2_combout\,
	combout => \inst4|selop[0]~2_combout\);

-- Location: FF_X64_Y5_N59
\inst16|selop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst4|selop[0]~2_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(0));

-- Location: LABCELL_X62_Y4_N42
\inst33|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~0_combout\ = ( \inst16|selop\(0) & ( !\inst16|selop\(2) & ( !\inst16|selop\(1) ) ) ) # ( !\inst16|selop\(0) & ( !\inst16|selop\(2) & ( \inst16|selop\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_selop\(1),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(2),
	combout => \inst33|Add0~0_combout\);

-- Location: FF_X63_Y5_N37
\inst14|valor_interno[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux29~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[2]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y4_N0
\inst33|opres[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~12_combout\ = ( \inst700|valor_interno\(1) & ( \inst33|opres[11]~5_combout\ & ( (\inst33|opres[11]~4_combout\ & (!\inst14|valor_interno[2]~DUPLICATE_q\ $ (\inst700|valor_interno\(2)))) ) ) ) # ( !\inst700|valor_interno\(1) & ( 
-- \inst33|opres[11]~5_combout\ & ( (!\inst33|opres[11]~4_combout\) # (!\inst14|valor_interno[2]~DUPLICATE_q\ $ (\inst700|valor_interno\(2))) ) ) ) # ( \inst700|valor_interno\(1) & ( !\inst33|opres[11]~5_combout\ & ( (!\inst33|opres[11]~4_combout\ & 
-- (((!\inst700|valor_interno\(3))))) # (\inst33|opres[11]~4_combout\ & (!\inst14|valor_interno[2]~DUPLICATE_q\ & ((!\inst700|valor_interno\(2))))) ) ) ) # ( !\inst700|valor_interno\(1) & ( !\inst33|opres[11]~5_combout\ & ( (!\inst33|opres[11]~4_combout\ & 
-- (((!\inst700|valor_interno\(3))))) # (\inst33|opres[11]~4_combout\ & (!\inst14|valor_interno[2]~DUPLICATE_q\ & ((!\inst700|valor_interno\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010100000111001001010000011101110101110110100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[11]~4_combout\,
	datab => \inst14|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	datac => \inst700|ALT_INV_valor_interno\(3),
	datad => \inst700|ALT_INV_valor_interno\(2),
	datae => \inst700|ALT_INV_valor_interno\(1),
	dataf => \inst33|ALT_INV_opres[11]~5_combout\,
	combout => \inst33|opres[2]~12_combout\);

-- Location: LABCELL_X62_Y4_N33
\inst33|opres[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~13_combout\ = ( \inst33|Add0~18_sumout\ & ( \inst14|valor_interno[2]~DUPLICATE_q\ & ( ((!\inst33|Equal0~0_combout\ & ((!\inst33|opres[2]~12_combout\))) # (\inst33|Equal0~0_combout\ & (\inst700|valor_interno\(2)))) # 
-- (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Add0~18_sumout\ & ( \inst14|valor_interno[2]~DUPLICATE_q\ & ( (!\inst33|Add0~0_combout\ & ((!\inst33|Equal0~0_combout\ & ((!\inst33|opres[2]~12_combout\))) # (\inst33|Equal0~0_combout\ & 
-- (\inst700|valor_interno\(2))))) ) ) ) # ( \inst33|Add0~18_sumout\ & ( !\inst14|valor_interno[2]~DUPLICATE_q\ & ( ((!\inst33|Equal0~0_combout\ & !\inst33|opres[2]~12_combout\)) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Add0~18_sumout\ & ( 
-- !\inst14|valor_interno[2]~DUPLICATE_q\ & ( (!\inst33|Add0~0_combout\ & (!\inst33|Equal0~0_combout\ & !\inst33|opres[2]~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000110111010101010110001010000000101101111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Add0~0_combout\,
	datab => \inst33|ALT_INV_Equal0~0_combout\,
	datac => \inst700|ALT_INV_valor_interno\(2),
	datad => \inst33|ALT_INV_opres[2]~12_combout\,
	datae => \inst33|ALT_INV_Add0~18_sumout\,
	dataf => \inst14|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	combout => \inst33|opres[2]~13_combout\);

-- Location: LABCELL_X62_Y4_N21
\inst33|opres[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(2) = ( \inst33|opres[2]~13_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(2)) ) ) # ( !\inst33|opres[2]~13_combout\ & ( (\inst33|opres\(2) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(2),
	datad => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[2]~13_combout\,
	combout => \inst33|opres\(2));

-- Location: FF_X62_Y4_N17
\inst24|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(2));

-- Location: FF_X63_Y6_N5
\inst34|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst7|Add0~5_sumout\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(2));

-- Location: FF_X63_Y6_N7
\inst34|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst7|Add0~17_sumout\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(3));

-- Location: LABCELL_X62_Y6_N48
\inst1|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux15~0_combout\ = ( \inst34|valor_interno[2]~DUPLICATE_q\ & ( \inst34|valor_interno[4]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(3) & (!\inst34|valor_interno[5]~DUPLICATE_q\ & ((!\inst34|valor_interno\(0)) # (\inst34|valor_interno\(1))))) ) ) ) # 
-- ( !\inst34|valor_interno[2]~DUPLICATE_q\ & ( \inst34|valor_interno[4]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(3) & (!\inst34|valor_interno[5]~DUPLICATE_q\ & ((!\inst34|valor_interno\(1)) # (\inst34|valor_interno\(0))))) ) ) ) # ( 
-- \inst34|valor_interno[2]~DUPLICATE_q\ & ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( (!\inst34|valor_interno[5]~DUPLICATE_q\ & ((!\inst34|valor_interno\(1) $ (\inst34|valor_interno\(3))) # (\inst34|valor_interno\(0)))) ) ) ) # ( 
-- !\inst34|valor_interno[2]~DUPLICATE_q\ & ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( (!\inst34|valor_interno[5]~DUPLICATE_q\ & (((\inst34|valor_interno\(0)) # (\inst34|valor_interno\(3))) # (\inst34|valor_interno\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000000100111110000000010001100000000001100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(1),
	datab => \inst34|ALT_INV_valor_interno\(3),
	datac => \inst34|ALT_INV_valor_interno\(0),
	datad => \inst34|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datae => \inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	combout => \inst1|Mux15~0_combout\);

-- Location: FF_X61_Y6_N56
\inst8|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst1|Mux15~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(16));

-- Location: LABCELL_X63_Y6_N24
\inst4|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal11~1_combout\ = ( \inst4|Equal11~0_combout\ & ( (!\inst8|valor_interno\(16) & \inst4|Equal8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_valor_interno\(16),
	datac => \inst4|ALT_INV_Equal8~0_combout\,
	dataf => \inst4|ALT_INV_Equal11~0_combout\,
	combout => \inst4|Equal11~1_combout\);

-- Location: FF_X63_Y6_N26
\inst16|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst4|Equal11~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|vf~q\);

-- Location: MLABCELL_X59_Y6_N42
\inst4|Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal12~0_combout\ = ( !\inst8|valor_interno\(16) & ( (!\inst8|valor_interno[19]~DUPLICATE_q\ & (\inst4|Equal0~0_combout\ & \inst4|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_Equal0~0_combout\,
	datac => \inst4|ALT_INV_Equal0~1_combout\,
	dataf => \inst8|ALT_INV_valor_interno\(16),
	combout => \inst4|Equal12~0_combout\);

-- Location: FF_X59_Y6_N43
\inst16|selbranch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst4|Equal12~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selbranch\(1));

-- Location: LABCELL_X63_Y6_N27
\inst22|branch~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|branch~0_combout\ = ( \inst|ni~combout\ & ( !\inst16|vf~q\ $ (!\inst16|selbranch\(1)) ) ) # ( !\inst|ni~combout\ & ( \inst16|vf~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_vf~q\,
	datac => \inst16|ALT_INV_selbranch\(1),
	dataf => \inst|ALT_INV_ni~combout\,
	combout => \inst22|branch~0_combout\);

-- Location: FF_X63_Y6_N29
\inst100|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst22|branch~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst100|valor_interno~q\);

-- Location: FF_X63_Y6_N22
\inst34|valor_interno[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst34|valor_interno[0]~_wirecell_combout\,
	asdata => \inst24|valor_interno\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno[0]~DUPLICATE_q\);

-- Location: FF_X63_Y6_N2
\inst34|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst7|Add0~1_sumout\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(1));

-- Location: LABCELL_X62_Y6_N54
\inst1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = ( \inst34|valor_interno[2]~DUPLICATE_q\ & ( \inst34|valor_interno[4]~DUPLICATE_q\ & ( (\inst34|valor_interno\(0) & (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(3) & !\inst34|valor_interno[5]~DUPLICATE_q\))) ) ) ) # ( 
-- \inst34|valor_interno[2]~DUPLICATE_q\ & ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( (!\inst34|valor_interno[5]~DUPLICATE_q\ & ((!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(0) & \inst34|valor_interno\(3))) # (\inst34|valor_interno\(1) & 
-- ((!\inst34|valor_interno\(3)))))) ) ) ) # ( !\inst34|valor_interno[2]~DUPLICATE_q\ & ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(3) & (!\inst34|valor_interno[5]~DUPLICATE_q\ & (!\inst34|valor_interno\(0) $ 
-- (\inst34|valor_interno\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000001110000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(0),
	datab => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno\(3),
	datad => \inst34|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datae => \inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	combout => \inst1|Mux13~0_combout\);

-- Location: FF_X62_Y6_N56
\inst8|valor_interno[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst1|Mux13~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno[18]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y6_N30
\inst4|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal8~0_combout\ = ( !\inst8|valor_interno\(23) & ( (\inst8|valor_interno[18]~DUPLICATE_q\ & (\inst8|valor_interno[19]~DUPLICATE_q\ & \inst8|valor_interno\(20))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[18]~DUPLICATE_q\,
	datac => \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\,
	datad => \inst8|ALT_INV_valor_interno\(20),
	dataf => \inst8|ALT_INV_valor_interno\(23),
	combout => \inst4|Equal8~0_combout\);

-- Location: MLABCELL_X59_Y6_N24
\inst4|selop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop~0_combout\ = ( \inst4|Equal11~0_combout\ & ( \inst4|Equal0~0_combout\ & ( ((\inst4|Equal8~0_combout\ & \inst8|valor_interno\(16))) # (\inst4|Equal2~0_combout\) ) ) ) # ( !\inst4|Equal11~0_combout\ & ( \inst4|Equal0~0_combout\ & ( 
-- \inst4|Equal2~0_combout\ ) ) ) # ( \inst4|Equal11~0_combout\ & ( !\inst4|Equal0~0_combout\ & ( (!\inst4|Equal8~0_combout\ & (\inst4|Equal2~0_combout\ & ((\inst4|Equal2~1_combout\)))) # (\inst4|Equal8~0_combout\ & (((\inst4|Equal2~0_combout\ & 
-- \inst4|Equal2~1_combout\)) # (\inst8|valor_interno\(16)))) ) ) ) # ( !\inst4|Equal11~0_combout\ & ( !\inst4|Equal0~0_combout\ & ( (\inst4|Equal2~0_combout\ & \inst4|Equal2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000001010011011100110011001100110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal8~0_combout\,
	datab => \inst4|ALT_INV_Equal2~0_combout\,
	datac => \inst8|ALT_INV_valor_interno\(16),
	datad => \inst4|ALT_INV_Equal2~1_combout\,
	datae => \inst4|ALT_INV_Equal11~0_combout\,
	dataf => \inst4|ALT_INV_Equal0~0_combout\,
	combout => \inst4|selop~0_combout\);

-- Location: FF_X65_Y5_N14
\inst16|selop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst4|selop~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(1));

-- Location: LABCELL_X62_Y5_N30
\inst33|opres[15]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~3_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(1) & !\inst16|selop\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_selop\(1),
	datad => \inst16|ALT_INV_selop\(2),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[15]~3_combout\);

-- Location: MLABCELL_X65_Y5_N9
\inst33|opres[0]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~34_combout\ = ( \inst700|valor_interno\(1) & ( \inst14|valor_interno\(0) & ( (!\inst16|selop\(0) & (!\inst16|selop\(1))) # (\inst16|selop\(0) & ((!\inst700|valor_interno[0]~DUPLICATE_q\ & ((\inst16|selop\(2)))) # 
-- (\inst700|valor_interno[0]~DUPLICATE_q\ & (\inst16|selop\(1))))) ) ) ) # ( !\inst700|valor_interno\(1) & ( \inst14|valor_interno\(0) & ( (!\inst16|selop\(1) & (\inst16|selop\(2) & ((!\inst16|selop\(0)) # (!\inst700|valor_interno[0]~DUPLICATE_q\)))) # 
-- (\inst16|selop\(1) & (\inst16|selop\(0) & (\inst700|valor_interno[0]~DUPLICATE_q\ & !\inst16|selop\(2)))) ) ) ) # ( \inst700|valor_interno\(1) & ( !\inst14|valor_interno\(0) & ( (!\inst16|selop\(1) & ((!\inst16|selop\(2) & (!\inst16|selop\(0))) # 
-- (\inst16|selop\(2) & ((\inst700|valor_interno[0]~DUPLICATE_q\))))) # (\inst16|selop\(1) & (\inst16|selop\(0) & ((\inst16|selop\(2))))) ) ) ) # ( !\inst700|valor_interno\(1) & ( !\inst14|valor_interno\(0) & ( (!\inst16|selop\(1) & 
-- (\inst700|valor_interno[0]~DUPLICATE_q\ & \inst16|selop\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100100010000001110100000001110010001000100111011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst700|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	datad => \inst16|ALT_INV_selop\(2),
	datae => \inst700|ALT_INV_valor_interno\(1),
	dataf => \inst14|ALT_INV_valor_interno\(0),
	combout => \inst33|opres[0]~34_combout\);

-- Location: LABCELL_X62_Y5_N24
\inst33|opres[0]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~35_combout\ = ( \inst33|Add0~0_combout\ & ( (\inst33|opres[0]~34_combout\) # (\inst33|Add0~62_sumout\) ) ) # ( !\inst33|Add0~0_combout\ & ( \inst33|opres[0]~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Add0~62_sumout\,
	datad => \inst33|ALT_INV_opres[0]~34_combout\,
	dataf => \inst33|ALT_INV_Add0~0_combout\,
	combout => \inst33|opres[0]~35_combout\);

-- Location: LABCELL_X62_Y5_N33
\inst33|opres[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(0) = ( \inst33|opres[0]~35_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(0)) ) ) # ( !\inst33|opres[0]~35_combout\ & ( (\inst33|opres\(0) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(0),
	datac => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[0]~35_combout\,
	combout => \inst33|opres\(0));

-- Location: FF_X62_Y5_N35
\inst24|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst33|opres\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(0));

-- Location: FF_X63_Y6_N23
\inst34|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst34|valor_interno[0]~_wirecell_combout\,
	asdata => \inst24|valor_interno\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(0));

-- Location: LABCELL_X62_Y6_N0
\inst1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = ( \inst34|valor_interno[2]~DUPLICATE_q\ & ( \inst34|valor_interno[4]~DUPLICATE_q\ & ( (\inst34|valor_interno\(0) & (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(3) & !\inst34|valor_interno[5]~DUPLICATE_q\))) ) ) ) # ( 
-- \inst34|valor_interno[2]~DUPLICATE_q\ & ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( (\inst34|valor_interno\(3) & (!\inst34|valor_interno[5]~DUPLICATE_q\ & (!\inst34|valor_interno\(0) $ (\inst34|valor_interno\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010010000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(0),
	datab => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno\(3),
	datad => \inst34|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datae => \inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	combout => \inst1|Mux12~0_combout\);

-- Location: FF_X62_Y6_N2
\inst8|valor_interno[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst1|Mux12~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno[19]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y6_N45
\inst4|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = ( \inst4|Equal0~0_combout\ & ( (\inst8|valor_interno[19]~DUPLICATE_q\ & (\inst8|valor_interno[16]~DUPLICATE_q\ & \inst4|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[19]~DUPLICATE_q\,
	datac => \inst8|ALT_INV_valor_interno[16]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_Equal0~1_combout\,
	dataf => \inst4|ALT_INV_Equal0~0_combout\,
	combout => \inst4|Equal0~2_combout\);

-- Location: LABCELL_X62_Y5_N18
\inst4|selfalgs[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs[1]~0_combout\ = ((\inst4|selop~0_combout\) # (\inst4|Equal3~0_combout\)) # (\inst4|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~2_combout\,
	datab => \inst4|ALT_INV_Equal3~0_combout\,
	datac => \inst4|ALT_INV_selop~0_combout\,
	combout => \inst4|selfalgs[1]~0_combout\);

-- Location: FF_X62_Y5_N20
\inst16|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst4|selfalgs[1]~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(1));

-- Location: LABCELL_X61_Y5_N42
\inst4|selfalgs[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs[0]~4_combout\ = ( \inst4|selfalgs~3_combout\ & ( \inst4|Equal2~2_combout\ & ( !\inst4|Equal0~2_combout\ ) ) ) # ( !\inst4|selfalgs~3_combout\ & ( \inst4|Equal2~2_combout\ & ( !\inst4|Equal0~2_combout\ ) ) ) # ( \inst4|selfalgs~3_combout\ & 
-- ( !\inst4|Equal2~2_combout\ & ( (!\inst4|Equal3~0_combout\ & !\inst4|Equal0~2_combout\) ) ) ) # ( !\inst4|selfalgs~3_combout\ & ( !\inst4|Equal2~2_combout\ & ( (!\inst4|Equal3~0_combout\ & (!\inst4|Equal0~2_combout\ & ((\inst4|selfalgs~1_combout\) # 
-- (\inst4|Equal9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_selfalgs~1_combout\,
	datac => \inst4|ALT_INV_Equal3~0_combout\,
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	datae => \inst4|ALT_INV_selfalgs~3_combout\,
	dataf => \inst4|ALT_INV_Equal2~2_combout\,
	combout => \inst4|selfalgs[0]~4_combout\);

-- Location: FF_X62_Y5_N47
\inst16|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst4|selfalgs[0]~4_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(0));

-- Location: LABCELL_X62_Y5_N51
\inst|ni~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ni~0_combout\ = ( \inst16|selfalgs\(2) & ( (!\inst16|selfalgs\(1) & !\inst16|selfalgs\(0)) ) ) # ( !\inst16|selfalgs\(2) & ( (\inst16|selfalgs\(0)) # (\inst16|selfalgs\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(1),
	datad => \inst16|ALT_INV_selfalgs\(0),
	dataf => \inst16|ALT_INV_selfalgs\(2),
	combout => \inst|ni~0_combout\);

-- Location: LABCELL_X62_Y5_N57
\inst|ni\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ni~combout\ = ( \inst33|opres\(15) & ( (\inst|ni~combout\) # (\inst|ni~0_combout\) ) ) # ( !\inst33|opres\(15) & ( (!\inst|ni~0_combout\ & \inst|ni~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ni~0_combout\,
	datad => \inst|ALT_INV_ni~combout\,
	dataf => \inst33|ALT_INV_opres\(15),
	combout => \inst|ni~combout\);

-- Location: FF_X63_Y6_N40
\inst101|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst|ni~combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst101|valor_interno~q\);

-- Location: LABCELL_X62_Y5_N48
\inst33|WideOr0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~2_combout\ = ( !\inst33|opres\(15) & ( (!\inst33|opres\(13) & (!\inst33|opres\(0) & !\inst33|opres\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres\(13),
	datac => \inst33|ALT_INV_opres\(0),
	datad => \inst33|ALT_INV_opres\(14),
	dataf => \inst33|ALT_INV_opres\(15),
	combout => \inst33|WideOr0~2_combout\);

-- Location: LABCELL_X63_Y4_N48
\inst33|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~1_combout\ = ( !\inst33|opres\(10) & ( (!\inst33|opres\(8) & (!\inst33|opres\(7) & (!\inst33|opres\(11) & !\inst33|opres\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(8),
	datab => \inst33|ALT_INV_opres\(7),
	datac => \inst33|ALT_INV_opres\(11),
	datad => \inst33|ALT_INV_opres\(9),
	dataf => \inst33|ALT_INV_opres\(10),
	combout => \inst33|WideOr0~1_combout\);

-- Location: LABCELL_X63_Y4_N54
\inst33|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~0_combout\ = ( !\inst33|opres\(5) & ( (!\inst33|opres\(2) & (!\inst33|opres\(1) & (!\inst33|opres\(3) & !\inst33|opres\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(2),
	datab => \inst33|ALT_INV_opres\(1),
	datac => \inst33|ALT_INV_opres\(3),
	datad => \inst33|ALT_INV_opres\(4),
	dataf => \inst33|ALT_INV_opres\(5),
	combout => \inst33|WideOr0~0_combout\);

-- Location: LABCELL_X63_Y4_N36
\inst33|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~combout\ = ( \inst33|WideOr0~0_combout\ & ( (!\inst33|WideOr0~2_combout\) # (((!\inst33|WideOr0~1_combout\) # (\inst33|opres\(12))) # (\inst33|opres\(6))) ) ) # ( !\inst33|WideOr0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111011111111111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_WideOr0~2_combout\,
	datab => \inst33|ALT_INV_opres\(6),
	datac => \inst33|ALT_INV_WideOr0~1_combout\,
	datad => \inst33|ALT_INV_opres\(12),
	dataf => \inst33|ALT_INV_WideOr0~0_combout\,
	combout => \inst33|WideOr0~combout\);

-- Location: LABCELL_X63_Y4_N39
\inst|zi\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|zi~combout\ = ( \inst|ni~0_combout\ & ( !\inst33|WideOr0~combout\ ) ) # ( !\inst|ni~0_combout\ & ( \inst|zi~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_zi~combout\,
	datad => \inst33|ALT_INV_WideOr0~combout\,
	dataf => \inst|ALT_INV_ni~0_combout\,
	combout => \inst|zi~combout\);

-- Location: FF_X63_Y4_N41
\inst102|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst|zi~combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|valor_interno~q\);

-- Location: LABCELL_X62_Y5_N9
\inst|vi~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|vi~0_combout\ = ( \inst16|selfalgs\(2) & ( \inst33|opres\(16) ) ) # ( !\inst16|selfalgs\(2) & ( (\inst33|opres\(16) & ((!\inst16|selfalgs\(0)) # (\inst16|selfalgs\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(1),
	datac => \inst16|ALT_INV_selfalgs\(0),
	datad => \inst33|ALT_INV_opres\(16),
	dataf => \inst16|ALT_INV_selfalgs\(2),
	combout => \inst|vi~0_combout\);

-- Location: LABCELL_X62_Y5_N36
\inst|vi\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|vi~combout\ = (!\inst|ni~0_combout\ & ((\inst|vi~combout\))) # (\inst|ni~0_combout\ & (\inst|vi~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_vi~0_combout\,
	datac => \inst|ALT_INV_ni~0_combout\,
	datad => \inst|ALT_INV_vi~combout\,
	combout => \inst|vi~combout\);

-- Location: FF_X62_Y5_N37
\inst103|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst|vi~combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst103|valor_interno~q\);

-- Location: FF_X62_Y5_N5
\inst104|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst|ci~combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|valor_interno~q\);

-- Location: LABCELL_X62_Y5_N6
\inst|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = ( \inst|Equal2~0_combout\ & ( !\inst16|selfalgs\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selfalgs\(0),
	dataf => \inst|ALT_INV_Equal2~0_combout\,
	combout => \inst|Equal2~1_combout\);

-- Location: LABCELL_X63_Y4_N18
\inst|hi\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|hi~combout\ = ( \inst|Equal2~1_combout\ & ( \inst33|opres\(8) ) ) # ( !\inst|Equal2~1_combout\ & ( \inst|hi~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres\(8),
	datac => \inst|ALT_INV_hi~combout\,
	dataf => \inst|ALT_INV_Equal2~1_combout\,
	combout => \inst|hi~combout\);

-- Location: FF_X62_Y4_N4
\inst105|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst|hi~combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst105|valor_interno~q\);

-- Location: MLABCELL_X82_Y80_N3
\inst106|valor_interno~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst106|valor_interno~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst106|valor_interno~feeder_combout\);

-- Location: FF_X82_Y80_N4
\inst106|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst106|valor_interno~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst106|valor_interno~q\);

-- Location: MLABCELL_X59_Y4_N48
\inst700666|AUX|valor_interno[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[15]~feeder_combout\ = ( \inst24|valor_interno\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(15),
	combout => \inst700666|AUX|valor_interno[15]~feeder_combout\);

-- Location: LABCELL_X62_Y4_N48
\inst700666|inst1000|AUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|AUX~0_combout\ = (\inst107|selregw\(2) & \inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst107|ALT_INV_selregw\(2),
	datac => \inst107|ALT_INV_selregw\(0),
	combout => \inst700666|inst1000|AUX~0_combout\);

-- Location: FF_X59_Y4_N49
\inst700666|AUX|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(15));

-- Location: FF_X59_Y4_N7
\inst700666|AUX|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(14),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(14));

-- Location: MLABCELL_X59_Y4_N15
\inst700666|AUX|valor_interno[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[13]~feeder_combout\ = ( \inst24|valor_interno\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(13),
	combout => \inst700666|AUX|valor_interno[13]~feeder_combout\);

-- Location: FF_X59_Y4_N16
\inst700666|AUX|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[13]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(13));

-- Location: FF_X59_Y4_N23
\inst700666|AUX|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(12),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(12));

-- Location: MLABCELL_X59_Y4_N27
\inst700666|AUX|valor_interno[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[11]~feeder_combout\ = ( \inst24|valor_interno\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(11),
	combout => \inst700666|AUX|valor_interno[11]~feeder_combout\);

-- Location: FF_X59_Y4_N28
\inst700666|AUX|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(11));

-- Location: FF_X66_Y4_N49
\inst700666|AUX|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(10),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(10));

-- Location: MLABCELL_X59_Y4_N42
\inst700666|AUX|valor_interno[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[9]~feeder_combout\ = ( \inst24|valor_interno\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(9),
	combout => \inst700666|AUX|valor_interno[9]~feeder_combout\);

-- Location: FF_X59_Y4_N43
\inst700666|AUX|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(9));

-- Location: FF_X59_Y4_N37
\inst700666|AUX|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(8),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(8));

-- Location: MLABCELL_X59_Y4_N57
\inst700666|AUX|valor_interno[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[7]~feeder_combout\ = ( \inst24|valor_interno\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(7),
	combout => \inst700666|AUX|valor_interno[7]~feeder_combout\);

-- Location: FF_X59_Y4_N59
\inst700666|AUX|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(7));

-- Location: MLABCELL_X59_Y4_N3
\inst700666|AUX|valor_interno[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[6]~feeder_combout\ = ( \inst24|valor_interno\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(6),
	combout => \inst700666|AUX|valor_interno[6]~feeder_combout\);

-- Location: FF_X59_Y4_N4
\inst700666|AUX|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(6));

-- Location: MLABCELL_X59_Y4_N9
\inst700666|AUX|valor_interno[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[5]~feeder_combout\ = ( \inst24|valor_interno\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(5),
	combout => \inst700666|AUX|valor_interno[5]~feeder_combout\);

-- Location: FF_X59_Y4_N10
\inst700666|AUX|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(5));

-- Location: FF_X64_Y4_N28
\inst700666|AUX|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(4));

-- Location: MLABCELL_X59_Y4_N33
\inst700666|AUX|valor_interno[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[3]~feeder_combout\ = ( \inst24|valor_interno\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(3),
	combout => \inst700666|AUX|valor_interno[3]~feeder_combout\);

-- Location: FF_X59_Y4_N34
\inst700666|AUX|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(3));

-- Location: LABCELL_X66_Y4_N18
\inst700666|AUX|valor_interno[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[2]~feeder_combout\ = ( \inst24|valor_interno\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(2),
	combout => \inst700666|AUX|valor_interno[2]~feeder_combout\);

-- Location: FF_X66_Y4_N19
\inst700666|AUX|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(2));

-- Location: FF_X63_Y6_N43
\inst700666|AUX|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(1));

-- Location: FF_X64_Y4_N10
\inst700666|AUX|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	asdata => \inst24|valor_interno\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(0));

-- Location: FF_X62_Y6_N1
\inst8|valor_interno[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst1|Mux12~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(19));

-- Location: MLABCELL_X25_Y2_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


