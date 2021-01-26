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

-- DATE "01/26/2021 17:41:29"

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
-- n	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[15]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[14]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[13]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[12]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[11]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[9]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[8]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[15]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[14]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[13]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[12]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[10]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[9]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[8]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[15]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[14]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[13]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[12]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[11]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[10]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[9]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[8]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[7]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[15]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[14]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[13]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[11]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[10]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[8]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[15]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[14]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[13]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[12]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[10]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[9]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[8]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[6]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[5]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[4]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[15]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[14]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[13]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[12]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[10]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[9]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[8]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[7]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[5]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst49|PCWrite~1_combout\ : std_logic;
SIGNAL \inst47~combout\ : std_logic;
SIGNAL \inst34|valor_interno[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst34|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|Add0~2\ : std_logic;
SIGNAL \inst7|Add0~9_sumout\ : std_logic;
SIGNAL \inst34|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst700666|inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst34|valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~1_combout\ : std_logic;
SIGNAL \inst4|Equal3~0_combout\ : std_logic;
SIGNAL \inst4|Equal11~0_combout\ : std_logic;
SIGNAL \inst4|selregr[3]~1_combout\ : std_logic;
SIGNAL \inst4|vf~combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~combout\ : std_logic;
SIGNAL \inst16|vf~q\ : std_logic;
SIGNAL \inst100|valor_interno~q\ : std_logic;
SIGNAL \inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst4|Equal4~0_combout\ : std_logic;
SIGNAL \inst4|selfalgs[0]~0_combout\ : std_logic;
SIGNAL \inst4|selresult[0]~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|comb~28_combout\ : std_logic;
SIGNAL \inst4|comb~27_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal0~1_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|comb~24_combout\ : std_logic;
SIGNAL \inst4|Equal3~1_combout\ : std_logic;
SIGNAL \inst4|comb~0_combout\ : std_logic;
SIGNAL \inst4|comb~25_combout\ : std_logic;
SIGNAL \inst4|comb~26_combout\ : std_logic;
SIGNAL \inst4|comb~33_combout\ : std_logic;
SIGNAL \inst4|memw~combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|memw~q\ : std_logic;
SIGNAL \inst107|memw~q\ : std_logic;
SIGNAL \inst12|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|selresult[0]~0_combout\ : std_logic;
SIGNAL \inst4|comb~32_combout\ : std_logic;
SIGNAL \inst4|comb~31_combout\ : std_logic;
SIGNAL \inst10|Mux10~0_combout\ : std_logic;
SIGNAL \inst700666|inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst4|comb~29_combout\ : std_logic;
SIGNAL \inst4|comb~30_combout\ : std_logic;
SIGNAL \inst4|sr~combout\ : std_logic;
SIGNAL \inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst11|Add0~1_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst10|Mux15~1_combout\ : std_logic;
SIGNAL \inst4|comb~11_combout\ : std_logic;
SIGNAL \inst4|comb~12_combout\ : std_logic;
SIGNAL \inst30|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst10|Mux15~0_combout\ : std_logic;
SIGNAL \inst4|comb~18_combout\ : std_logic;
SIGNAL \inst4|comb~19_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst33|Add0~0_combout\ : std_logic;
SIGNAL \inst202|Mux13~0_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal0~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[2]~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[2]~1_combout\ : std_logic;
SIGNAL \inst14|valor_interno[3]~4_combout\ : std_logic;
SIGNAL \inst32|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst11|Add0~2\ : std_logic;
SIGNAL \inst11|Add0~6\ : std_logic;
SIGNAL \inst11|Add0~9_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst10|Mux13~1_combout\ : std_logic;
SIGNAL \inst10|Mux13~0_combout\ : std_logic;
SIGNAL \inst11|Add0~10\ : std_logic;
SIGNAL \inst11|Add0~14\ : std_logic;
SIGNAL \inst11|Add0~17_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst10|Mux11~1_combout\ : std_logic;
SIGNAL \inst10|Mux11~0_combout\ : std_logic;
SIGNAL \inst202|Mux11~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[8]~4_combout\ : std_logic;
SIGNAL \inst33|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[7]~3_combout\ : std_logic;
SIGNAL \inst202|Mux25~0_combout\ : std_logic;
SIGNAL \inst202|Mux7~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|valor_interno[15]~0_combout\ : std_logic;
SIGNAL \inst4|seldato~combout\ : std_logic;
SIGNAL \inst14|valor_interno[15]~1_combout\ : std_logic;
SIGNAL \inst202|Mux6~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst202|Mux5~0_combout\ : std_logic;
SIGNAL \inst202|Mux2~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst202|Mux1~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst202|Mux16~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[15]~2_combout\ : std_logic;
SIGNAL \inst33|Add0~69_combout\ : std_logic;
SIGNAL \inst700|valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst202|Mux17~0_combout\ : std_logic;
SIGNAL \inst33|Add0~83_combout\ : std_logic;
SIGNAL \inst33|Add0~82_combout\ : std_logic;
SIGNAL \inst33|Add0~71_combout\ : std_logic;
SIGNAL \inst202|Mux3~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|Add0~81_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst202|Mux21~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|Add0~80_combout\ : std_logic;
SIGNAL \inst700|valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|valor_interno[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|Add0~79_combout\ : std_logic;
SIGNAL \inst33|Add0~78_combout\ : std_logic;
SIGNAL \inst202|Mux8~0_combout\ : std_logic;
SIGNAL \inst33|Add0~70_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst202|Mux26~0_combout\ : std_logic;
SIGNAL \inst33|Add0~76_combout\ : std_logic;
SIGNAL \inst202|Mux10~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst202|Mux27~0_combout\ : std_logic;
SIGNAL \inst33|Add0~75_combout\ : std_logic;
SIGNAL \inst33|Add0~74_combout\ : std_logic;
SIGNAL \inst202|Mux12~0_combout\ : std_logic;
SIGNAL \inst33|Add0~73_combout\ : std_logic;
SIGNAL \inst14|valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|Add0~72_combout\ : std_logic;
SIGNAL \inst202|Mux14~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst202|Mux15~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst202|Mux31~0_combout\ : std_logic;
SIGNAL \inst33|Add0~84_combout\ : std_logic;
SIGNAL \inst4|selfalgs[3]~1_combout\ : std_logic;
SIGNAL \inst4|comb~7_combout\ : std_logic;
SIGNAL \inst4|comb~8_combout\ : std_logic;
SIGNAL \inst4|cadj~combout\ : std_logic;
SIGNAL \inst28|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|cadj~q\ : std_logic;
SIGNAL \inst4|Equal3~3_combout\ : std_logic;
SIGNAL \inst4|comb~9_combout\ : std_logic;
SIGNAL \inst4|comb~10_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|comb~6_combout\ : std_logic;
SIGNAL \inst4|comb~5_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst33|Equal0~1_combout\ : std_logic;
SIGNAL \inst33|Add0~3\ : std_logic;
SIGNAL \inst33|Add0~66_sumout\ : std_logic;
SIGNAL \inst33|opres[16]~36_combout\ : std_logic;
SIGNAL \inst|ci~0_combout\ : std_logic;
SIGNAL \inst|ci~1_combout\ : std_logic;
SIGNAL \inst|ci~combout\ : std_logic;
SIGNAL \inst4|selc~combout\ : std_logic;
SIGNAL \inst27|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|selc~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
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
SIGNAL \inst33|Add0~2_sumout\ : std_logic;
SIGNAL \inst14|valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[15]~1_combout\ : std_logic;
SIGNAL \inst700|valor_interno[14]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[15]~0_combout\ : std_logic;
SIGNAL \inst33|opres[15]~2_combout\ : std_logic;
SIGNAL \inst202|Mux0~0_combout\ : std_logic;
SIGNAL \inst33|opres[8]~5_combout\ : std_logic;
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
SIGNAL \inst700666|ACCA|valor_interno[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[10]~26_combout\ : std_logic;
SIGNAL \inst33|Add0~46_sumout\ : std_logic;
SIGNAL \inst33|opres[10]~27_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst202|Mux22~0_combout\ : std_logic;
SIGNAL \inst33|opres[9]~24_combout\ : std_logic;
SIGNAL \inst33|Add0~42_sumout\ : std_logic;
SIGNAL \inst33|opres[9]~25_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst202|Mux23~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[8]~22_combout\ : std_logic;
SIGNAL \inst33|Add0~38_sumout\ : std_logic;
SIGNAL \inst33|opres[8]~23_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst202|Mux24~0_combout\ : std_logic;
SIGNAL \inst33|Add0~77_combout\ : std_logic;
SIGNAL \inst33|Add0~34_sumout\ : std_logic;
SIGNAL \inst33|opres[7]~20_combout\ : std_logic;
SIGNAL \inst33|opres[7]~21_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst202|Mux25~1_combout\ : std_logic;
SIGNAL \inst33|Add0~6_sumout\ : std_logic;
SIGNAL \inst33|opres[6]~6_combout\ : std_logic;
SIGNAL \inst33|opres[6]~7_combout\ : std_logic;
SIGNAL \inst202|Mux9~0_combout\ : std_logic;
SIGNAL \inst33|opres[5]~18_combout\ : std_logic;
SIGNAL \inst33|Add0~30_sumout\ : std_logic;
SIGNAL \inst33|opres[5]~19_combout\ : std_logic;
SIGNAL \inst11|Add0~18\ : std_logic;
SIGNAL \inst11|Add0~21_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst10|Mux10~2_combout\ : std_logic;
SIGNAL \inst10|Mux10~1_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst202|Mux28~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|Add0~22_sumout\ : std_logic;
SIGNAL \inst700|valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[3]~14_combout\ : std_logic;
SIGNAL \inst33|opres[3]~15_combout\ : std_logic;
SIGNAL \inst11|Add0~13_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst10|Mux12~1_combout\ : std_logic;
SIGNAL \inst10|Mux12~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst202|Mux30~0_combout\ : std_logic;
SIGNAL \inst33|opres[1]~10_combout\ : std_logic;
SIGNAL \inst33|Add0~14_sumout\ : std_logic;
SIGNAL \inst33|opres[1]~11_combout\ : std_logic;
SIGNAL \inst11|Add0~5_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst10|Mux14~1_combout\ : std_logic;
SIGNAL \inst10|Mux14~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst202|Mux29~0_combout\ : std_logic;
SIGNAL \inst33|opres[2]~12_combout\ : std_logic;
SIGNAL \inst33|Add0~18_sumout\ : std_logic;
SIGNAL \inst33|opres[2]~13_combout\ : std_logic;
SIGNAL \inst34|valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst7|Add0~10\ : std_logic;
SIGNAL \inst7|Add0~5_sumout\ : std_logic;
SIGNAL \inst34|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|Add0~6\ : std_logic;
SIGNAL \inst7|Add0~18\ : std_logic;
SIGNAL \inst7|Add0~13_sumout\ : std_logic;
SIGNAL \inst34|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|selregr[3]~0_combout\ : std_logic;
SIGNAL \inst4|comb~23_combout\ : std_logic;
SIGNAL \inst4|comb~22_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[0]~34_combout\ : std_logic;
SIGNAL \inst33|Add0~62_sumout\ : std_logic;
SIGNAL \inst33|opres[0]~35_combout\ : std_logic;
SIGNAL \inst7|Add0~1_sumout\ : std_logic;
SIGNAL \inst34|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst4|Equal13~0_combout\ : std_logic;
SIGNAL \inst4|comb~20_combout\ : std_logic;
SIGNAL \inst4|comb~21_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst33|opres[15]~3_combout\ : std_logic;
SIGNAL \inst14|valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[4]~16_combout\ : std_logic;
SIGNAL \inst33|Add0~26_sumout\ : std_logic;
SIGNAL \inst33|opres[4]~17_combout\ : std_logic;
SIGNAL \inst7|Add0~17_sumout\ : std_logic;
SIGNAL \inst34|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst34|valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst4|comb~3_combout\ : std_logic;
SIGNAL \inst4|comb~4_combout\ : std_logic;
SIGNAL \inst4|comb~15_combout\ : std_logic;
SIGNAL \inst4|comb~16_combout\ : std_logic;
SIGNAL \inst4|comb~17_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst700666|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|selregw[2]~0_combout\ : std_logic;
SIGNAL \inst4|comb~13_combout\ : std_logic;
SIGNAL \inst4|comb~14_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst49|PCWrite~0_combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst4|Equal3~2_combout\ : std_logic;
SIGNAL \inst4|Equal13~1_combout\ : std_logic;
SIGNAL \inst4|comb~1_combout\ : std_logic;
SIGNAL \inst4|comb~2_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|ni~0_combout\ : std_logic;
SIGNAL \inst|ni~combout\ : std_logic;
SIGNAL \inst101|valor_interno~q\ : std_logic;
SIGNAL \inst|zi~0_combout\ : std_logic;
SIGNAL \inst33|WideOr0~0_combout\ : std_logic;
SIGNAL \inst33|WideOr0~2_combout\ : std_logic;
SIGNAL \inst33|WideOr0~1_combout\ : std_logic;
SIGNAL \inst33|WideOr0~combout\ : std_logic;
SIGNAL \inst|zi~combout\ : std_logic;
SIGNAL \inst102|valor_interno~q\ : std_logic;
SIGNAL \inst|vi~0_combout\ : std_logic;
SIGNAL \inst|vi~1_combout\ : std_logic;
SIGNAL \inst|vi~combout\ : std_logic;
SIGNAL \inst103|valor_interno~q\ : std_logic;
SIGNAL \inst104|valor_interno~q\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|hi~combout\ : std_logic;
SIGNAL \inst105|valor_interno~q\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|ii~0_combout\ : std_logic;
SIGNAL \inst|ii~combout\ : std_logic;
SIGNAL \inst106|valor_interno~q\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst1000|AUX~0_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|seldirw\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst700666|ACCA|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst15|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst24|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst34|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|AUX|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst700666|ACCB|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst23|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst107|seldirw\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst16|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst16|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst16|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|seldirw\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst33|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst4|selregr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|selsrc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|seldir\ : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \inst14|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst33|ALT_INV_Add0~54_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~50_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~46_sumout\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \inst33|ALT_INV_Add0~2_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst24|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 1);
SIGNAL \inst16|ALT_INV_selop\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst49|ALT_INV_PCWrite~1_combout\ : std_logic;
SIGNAL \inst49|ALT_INV_PCWrite~0_combout\ : std_logic;
SIGNAL \inst700666|inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst16|ALT_INV_selresult\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_ii~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ci~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_vi~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \inst33|ALT_INV_WideOr0~2_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst107|ALT_INV_selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst8|ALT_INV_valor_interno\ : std_logic_vector(23 DOWNTO 16);
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst23|ALT_INV_valor_interno\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst11|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~74_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~73_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~72_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[3]~4_combout\ : std_logic;
SIGNAL \inst32|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~71_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~70_combout\ : std_logic;
SIGNAL \inst202|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[7]~3_combout\ : std_logic;
SIGNAL \inst700666|inst|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selresult[0]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selfalgs[3]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[2]~0_combout\ : std_logic;
SIGNAL \inst700666|inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[15]~1_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[15]~0_combout\ : std_logic;
SIGNAL \inst700666|inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~69_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[3]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal13~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selfalgs[0]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal3~0_combout\ : std_logic;
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
SIGNAL \inst33|ALT_INV_opres[8]~5_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[8]~4_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[15]~3_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[15]~2_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[15]~1_combout\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_cadj~q\ : std_logic;
SIGNAL \inst16|ALT_INV_selc~q\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[15]~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_seldato~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selsrc\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|ALT_INV_selop\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|ALT_INV_selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|ALT_INV_selresult\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|ALT_INV_selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|ALT_INV_selregr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst33|ALT_INV_opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|ALT_INV_ii~combout\ : std_logic;
SIGNAL \inst|ALT_INV_hi~combout\ : std_logic;
SIGNAL \inst|ALT_INV_ci~combout\ : std_logic;
SIGNAL \inst|ALT_INV_vi~combout\ : std_logic;
SIGNAL \inst|ALT_INV_zi~combout\ : std_logic;
SIGNAL \inst|ALT_INV_ni~combout\ : std_logic;
SIGNAL \inst|ALT_INV_ni~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_zi~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_vi~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ci~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~33_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~32_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~31_combout\ : std_logic;
SIGNAL \inst45|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~30_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~29_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst107|ALT_INV_seldirw\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst107|ALT_INV_memw~q\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~28_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~27_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~26_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~25_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~24_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[3]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~23_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~22_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~21_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~20_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~19_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~18_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~17_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~16_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~15_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~14_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~13_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregw[2]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selresult[0]~1_combout\ : std_logic;
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
SIGNAL \inst14|ALT_INV_valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[14]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RELOJ~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_RELOJ~input_o\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_seldirw\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst4|ALT_INV_memw~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sr~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_seldir\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|ALT_INV_vf~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_cadj~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selc~combout\ : std_logic;

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

\inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst10|Mux10~1_combout\ & \inst10|Mux11~0_combout\ & \inst10|Mux12~0_combout\ & \inst10|Mux13~0_combout\ & \inst10|Mux14~0_combout\ & \inst10|Mux15~0_combout\);

\inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst10|Mux10~1_combout\ & \inst10|Mux11~0_combout\ & \inst10|Mux12~0_combout\ & \inst10|Mux13~0_combout\ & \inst10|Mux14~0_combout\ & \inst10|Mux15~0_combout\);

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
\inst700|ALT_INV_valor_interno\(15) <= NOT \inst700|valor_interno\(15);
\inst14|ALT_INV_valor_interno\(15) <= NOT \inst14|valor_interno\(15);
\inst33|ALT_INV_Add0~2_sumout\ <= NOT \inst33|Add0~2_sumout\;
\inst7|ALT_INV_Add0~17_sumout\ <= NOT \inst7|Add0~17_sumout\;
\inst7|ALT_INV_Add0~13_sumout\ <= NOT \inst7|Add0~13_sumout\;
\inst7|ALT_INV_Add0~9_sumout\ <= NOT \inst7|Add0~9_sumout\;
\inst7|ALT_INV_Add0~5_sumout\ <= NOT \inst7|Add0~5_sumout\;
\inst7|ALT_INV_Add0~1_sumout\ <= NOT \inst7|Add0~1_sumout\;
\inst34|ALT_INV_valor_interno\(0) <= NOT \inst34|valor_interno\(0);
\inst34|ALT_INV_valor_interno\(4) <= NOT \inst34|valor_interno\(4);
\inst34|ALT_INV_valor_interno\(5) <= NOT \inst34|valor_interno\(5);
\inst34|ALT_INV_valor_interno\(2) <= NOT \inst34|valor_interno\(2);
\inst34|ALT_INV_valor_interno\(3) <= NOT \inst34|valor_interno\(3);
\inst34|ALT_INV_valor_interno\(1) <= NOT \inst34|valor_interno\(1);
\inst24|ALT_INV_valor_interno\(1) <= NOT \inst24|valor_interno\(1);
\inst24|ALT_INV_valor_interno\(7) <= NOT \inst24|valor_interno\(7);
\inst24|ALT_INV_valor_interno\(8) <= NOT \inst24|valor_interno\(8);
\inst24|ALT_INV_valor_interno\(9) <= NOT \inst24|valor_interno\(9);
\inst24|ALT_INV_valor_interno\(10) <= NOT \inst24|valor_interno\(10);
\inst24|ALT_INV_valor_interno\(12) <= NOT \inst24|valor_interno\(12);
\inst24|ALT_INV_valor_interno\(13) <= NOT \inst24|valor_interno\(13);
\inst24|ALT_INV_valor_interno\(15) <= NOT \inst24|valor_interno\(15);
\inst16|ALT_INV_selop\(1) <= NOT \inst16|selop\(1);
\inst16|ALT_INV_selop\(2) <= NOT \inst16|selop\(2);
\inst49|ALT_INV_PCWrite~1_combout\ <= NOT \inst49|PCWrite~1_combout\;
\inst49|ALT_INV_PCWrite~0_combout\ <= NOT \inst49|PCWrite~0_combout\;
\inst700666|inst|ALT_INV_Equal0~0_combout\ <= NOT \inst700666|inst|Equal0~0_combout\;
\inst16|ALT_INV_selregw\(0) <= NOT \inst16|selregw\(0);
\inst16|ALT_INV_selregw\(2) <= NOT \inst16|selregw\(2);
\inst16|ALT_INV_selresult\(0) <= NOT \inst16|selresult\(0);
\inst|ALT_INV_ii~0_combout\ <= NOT \inst|ii~0_combout\;
\inst|ALT_INV_Equal0~1_combout\ <= NOT \inst|Equal0~1_combout\;
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
\inst|ALT_INV_ci~0_combout\ <= NOT \inst|ci~0_combout\;
\inst|ALT_INV_vi~0_combout\ <= NOT \inst|vi~0_combout\;
\inst33|ALT_INV_WideOr0~combout\ <= NOT \inst33|WideOr0~combout\;
\inst33|ALT_INV_WideOr0~2_combout\ <= NOT \inst33|WideOr0~2_combout\;
\inst33|ALT_INV_WideOr0~1_combout\ <= NOT \inst33|WideOr0~1_combout\;
\inst33|ALT_INV_WideOr0~0_combout\ <= NOT \inst33|WideOr0~0_combout\;
\inst16|ALT_INV_selfalgs\(1) <= NOT \inst16|selfalgs\(1);
\inst16|ALT_INV_selfalgs\(3) <= NOT \inst16|selfalgs\(3);
\inst16|ALT_INV_selfalgs\(2) <= NOT \inst16|selfalgs\(2);
\inst16|ALT_INV_selfalgs\(0) <= NOT \inst16|selfalgs\(0);
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
\inst700666|ACCB|ALT_INV_valor_interno\(8) <= NOT \inst700666|ACCB|valor_interno\(8);
\inst700666|ACCB|ALT_INV_valor_interno\(9) <= NOT \inst700666|ACCB|valor_interno\(9);
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
\inst33|ALT_INV_Add0~74_combout\ <= NOT \inst33|Add0~74_combout\;
\inst33|ALT_INV_Add0~73_combout\ <= NOT \inst33|Add0~73_combout\;
\inst33|ALT_INV_Add0~72_combout\ <= NOT \inst33|Add0~72_combout\;
\inst14|ALT_INV_valor_interno[3]~4_combout\ <= NOT \inst14|valor_interno[3]~4_combout\;
\inst32|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst32|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst33|ALT_INV_Add0~71_combout\ <= NOT \inst33|Add0~71_combout\;
\inst33|ALT_INV_Add0~70_combout\ <= NOT \inst33|Add0~70_combout\;
\inst202|ALT_INV_Mux25~0_combout\ <= NOT \inst202|Mux25~0_combout\;
\inst14|ALT_INV_valor_interno[7]~3_combout\ <= NOT \inst14|valor_interno[7]~3_combout\;
\inst700666|inst|ALT_INV_Equal0~3_combout\ <= NOT \inst700666|inst|Equal0~3_combout\;
\inst4|ALT_INV_comb~10_combout\ <= NOT \inst4|comb~10_combout\;
\inst4|ALT_INV_comb~9_combout\ <= NOT \inst4|comb~9_combout\;
\inst4|ALT_INV_Equal0~2_combout\ <= NOT \inst4|Equal0~2_combout\;
\inst4|ALT_INV_Equal3~3_combout\ <= NOT \inst4|Equal3~3_combout\;
\inst4|ALT_INV_comb~8_combout\ <= NOT \inst4|comb~8_combout\;
\inst4|ALT_INV_comb~7_combout\ <= NOT \inst4|comb~7_combout\;
\inst4|ALT_INV_selresult[0]~0_combout\ <= NOT \inst4|selresult[0]~0_combout\;
\inst4|ALT_INV_selfalgs[3]~1_combout\ <= NOT \inst4|selfalgs[3]~1_combout\;
\inst4|ALT_INV_comb~6_combout\ <= NOT \inst4|comb~6_combout\;
\inst4|ALT_INV_comb~5_combout\ <= NOT \inst4|comb~5_combout\;
\inst700|ALT_INV_valor_interno[2]~0_combout\ <= NOT \inst700|valor_interno[2]~0_combout\;
\inst700666|inst|ALT_INV_Equal0~2_combout\ <= NOT \inst700666|inst|Equal0~2_combout\;
\inst14|ALT_INV_valor_interno[15]~1_combout\ <= NOT \inst14|valor_interno[15]~1_combout\;
\inst14|ALT_INV_valor_interno[15]~0_combout\ <= NOT \inst14|valor_interno[15]~0_combout\;
\inst700666|inst|ALT_INV_Equal0~1_combout\ <= NOT \inst700666|inst|Equal0~1_combout\;
\inst33|ALT_INV_Add0~69_combout\ <= NOT \inst33|Add0~69_combout\;
\inst4|ALT_INV_comb~4_combout\ <= NOT \inst4|comb~4_combout\;
\inst4|ALT_INV_comb~3_combout\ <= NOT \inst4|comb~3_combout\;
\inst4|ALT_INV_comb~2_combout\ <= NOT \inst4|comb~2_combout\;
\inst4|ALT_INV_comb~1_combout\ <= NOT \inst4|comb~1_combout\;
\inst4|ALT_INV_selregr[3]~0_combout\ <= NOT \inst4|selregr[3]~0_combout\;
\inst4|ALT_INV_Equal13~1_combout\ <= NOT \inst4|Equal13~1_combout\;
\inst4|ALT_INV_Equal13~0_combout\ <= NOT \inst4|Equal13~0_combout\;
\inst4|ALT_INV_Equal3~2_combout\ <= NOT \inst4|Equal3~2_combout\;
\inst4|ALT_INV_selfalgs[0]~0_combout\ <= NOT \inst4|selfalgs[0]~0_combout\;
\inst4|ALT_INV_Equal4~0_combout\ <= NOT \inst4|Equal4~0_combout\;
\inst4|ALT_INV_comb~0_combout\ <= NOT \inst4|comb~0_combout\;
\inst4|ALT_INV_Equal0~1_combout\ <= NOT \inst4|Equal0~1_combout\;
\inst4|ALT_INV_Equal0~0_combout\ <= NOT \inst4|Equal0~0_combout\;
\inst4|ALT_INV_Equal3~1_combout\ <= NOT \inst4|Equal3~1_combout\;
\inst4|ALT_INV_Equal11~0_combout\ <= NOT \inst4|Equal11~0_combout\;
\inst4|ALT_INV_Equal3~0_combout\ <= NOT \inst4|Equal3~0_combout\;
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
\inst33|ALT_INV_opres[8]~5_combout\ <= NOT \inst33|opres[8]~5_combout\;
\inst33|ALT_INV_opres[8]~4_combout\ <= NOT \inst33|opres[8]~4_combout\;
\inst33|ALT_INV_Equal0~0_combout\ <= NOT \inst33|Equal0~0_combout\;
\inst14|ALT_INV_valor_interno\(6) <= NOT \inst14|valor_interno\(6);
\inst33|ALT_INV_opres[15]~3_combout\ <= NOT \inst33|opres[15]~3_combout\;
\inst33|ALT_INV_opres[15]~2_combout\ <= NOT \inst33|opres[15]~2_combout\;
\inst33|ALT_INV_opres[15]~1_combout\ <= NOT \inst33|opres[15]~1_combout\;
\inst40|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst16|ALT_INV_cadj~q\ <= NOT \inst16|cadj~q\;
\inst16|ALT_INV_selc~q\ <= NOT \inst16|selc~q\;
\inst33|ALT_INV_opres[15]~0_combout\ <= NOT \inst33|opres[15]~0_combout\;
\inst33|ALT_INV_Add0~0_combout\ <= NOT \inst33|Add0~0_combout\;
\inst16|ALT_INV_selop\(0) <= NOT \inst16|selop\(0);
\inst4|ALT_INV_seldato~combout\ <= NOT \inst4|seldato~combout\;
\inst4|ALT_INV_selsrc\(0) <= NOT \inst4|selsrc\(0);
\inst4|ALT_INV_selsrc\(1) <= NOT \inst4|selsrc\(1);
\inst4|ALT_INV_selop\(0) <= NOT \inst4|selop\(0);
\inst4|ALT_INV_selop\(1) <= NOT \inst4|selop\(1);
\inst4|ALT_INV_selop\(2) <= NOT \inst4|selop\(2);
\inst4|ALT_INV_selregw\(0) <= NOT \inst4|selregw\(0);
\inst4|ALT_INV_selregw\(2) <= NOT \inst4|selregw\(2);
\inst4|ALT_INV_selresult\(0) <= NOT \inst4|selresult\(0);
\inst4|ALT_INV_selfalgs\(1) <= NOT \inst4|selfalgs\(1);
\inst4|ALT_INV_selfalgs\(3) <= NOT \inst4|selfalgs\(3);
\inst4|ALT_INV_selfalgs\(2) <= NOT \inst4|selfalgs\(2);
\inst4|ALT_INV_selfalgs\(0) <= NOT \inst4|selfalgs\(0);
\inst4|ALT_INV_selregr\(2) <= NOT \inst4|selregr\(2);
\inst4|ALT_INV_selregr\(0) <= NOT \inst4|selregr\(0);
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
\inst|ALT_INV_ii~combout\ <= NOT \inst|ii~combout\;
\inst|ALT_INV_hi~combout\ <= NOT \inst|hi~combout\;
\inst|ALT_INV_ci~combout\ <= NOT \inst|ci~combout\;
\inst|ALT_INV_vi~combout\ <= NOT \inst|vi~combout\;
\inst|ALT_INV_zi~combout\ <= NOT \inst|zi~combout\;
\inst|ALT_INV_ni~combout\ <= NOT \inst|ni~combout\;
\inst|ALT_INV_ni~0_combout\ <= NOT \inst|ni~0_combout\;
\inst|ALT_INV_zi~0_combout\ <= NOT \inst|zi~0_combout\;
\inst|ALT_INV_vi~1_combout\ <= NOT \inst|vi~1_combout\;
\inst|ALT_INV_ci~1_combout\ <= NOT \inst|ci~1_combout\;
\inst4|ALT_INV_comb~33_combout\ <= NOT \inst4|comb~33_combout\;
\inst4|ALT_INV_comb~32_combout\ <= NOT \inst4|comb~32_combout\;
\inst4|ALT_INV_comb~31_combout\ <= NOT \inst4|comb~31_combout\;
\inst45|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst4|ALT_INV_comb~30_combout\ <= NOT \inst4|comb~30_combout\;
\inst4|ALT_INV_comb~29_combout\ <= NOT \inst4|comb~29_combout\;
\inst10|ALT_INV_Mux10~0_combout\ <= NOT \inst10|Mux10~0_combout\;
\inst107|ALT_INV_seldirw\(1) <= NOT \inst107|seldirw\(1);
\inst107|ALT_INV_memw~q\ <= NOT \inst107|memw~q\;
\inst4|ALT_INV_comb~28_combout\ <= NOT \inst4|comb~28_combout\;
\inst4|ALT_INV_comb~27_combout\ <= NOT \inst4|comb~27_combout\;
\inst4|ALT_INV_comb~26_combout\ <= NOT \inst4|comb~26_combout\;
\inst4|ALT_INV_comb~25_combout\ <= NOT \inst4|comb~25_combout\;
\inst4|ALT_INV_comb~24_combout\ <= NOT \inst4|comb~24_combout\;
\inst4|ALT_INV_selregr[3]~1_combout\ <= NOT \inst4|selregr[3]~1_combout\;
\inst4|ALT_INV_comb~23_combout\ <= NOT \inst4|comb~23_combout\;
\inst4|ALT_INV_comb~22_combout\ <= NOT \inst4|comb~22_combout\;
\inst4|ALT_INV_comb~21_combout\ <= NOT \inst4|comb~21_combout\;
\inst4|ALT_INV_comb~20_combout\ <= NOT \inst4|comb~20_combout\;
\inst4|ALT_INV_comb~19_combout\ <= NOT \inst4|comb~19_combout\;
\inst4|ALT_INV_comb~18_combout\ <= NOT \inst4|comb~18_combout\;
\inst4|ALT_INV_comb~17_combout\ <= NOT \inst4|comb~17_combout\;
\inst4|ALT_INV_comb~16_combout\ <= NOT \inst4|comb~16_combout\;
\inst4|ALT_INV_comb~15_combout\ <= NOT \inst4|comb~15_combout\;
\inst4|ALT_INV_comb~14_combout\ <= NOT \inst4|comb~14_combout\;
\inst4|ALT_INV_comb~13_combout\ <= NOT \inst4|comb~13_combout\;
\inst4|ALT_INV_selregw[2]~0_combout\ <= NOT \inst4|selregw[2]~0_combout\;
\inst4|ALT_INV_comb~12_combout\ <= NOT \inst4|comb~12_combout\;
\inst4|ALT_INV_comb~11_combout\ <= NOT \inst4|comb~11_combout\;
\inst4|ALT_INV_selresult[0]~1_combout\ <= NOT \inst4|selresult[0]~1_combout\;
\inst33|ALT_INV_Equal0~1_combout\ <= NOT \inst33|Equal0~1_combout\;
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
\inst14|ALT_INV_valor_interno[0]~DUPLICATE_q\ <= NOT \inst14|valor_interno[0]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[4]~DUPLICATE_q\ <= NOT \inst14|valor_interno[4]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[3]~DUPLICATE_q\ <= NOT \inst14|valor_interno[3]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[1]~DUPLICATE_q\ <= NOT \inst14|valor_interno[1]~DUPLICATE_q\;
\inst700666|ACCB|ALT_INV_valor_interno[2]~DUPLICATE_q\ <= NOT \inst700666|ACCB|valor_interno[2]~DUPLICATE_q\;
\inst700666|ACCB|ALT_INV_valor_interno[10]~DUPLICATE_q\ <= NOT \inst700666|ACCB|valor_interno[10]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[10]~DUPLICATE_q\ <= NOT \inst14|valor_interno[10]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\ <= NOT \inst700|valor_interno[10]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[9]~DUPLICATE_q\ <= NOT \inst14|valor_interno[9]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[8]~DUPLICATE_q\ <= NOT \inst14|valor_interno[8]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\ <= NOT \inst700|valor_interno[8]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[4]~DUPLICATE_q\ <= NOT \inst700|valor_interno[4]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\ <= NOT \inst700|valor_interno[3]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[2]~DUPLICATE_q\ <= NOT \inst700|valor_interno[2]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[0]~DUPLICATE_q\ <= NOT \inst700|valor_interno[0]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\ <= NOT \inst700|valor_interno[1]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\ <= NOT \inst700|valor_interno[13]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[12]~DUPLICATE_q\ <= NOT \inst700|valor_interno[12]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[14]~DUPLICATE_q\ <= NOT \inst700|valor_interno[14]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\ <= NOT \inst700|valor_interno[15]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[15]~DUPLICATE_q\ <= NOT \inst14|valor_interno[15]~DUPLICATE_q\;
\inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\ <= NOT \inst34|valor_interno[0]~DUPLICATE_q\;
\inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\ <= NOT \inst34|valor_interno[4]~DUPLICATE_q\;
\inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\ <= NOT \inst34|valor_interno[2]~DUPLICATE_q\;
\ALT_INV_RELOJ~inputCLKENA0_outclk\ <= NOT \RELOJ~inputCLKENA0_outclk\;
\ALT_INV_RELOJ~input_o\ <= NOT \RELOJ~input_o\;
\inst34|ALT_INV_valor_interno[0]~_wirecell_combout\ <= NOT \inst34|valor_interno[0]~_wirecell_combout\;
\inst4|ALT_INV_seldirw\(1) <= NOT \inst4|seldirw\(1);
\inst4|ALT_INV_memw~combout\ <= NOT \inst4|memw~combout\;
\inst4|ALT_INV_sr~combout\ <= NOT \inst4|sr~combout\;
\inst4|ALT_INV_seldir\(0) <= NOT \inst4|seldir\(0);
\inst4|ALT_INV_vf~combout\ <= NOT \inst4|vf~combout\;
\inst4|ALT_INV_cadj~combout\ <= NOT \inst4|cadj~combout\;
\inst4|ALT_INV_selc~combout\ <= NOT \inst4|selc~combout\;

-- Location: IOOBUF_X78_Y81_N53
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

-- Location: IOOBUF_X89_Y8_N39
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

-- Location: IOOBUF_X78_Y81_N36
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

-- Location: IOOBUF_X89_Y37_N39
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

-- Location: IOOBUF_X89_Y9_N5
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

-- Location: IOOBUF_X89_Y37_N5
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

-- Location: IOOBUF_X89_Y38_N56
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

-- Location: IOOBUF_X89_Y38_N39
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

-- Location: IOOBUF_X89_Y4_N79
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

-- Location: IOOBUF_X89_Y6_N39
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

-- Location: IOOBUF_X62_Y0_N36
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

-- Location: IOOBUF_X68_Y0_N36
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

-- Location: IOOBUF_X89_Y6_N5
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

-- Location: IOOBUF_X89_Y9_N22
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

-- Location: IOOBUF_X89_Y9_N56
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

-- Location: IOOBUF_X70_Y0_N19
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

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N42
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

-- Location: IOOBUF_X89_Y8_N22
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

-- Location: IOOBUF_X89_Y38_N5
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

-- Location: IOOBUF_X80_Y81_N36
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

-- Location: IOOBUF_X89_Y37_N22
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

-- Location: IOOBUF_X89_Y6_N56
\ACCB_D[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(15),
	devoe => ww_devoe,
	o => ww_ACCB_D(15));

-- Location: IOOBUF_X89_Y37_N56
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

-- Location: IOOBUF_X72_Y0_N19
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

-- Location: IOOBUF_X89_Y36_N22
\ACCB_D[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(12),
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
	i => \inst700666|ACCB|valor_interno\(11),
	devoe => ww_devoe,
	o => ww_ACCB_D(11));

-- Location: IOOBUF_X60_Y0_N36
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

-- Location: IOOBUF_X70_Y0_N36
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

-- Location: IOOBUF_X68_Y0_N53
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

-- Location: IOOBUF_X89_Y8_N56
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

-- Location: IOOBUF_X72_Y0_N53
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

-- Location: IOOBUF_X89_Y35_N96
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

-- Location: IOOBUF_X89_Y36_N5
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

-- Location: IOOBUF_X89_Y36_N39
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

-- Location: IOOBUF_X89_Y38_N22
\ACCB_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACCB_D(2));

-- Location: IOOBUF_X89_Y6_N22
\ACCB_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(1),
	devoe => ww_devoe,
	o => ww_ACCB_D(1));

-- Location: IOOBUF_X89_Y36_N56
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

-- Location: IOOBUF_X62_Y0_N19
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

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X64_Y0_N36
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

-- Location: IOOBUF_X72_Y81_N36
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

-- Location: IOOBUF_X72_Y0_N36
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

-- Location: IOOBUF_X66_Y0_N76
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

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X68_Y0_N2
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

-- Location: IOOBUF_X89_Y8_N5
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

-- Location: IOOBUF_X64_Y0_N53
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

-- Location: IOOBUF_X64_Y0_N19
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

-- Location: IOOBUF_X62_Y0_N53
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

-- Location: IOOBUF_X72_Y81_N53
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X28_Y0_N53
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

-- Location: IOOBUF_X52_Y81_N53
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

-- Location: IOOBUF_X60_Y0_N53
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

-- Location: IOOBUF_X72_Y81_N2
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

-- Location: IOOBUF_X86_Y81_N2
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

-- Location: IOOBUF_X32_Y0_N19
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: IOOBUF_X28_Y81_N19
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

-- Location: IOOBUF_X66_Y0_N93
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

-- Location: IOOBUF_X68_Y0_N19
\instruccion[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno\(22),
	devoe => ww_devoe,
	o => ww_instruccion(6));

-- Location: IOOBUF_X89_Y35_N79
\instruccion[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno\(21),
	devoe => ww_devoe,
	o => ww_instruccion(5));

-- Location: IOOBUF_X58_Y0_N59
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

-- Location: IOOBUF_X56_Y0_N53
\instruccion[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno\(20),
	devoe => ww_devoe,
	o => ww_instruccion(3));

-- Location: IOOBUF_X66_Y0_N42
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

-- Location: IOOBUF_X89_Y9_N39
\instruccion[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|valor_interno\(17),
	devoe => ww_devoe,
	o => ww_instruccion(1));

-- Location: IOOBUF_X66_Y0_N59
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

-- Location: IOOBUF_X26_Y81_N59
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

-- Location: IOOBUF_X34_Y81_N93
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

-- Location: IOOBUF_X62_Y81_N2
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

-- Location: IOOBUF_X30_Y81_N19
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X70_Y81_N2
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

-- Location: IOOBUF_X26_Y81_N93
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

-- Location: IOOBUF_X26_Y0_N42
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

-- Location: IOOBUF_X40_Y81_N36
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

-- Location: IOOBUF_X58_Y81_N42
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

-- Location: IOOBUF_X34_Y0_N42
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

-- Location: IOOBUF_X30_Y0_N53
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

-- Location: IOOBUF_X84_Y81_N19
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

-- Location: IOOBUF_X2_Y0_N76
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X84_Y81_N53
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

-- Location: IOOBUF_X40_Y0_N53
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

-- Location: IOOBUF_X40_Y81_N19
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

-- Location: IOOBUF_X26_Y0_N93
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

-- Location: IOOBUF_X38_Y81_N53
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

-- Location: IOOBUF_X34_Y81_N59
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

-- Location: IOOBUF_X54_Y81_N53
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

-- Location: IOOBUF_X70_Y81_N19
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

-- Location: IOOBUF_X34_Y0_N93
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

-- Location: IOOBUF_X66_Y81_N42
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

-- Location: IOOBUF_X52_Y81_N2
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

-- Location: IOOBUF_X78_Y81_N2
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

-- Location: IOOBUF_X38_Y81_N36
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

-- Location: IOOBUF_X64_Y81_N2
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X40_Y81_N53
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

-- Location: IOOBUF_X60_Y81_N53
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

-- Location: IOOBUF_X26_Y81_N76
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

-- Location: IOOBUF_X74_Y81_N59
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X6_Y0_N36
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X74_Y81_N76
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

-- Location: IOOBUF_X50_Y81_N59
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

-- Location: IOOBUF_X2_Y0_N93
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

-- Location: IOOBUF_X76_Y81_N36
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

-- Location: IOOBUF_X2_Y0_N59
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

-- Location: IOOBUF_X82_Y81_N42
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

-- Location: IOOBUF_X70_Y81_N53
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

-- Location: IOOBUF_X34_Y81_N76
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

-- Location: IOOBUF_X36_Y0_N53
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

-- Location: IOOBUF_X60_Y81_N2
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

-- Location: IOOBUF_X28_Y81_N36
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

-- Location: FF_X75_Y32_N53
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

-- Location: LABCELL_X75_Y32_N36
\inst49|PCWrite~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst49|PCWrite~1_combout\ = ( \inst107|selregw\(0) & ( (!\inst16|selregw\(0) & \inst16|selregw\(2)) ) ) # ( !\inst107|selregw\(0) & ( ((!\inst16|selregw\(0) & \inst16|selregw\(2))) # (\inst107|selregw\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selregw\(0),
	datac => \inst107|ALT_INV_selregw\(2),
	datad => \inst16|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst49|PCWrite~1_combout\);

-- Location: LABCELL_X75_Y33_N18
inst47 : cyclonev_lcell_comb
-- Equation(s):
-- \inst47~combout\ = LCELL(( \inst49|PCWrite~1_combout\ & ( !\RELOJ~input_o\ & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst700666|inst|Equal0~0_combout\ & !\inst4|selregr\(2))))) ) ) ) 
-- # ( !\inst49|PCWrite~1_combout\ & ( !\RELOJ~input_o\ & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst700666|inst|Equal0~0_combout\) # (\inst4|selregr\(2))))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011011101111110101000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \ALT_INV_RELOJ~input_o\,
	combout => \inst47~combout\);

-- Location: LABCELL_X75_Y33_N48
\inst34|valor_interno[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[0]~_wirecell_combout\ = ( !\inst34|valor_interno\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst34|ALT_INV_valor_interno\(0),
	combout => \inst34|valor_interno[0]~_wirecell_combout\);

-- Location: LABCELL_X75_Y33_N33
\inst34|valor_interno[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[0]~feeder_combout\ = \inst34|valor_interno[0]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[0]~_wirecell_combout\,
	combout => \inst34|valor_interno[0]~feeder_combout\);

-- Location: LABCELL_X74_Y33_N30
\inst7|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~1_sumout\ = SUM(( \inst34|valor_interno\(0) ) + ( \inst34|valor_interno\(1) ) + ( !VCC ))
-- \inst7|Add0~2\ = CARRY(( \inst34|valor_interno\(0) ) + ( \inst34|valor_interno\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst34|ALT_INV_valor_interno\(1),
	datad => \inst34|ALT_INV_valor_interno\(0),
	cin => GND,
	sumout => \inst7|Add0~1_sumout\,
	cout => \inst7|Add0~2\);

-- Location: LABCELL_X74_Y33_N33
\inst7|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~9_sumout\ = SUM(( \inst34|valor_interno[2]~DUPLICATE_q\ ) + ( GND ) + ( \inst7|Add0~2\ ))
-- \inst7|Add0~10\ = CARRY(( \inst34|valor_interno[2]~DUPLICATE_q\ ) + ( GND ) + ( \inst7|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst34|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	cin => \inst7|Add0~2\,
	sumout => \inst7|Add0~9_sumout\,
	cout => \inst7|Add0~10\);

-- Location: LABCELL_X75_Y33_N12
\inst34|valor_interno[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[2]~feeder_combout\ = \inst7|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst7|ALT_INV_Add0~9_sumout\,
	combout => \inst34|valor_interno[2]~feeder_combout\);

-- Location: LABCELL_X75_Y32_N21
\inst700666|inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst|Equal0~1_combout\ = ( \inst16|selregw\(2) & ( \inst107|selregw\(2) & ( (\inst4|selregr\(0) & ((!\inst107|selregw\(0)) # ((\inst4|selregr\(2) & !\inst16|selregw\(0))))) ) ) ) # ( !\inst16|selregw\(2) & ( \inst107|selregw\(2) & ( 
-- (!\inst4|selregr\(0) & (((\inst4|selregr\(2) & \inst16|selregw\(0))))) # (\inst4|selregr\(0) & ((!\inst107|selregw\(0)) # ((!\inst4|selregr\(2) & \inst16|selregw\(0))))) ) ) ) # ( \inst16|selregw\(2) & ( !\inst107|selregw\(2) & ( (\inst4|selregr\(2) & 
-- ((!\inst4|selregr\(0) & (\inst107|selregw\(0))) # (\inst4|selregr\(0) & ((!\inst16|selregw\(0)))))) ) ) ) # ( !\inst16|selregw\(2) & ( !\inst107|selregw\(2) & ( (!\inst4|selregr\(2) & (((\inst16|selregw\(0) & \inst4|selregr\(0))))) # (\inst4|selregr\(2) & 
-- (!\inst4|selregr\(0) & ((\inst16|selregw\(0)) # (\inst107|selregw\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100001100000100010011000000000011101011100000000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_selregw\(0),
	datab => \inst4|ALT_INV_selregr\(2),
	datac => \inst16|ALT_INV_selregw\(0),
	datad => \inst4|ALT_INV_selregr\(0),
	datae => \inst16|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(2),
	combout => \inst700666|inst|Equal0~1_combout\);

-- Location: LABCELL_X74_Y32_N12
\inst700666|inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst|Equal0~2_combout\ = ( \inst16|selregw\(0) & ( \inst16|selregw\(2) & ( (!\inst4|selregr\(2) & (\inst4|selregr\(0) & ((!\inst107|selregw\(2)) # (\inst107|selregw\(0))))) ) ) ) # ( !\inst16|selregw\(0) & ( \inst16|selregw\(2) & ( 
-- (!\inst4|selregr\(2) & (\inst4|selregr\(0) & ((!\inst107|selregw\(2)) # (\inst107|selregw\(0))))) ) ) ) # ( !\inst16|selregw\(0) & ( !\inst16|selregw\(2) & ( (!\inst4|selregr\(2) & (\inst4|selregr\(0) & ((!\inst107|selregw\(2)) # (\inst107|selregw\(0))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000010000000000000000000100010000000100010001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(2),
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst107|ALT_INV_selregw\(0),
	datad => \inst107|ALT_INV_selregw\(2),
	datae => \inst16|ALT_INV_selregw\(0),
	dataf => \inst16|ALT_INV_selregw\(2),
	combout => \inst700666|inst|Equal0~2_combout\);

-- Location: FF_X75_Y33_N34
\inst34|valor_interno[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~combout\,
	d => \inst34|valor_interno[0]~feeder_combout\,
	asdata => \inst24|valor_interno\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno[0]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y33_N6
\inst1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = ( \inst34|valor_interno[0]~DUPLICATE_q\ & ( !\inst34|valor_interno\(3) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (!\inst34|valor_interno\(5) & !\inst34|valor_interno\(2))) ) ) ) # ( !\inst34|valor_interno[0]~DUPLICATE_q\ & ( 
-- !\inst34|valor_interno\(3) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(5) & !\inst34|valor_interno\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno\(5),
	datad => \inst34|ALT_INV_valor_interno\(2),
	datae => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(3),
	combout => \inst1|Mux13~0_combout\);

-- Location: FF_X74_Y33_N8
\inst8|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux13~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(18));

-- Location: LABCELL_X74_Y33_N27
\inst1|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux9~1_combout\ = ( !\inst34|valor_interno\(3) & ( (!\inst34|valor_interno\(5) & (\inst34|valor_interno\(1) & (!\inst34|valor_interno\(2) & !\inst34|valor_interno[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(5),
	datab => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno\(2),
	datad => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(3),
	combout => \inst1|Mux9~1_combout\);

-- Location: FF_X74_Y33_N29
\inst8|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux9~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(20));

-- Location: MLABCELL_X72_Y33_N51
\inst4|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal3~0_combout\ = ( \inst8|valor_interno\(20) & ( (!\inst8|valor_interno\(16) & (!\inst8|valor_interno\(23) & \inst8|valor_interno\(18))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datab => \inst8|ALT_INV_valor_interno\(23),
	datac => \inst8|ALT_INV_valor_interno\(18),
	dataf => \inst8|ALT_INV_valor_interno\(20),
	combout => \inst4|Equal3~0_combout\);

-- Location: MLABCELL_X72_Y33_N18
\inst4|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal11~0_combout\ = ( \inst4|Equal3~0_combout\ & ( (\inst8|valor_interno\(21) & (\inst8|valor_interno\(22) & \inst8|valor_interno\(17))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(21),
	datab => \inst8|ALT_INV_valor_interno\(22),
	datac => \inst8|ALT_INV_valor_interno\(17),
	dataf => \inst4|ALT_INV_Equal3~0_combout\,
	combout => \inst4|Equal11~0_combout\);

-- Location: LABCELL_X73_Y33_N6
\inst4|selregr[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[3]~1_combout\ = ( !\inst4|selfalgs[0]~0_combout\ & ( (\inst4|selregr[3]~0_combout\ & !\inst4|Equal13~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr[3]~0_combout\,
	datac => \inst4|ALT_INV_Equal13~1_combout\,
	dataf => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	combout => \inst4|selregr[3]~1_combout\);

-- Location: MLABCELL_X72_Y33_N9
\inst4|vf\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|vf~combout\ = ( \inst4|vf~combout\ & ( !\inst4|Equal11~0_combout\ ) ) # ( !\inst4|vf~combout\ & ( (!\inst4|Equal11~0_combout\ & !\inst4|selregr[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal11~0_combout\,
	datad => \inst4|ALT_INV_selregr[3]~1_combout\,
	dataf => \inst4|ALT_INV_vf~combout\,
	combout => \inst4|vf~combout\);

-- Location: LABCELL_X75_Y33_N21
\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~combout\ = ( \inst49|PCWrite~1_combout\ & ( !\inst4|vf~combout\ & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst4|selregr\(2) & 
-- !\inst700666|inst|Equal0~0_combout\)))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( !\inst4|vf~combout\ & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst700666|inst|Equal0~0_combout\) # 
-- (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110110101101111110001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_vf~combout\,
	combout => \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~combout\);

-- Location: FF_X75_Y33_N23
\inst16|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|vf~q\);

-- Location: FF_X75_Y33_N52
\inst100|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst16|vf~q\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst100|valor_interno~q\);

-- Location: FF_X75_Y33_N14
\inst34|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~combout\,
	d => \inst34|valor_interno[2]~feeder_combout\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(2));

-- Location: LABCELL_X74_Y33_N48
\inst1|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux15~0_combout\ = ( \inst34|valor_interno[0]~DUPLICATE_q\ & ( !\inst34|valor_interno\(3) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(5) & \inst34|valor_interno\(2)))) ) ) ) # ( 
-- !\inst34|valor_interno[0]~DUPLICATE_q\ & ( !\inst34|valor_interno\(3) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (!\inst34|valor_interno\(5) & ((!\inst34|valor_interno\(1)) # (!\inst34|valor_interno\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno\(5),
	datad => \inst34|ALT_INV_valor_interno\(2),
	datae => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(3),
	combout => \inst1|Mux15~0_combout\);

-- Location: FF_X74_Y33_N49
\inst8|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux15~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(16));

-- Location: MLABCELL_X72_Y33_N15
\inst4|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal4~0_combout\ = ( !\inst8|valor_interno\(20) & ( (\inst8|valor_interno\(23) & (\inst8|valor_interno\(18) & !\inst8|valor_interno\(22))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_valor_interno\(23),
	datac => \inst8|ALT_INV_valor_interno\(18),
	datad => \inst8|ALT_INV_valor_interno\(22),
	dataf => \inst8|ALT_INV_valor_interno\(20),
	combout => \inst4|Equal4~0_combout\);

-- Location: MLABCELL_X72_Y33_N42
\inst4|selfalgs[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs[0]~0_combout\ = ( \inst4|Equal4~0_combout\ & ( (!\inst8|valor_interno\(21) & (!\inst8|valor_interno\(16) & \inst8|valor_interno\(17))) # (\inst8|valor_interno\(21) & (\inst8|valor_interno\(16) & !\inst8|valor_interno\(17))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011000000110000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(21),
	datab => \inst8|ALT_INV_valor_interno\(16),
	datac => \inst8|ALT_INV_valor_interno\(17),
	dataf => \inst4|ALT_INV_Equal4~0_combout\,
	combout => \inst4|selfalgs[0]~0_combout\);

-- Location: MLABCELL_X72_Y33_N54
\inst4|selresult[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selresult[0]~1_combout\ = ( \inst8|valor_interno\(22) & ( \inst4|Equal3~0_combout\ & ( (!\inst8|valor_interno\(21) & ((!\inst8|valor_interno\(17)) # ((\inst4|Equal4~0_combout\ & !\inst8|valor_interno\(16))))) # (\inst8|valor_interno\(21) & 
-- (((\inst4|Equal4~0_combout\ & \inst8|valor_interno\(16))) # (\inst8|valor_interno\(17)))) ) ) ) # ( !\inst8|valor_interno\(22) & ( \inst4|Equal3~0_combout\ & ( (!\inst4|Equal4~0_combout\ & (!\inst8|valor_interno\(21) & (!\inst8|valor_interno\(17)))) # 
-- (\inst4|Equal4~0_combout\ & ((!\inst8|valor_interno\(16) & (!\inst8|valor_interno\(21))) # (\inst8|valor_interno\(16) & ((!\inst8|valor_interno\(17)))))) ) ) ) # ( \inst8|valor_interno\(22) & ( !\inst4|Equal3~0_combout\ & ( (\inst4|Equal4~0_combout\ & 
-- ((!\inst8|valor_interno\(21) & (\inst8|valor_interno\(17) & !\inst8|valor_interno\(16))) # (\inst8|valor_interno\(21) & (!\inst8|valor_interno\(17) & \inst8|valor_interno\(16))))) ) ) ) # ( !\inst8|valor_interno\(22) & ( !\inst4|Equal3~0_combout\ & ( 
-- (\inst4|Equal4~0_combout\ & ((!\inst8|valor_interno\(21) & (\inst8|valor_interno\(17) & !\inst8|valor_interno\(16))) # (\inst8|valor_interno\(21) & (!\inst8|valor_interno\(17) & \inst8|valor_interno\(16))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010000000000100001000010100010101100001010011110110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(21),
	datab => \inst4|ALT_INV_Equal4~0_combout\,
	datac => \inst8|ALT_INV_valor_interno\(17),
	datad => \inst8|ALT_INV_valor_interno\(16),
	datae => \inst8|ALT_INV_valor_interno\(22),
	dataf => \inst4|ALT_INV_Equal3~0_combout\,
	combout => \inst4|selresult[0]~1_combout\);

-- Location: LABCELL_X71_Y33_N51
\inst4|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = ( \inst8|valor_interno\(20) & ( \inst8|valor_interno\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_valor_interno\(17),
	dataf => \inst8|ALT_INV_valor_interno\(20),
	combout => \inst4|Equal0~1_combout\);

-- Location: LABCELL_X71_Y33_N27
\inst4|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = ( \inst4|Equal0~0_combout\ & ( \inst4|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~1_combout\,
	dataf => \inst4|ALT_INV_Equal0~0_combout\,
	combout => \inst4|Equal0~2_combout\);

-- Location: LABCELL_X77_Y33_N45
\inst4|comb~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~28_combout\ = ( \inst4|selresult[0]~1_combout\ & ( \inst4|Equal0~2_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\)) # (\inst4|Equal13~1_combout\) ) ) ) # ( 
-- !\inst4|selresult[0]~1_combout\ & ( \inst4|Equal0~2_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\)) # (\inst4|Equal13~1_combout\) ) ) ) # ( \inst4|selresult[0]~1_combout\ & ( 
-- !\inst4|Equal0~2_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\)) # (\inst4|Equal13~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal13~1_combout\,
	datab => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datac => \inst4|ALT_INV_Equal11~0_combout\,
	datad => \inst4|ALT_INV_selregr[3]~0_combout\,
	datae => \inst4|ALT_INV_selresult[0]~1_combout\,
	dataf => \inst4|ALT_INV_Equal0~2_combout\,
	combout => \inst4|comb~28_combout\);

-- Location: LABCELL_X77_Y33_N3
\inst4|comb~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~27_combout\ = ( !\inst4|selresult[0]~1_combout\ & ( !\inst4|Equal0~2_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\)) # (\inst4|Equal13~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal13~1_combout\,
	datab => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datac => \inst4|ALT_INV_Equal11~0_combout\,
	datad => \inst4|ALT_INV_selregr[3]~0_combout\,
	datae => \inst4|ALT_INV_selresult[0]~1_combout\,
	dataf => \inst4|ALT_INV_Equal0~2_combout\,
	combout => \inst4|comb~27_combout\);

-- Location: MLABCELL_X78_Y33_N42
\inst4|selsrc[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selsrc\(0) = ( !\inst4|comb~27_combout\ & ( \inst4|selsrc\(0) ) ) # ( !\inst4|comb~27_combout\ & ( !\inst4|selsrc\(0) & ( \inst4|comb~28_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~28_combout\,
	datae => \inst4|ALT_INV_comb~27_combout\,
	dataf => \inst4|ALT_INV_selsrc\(0),
	combout => \inst4|selsrc\(0));

-- Location: LABCELL_X74_Y32_N36
\inst700666|inst1000|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal0~1_combout\ = ( !\inst107|selregw\(0) & ( \inst107|selregw\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst107|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst700666|inst1000|Equal0~1_combout\);

-- Location: FF_X75_Y32_N31
\inst700666|ACCB|valor_interno[2]~DUPLICATE\ : dffeas
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
	q => \inst700666|ACCB|valor_interno[2]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y33_N36
\inst4|comb~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~24_combout\ = (!\inst4|selresult[0]~1_combout\ & (\inst4|Equal13~1_combout\ & !\inst4|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selresult[0]~1_combout\,
	datac => \inst4|ALT_INV_Equal13~1_combout\,
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	combout => \inst4|comb~24_combout\);

-- Location: MLABCELL_X72_Y33_N36
\inst4|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal3~1_combout\ = ( !\inst8|valor_interno\(21) & ( \inst8|valor_interno\(20) & ( (!\inst8|valor_interno\(16) & (!\inst8|valor_interno\(23) & (!\inst8|valor_interno\(17) & \inst8|valor_interno\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datab => \inst8|ALT_INV_valor_interno\(23),
	datac => \inst8|ALT_INV_valor_interno\(17),
	datad => \inst8|ALT_INV_valor_interno\(18),
	datae => \inst8|ALT_INV_valor_interno\(21),
	dataf => \inst8|ALT_INV_valor_interno\(20),
	combout => \inst4|Equal3~1_combout\);

-- Location: LABCELL_X71_Y33_N30
\inst4|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~0_combout\ = ( \inst4|Equal0~1_combout\ & ( (!\inst4|Equal0~0_combout\ & !\inst4|Equal3~1_combout\) ) ) # ( !\inst4|Equal0~1_combout\ & ( !\inst4|Equal3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal0~0_combout\,
	datad => \inst4|ALT_INV_Equal3~1_combout\,
	dataf => \inst4|ALT_INV_Equal0~1_combout\,
	combout => \inst4|comb~0_combout\);

-- Location: LABCELL_X73_Y33_N39
\inst4|comb~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~25_combout\ = ( \inst4|comb~0_combout\ & ( (!\inst4|selresult[0]~1_combout\ & (!\inst4|comb~24_combout\ & ((!\inst4|selregr[3]~1_combout\) # (\inst4|Equal11~0_combout\)))) ) ) # ( !\inst4|comb~0_combout\ & ( (!\inst4|comb~24_combout\ & 
-- ((!\inst4|selregr[3]~1_combout\) # (\inst4|Equal11~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100110000000010100010000000001010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selresult[0]~1_combout\,
	datab => \inst4|ALT_INV_Equal11~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~1_combout\,
	datad => \inst4|ALT_INV_comb~24_combout\,
	dataf => \inst4|ALT_INV_comb~0_combout\,
	combout => \inst4|comb~25_combout\);

-- Location: LABCELL_X73_Y33_N54
\inst4|comb~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~26_combout\ = ( \inst4|Equal11~0_combout\ & ( ((\inst4|selresult[0]~1_combout\ & \inst4|comb~0_combout\)) # (\inst4|comb~24_combout\) ) ) # ( !\inst4|Equal11~0_combout\ & ( (!\inst4|selregr[3]~1_combout\ & (((\inst4|selresult[0]~1_combout\ & 
-- \inst4|comb~0_combout\)) # (\inst4|comb~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001100000001001100110000000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selresult[0]~1_combout\,
	datab => \inst4|ALT_INV_selregr[3]~1_combout\,
	datac => \inst4|ALT_INV_comb~0_combout\,
	datad => \inst4|ALT_INV_comb~24_combout\,
	dataf => \inst4|ALT_INV_Equal11~0_combout\,
	combout => \inst4|comb~26_combout\);

-- Location: LABCELL_X73_Y33_N9
\inst4|selsrc[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selsrc\(1) = ( \inst4|selsrc\(1) & ( !\inst4|comb~25_combout\ ) ) # ( !\inst4|selsrc\(1) & ( (!\inst4|comb~25_combout\ & \inst4|comb~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~25_combout\,
	datad => \inst4|ALT_INV_comb~26_combout\,
	dataf => \inst4|ALT_INV_selsrc\(1),
	combout => \inst4|selsrc\(1));

-- Location: LABCELL_X73_Y33_N48
\inst4|comb~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~33_combout\ = ( \inst4|Equal0~2_combout\ & ( \inst4|selresult[0]~1_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal13~1_combout\)) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\) ) ) ) # ( 
-- !\inst4|Equal0~2_combout\ & ( \inst4|selresult[0]~1_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal13~1_combout\)) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\) ) ) ) # ( \inst4|Equal0~2_combout\ & ( 
-- !\inst4|selresult[0]~1_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal13~1_combout\)) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\) ) ) ) # ( !\inst4|Equal0~2_combout\ & ( !\inst4|selresult[0]~1_combout\ & ( 
-- (!\inst4|Equal13~1_combout\ & (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001110000111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datab => \inst4|ALT_INV_Equal11~0_combout\,
	datac => \inst4|ALT_INV_Equal13~1_combout\,
	datad => \inst4|ALT_INV_selregr[3]~0_combout\,
	datae => \inst4|ALT_INV_Equal0~2_combout\,
	dataf => \inst4|ALT_INV_selresult[0]~1_combout\,
	combout => \inst4|comb~33_combout\);

-- Location: LABCELL_X75_Y35_N24
\inst4|memw\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|memw~combout\ = ( \inst4|memw~combout\ & ( !\inst4|comb~33_combout\ ) ) # ( !\inst4|memw~combout\ & ( (\inst4|comb~24_combout\ & !\inst4|comb~33_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~24_combout\,
	datac => \inst4|ALT_INV_comb~33_combout\,
	dataf => \inst4|ALT_INV_memw~combout\,
	combout => \inst4|memw~combout\);

-- Location: LABCELL_X75_Y33_N0
\inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst4|memw~combout\ & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst700666|inst|Equal0~0_combout\ & !\inst4|selregr\(2))))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( \inst4|memw~combout\ & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst700666|inst|Equal0~0_combout\) # (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010110111011111101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_memw~combout\,
	combout => \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X75_Y33_N2
\inst16|memw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|memw~q\);

-- Location: FF_X75_Y33_N46
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

-- Location: LABCELL_X75_Y35_N33
\inst4|seldirw[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|seldirw\(1) = ( \inst4|seldirw\(1) & ( !\inst4|comb~33_combout\ ) ) # ( !\inst4|seldirw\(1) & ( (!\inst4|comb~33_combout\ & \inst4|comb~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~33_combout\,
	datad => \inst4|ALT_INV_comb~24_combout\,
	dataf => \inst4|ALT_INV_seldirw\(1),
	combout => \inst4|seldirw\(1));

-- Location: LABCELL_X77_Y35_N0
\inst12|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst4|selregr\(2) & ( \inst700666|inst|Equal0~0_combout\ & ( (\inst4|seldirw\(1) & ((!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\))) # (\inst4|selregr\(0) & 
-- (!\inst49|PCWrite~1_combout\)))) ) ) ) # ( !\inst4|selregr\(2) & ( \inst700666|inst|Equal0~0_combout\ & ( (!\inst4|selregr\(0) & \inst4|seldirw\(1)) ) ) ) # ( \inst4|selregr\(2) & ( !\inst700666|inst|Equal0~0_combout\ & ( (\inst4|seldirw\(1) & 
-- ((!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\))) # (\inst4|selregr\(0) & (!\inst49|PCWrite~1_combout\)))) ) ) ) # ( !\inst4|selregr\(2) & ( !\inst700666|inst|Equal0~0_combout\ & ( \inst4|seldirw\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011100000010000001010000010100000111000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~1_combout\,
	datac => \inst4|ALT_INV_seldirw\(1),
	datad => \inst49|ALT_INV_PCWrite~0_combout\,
	datae => \inst4|ALT_INV_selregr\(2),
	dataf => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	combout => \inst12|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X77_Y35_N1
\inst16|seldirw[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst12|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|seldirw\(1));

-- Location: FF_X74_Y32_N29
\inst107|seldirw[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst16|seldirw\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|seldirw\(1));

-- Location: MLABCELL_X72_Y33_N30
\inst4|selresult[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selresult[0]~0_combout\ = ( \inst4|Equal3~0_combout\ & ( (!\inst4|Equal4~0_combout\ & (!\inst8|valor_interno\(17) & (!\inst8|valor_interno\(21)))) # (\inst4|Equal4~0_combout\ & ((!\inst8|valor_interno\(16) & ((!\inst8|valor_interno\(21)))) # 
-- (\inst8|valor_interno\(16) & (!\inst8|valor_interno\(17))))) ) ) # ( !\inst4|Equal3~0_combout\ & ( (\inst4|Equal4~0_combout\ & ((!\inst8|valor_interno\(17) & (\inst8|valor_interno\(21) & \inst8|valor_interno\(16))) # (\inst8|valor_interno\(17) & 
-- (!\inst8|valor_interno\(21) & !\inst8|valor_interno\(16))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000010000100000000001010110000101000101011000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(17),
	datab => \inst4|ALT_INV_Equal4~0_combout\,
	datac => \inst8|ALT_INV_valor_interno\(21),
	datad => \inst8|ALT_INV_valor_interno\(16),
	dataf => \inst4|ALT_INV_Equal3~0_combout\,
	combout => \inst4|selresult[0]~0_combout\);

-- Location: LABCELL_X73_Y33_N30
\inst4|comb~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~32_combout\ = ( !\inst4|selresult[0]~0_combout\ & ( (!\inst4|Equal0~2_combout\ & \inst4|Equal13~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal0~2_combout\,
	datad => \inst4|ALT_INV_Equal13~1_combout\,
	dataf => \inst4|ALT_INV_selresult[0]~0_combout\,
	combout => \inst4|comb~32_combout\);

-- Location: LABCELL_X73_Y33_N51
\inst4|comb~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~31_combout\ = ( \inst4|Equal0~2_combout\ & ( \inst4|selresult[0]~0_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal13~1_combout\)) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\) ) ) ) # ( 
-- !\inst4|Equal0~2_combout\ & ( \inst4|selresult[0]~0_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal13~1_combout\)) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\) ) ) ) # ( \inst4|Equal0~2_combout\ & ( 
-- !\inst4|selresult[0]~0_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal13~1_combout\)) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\) ) ) ) # ( !\inst4|Equal0~2_combout\ & ( !\inst4|selresult[0]~0_combout\ & ( 
-- (!\inst4|Equal13~1_combout\ & (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000111101111111111111110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datab => \inst4|ALT_INV_Equal11~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~0_combout\,
	datad => \inst4|ALT_INV_Equal13~1_combout\,
	datae => \inst4|ALT_INV_Equal0~2_combout\,
	dataf => \inst4|ALT_INV_selresult[0]~0_combout\,
	combout => \inst4|comb~31_combout\);

-- Location: LABCELL_X73_Y32_N12
\inst4|seldir[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|seldir\(0) = ( \inst4|seldir\(0) & ( !\inst4|comb~31_combout\ ) ) # ( !\inst4|seldir\(0) & ( (\inst4|comb~32_combout\ & !\inst4|comb~31_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_comb~32_combout\,
	datac => \inst4|ALT_INV_comb~31_combout\,
	dataf => \inst4|ALT_INV_seldir\(0),
	combout => \inst4|seldir\(0));

-- Location: LABCELL_X74_Y32_N42
\inst10|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~0_combout\ = ( \inst107|seldirw\(1) ) # ( !\inst107|seldirw\(1) & ( (\inst4|seldir\(0) & !\inst700666|inst|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_seldir\(0),
	datac => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	dataf => \inst107|ALT_INV_seldirw\(1),
	combout => \inst10|Mux10~0_combout\);

-- Location: LABCELL_X77_Y32_N15
\inst700666|inst|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst|Equal0~3_combout\ = (!\inst4|selregr\(2) & !\inst4|selregr\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst4|ALT_INV_selregr\(0),
	combout => \inst700666|inst|Equal0~3_combout\);

-- Location: LABCELL_X77_Y33_N12
\inst4|comb~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~29_combout\ = ( \inst4|selfalgs[0]~0_combout\ & ( !\inst4|Equal0~2_combout\ & ( (!\inst4|selresult[0]~0_combout\ & ((!\inst4|Equal13~1_combout\) # (\inst4|Equal11~0_combout\))) ) ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( 
-- !\inst4|Equal0~2_combout\ & ( (!\inst4|selresult[0]~0_combout\ & (((!\inst4|Equal13~1_combout\ & !\inst4|selregr[3]~0_combout\)) # (\inst4|Equal11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011001100100010001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal13~1_combout\,
	datab => \inst4|ALT_INV_selresult[0]~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~0_combout\,
	datad => \inst4|ALT_INV_Equal11~0_combout\,
	datae => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	dataf => \inst4|ALT_INV_Equal0~2_combout\,
	combout => \inst4|comb~29_combout\);

-- Location: LABCELL_X77_Y33_N48
\inst4|comb~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~30_combout\ = ( \inst4|selfalgs[0]~0_combout\ & ( \inst4|Equal0~2_combout\ ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( \inst4|Equal0~2_combout\ & ( ((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|Equal13~1_combout\) ) 
-- ) ) # ( \inst4|selfalgs[0]~0_combout\ & ( !\inst4|Equal0~2_combout\ & ( ((\inst4|Equal13~1_combout\ & !\inst4|Equal11~0_combout\)) # (\inst4|selresult[0]~0_combout\) ) ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( !\inst4|Equal0~2_combout\ & ( 
-- (!\inst4|Equal11~0_combout\ & (((\inst4|selresult[0]~0_combout\ & !\inst4|selregr[3]~0_combout\)) # (\inst4|Equal13~1_combout\))) # (\inst4|Equal11~0_combout\ & (((\inst4|selresult[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010100110011011101110011001111110101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal13~1_combout\,
	datab => \inst4|ALT_INV_selresult[0]~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~0_combout\,
	datad => \inst4|ALT_INV_Equal11~0_combout\,
	datae => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	dataf => \inst4|ALT_INV_Equal0~2_combout\,
	combout => \inst4|comb~30_combout\);

-- Location: LABCELL_X77_Y35_N24
\inst4|sr\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr~combout\ = ( \inst4|comb~30_combout\ & ( \inst4|sr~combout\ & ( !\inst4|comb~29_combout\ ) ) ) # ( !\inst4|comb~30_combout\ & ( \inst4|sr~combout\ & ( !\inst4|comb~29_combout\ ) ) ) # ( \inst4|comb~30_combout\ & ( !\inst4|sr~combout\ & ( 
-- !\inst4|comb~29_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~29_combout\,
	datae => \inst4|ALT_INV_comb~30_combout\,
	dataf => \inst4|ALT_INV_sr~combout\,
	combout => \inst4|sr~combout\);

-- Location: LABCELL_X75_Y32_N54
\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst4|sr~combout\ & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst4|selregr\(2) & 
-- !\inst700666|inst|Equal0~0_combout\)))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( \inst4|sr~combout\ & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst700666|inst|Equal0~0_combout\) # 
-- (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101101011011111100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_sr~combout\,
	combout => \inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X75_Y32_N20
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

-- Location: LABCELL_X75_Y32_N0
\inst11|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~1_sumout\ = SUM(( !\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) + ( (!\inst700666|inst|Equal0~3_combout\ & (!\inst700666|inst|Equal0~1_combout\ & (\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(0)))) ) 
-- + ( !VCC ))
-- \inst11|Add0~2\ = CARRY(( !\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) + ( (!\inst700666|inst|Equal0~3_combout\ & (!\inst700666|inst|Equal0~1_combout\ & (\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(0)))) ) + ( 
-- !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~3_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datad => \inst45|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(0),
	cin => GND,
	sumout => \inst11|Add0~1_sumout\,
	cout => \inst11|Add0~2\);

-- Location: LABCELL_X73_Y32_N15
\inst15|valor_interno[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|valor_interno[0]~feeder_combout\ = ( \inst11|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst11|ALT_INV_Add0~1_sumout\,
	combout => \inst15|valor_interno[0]~feeder_combout\);

-- Location: LABCELL_X74_Y32_N27
\inst10|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux15~1_combout\ = ( \inst107|seldirw\(1) & ( \inst23|valor_interno\(0) ) ) # ( !\inst107|seldirw\(1) & ( \inst23|valor_interno\(0) & ( (!\inst4|seldir\(0)) # (\inst700666|inst|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datac => \inst4|ALT_INV_seldir\(0),
	datae => \inst107|ALT_INV_seldirw\(1),
	dataf => \inst23|ALT_INV_valor_interno\(0),
	combout => \inst10|Mux15~1_combout\);

-- Location: FF_X73_Y32_N16
\inst15|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst15|valor_interno[0]~feeder_combout\,
	asdata => \inst10|Mux15~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(0));

-- Location: LABCELL_X73_Y33_N18
\inst4|comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~11_combout\ = ( !\inst4|Equal13~1_combout\ & ( !\inst4|selresult[0]~1_combout\ & ( (!\inst4|Equal0~2_combout\ & ((!\inst4|selregr[3]~0_combout\) # ((\inst4|Equal11~0_combout\) # (\inst4|selfalgs[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~2_combout\,
	datab => \inst4|ALT_INV_selregr[3]~0_combout\,
	datac => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datad => \inst4|ALT_INV_Equal11~0_combout\,
	datae => \inst4|ALT_INV_Equal13~1_combout\,
	dataf => \inst4|ALT_INV_selresult[0]~1_combout\,
	combout => \inst4|comb~11_combout\);

-- Location: LABCELL_X73_Y33_N12
\inst4|comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~12_combout\ = ( \inst4|Equal13~1_combout\ & ( \inst4|selresult[0]~1_combout\ ) ) # ( !\inst4|Equal13~1_combout\ & ( \inst4|selresult[0]~1_combout\ & ( ((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # 
-- (\inst4|selfalgs[0]~0_combout\) ) ) ) # ( \inst4|Equal13~1_combout\ & ( !\inst4|selresult[0]~1_combout\ ) ) # ( !\inst4|Equal13~1_combout\ & ( !\inst4|selresult[0]~1_combout\ & ( (\inst4|Equal0~2_combout\ & (((!\inst4|selregr[3]~0_combout\) # 
-- (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111111111111111111111111111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datab => \inst4|ALT_INV_Equal11~0_combout\,
	datac => \inst4|ALT_INV_Equal0~2_combout\,
	datad => \inst4|ALT_INV_selregr[3]~0_combout\,
	datae => \inst4|ALT_INV_Equal13~1_combout\,
	dataf => \inst4|ALT_INV_selresult[0]~1_combout\,
	combout => \inst4|comb~12_combout\);

-- Location: LABCELL_X73_Y33_N24
\inst4|selresult[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selresult\(0) = ( \inst4|selresult\(0) & ( !\inst4|comb~11_combout\ ) ) # ( !\inst4|selresult\(0) & ( (!\inst4|comb~11_combout\ & \inst4|comb~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~11_combout\,
	datad => \inst4|ALT_INV_comb~12_combout\,
	dataf => \inst4|ALT_INV_selresult\(0),
	combout => \inst4|selresult\(0));

-- Location: LABCELL_X75_Y33_N6
\inst30|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst4|selresult\(0) & ( (!\inst4|selregr\(0) & (((!\inst49|PCWrite~0_combout\) # (!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (!\inst700666|inst|Equal0~0_combout\ & ((!\inst4|selregr\(2))))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( \inst4|selresult\(0) & ( (!\inst4|selregr\(0) & (((!\inst49|PCWrite~0_combout\) # (!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- ((!\inst700666|inst|Equal0~0_combout\) # ((\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010110011111111101011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst4|ALT_INV_selregr\(0),
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_selresult\(0),
	combout => \inst30|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X75_Y33_N8
\inst16|selresult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst30|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selresult\(0));

-- Location: FF_X75_Y32_N41
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

-- Location: LABCELL_X75_Y32_N39
\inst10|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux15~0_combout\ = ( \inst11|Add0~1_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((\inst107|seldirw\(1) & \inst23|valor_interno\(0))) ) ) # ( !\inst11|Add0~1_sumout\ & ( (\inst107|seldirw\(1) & \inst23|valor_interno\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111110000111101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_seldirw\(1),
	datac => \inst10|ALT_INV_Mux10~0_combout\,
	datad => \inst23|ALT_INV_valor_interno\(0),
	dataf => \inst11|ALT_INV_Add0~1_sumout\,
	combout => \inst10|Mux15~0_combout\);

-- Location: LABCELL_X73_Y33_N45
\inst4|comb~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~18_combout\ = ( \inst4|Equal13~1_combout\ & ( \inst4|selfalgs[0]~0_combout\ & ( (!\inst4|comb~0_combout\) # (!\inst4|selresult[0]~1_combout\) ) ) ) # ( !\inst4|Equal13~1_combout\ & ( \inst4|selfalgs[0]~0_combout\ & ( (!\inst4|comb~0_combout\) 
-- # (!\inst4|selresult[0]~1_combout\) ) ) ) # ( \inst4|Equal13~1_combout\ & ( !\inst4|selfalgs[0]~0_combout\ & ( (!\inst4|comb~0_combout\) # (!\inst4|selresult[0]~1_combout\) ) ) ) # ( !\inst4|Equal13~1_combout\ & ( !\inst4|selfalgs[0]~0_combout\ & ( 
-- (!\inst4|comb~0_combout\ & (((!\inst4|selregr[3]~0_combout\)) # (\inst4|Equal11~0_combout\))) # (\inst4|comb~0_combout\ & (!\inst4|selresult[0]~1_combout\ & ((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001110100010111111111010101011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~0_combout\,
	datab => \inst4|ALT_INV_Equal11~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~0_combout\,
	datad => \inst4|ALT_INV_selresult[0]~1_combout\,
	datae => \inst4|ALT_INV_Equal13~1_combout\,
	dataf => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	combout => \inst4|comb~18_combout\);

-- Location: LABCELL_X73_Y33_N0
\inst4|comb~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~19_combout\ = ( \inst4|Equal13~1_combout\ & ( \inst4|selresult[0]~1_combout\ & ( \inst4|comb~0_combout\ ) ) ) # ( !\inst4|Equal13~1_combout\ & ( \inst4|selresult[0]~1_combout\ & ( (\inst4|comb~0_combout\ & (((!\inst4|selregr[3]~0_combout\) # 
-- (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datab => \inst4|ALT_INV_Equal11~0_combout\,
	datac => \inst4|ALT_INV_comb~0_combout\,
	datad => \inst4|ALT_INV_selregr[3]~0_combout\,
	datae => \inst4|ALT_INV_Equal13~1_combout\,
	dataf => \inst4|ALT_INV_selresult[0]~1_combout\,
	combout => \inst4|comb~19_combout\);

-- Location: LABCELL_X73_Y33_N57
\inst4|selop[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop\(2) = ( \inst4|selop\(2) & ( !\inst4|comb~18_combout\ ) ) # ( !\inst4|selop\(2) & ( (!\inst4|comb~18_combout\ & \inst4|comb~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~18_combout\,
	datad => \inst4|ALT_INV_comb~19_combout\,
	dataf => \inst4|ALT_INV_selop\(2),
	combout => \inst4|selop\(2));

-- Location: LABCELL_X77_Y34_N57
\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst4|selop\(2) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst700666|inst|Equal0~0_combout\ & !\inst4|selregr\(2))))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( \inst4|selop\(2) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst700666|inst|Equal0~0_combout\) # (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100101110111111110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_selop\(2),
	combout => \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X77_Y34_N59
\inst16|selop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(2));

-- Location: LABCELL_X75_Y34_N12
\inst33|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~0_combout\ = ( \inst16|selop\(1) & ( !\inst16|selop\(2) & ( !\inst16|selop\(0) ) ) ) # ( !\inst16|selop\(1) & ( !\inst16|selop\(2) & ( \inst16|selop\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_selop\(0),
	datae => \inst16|ALT_INV_selop\(1),
	dataf => \inst16|ALT_INV_selop\(2),
	combout => \inst33|Add0~0_combout\);

-- Location: LABCELL_X80_Y34_N0
\inst202|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux13~0_combout\ = ( \inst700666|ACCB|valor_interno[2]~DUPLICATE_q\ & ( (\inst4|selregr\(0) & (\inst4|selregr\(2) & !\inst49|PCWrite~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst4|ALT_INV_selregr\(2),
	datac => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	combout => \inst202|Mux13~0_combout\);

-- Location: LABCELL_X74_Y32_N6
\inst700666|inst1000|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal0~0_combout\ = ( \inst107|selregw\(0) & ( !\inst107|selregw\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst107|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst700666|inst1000|Equal0~0_combout\);

-- Location: FF_X79_Y34_N22
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

-- Location: LABCELL_X74_Y32_N54
\inst700|valor_interno[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[2]~0_combout\ = ( \inst16|selregw\(0) & ( \inst16|selregw\(2) & ( (!\inst4|selregr\(0) & (\inst4|selregr\(2) & ((!\inst107|selregw\(0)) # (\inst107|selregw\(2))))) # (\inst4|selregr\(0) & (!\inst4|selregr\(2) & 
-- ((!\inst107|selregw\(2)) # (\inst107|selregw\(0))))) ) ) ) # ( !\inst16|selregw\(0) & ( \inst16|selregw\(2) & ( (!\inst4|selregr\(0) & (\inst4|selregr\(2) & ((!\inst107|selregw\(0)) # (\inst107|selregw\(2))))) # (\inst4|selregr\(0) & (!\inst4|selregr\(2) 
-- & ((!\inst107|selregw\(2)) # (\inst107|selregw\(0))))) ) ) ) # ( !\inst16|selregw\(0) & ( !\inst16|selregw\(2) & ( (!\inst4|selregr\(0) & (\inst4|selregr\(2) & ((!\inst107|selregw\(0)) # (\inst107|selregw\(2))))) # (\inst4|selregr\(0) & 
-- (!\inst4|selregr\(2) & ((!\inst107|selregw\(2)) # (\inst107|selregw\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000011100000000000000000000111000000111000011100000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_selregw\(0),
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst107|ALT_INV_selregw\(2),
	datae => \inst16|ALT_INV_selregw\(0),
	dataf => \inst16|ALT_INV_selregw\(2),
	combout => \inst700|valor_interno[2]~0_combout\);

-- Location: LABCELL_X79_Y33_N18
\inst700|valor_interno[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[2]~1_combout\ = ( \inst700666|inst|Equal0~1_combout\ & ( \inst700|valor_interno[2]~0_combout\ ) ) # ( !\inst700666|inst|Equal0~1_combout\ & ( \inst700|valor_interno[2]~0_combout\ & ( (!\inst4|selregr\(2) & ((!\inst4|selregr\(0)) # 
-- ((!\inst4|selsrc\(0) & !\inst4|selsrc\(1))))) # (\inst4|selregr\(2) & (!\inst4|selsrc\(0) & ((!\inst4|selsrc\(1))))) ) ) ) # ( \inst700666|inst|Equal0~1_combout\ & ( !\inst700|valor_interno[2]~0_combout\ ) ) # ( !\inst700666|inst|Equal0~1_combout\ & ( 
-- !\inst700|valor_interno[2]~0_combout\ & ( (!\inst4|selregr\(2)) # ((!\inst4|selregr\(0)) # ((!\inst4|selsrc\(0) & !\inst4|selsrc\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010111111111111111111101100101000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(2),
	datab => \inst4|ALT_INV_selsrc\(0),
	datac => \inst4|ALT_INV_selregr\(0),
	datad => \inst4|ALT_INV_selsrc\(1),
	datae => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	dataf => \inst700|ALT_INV_valor_interno[2]~0_combout\,
	combout => \inst700|valor_interno[2]~1_combout\);

-- Location: FF_X80_Y34_N2
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(2));

-- Location: LABCELL_X77_Y32_N18
\inst14|valor_interno[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[3]~4_combout\ = (!\inst700666|inst|Equal0~1_combout\ & (!\inst4|selsrc\(1) $ (!\inst4|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(1),
	datab => \inst4|ALT_INV_selsrc\(0),
	datac => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	combout => \inst14|valor_interno[3]~4_combout\);

-- Location: LABCELL_X77_Y32_N57
\inst32|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst32|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst4|selregr\(0) & ( \inst49|PCWrite~0_combout\ & ( (\inst4|selsrc\(0) & ((!\inst4|selregr\(2) & ((!\inst700666|inst|Equal0~0_combout\))) # (\inst4|selregr\(2) & 
-- (!\inst49|PCWrite~1_combout\)))) ) ) ) # ( !\inst4|selregr\(0) & ( \inst49|PCWrite~0_combout\ & ( (\inst4|selsrc\(0) & !\inst4|selregr\(2)) ) ) ) # ( \inst4|selregr\(0) & ( !\inst49|PCWrite~0_combout\ & ( (\inst4|selsrc\(0) & ((!\inst4|selregr\(2) & 
-- ((!\inst700666|inst|Equal0~0_combout\))) # (\inst4|selregr\(2) & (!\inst49|PCWrite~1_combout\)))) ) ) ) # ( !\inst4|selregr\(0) & ( !\inst49|PCWrite~0_combout\ & ( \inst4|selsrc\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100100000001000110000001100000011001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~1_combout\,
	datab => \inst4|ALT_INV_selsrc\(0),
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datae => \inst4|ALT_INV_selregr\(0),
	dataf => \inst49|ALT_INV_PCWrite~0_combout\,
	combout => \inst32|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X75_Y32_N32
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

-- Location: LABCELL_X75_Y32_N3
\inst11|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~5_sumout\ = SUM(( (!\inst700666|inst|Equal0~3_combout\ & (!\inst700666|inst|Equal0~1_combout\ & (\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(1)))) ) + ( !\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) 
-- + ( \inst11|Add0~2\ ))
-- \inst11|Add0~6\ = CARRY(( (!\inst700666|inst|Equal0~3_combout\ & (!\inst700666|inst|Equal0~1_combout\ & (\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(1)))) ) + ( !\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) + ( 
-- \inst11|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~3_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(1),
	dataf => \inst45|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => \inst11|Add0~2\,
	sumout => \inst11|Add0~5_sumout\,
	cout => \inst11|Add0~6\);

-- Location: LABCELL_X75_Y32_N6
\inst11|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~9_sumout\ = SUM(( !\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) + ( (!\inst700666|inst|Equal0~1_combout\ & (!\inst700666|inst|Equal0~3_combout\ & (\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(2)))) ) 
-- + ( \inst11|Add0~6\ ))
-- \inst11|Add0~10\ = CARRY(( !\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) + ( (!\inst700666|inst|Equal0~1_combout\ & (!\inst700666|inst|Equal0~3_combout\ & (\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(2)))) ) + ( 
-- \inst11|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~3_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datad => \inst45|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(2),
	cin => \inst11|Add0~6\,
	sumout => \inst11|Add0~9_sumout\,
	cout => \inst11|Add0~10\);

-- Location: LABCELL_X73_Y32_N0
\inst15|valor_interno[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|valor_interno[2]~feeder_combout\ = ( \inst11|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst11|ALT_INV_Add0~9_sumout\,
	combout => \inst15|valor_interno[2]~feeder_combout\);

-- Location: LABCELL_X74_Y32_N30
\inst10|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux13~1_combout\ = ( \inst23|valor_interno\(2) & ( \inst700666|inst|Equal0~1_combout\ ) ) # ( \inst23|valor_interno\(2) & ( !\inst700666|inst|Equal0~1_combout\ & ( (!\inst4|seldir\(0)) # (\inst107|seldirw\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_seldir\(0),
	datac => \inst107|ALT_INV_seldirw\(1),
	datae => \inst23|ALT_INV_valor_interno\(2),
	dataf => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	combout => \inst10|Mux13~1_combout\);

-- Location: FF_X73_Y32_N1
\inst15|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst15|valor_interno[2]~feeder_combout\,
	asdata => \inst10|Mux13~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(2));

-- Location: FF_X75_Y32_N50
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

-- Location: LABCELL_X75_Y32_N48
\inst10|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux13~0_combout\ = ( \inst11|Add0~9_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((\inst107|seldirw\(1) & \inst23|valor_interno\(2))) ) ) # ( !\inst11|Add0~9_sumout\ & ( (\inst107|seldirw\(1) & \inst23|valor_interno\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_Mux10~0_combout\,
	datac => \inst107|ALT_INV_seldirw\(1),
	datad => \inst23|ALT_INV_valor_interno\(2),
	dataf => \inst11|ALT_INV_Add0~9_sumout\,
	combout => \inst10|Mux13~0_combout\);

-- Location: FF_X75_Y32_N23
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

-- Location: LABCELL_X75_Y32_N9
\inst11|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~13_sumout\ = SUM(( (!\inst700666|inst|Equal0~1_combout\ & (!\inst700666|inst|Equal0~3_combout\ & (\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(3)))) ) + ( !\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ 
-- ) + ( \inst11|Add0~10\ ))
-- \inst11|Add0~14\ = CARRY(( (!\inst700666|inst|Equal0~1_combout\ & (!\inst700666|inst|Equal0~3_combout\ & (\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(3)))) ) + ( !\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) + ( 
-- \inst11|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~3_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(3),
	dataf => \inst45|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => \inst11|Add0~10\,
	sumout => \inst11|Add0~13_sumout\,
	cout => \inst11|Add0~14\);

-- Location: LABCELL_X75_Y32_N12
\inst11|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~17_sumout\ = SUM(( !\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) + ( (\inst700666|inst|Equal0~2_combout\ & (!\inst700666|inst|Equal0~3_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(4)))) 
-- ) + ( \inst11|Add0~14\ ))
-- \inst11|Add0~18\ = CARRY(( !\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) + ( (\inst700666|inst|Equal0~2_combout\ & (!\inst700666|inst|Equal0~3_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(4)))) ) + ( 
-- \inst11|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~3_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datad => \inst45|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(4),
	cin => \inst11|Add0~14\,
	sumout => \inst11|Add0~17_sumout\,
	cout => \inst11|Add0~18\);

-- Location: LABCELL_X73_Y32_N36
\inst15|valor_interno[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|valor_interno[4]~feeder_combout\ = ( \inst11|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst11|ALT_INV_Add0~17_sumout\,
	combout => \inst15|valor_interno[4]~feeder_combout\);

-- Location: LABCELL_X74_Y32_N0
\inst10|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux11~1_combout\ = (\inst23|valor_interno\(4) & (((!\inst4|seldir\(0)) # (\inst700666|inst|Equal0~1_combout\)) # (\inst107|seldirw\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001101111100000000110111110000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_seldirw\(1),
	datab => \inst4|ALT_INV_seldir\(0),
	datac => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datad => \inst23|ALT_INV_valor_interno\(4),
	combout => \inst10|Mux11~1_combout\);

-- Location: FF_X73_Y32_N37
\inst15|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst15|valor_interno[4]~feeder_combout\,
	asdata => \inst10|Mux11~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(4));

-- Location: FF_X75_Y32_N44
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

-- Location: LABCELL_X75_Y32_N42
\inst10|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux11~0_combout\ = ( \inst11|Add0~17_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((\inst107|seldirw\(1) & \inst23|valor_interno\(4))) ) ) # ( !\inst11|Add0~17_sumout\ & ( (\inst107|seldirw\(1) & \inst23|valor_interno\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111001100110111011100110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_seldirw\(1),
	datab => \inst10|ALT_INV_Mux10~0_combout\,
	datad => \inst23|ALT_INV_valor_interno\(4),
	dataf => \inst11|ALT_INV_Add0~17_sumout\,
	combout => \inst10|Mux11~0_combout\);

-- Location: LABCELL_X80_Y34_N6
\inst202|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux11~0_combout\ = ( \inst4|selregr\(0) & ( !\inst49|PCWrite~1_combout\ & ( (\inst700666|ACCB|valor_interno\(4) & \inst4|selregr\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCB|ALT_INV_valor_interno\(4),
	datac => \inst4|ALT_INV_selregr\(2),
	datae => \inst4|ALT_INV_selregr\(0),
	dataf => \inst49|ALT_INV_PCWrite~1_combout\,
	combout => \inst202|Mux11~0_combout\);

-- Location: FF_X77_Y32_N40
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

-- Location: FF_X80_Y34_N7
\inst700|valor_interno[4]~DUPLICATE\ : dffeas
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[4]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y34_N0
\inst33|opres[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~4_combout\ = ( !\inst16|selop\(1) & ( \inst16|selop\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst16|ALT_INV_selop\(2),
	dataf => \inst16|ALT_INV_selop\(1),
	combout => \inst33|opres[8]~4_combout\);

-- Location: LABCELL_X75_Y34_N57
\inst33|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Equal0~0_combout\ = ( !\inst16|selop\(2) & ( (\inst16|selop\(1) & \inst16|selop\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(2),
	combout => \inst33|Equal0~0_combout\);

-- Location: LABCELL_X77_Y32_N30
\inst14|valor_interno[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[7]~3_combout\ = ( \inst700666|inst|Equal0~3_combout\ & ( (!\inst700666|inst|Equal0~1_combout\ & (\inst4|selsrc\(1) & \inst4|selsrc\(0))) ) ) # ( !\inst700666|inst|Equal0~3_combout\ & ( (!\inst700666|inst|Equal0~1_combout\ & 
-- \inst4|selsrc\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datac => \inst4|ALT_INV_selsrc\(1),
	datad => \inst4|ALT_INV_selsrc\(0),
	dataf => \inst700666|inst|ALT_INV_Equal0~3_combout\,
	combout => \inst14|valor_interno[7]~3_combout\);

-- Location: LABCELL_X77_Y32_N21
\inst202|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux25~0_combout\ = ( \inst700666|inst|Equal0~3_combout\ & ( (\inst4|selsrc\(1) & (!\inst4|selsrc\(0) & !\inst700666|inst|Equal0~1_combout\)) ) ) # ( !\inst700666|inst|Equal0~3_combout\ & ( (!\inst700666|inst|Equal0~1_combout\ & 
-- ((!\inst4|selsrc\(1) & (\inst4|selsrc\(0) & \inst700666|inst|Equal0~2_combout\)) # (\inst4|selsrc\(1) & (!\inst4|selsrc\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011000000000010001100000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(1),
	datab => \inst4|ALT_INV_selsrc\(0),
	datac => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datad => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	dataf => \inst700666|inst|ALT_INV_Equal0~3_combout\,
	combout => \inst202|Mux25~0_combout\);

-- Location: FF_X79_Y33_N22
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

-- Location: FF_X75_Y34_N22
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

-- Location: LABCELL_X79_Y33_N36
\inst202|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux7~0_combout\ = ( \inst700666|ACCB|valor_interno\(8) & ( (\inst4|selregr\(2) & (\inst4|selregr\(0) & !\inst49|PCWrite~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr\(2),
	datac => \inst4|ALT_INV_selregr\(0),
	datad => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(8),
	combout => \inst202|Mux7~0_combout\);

-- Location: FF_X78_Y33_N22
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

-- Location: FF_X79_Y33_N37
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[8]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y34_N54
\inst14|valor_interno[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[15]~0_combout\ = ( !\inst700666|inst|Equal0~1_combout\ & ( (\inst4|selsrc\(0) & \inst4|selsrc\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_selsrc\(0),
	datad => \inst4|ALT_INV_selsrc\(1),
	dataf => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	combout => \inst14|valor_interno[15]~0_combout\);

-- Location: LABCELL_X73_Y33_N33
\inst4|seldato\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|seldato~combout\ = ( \inst4|seldato~combout\ & ( !\inst4|comb~11_combout\ ) ) # ( !\inst4|seldato~combout\ & ( (!\inst4|comb~11_combout\ & \inst4|comb~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~11_combout\,
	datac => \inst4|ALT_INV_comb~12_combout\,
	dataf => \inst4|ALT_INV_seldato~combout\,
	combout => \inst4|seldato~combout\);

-- Location: LABCELL_X75_Y34_N33
\inst14|valor_interno[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[15]~1_combout\ = ( !\inst700666|inst|Equal0~1_combout\ & ( (\inst4|selsrc\(1) & ((!\inst4|selsrc\(0)) # (\inst4|seldato~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datac => \inst4|ALT_INV_seldato~combout\,
	datad => \inst4|ALT_INV_selsrc\(1),
	dataf => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	combout => \inst14|valor_interno[15]~1_combout\);

-- Location: FF_X79_Y33_N38
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(8));

-- Location: FF_X79_Y32_N16
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

-- Location: LABCELL_X79_Y33_N45
\inst202|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux6~0_combout\ = ( \inst700666|ACCB|valor_interno\(9) & ( (\inst4|selregr\(0) & (\inst4|selregr\(2) & !\inst49|PCWrite~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst4|ALT_INV_selregr\(2),
	datac => \inst49|ALT_INV_PCWrite~1_combout\,
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(9),
	combout => \inst202|Mux6~0_combout\);

-- Location: FF_X79_Y32_N46
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

-- Location: FF_X79_Y33_N47
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(9));

-- Location: FF_X75_Y34_N16
\inst700666|ACCB|valor_interno[10]~DUPLICATE\ : dffeas
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
	q => \inst700666|ACCB|valor_interno[10]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y33_N0
\inst202|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux5~0_combout\ = ( !\inst49|PCWrite~1_combout\ & ( \inst4|selregr\(2) & ( (\inst4|selregr\(0) & \inst700666|ACCB|valor_interno[10]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datac => \inst700666|ACCB|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_selregr\(2),
	combout => \inst202|Mux5~0_combout\);

-- Location: FF_X78_Y33_N16
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

-- Location: FF_X79_Y33_N1
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(10));

-- Location: FF_X79_Y32_N52
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

-- Location: FF_X79_Y32_N40
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

-- Location: LABCELL_X79_Y33_N57
\inst202|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux2~0_combout\ = ( \inst700666|ACCB|valor_interno\(13) & ( \inst4|selregr\(0) & ( (!\inst49|PCWrite~1_combout\ & \inst4|selregr\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst49|ALT_INV_PCWrite~1_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(13),
	dataf => \inst4|ALT_INV_selregr\(0),
	combout => \inst202|Mux2~0_combout\);

-- Location: FF_X79_Y32_N28
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

-- Location: FF_X79_Y33_N58
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[13]~DUPLICATE_q\);

-- Location: FF_X79_Y34_N16
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

-- Location: LABCELL_X80_Y34_N30
\inst202|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux1~0_combout\ = ( \inst700666|ACCB|valor_interno\(14) & ( (\inst4|selregr\(0) & (!\inst49|PCWrite~1_combout\ & \inst4|selregr\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~1_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(14),
	combout => \inst202|Mux1~0_combout\);

-- Location: FF_X79_Y34_N58
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

-- Location: FF_X80_Y34_N32
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(14));

-- Location: M10K_X76_Y32_N0
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

-- Location: LABCELL_X75_Y34_N48
\inst202|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux16~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a15\ & ( (!\inst14|valor_interno[15]~0_combout\ & (((\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(15))) # (\inst14|valor_interno[15]~1_combout\))) ) ) # ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a15\ & ( (!\inst14|valor_interno[15]~1_combout\ & (!\inst14|valor_interno[15]~0_combout\ & (\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100001000100010011000100010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[15]~1_combout\,
	datab => \inst14|ALT_INV_valor_interno[15]~0_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(15),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \inst202|Mux16~0_combout\);

-- Location: LABCELL_X75_Y34_N30
\inst14|valor_interno[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[15]~2_combout\ = ( \inst700666|inst|Equal0~1_combout\ ) # ( !\inst700666|inst|Equal0~1_combout\ & ( (!\inst4|selsrc\(1) & ((!\inst4|selsrc\(0)) # (!\inst700666|inst|Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datac => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datad => \inst4|ALT_INV_selsrc\(1),
	dataf => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	combout => \inst14|valor_interno[15]~2_combout\);

-- Location: FF_X75_Y34_N50
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
	sclr => \inst14|valor_interno[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(15));

-- Location: LABCELL_X77_Y34_N36
\inst33|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~69_combout\ = !\inst14|valor_interno\(15) $ (((!\inst16|selop\(1)) # ((\inst16|selop\(0)) # (\inst16|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101100001111010010110000111101001011000011110100101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno\(15),
	datad => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~69_combout\);

-- Location: FF_X79_Y34_N52
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

-- Location: FF_X80_Y34_N4
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[15]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y34_N27
\inst202|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux17~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a14\ & ( (!\inst14|valor_interno[15]~0_combout\ & (((\inst700666|ACCB|valor_interno\(14) & \inst700666|inst|Equal0~2_combout\)) # (\inst14|valor_interno[15]~1_combout\))) ) ) # ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a14\ & ( (!\inst14|valor_interno[15]~1_combout\ & (!\inst14|valor_interno[15]~0_combout\ & (\inst700666|ACCB|valor_interno\(14) & \inst700666|inst|Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100001000100010011000100010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[15]~1_combout\,
	datab => \inst14|ALT_INV_valor_interno[15]~0_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(14),
	datad => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \inst202|Mux17~0_combout\);

-- Location: FF_X75_Y34_N29
\inst14|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux17~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(14));

-- Location: LABCELL_X77_Y34_N21
\inst33|Add0~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~83_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno\(14) ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno\(14) $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010111011010001001011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datad => \inst14|ALT_INV_valor_interno\(14),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~83_combout\);

-- Location: LABCELL_X77_Y34_N39
\inst33|Add0~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~82_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno\(13) ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno\(13) $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111010100001010111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst14|ALT_INV_valor_interno\(13),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~82_combout\);

-- Location: FF_X79_Y33_N59
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(13));

-- Location: LABCELL_X77_Y34_N15
\inst33|Add0~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~71_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno\(12) ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno\(12) $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011111100001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno\(12),
	datad => \inst16|ALT_INV_selop\(1),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~71_combout\);

-- Location: LABCELL_X80_Y34_N21
\inst202|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux3~0_combout\ = ( \inst700666|ACCB|valor_interno\(12) & ( (\inst4|selregr\(0) & (!\inst49|PCWrite~1_combout\ & \inst4|selregr\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~1_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(12),
	combout => \inst202|Mux3~0_combout\);

-- Location: FF_X79_Y32_N58
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

-- Location: FF_X80_Y34_N22
\inst700|valor_interno[12]~DUPLICATE\ : dffeas
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[12]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y34_N48
\inst33|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~81_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno\(11) ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno\(11) $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011010010110100101100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno\(11),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~81_combout\);

-- Location: LABCELL_X75_Y34_N45
\inst202|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux21~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a10\ & ( \inst700666|ACCB|valor_interno[10]~DUPLICATE_q\ & ( (!\inst14|valor_interno[15]~0_combout\ & ((\inst14|valor_interno[15]~1_combout\) # (\inst700666|inst|Equal0~2_combout\))) 
-- ) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a10\ & ( \inst700666|ACCB|valor_interno[10]~DUPLICATE_q\ & ( (!\inst14|valor_interno[15]~0_combout\ & (\inst700666|inst|Equal0~2_combout\ & !\inst14|valor_interno[15]~1_combout\)) ) ) ) # ( 
-- \inst41|mem_rtl_0|auto_generated|ram_block1a10\ & ( !\inst700666|ACCB|valor_interno[10]~DUPLICATE_q\ & ( (!\inst14|valor_interno[15]~0_combout\ & \inst14|valor_interno[15]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000001010000000000000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[15]~0_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datad => \inst14|ALT_INV_valor_interno[15]~1_combout\,
	datae => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	combout => \inst202|Mux21~0_combout\);

-- Location: FF_X75_Y34_N46
\inst14|valor_interno[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux21~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[10]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y34_N0
\inst33|Add0~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~80_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno[10]~DUPLICATE_q\ ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno[10]~DUPLICATE_q\ $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011111100001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	datad => \inst16|ALT_INV_selop\(1),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~80_combout\);

-- Location: FF_X79_Y33_N2
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[10]~DUPLICATE_q\);

-- Location: FF_X75_Y34_N38
\inst14|valor_interno[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux22~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[9]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y34_N9
\inst33|Add0~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~79_combout\ = ( \inst14|valor_interno[9]~DUPLICATE_q\ & ( ((!\inst16|selop\(1)) # (\inst16|selop\(2))) # (\inst16|selop\(0)) ) ) # ( !\inst14|valor_interno[9]~DUPLICATE_q\ & ( (!\inst16|selop\(0) & (!\inst16|selop\(2) & \inst16|selop\(1))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100011111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(2),
	datad => \inst16|ALT_INV_selop\(1),
	dataf => \inst14|ALT_INV_valor_interno[9]~DUPLICATE_q\,
	combout => \inst33|Add0~79_combout\);

-- Location: FF_X75_Y34_N10
\inst14|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux23~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(8));

-- Location: LABCELL_X77_Y34_N33
\inst33|Add0~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~78_combout\ = ( \inst14|valor_interno\(8) & ( ((!\inst16|selop\(1)) # (\inst16|selop\(2))) # (\inst16|selop\(0)) ) ) # ( !\inst14|valor_interno\(8) & ( (!\inst16|selop\(0) & (!\inst16|selop\(2) & \inst16|selop\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100011111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(2),
	datad => \inst16|ALT_INV_selop\(1),
	dataf => \inst14|ALT_INV_valor_interno\(8),
	combout => \inst33|Add0~78_combout\);

-- Location: LABCELL_X79_Y33_N6
\inst202|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux8~0_combout\ = ( !\inst49|PCWrite~1_combout\ & ( \inst700666|ACCB|valor_interno\(7) & ( (\inst4|selregr\(0) & \inst4|selregr\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(7),
	combout => \inst202|Mux8~0_combout\);

-- Location: FF_X79_Y33_N28
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

-- Location: FF_X79_Y33_N7
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(7));

-- Location: LABCELL_X77_Y34_N18
\inst33|Add0~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~70_combout\ = ( \inst14|valor_interno\(6) & ( ((!\inst16|selop\(1)) # (\inst16|selop\(0))) # (\inst16|selop\(2)) ) ) # ( !\inst14|valor_interno\(6) & ( (!\inst16|selop\(2) & (!\inst16|selop\(0) & \inst16|selop\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst16|ALT_INV_selop\(1),
	dataf => \inst14|ALT_INV_valor_interno\(6),
	combout => \inst33|Add0~70_combout\);

-- Location: LABCELL_X77_Y32_N27
\inst202|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux26~0_combout\ = ( !\inst700666|inst|Equal0~1_combout\ & ( \inst41|mem_rtl_0|auto_generated|ram_block1a5\ & ( (!\inst4|selsrc\(0) & (((\inst4|selsrc\(1))))) # (\inst4|selsrc\(0) & (\inst700666|ACCB|valor_interno\(5) & 
-- (\inst700666|inst|Equal0~2_combout\ & !\inst4|selsrc\(1)))) ) ) ) # ( !\inst700666|inst|Equal0~1_combout\ & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a5\ & ( (\inst700666|ACCB|valor_interno\(5) & (\inst4|selsrc\(0) & 
-- (\inst700666|inst|Equal0~2_combout\ & !\inst4|selsrc\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|ALT_INV_valor_interno\(5),
	datab => \inst4|ALT_INV_selsrc\(0),
	datac => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datad => \inst4|ALT_INV_selsrc\(1),
	datae => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \inst202|Mux26~0_combout\);

-- Location: FF_X77_Y32_N28
\inst14|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux26~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(5));

-- Location: MLABCELL_X78_Y34_N54
\inst33|Add0~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~76_combout\ = ( \inst14|valor_interno\(5) & ( ((!\inst16|selop\(1)) # (\inst16|selop\(0))) # (\inst16|selop\(2)) ) ) # ( !\inst14|valor_interno\(5) & ( (!\inst16|selop\(2) & (!\inst16|selop\(0) & \inst16|selop\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst16|ALT_INV_selop\(1),
	dataf => \inst14|ALT_INV_valor_interno\(5),
	combout => \inst33|Add0~76_combout\);

-- Location: LABCELL_X80_Y34_N51
\inst202|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux10~0_combout\ = ( \inst700666|ACCB|valor_interno\(5) & ( (\inst4|selregr\(0) & (!\inst49|PCWrite~1_combout\ & \inst4|selregr\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~1_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(5),
	combout => \inst202|Mux10~0_combout\);

-- Location: FF_X77_Y32_N20
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

-- Location: FF_X80_Y34_N53
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(5));

-- Location: LABCELL_X77_Y32_N36
\inst202|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux27~0_combout\ = ( \inst700666|ACCB|valor_interno\(4) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\inst700666|inst|Equal0~1_combout\ & ((!\inst4|selsrc\(1) & (\inst700666|inst|Equal0~2_combout\ & \inst4|selsrc\(0))) # 
-- (\inst4|selsrc\(1) & ((!\inst4|selsrc\(0)))))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(4) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a4\ & ( (\inst4|selsrc\(1) & (!\inst700666|inst|Equal0~1_combout\ & !\inst4|selsrc\(0))) ) ) ) # ( 
-- \inst700666|ACCB|valor_interno\(4) & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\inst4|selsrc\(1) & (\inst700666|inst|Equal0~2_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst4|selsrc\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000001010000000000000101000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(1),
	datab => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datad => \inst4|ALT_INV_selsrc\(0),
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(4),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \inst202|Mux27~0_combout\);

-- Location: FF_X77_Y34_N47
\inst14|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux27~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(4));

-- Location: LABCELL_X77_Y34_N51
\inst33|Add0~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~75_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno\(4) ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno\(4) $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011010010110100101100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno\(4),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~75_combout\);

-- Location: FF_X80_Y34_N8
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(4));

-- Location: FF_X77_Y34_N29
\inst14|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux28~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(3));

-- Location: LABCELL_X77_Y34_N6
\inst33|Add0~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~74_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno\(3) ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno\(3) $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011111100001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno\(3),
	datad => \inst16|ALT_INV_selop\(1),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~74_combout\);

-- Location: LABCELL_X80_Y34_N33
\inst202|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux12~0_combout\ = ( \inst4|selregr\(2) & ( (\inst4|selregr\(0) & (!\inst49|PCWrite~1_combout\ & \inst700666|ACCB|valor_interno\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~1_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(3),
	dataf => \inst4|ALT_INV_selregr\(2),
	combout => \inst202|Mux12~0_combout\);

-- Location: FF_X78_Y33_N34
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

-- Location: FF_X80_Y34_N35
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(3));

-- Location: MLABCELL_X78_Y34_N57
\inst33|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~73_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno\(2) ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno\(2) $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101010101011010010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(2),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst16|ALT_INV_selop\(1),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~73_combout\);

-- Location: FF_X77_Y34_N44
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

-- Location: LABCELL_X77_Y34_N3
\inst33|Add0~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~72_combout\ = ( \inst16|selop\(1) & ( !\inst14|valor_interno[1]~DUPLICATE_q\ $ (((\inst16|selop\(0)) # (\inst16|selop\(2)))) ) ) # ( !\inst16|selop\(1) & ( \inst14|valor_interno[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	datad => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(1),
	combout => \inst33|Add0~72_combout\);

-- Location: LABCELL_X80_Y34_N39
\inst202|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux14~0_combout\ = ( \inst4|selregr\(2) & ( (\inst4|selregr\(0) & (!\inst49|PCWrite~1_combout\ & \inst700666|ACCB|valor_interno\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~1_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(1),
	datae => \inst4|ALT_INV_selregr\(2),
	combout => \inst202|Mux14~0_combout\);

-- Location: FF_X78_Y33_N49
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

-- Location: FF_X80_Y34_N40
\inst700|valor_interno[1]~DUPLICATE\ : dffeas
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[1]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y34_N18
\inst202|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux15~0_combout\ = ( \inst4|selregr\(2) & ( (\inst4|selregr\(0) & (!\inst49|PCWrite~1_combout\ & \inst700666|ACCB|valor_interno\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~1_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(0),
	dataf => \inst4|ALT_INV_selregr\(2),
	combout => \inst202|Mux15~0_combout\);

-- Location: FF_X78_Y33_N58
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

-- Location: FF_X80_Y34_N19
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[0]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y34_N24
\inst202|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux31~0_combout\ = ( \inst700666|ACCB|valor_interno\(0) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (!\inst700666|inst|Equal0~1_combout\ & ((!\inst4|selsrc\(1) & (\inst4|selsrc\(0) & \inst700666|inst|Equal0~2_combout\)) # 
-- (\inst4|selsrc\(1) & (!\inst4|selsrc\(0))))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(0) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (!\inst700666|inst|Equal0~1_combout\ & (\inst4|selsrc\(1) & !\inst4|selsrc\(0))) ) ) ) # ( 
-- \inst700666|ACCB|valor_interno\(0) & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (!\inst700666|inst|Equal0~1_combout\ & (!\inst4|selsrc\(1) & (\inst4|selsrc\(0) & \inst700666|inst|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000100000001000000010000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst4|ALT_INV_selsrc\(0),
	datad => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(0),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \inst202|Mux31~0_combout\);

-- Location: FF_X77_Y34_N26
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

-- Location: LABCELL_X77_Y34_N30
\inst33|Add0~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~84_combout\ = ( \inst16|selop\(1) & ( !\inst14|valor_interno\(0) $ (((\inst16|selop\(0)) # (\inst16|selop\(2)))) ) ) # ( !\inst16|selop\(1) & ( \inst14|valor_interno\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno\(0),
	datad => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(1),
	combout => \inst33|Add0~84_combout\);

-- Location: LABCELL_X71_Y33_N3
\inst4|selfalgs[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs[3]~1_combout\ = ( \inst4|Equal0~0_combout\ & ( ((!\inst8|valor_interno\(22) & \inst4|Equal3~1_combout\)) # (\inst4|Equal0~1_combout\) ) ) # ( !\inst4|Equal0~0_combout\ & ( (!\inst8|valor_interno\(22) & \inst4|Equal3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~1_combout\,
	datac => \inst8|ALT_INV_valor_interno\(22),
	datad => \inst4|ALT_INV_Equal3~1_combout\,
	dataf => \inst4|ALT_INV_Equal0~0_combout\,
	combout => \inst4|selfalgs[3]~1_combout\);

-- Location: LABCELL_X77_Y33_N54
\inst4|comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~7_combout\ = ( \inst4|selfalgs[0]~0_combout\ & ( \inst4|Equal11~0_combout\ ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( \inst4|Equal11~0_combout\ & ( (!\inst4|selresult[0]~0_combout\) # (\inst4|selfalgs[3]~1_combout\) ) ) ) # ( 
-- \inst4|selfalgs[0]~0_combout\ & ( !\inst4|Equal11~0_combout\ ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( !\inst4|Equal11~0_combout\ & ( (!\inst4|selregr[3]~0_combout\ & ((!\inst4|selresult[0]~0_combout\) # ((\inst4|selfalgs[3]~1_combout\)))) # 
-- (\inst4|selregr[3]~0_combout\ & (\inst4|Equal13~1_combout\ & ((!\inst4|selresult[0]~0_combout\) # (\inst4|selfalgs[3]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010101111111111111111111111001100111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[3]~0_combout\,
	datab => \inst4|ALT_INV_selresult[0]~0_combout\,
	datac => \inst4|ALT_INV_Equal13~1_combout\,
	datad => \inst4|ALT_INV_selfalgs[3]~1_combout\,
	datae => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	dataf => \inst4|ALT_INV_Equal11~0_combout\,
	combout => \inst4|comb~7_combout\);

-- Location: LABCELL_X77_Y33_N36
\inst4|comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~8_combout\ = ( !\inst4|selfalgs[0]~0_combout\ & ( \inst4|Equal11~0_combout\ & ( (\inst4|selresult[0]~0_combout\ & !\inst4|selfalgs[3]~1_combout\) ) ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( !\inst4|Equal11~0_combout\ & ( 
-- (\inst4|selresult[0]~0_combout\ & (!\inst4|selfalgs[3]~1_combout\ & ((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal13~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100000000000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[3]~0_combout\,
	datab => \inst4|ALT_INV_selresult[0]~0_combout\,
	datac => \inst4|ALT_INV_Equal13~1_combout\,
	datad => \inst4|ALT_INV_selfalgs[3]~1_combout\,
	datae => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	dataf => \inst4|ALT_INV_Equal11~0_combout\,
	combout => \inst4|comb~8_combout\);

-- Location: LABCELL_X75_Y33_N57
\inst4|cadj\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cadj~combout\ = ( \inst4|cadj~combout\ & ( !\inst4|comb~7_combout\ ) ) # ( !\inst4|cadj~combout\ & ( (!\inst4|comb~7_combout\ & \inst4|comb~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~7_combout\,
	datad => \inst4|ALT_INV_comb~8_combout\,
	dataf => \inst4|ALT_INV_cadj~combout\,
	combout => \inst4|cadj~combout\);

-- Location: LABCELL_X77_Y35_N48
\inst28|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst28|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst700666|inst|Equal0~0_combout\ & ( (!\inst4|selregr\(0) & (\inst4|cadj~combout\ & ((!\inst49|PCWrite~0_combout\) # (!\inst4|selregr\(2))))) ) ) ) # ( 
-- !\inst49|PCWrite~1_combout\ & ( \inst700666|inst|Equal0~0_combout\ & ( (\inst4|cadj~combout\ & ((!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # (!\inst4|selregr\(2)))) # (\inst4|selregr\(0) & ((\inst4|selregr\(2)))))) ) ) ) # ( 
-- \inst49|PCWrite~1_combout\ & ( !\inst700666|inst|Equal0~0_combout\ & ( (\inst4|cadj~combout\ & ((!\inst4|selregr\(2)) # ((!\inst49|PCWrite~0_combout\ & !\inst4|selregr\(0))))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( !\inst700666|inst|Equal0~0_combout\ & 
-- ( (\inst4|cadj~combout\ & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2)) # (\inst4|selregr\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000100000001100000010110000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst4|ALT_INV_cadj~combout\,
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	combout => \inst28|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y35_N53
\inst16|cadj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst28|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|cadj~q\);

-- Location: MLABCELL_X72_Y33_N0
\inst4|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal3~3_combout\ = (\inst4|Equal3~1_combout\ & !\inst8|valor_interno\(22))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal3~1_combout\,
	datad => \inst8|ALT_INV_valor_interno\(22),
	combout => \inst4|Equal3~3_combout\);

-- Location: LABCELL_X73_Y33_N21
\inst4|comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~9_combout\ = ( !\inst4|Equal13~1_combout\ & ( !\inst4|Equal3~3_combout\ & ( (!\inst4|Equal0~2_combout\ & ((!\inst4|selregr[3]~0_combout\) # ((\inst4|selfalgs[0]~0_combout\) # (\inst4|Equal11~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~2_combout\,
	datab => \inst4|ALT_INV_selregr[3]~0_combout\,
	datac => \inst4|ALT_INV_Equal11~0_combout\,
	datad => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datae => \inst4|ALT_INV_Equal13~1_combout\,
	dataf => \inst4|ALT_INV_Equal3~3_combout\,
	combout => \inst4|comb~9_combout\);

-- Location: LABCELL_X71_Y33_N48
\inst4|comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~10_combout\ = ( \inst4|Equal13~1_combout\ ) # ( !\inst4|Equal13~1_combout\ & ( (\inst4|selfalgs[3]~1_combout\ & ((!\inst4|selregr[3]~0_combout\) # ((\inst4|Equal11~0_combout\) # (\inst4|selfalgs[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[3]~0_combout\,
	datab => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datac => \inst4|ALT_INV_Equal11~0_combout\,
	datad => \inst4|ALT_INV_selfalgs[3]~1_combout\,
	dataf => \inst4|ALT_INV_Equal13~1_combout\,
	combout => \inst4|comb~10_combout\);

-- Location: MLABCELL_X72_Y33_N12
\inst4|selfalgs[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(1) = ( \inst4|selfalgs\(1) & ( !\inst4|comb~9_combout\ ) ) # ( !\inst4|selfalgs\(1) & ( (!\inst4|comb~9_combout\ & \inst4|comb~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~9_combout\,
	datad => \inst4|ALT_INV_comb~10_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(1),
	combout => \inst4|selfalgs\(1));

-- Location: LABCELL_X77_Y35_N42
\inst29|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst700666|inst|Equal0~0_combout\ & ( (\inst4|selfalgs\(1) & (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # (!\inst4|selregr\(2))))) ) ) ) # ( 
-- !\inst49|PCWrite~1_combout\ & ( \inst700666|inst|Equal0~0_combout\ & ( (\inst4|selfalgs\(1) & ((!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # (!\inst4|selregr\(2)))) # (\inst4|selregr\(0) & ((\inst4|selregr\(2)))))) ) ) ) # ( 
-- \inst49|PCWrite~1_combout\ & ( !\inst700666|inst|Equal0~0_combout\ & ( (\inst4|selfalgs\(1) & ((!\inst4|selregr\(2)) # ((!\inst49|PCWrite~0_combout\ & !\inst4|selregr\(0))))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( !\inst700666|inst|Equal0~0_combout\ & 
-- ( (\inst4|selfalgs\(1) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2)) # (\inst4|selregr\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100011001100110010000000110000001000110011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_selfalgs\(1),
	datac => \inst4|ALT_INV_selregr\(0),
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	combout => \inst29|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y35_N17
\inst16|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst29|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(1));

-- Location: LABCELL_X77_Y33_N24
\inst4|selfalgs[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(3) = ( \inst4|selfalgs\(3) & ( !\inst4|comb~7_combout\ ) ) # ( !\inst4|selfalgs\(3) & ( (\inst4|comb~8_combout\ & !\inst4|comb~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~8_combout\,
	datad => \inst4|ALT_INV_comb~7_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(3),
	combout => \inst4|selfalgs\(3));

-- Location: MLABCELL_X78_Y35_N6
\inst29|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst4|selfalgs\(3) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst700666|inst|Equal0~0_combout\ & !\inst4|selregr\(2))))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( \inst4|selfalgs\(3) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst700666|inst|Equal0~0_combout\) # (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010110111011111101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(3),
	combout => \inst29|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y35_N8
\inst16|selfalgs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst29|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(3));

-- Location: LABCELL_X75_Y33_N42
\inst4|comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~6_combout\ = ( \inst4|Equal13~1_combout\ & ( !\inst4|Equal11~0_combout\ & ( \inst4|comb~0_combout\ ) ) ) # ( !\inst4|Equal13~1_combout\ & ( !\inst4|Equal11~0_combout\ & ( (\inst4|comb~0_combout\ & \inst4|selfalgs[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_comb~0_combout\,
	datac => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datae => \inst4|ALT_INV_Equal13~1_combout\,
	dataf => \inst4|ALT_INV_Equal11~0_combout\,
	combout => \inst4|comb~6_combout\);

-- Location: LABCELL_X75_Y33_N36
\inst4|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~5_combout\ = ( \inst4|selfalgs[0]~0_combout\ & ( (!\inst4|comb~0_combout\) # (\inst4|Equal11~0_combout\) ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( ((!\inst4|Equal13~1_combout\ & (!\inst4|selregr[3]~0_combout\)) # (\inst4|Equal13~1_combout\ & 
-- ((!\inst4|comb~0_combout\)))) # (\inst4|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110110011101111111011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[3]~0_combout\,
	datab => \inst4|ALT_INV_Equal11~0_combout\,
	datac => \inst4|ALT_INV_Equal13~1_combout\,
	datad => \inst4|ALT_INV_comb~0_combout\,
	dataf => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	combout => \inst4|comb~5_combout\);

-- Location: LABCELL_X75_Y33_N39
\inst4|selfalgs[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(0) = ( \inst4|selfalgs\(0) & ( !\inst4|comb~5_combout\ ) ) # ( !\inst4|selfalgs\(0) & ( (\inst4|comb~6_combout\ & !\inst4|comb~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~6_combout\,
	datad => \inst4|ALT_INV_comb~5_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(0),
	combout => \inst4|selfalgs\(0));

-- Location: LABCELL_X77_Y35_N39
\inst29|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~0_combout\ & ( \inst700666|inst|Equal0~0_combout\ & ( (\inst4|selfalgs\(0) & ((!\inst4|selregr\(0) & (!\inst4|selregr\(2))) # (\inst4|selregr\(0) & (\inst4|selregr\(2) & 
-- !\inst49|PCWrite~1_combout\)))) ) ) ) # ( !\inst49|PCWrite~0_combout\ & ( \inst700666|inst|Equal0~0_combout\ & ( (\inst4|selfalgs\(0) & ((!\inst4|selregr\(0)) # ((\inst4|selregr\(2) & !\inst49|PCWrite~1_combout\)))) ) ) ) # ( \inst49|PCWrite~0_combout\ & 
-- ( !\inst700666|inst|Equal0~0_combout\ & ( (\inst4|selfalgs\(0) & ((!\inst4|selregr\(2)) # ((\inst4|selregr\(0) & !\inst49|PCWrite~1_combout\)))) ) ) ) # ( !\inst49|PCWrite~0_combout\ & ( !\inst700666|inst|Equal0~0_combout\ & ( (\inst4|selfalgs\(0) & 
-- ((!\inst4|selregr\(0)) # ((!\inst4|selregr\(2)) # (!\inst49|PCWrite~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001101110000000000101110100000000010011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst4|ALT_INV_selregr\(2),
	datac => \inst49|ALT_INV_PCWrite~1_combout\,
	datad => \inst4|ALT_INV_selfalgs\(0),
	datae => \inst49|ALT_INV_PCWrite~0_combout\,
	dataf => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	combout => \inst29|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y35_N29
\inst16|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst29|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(0));

-- Location: LABCELL_X77_Y35_N9
\inst33|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Equal0~1_combout\ = ( \inst16|selop\(0) & ( !\inst16|selop\(2) & ( !\inst16|selop\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst16|ALT_INV_selop\(1),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(2),
	combout => \inst33|Equal0~1_combout\);

-- Location: MLABCELL_X78_Y34_N48
\inst33|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~2_sumout\ = SUM(( \inst33|Add0~69_combout\ ) + ( !\inst700|valor_interno[15]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~59\ ))
-- \inst33|Add0~3\ = CARRY(( \inst33|Add0~69_combout\ ) + ( !\inst700|valor_interno[15]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~59\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(1),
	datad => \inst33|ALT_INV_Add0~69_combout\,
	dataf => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	cin => \inst33|Add0~59\,
	sumout => \inst33|Add0~2_sumout\,
	cout => \inst33|Add0~3\);

-- Location: MLABCELL_X78_Y34_N51
\inst33|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~66_sumout\ = SUM(( GND ) + ( !\inst33|Equal0~1_combout\ ) + ( \inst33|Add0~3\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst33|ALT_INV_Equal0~1_combout\,
	cin => \inst33|Add0~3\,
	sumout => \inst33|Add0~66_sumout\);

-- Location: MLABCELL_X78_Y35_N12
\inst33|opres[16]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~36_combout\ = ( \inst700|valor_interno[0]~DUPLICATE_q\ & ( \inst33|Add0~66_sumout\ & ( (!\inst16|selop\(1) & (!\inst16|selop\(2))) # (\inst16|selop\(1) & ((!\inst16|selop\(2) & ((!\inst16|selop\(0)))) # (\inst16|selop\(2) & 
-- ((\inst16|selop\(0)) # (\inst700|valor_interno[15]~DUPLICATE_q\))))) ) ) ) # ( !\inst700|valor_interno[0]~DUPLICATE_q\ & ( \inst33|Add0~66_sumout\ & ( (!\inst16|selop\(1) & (!\inst16|selop\(2) & ((\inst16|selop\(0))))) # (\inst16|selop\(1) & 
-- (!\inst16|selop\(0) & ((!\inst16|selop\(2)) # (\inst700|valor_interno[15]~DUPLICATE_q\)))) ) ) ) # ( \inst700|valor_interno[0]~DUPLICATE_q\ & ( !\inst33|Add0~66_sumout\ & ( (!\inst16|selop\(1) & (!\inst16|selop\(2) & ((!\inst16|selop\(0))))) # 
-- (\inst16|selop\(1) & (\inst16|selop\(2) & ((\inst16|selop\(0)) # (\inst700|valor_interno[15]~DUPLICATE_q\)))) ) ) ) # ( !\inst700|valor_interno[0]~DUPLICATE_q\ & ( !\inst33|Add0~66_sumout\ & ( (\inst16|selop\(1) & (\inst16|selop\(2) & 
-- (\inst700|valor_interno[15]~DUPLICATE_q\ & !\inst16|selop\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000100010010001000101000101100010001100110110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datad => \inst16|ALT_INV_selop\(0),
	datae => \inst700|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	dataf => \inst33|ALT_INV_Add0~66_sumout\,
	combout => \inst33|opres[16]~36_combout\);

-- Location: MLABCELL_X78_Y35_N42
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

-- Location: MLABCELL_X78_Y35_N21
\inst|ci~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ci~0_combout\ = ( \inst33|opres\(16) & ( (((!\inst16|selfalgs\(0)) # (!\inst16|selfalgs\(2))) # (\inst16|selfalgs\(3))) # (\inst16|selfalgs\(1)) ) ) # ( !\inst33|opres\(16) & ( ((!\inst16|selfalgs\(1) & ((!\inst16|selfalgs\(0)) # 
-- (!\inst16|selfalgs\(2)))) # (\inst16|selfalgs\(1) & ((\inst16|selfalgs\(2))))) # (\inst16|selfalgs\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111110111101110111111011111111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(1),
	datab => \inst16|ALT_INV_selfalgs\(3),
	datac => \inst16|ALT_INV_selfalgs\(0),
	datad => \inst16|ALT_INV_selfalgs\(2),
	dataf => \inst33|ALT_INV_opres\(16),
	combout => \inst|ci~0_combout\);

-- Location: MLABCELL_X78_Y35_N51
\inst|ci~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ci~1_combout\ = ( \inst16|selfalgs\(0) & ( (!\inst16|selfalgs\(2) & ((\inst16|selfalgs\(1)))) # (\inst16|selfalgs\(2) & (!\inst16|selfalgs\(3) & !\inst16|selfalgs\(1))) ) ) # ( !\inst16|selfalgs\(0) & ( (!\inst16|selfalgs\(2) & 
-- (!\inst16|selfalgs\(3) $ (!\inst16|selfalgs\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100001001010010010100100101001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(2),
	datab => \inst16|ALT_INV_selfalgs\(3),
	datac => \inst16|ALT_INV_selfalgs\(1),
	dataf => \inst16|ALT_INV_selfalgs\(0),
	combout => \inst|ci~1_combout\);

-- Location: MLABCELL_X78_Y35_N33
\inst|ci\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ci~combout\ = ( \inst|ci~1_combout\ & ( \inst|ci~0_combout\ ) ) # ( !\inst|ci~1_combout\ & ( \inst|ci~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ci~0_combout\,
	datad => \inst|ALT_INV_ci~combout\,
	dataf => \inst|ALT_INV_ci~1_combout\,
	combout => \inst|ci~combout\);

-- Location: LABCELL_X77_Y35_N33
\inst4|selc\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selc~combout\ = ( \inst4|comb~30_combout\ & ( \inst4|selc~combout\ & ( !\inst4|comb~29_combout\ ) ) ) # ( !\inst4|comb~30_combout\ & ( \inst4|selc~combout\ & ( !\inst4|comb~29_combout\ ) ) ) # ( \inst4|comb~30_combout\ & ( !\inst4|selc~combout\ & ( 
-- !\inst4|comb~29_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~29_combout\,
	datae => \inst4|ALT_INV_comb~30_combout\,
	dataf => \inst4|ALT_INV_selc~combout\,
	combout => \inst4|selc~combout\);

-- Location: MLABCELL_X78_Y35_N9
\inst27|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst4|selc~combout\ & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst4|selregr\(2) & 
-- !\inst700666|inst|Equal0~0_combout\)))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( \inst4|selc~combout\ & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst700666|inst|Equal0~0_combout\) # 
-- (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101101011011111100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_selc~combout\,
	combout => \inst27|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y35_N11
\inst16|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst27|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selc~q\);

-- Location: MLABCELL_X78_Y35_N36
\inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst16|selc~q\ & ( \inst16|cadj~q\ ) ) # ( !\inst16|selc~q\ & ( \inst|ci~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_cadj~q\,
	datac => \inst|ALT_INV_ci~combout\,
	dataf => \inst16|ALT_INV_selc~q\,
	combout => \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X78_Y34_N0
\inst33|Add0~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~87_cout\ = CARRY(( \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst40|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => GND,
	cout => \inst33|Add0~87_cout\);

-- Location: MLABCELL_X78_Y34_N3
\inst33|Add0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~62_sumout\ = SUM(( !\inst700|valor_interno[0]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~84_combout\ ) + ( \inst33|Add0~87_cout\ ))
-- \inst33|Add0~63\ = CARRY(( !\inst700|valor_interno[0]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~84_combout\ ) + ( \inst33|Add0~87_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011011101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst700|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	dataf => \inst33|ALT_INV_Add0~84_combout\,
	cin => \inst33|Add0~87_cout\,
	sumout => \inst33|Add0~62_sumout\,
	cout => \inst33|Add0~63\);

-- Location: MLABCELL_X78_Y34_N6
\inst33|Add0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~14_sumout\ = SUM(( \inst33|Add0~72_combout\ ) + ( !\inst700|valor_interno[1]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~63\ ))
-- \inst33|Add0~15\ = CARRY(( \inst33|Add0~72_combout\ ) + ( !\inst700|valor_interno[1]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~63\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst33|ALT_INV_Add0~72_combout\,
	dataf => \inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	cin => \inst33|Add0~63\,
	sumout => \inst33|Add0~14_sumout\,
	cout => \inst33|Add0~15\);

-- Location: MLABCELL_X78_Y34_N9
\inst33|Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~18_sumout\ = SUM(( \inst33|Add0~73_combout\ ) + ( !\inst700|valor_interno\(2) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~15\ ))
-- \inst33|Add0~19\ = CARRY(( \inst33|Add0~73_combout\ ) + ( !\inst700|valor_interno\(2) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~15\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst33|ALT_INV_Add0~73_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(2),
	cin => \inst33|Add0~15\,
	sumout => \inst33|Add0~18_sumout\,
	cout => \inst33|Add0~19\);

-- Location: MLABCELL_X78_Y34_N12
\inst33|Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~22_sumout\ = SUM(( \inst33|Add0~74_combout\ ) + ( !\inst700|valor_interno\(3) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~19\ ))
-- \inst33|Add0~23\ = CARRY(( \inst33|Add0~74_combout\ ) + ( !\inst700|valor_interno\(3) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~19\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(0),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~74_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(3),
	cin => \inst33|Add0~19\,
	sumout => \inst33|Add0~22_sumout\,
	cout => \inst33|Add0~23\);

-- Location: MLABCELL_X78_Y34_N15
\inst33|Add0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~26_sumout\ = SUM(( \inst33|Add0~75_combout\ ) + ( !\inst700|valor_interno\(4) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~23\ ))
-- \inst33|Add0~27\ = CARRY(( \inst33|Add0~75_combout\ ) + ( !\inst700|valor_interno\(4) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~23\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(0),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~75_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(4),
	cin => \inst33|Add0~23\,
	sumout => \inst33|Add0~26_sumout\,
	cout => \inst33|Add0~27\);

-- Location: MLABCELL_X78_Y34_N18
\inst33|Add0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~30_sumout\ = SUM(( \inst33|Add0~76_combout\ ) + ( !\inst700|valor_interno\(5) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~27\ ))
-- \inst33|Add0~31\ = CARRY(( \inst33|Add0~76_combout\ ) + ( !\inst700|valor_interno\(5) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~27\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst33|ALT_INV_Add0~76_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(5),
	cin => \inst33|Add0~27\,
	sumout => \inst33|Add0~30_sumout\,
	cout => \inst33|Add0~31\);

-- Location: MLABCELL_X78_Y34_N21
\inst33|Add0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~6_sumout\ = SUM(( !\inst700|valor_interno\(6) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~70_combout\ ) + ( \inst33|Add0~31\ ))
-- \inst33|Add0~7\ = CARRY(( !\inst700|valor_interno\(6) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~70_combout\ ) + ( \inst33|Add0~31\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011011101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst700|ALT_INV_valor_interno\(6),
	dataf => \inst33|ALT_INV_Add0~70_combout\,
	cin => \inst33|Add0~31\,
	sumout => \inst33|Add0~6_sumout\,
	cout => \inst33|Add0~7\);

-- Location: MLABCELL_X78_Y34_N24
\inst33|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~34_sumout\ = SUM(( \inst33|Add0~77_combout\ ) + ( !\inst700|valor_interno\(7) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~7\ ))
-- \inst33|Add0~35\ = CARRY(( \inst33|Add0~77_combout\ ) + ( !\inst700|valor_interno\(7) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst33|ALT_INV_Add0~77_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(7),
	cin => \inst33|Add0~7\,
	sumout => \inst33|Add0~34_sumout\,
	cout => \inst33|Add0~35\);

-- Location: MLABCELL_X78_Y34_N27
\inst33|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~38_sumout\ = SUM(( \inst33|Add0~78_combout\ ) + ( !\inst700|valor_interno\(8) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~35\ ))
-- \inst33|Add0~39\ = CARRY(( \inst33|Add0~78_combout\ ) + ( !\inst700|valor_interno\(8) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~35\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst33|ALT_INV_Add0~78_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(8),
	cin => \inst33|Add0~35\,
	sumout => \inst33|Add0~38_sumout\,
	cout => \inst33|Add0~39\);

-- Location: MLABCELL_X78_Y34_N30
\inst33|Add0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~42_sumout\ = SUM(( \inst33|Add0~79_combout\ ) + ( !\inst700|valor_interno\(9) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~39\ ))
-- \inst33|Add0~43\ = CARRY(( \inst33|Add0~79_combout\ ) + ( !\inst700|valor_interno\(9) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~39\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(0),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~79_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(9),
	cin => \inst33|Add0~39\,
	sumout => \inst33|Add0~42_sumout\,
	cout => \inst33|Add0~43\);

-- Location: MLABCELL_X78_Y34_N33
\inst33|Add0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~46_sumout\ = SUM(( \inst33|Add0~80_combout\ ) + ( !\inst700|valor_interno[10]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~43\ ))
-- \inst33|Add0~47\ = CARRY(( \inst33|Add0~80_combout\ ) + ( !\inst700|valor_interno[10]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~43\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001001111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(0),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst33|ALT_INV_Add0~80_combout\,
	dataf => \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	cin => \inst33|Add0~43\,
	sumout => \inst33|Add0~46_sumout\,
	cout => \inst33|Add0~47\);

-- Location: MLABCELL_X78_Y34_N36
\inst33|Add0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~50_sumout\ = SUM(( \inst33|Add0~81_combout\ ) + ( !\inst700|valor_interno\(11) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~47\ ))
-- \inst33|Add0~51\ = CARRY(( \inst33|Add0~81_combout\ ) + ( !\inst700|valor_interno\(11) $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~47\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst33|ALT_INV_Add0~81_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(11),
	cin => \inst33|Add0~47\,
	sumout => \inst33|Add0~50_sumout\,
	cout => \inst33|Add0~51\);

-- Location: MLABCELL_X78_Y34_N39
\inst33|Add0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~10_sumout\ = SUM(( \inst33|Add0~71_combout\ ) + ( !\inst700|valor_interno[12]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~51\ ))
-- \inst33|Add0~11\ = CARRY(( \inst33|Add0~71_combout\ ) + ( !\inst700|valor_interno[12]~DUPLICATE_q\ $ (((!\inst16|selop\(2) & (!\inst16|selop\(1) $ (!\inst16|selop\(0)))))) ) + ( \inst33|Add0~51\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(0),
	datad => \inst33|ALT_INV_Add0~71_combout\,
	dataf => \inst700|ALT_INV_valor_interno[12]~DUPLICATE_q\,
	cin => \inst33|Add0~51\,
	sumout => \inst33|Add0~10_sumout\,
	cout => \inst33|Add0~11\);

-- Location: MLABCELL_X78_Y34_N42
\inst33|Add0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~54_sumout\ = SUM(( \inst33|Add0~82_combout\ ) + ( !\inst700|valor_interno\(13) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~11\ ))
-- \inst33|Add0~55\ = CARRY(( \inst33|Add0~82_combout\ ) + ( !\inst700|valor_interno\(13) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~11\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(1),
	datad => \inst33|ALT_INV_Add0~82_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(13),
	cin => \inst33|Add0~11\,
	sumout => \inst33|Add0~54_sumout\,
	cout => \inst33|Add0~55\);

-- Location: MLABCELL_X78_Y34_N45
\inst33|Add0~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~58_sumout\ = SUM(( \inst33|Add0~83_combout\ ) + ( !\inst700|valor_interno\(14) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~55\ ))
-- \inst33|Add0~59\ = CARRY(( \inst33|Add0~83_combout\ ) + ( !\inst700|valor_interno\(14) $ (((!\inst16|selop\(2) & (!\inst16|selop\(0) $ (!\inst16|selop\(1)))))) ) + ( \inst33|Add0~55\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst16|ALT_INV_selop\(1),
	datad => \inst33|ALT_INV_Add0~83_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(14),
	cin => \inst33|Add0~55\,
	sumout => \inst33|Add0~58_sumout\,
	cout => \inst33|Add0~59\);

-- Location: FF_X75_Y34_N49
\inst14|valor_interno[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux16~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[15]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y35_N3
\inst33|opres[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~1_combout\ = ( \inst16|selop\(1) & ( !\inst16|selop\(2) & ( (!\inst16|selop\(0) & (\inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst16|selop\(0) & (((\inst14|valor_interno[15]~DUPLICATE_q\ & 
-- \inst700|valor_interno[15]~DUPLICATE_q\)))) ) ) ) # ( !\inst16|selop\(1) & ( !\inst16|selop\(2) & ( \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001000100010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datab => \inst40|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst14|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datae => \inst16|ALT_INV_selop\(1),
	dataf => \inst16|ALT_INV_selop\(2),
	combout => \inst33|opres[15]~1_combout\);

-- Location: FF_X80_Y34_N31
\inst700|valor_interno[14]~DUPLICATE\ : dffeas
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[14]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y34_N3
\inst33|opres[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~0_combout\ = ( \inst16|selop\(1) & ( \inst14|valor_interno\(15) & ( (!\inst16|selop\(0) & ((!\inst700|valor_interno[14]~DUPLICATE_q\))) # (\inst16|selop\(0) & (!\inst700|valor_interno\(15))) ) ) ) # ( !\inst16|selop\(1) & ( 
-- \inst14|valor_interno\(15) & ( (\inst16|selop\(0) & \inst700|valor_interno\(15)) ) ) ) # ( \inst16|selop\(1) & ( !\inst14|valor_interno\(15) & ( (!\inst16|selop\(0) & ((!\inst700|valor_interno[14]~DUPLICATE_q\))) # (\inst16|selop\(0) & 
-- (!\inst700|valor_interno\(15))) ) ) ) # ( !\inst16|selop\(1) & ( !\inst14|valor_interno\(15) & ( !\inst700|valor_interno\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111110100101000000000101000001011111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(0),
	datac => \inst700|ALT_INV_valor_interno\(15),
	datad => \inst700|ALT_INV_valor_interno[14]~DUPLICATE_q\,
	datae => \inst16|ALT_INV_selop\(1),
	dataf => \inst14|ALT_INV_valor_interno\(15),
	combout => \inst33|opres[15]~0_combout\);

-- Location: LABCELL_X79_Y34_N30
\inst33|opres[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~2_combout\ = ( \inst33|Add0~0_combout\ & ( \inst33|Add0~2_sumout\ ) ) # ( !\inst33|Add0~0_combout\ & ( ((\inst16|selop\(2) & !\inst33|opres[15]~0_combout\)) # (\inst33|opres[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst33|ALT_INV_Add0~2_sumout\,
	datac => \inst33|ALT_INV_opres[15]~1_combout\,
	datad => \inst33|ALT_INV_opres[15]~0_combout\,
	dataf => \inst33|ALT_INV_Add0~0_combout\,
	combout => \inst33|opres[15]~2_combout\);

-- Location: LABCELL_X79_Y34_N33
\inst33|opres[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(15) = ( \inst33|opres[15]~2_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(15)) ) ) # ( !\inst33|opres[15]~2_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres[15]~3_combout\,
	datad => \inst33|ALT_INV_opres\(15),
	dataf => \inst33|ALT_INV_opres[15]~2_combout\,
	combout => \inst33|opres\(15));

-- Location: FF_X79_Y34_N41
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

-- Location: FF_X75_Y34_N59
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

-- Location: LABCELL_X80_Y34_N3
\inst202|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux0~0_combout\ = ( \inst700666|ACCB|valor_interno\(15) & ( (\inst4|selregr\(0) & (\inst4|selregr\(2) & !\inst49|PCWrite~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst4|ALT_INV_selregr\(2),
	datac => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(15),
	combout => \inst202|Mux0~0_combout\);

-- Location: FF_X80_Y34_N5
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(15));

-- Location: LABCELL_X79_Y34_N9
\inst33|opres[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~5_combout\ = ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & \inst16|selop\(2)) ) ) # ( !\inst16|selop\(0) & ( (\inst16|selop\(1) & \inst16|selop\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datad => \inst16|ALT_INV_selop\(2),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[8]~5_combout\);

-- Location: LABCELL_X80_Y34_N15
\inst33|opres[14]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~32_combout\ = ( \inst14|valor_interno\(14) & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[13]~DUPLICATE_q\)) # (\inst33|opres[8]~4_combout\ & ((\inst700|valor_interno\(14)))) ) ) ) # ( 
-- !\inst14|valor_interno\(14) & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[13]~DUPLICATE_q\)) # (\inst33|opres[8]~4_combout\ & ((!\inst700|valor_interno\(14)))) ) ) ) # ( \inst14|valor_interno\(14) & ( 
-- !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & !\inst700|valor_interno\(15)) ) ) ) # ( !\inst14|valor_interno\(14) & ( !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & ((!\inst700|valor_interno\(15)))) # 
-- (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001010000101010100000000011011000110110001000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[8]~4_combout\,
	datab => \inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\,
	datac => \inst700|ALT_INV_valor_interno\(14),
	datad => \inst700|ALT_INV_valor_interno\(15),
	datae => \inst14|ALT_INV_valor_interno\(14),
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[14]~32_combout\);

-- Location: LABCELL_X79_Y34_N12
\inst33|opres[14]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~33_combout\ = ( \inst33|Add0~0_combout\ & ( \inst33|Add0~58_sumout\ ) ) # ( !\inst33|Add0~0_combout\ & ( \inst33|Add0~58_sumout\ & ( (!\inst33|Equal0~0_combout\ & (!\inst33|opres[14]~32_combout\)) # (\inst33|Equal0~0_combout\ & 
-- (((\inst700|valor_interno\(14) & \inst14|valor_interno\(14))))) ) ) ) # ( !\inst33|Add0~0_combout\ & ( !\inst33|Add0~58_sumout\ & ( (!\inst33|Equal0~0_combout\ & (!\inst33|opres[14]~32_combout\)) # (\inst33|Equal0~0_combout\ & 
-- (((\inst700|valor_interno\(14) & \inst14|valor_interno\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001101000000000000000010001000100011011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datab => \inst33|ALT_INV_opres[14]~32_combout\,
	datac => \inst700|ALT_INV_valor_interno\(14),
	datad => \inst14|ALT_INV_valor_interno\(14),
	datae => \inst33|ALT_INV_Add0~0_combout\,
	dataf => \inst33|ALT_INV_Add0~58_sumout\,
	combout => \inst33|opres[14]~33_combout\);

-- Location: LABCELL_X79_Y34_N6
\inst33|opres[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(14) = ( \inst33|opres[14]~33_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(14)) ) ) # ( !\inst33|opres[14]~33_combout\ & ( (\inst33|opres\(14) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres\(14),
	datac => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[14]~33_combout\,
	combout => \inst33|opres\(14));

-- Location: FF_X79_Y34_N29
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

-- Location: LABCELL_X77_Y32_N12
\inst202|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux18~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a13\ & ( (!\inst14|valor_interno[15]~0_combout\ & (((\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(13))) # (\inst14|valor_interno[15]~1_combout\))) ) ) # ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a13\ & ( (!\inst14|valor_interno[15]~1_combout\ & (\inst700666|inst|Equal0~2_combout\ & (!\inst14|valor_interno[15]~0_combout\ & \inst700666|ACCB|valor_interno\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000001010000011100000101000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[15]~1_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datac => \inst14|ALT_INV_valor_interno[15]~0_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(13),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \inst202|Mux18~0_combout\);

-- Location: FF_X77_Y34_N53
\inst14|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux18~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[15]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(13));

-- Location: LABCELL_X79_Y32_N42
\inst33|opres[13]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~30_combout\ = ( \inst700|valor_interno[12]~DUPLICATE_q\ & ( \inst33|opres[8]~5_combout\ & ( (\inst33|opres[8]~4_combout\ & (!\inst14|valor_interno\(13) $ (\inst700|valor_interno[13]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst700|valor_interno[12]~DUPLICATE_q\ & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\) # (!\inst14|valor_interno\(13) $ (\inst700|valor_interno[13]~DUPLICATE_q\)) ) ) ) # ( \inst700|valor_interno[12]~DUPLICATE_q\ & ( 
-- !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(14))) # (\inst33|opres[8]~4_combout\ & (((!\inst14|valor_interno\(13) & !\inst700|valor_interno[13]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\inst700|valor_interno[12]~DUPLICATE_q\ & ( !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(14))) # (\inst33|opres[8]~4_combout\ & (((!\inst14|valor_interno\(13) & !\inst700|valor_interno[13]~DUPLICATE_q\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010001000101110001000100011111100110011110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(14),
	datab => \inst33|ALT_INV_opres[8]~4_combout\,
	datac => \inst14|ALT_INV_valor_interno\(13),
	datad => \inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\,
	datae => \inst700|ALT_INV_valor_interno[12]~DUPLICATE_q\,
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[13]~30_combout\);

-- Location: LABCELL_X79_Y32_N18
\inst33|opres[13]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~31_combout\ = ( \inst33|opres[13]~30_combout\ & ( \inst33|Add0~54_sumout\ & ( ((\inst33|Equal0~0_combout\ & (\inst14|valor_interno\(13) & \inst700|valor_interno[13]~DUPLICATE_q\))) # (\inst33|Add0~0_combout\) ) ) ) # ( 
-- !\inst33|opres[13]~30_combout\ & ( \inst33|Add0~54_sumout\ & ( (!\inst33|Equal0~0_combout\) # (((\inst14|valor_interno\(13) & \inst700|valor_interno[13]~DUPLICATE_q\)) # (\inst33|Add0~0_combout\)) ) ) ) # ( \inst33|opres[13]~30_combout\ & ( 
-- !\inst33|Add0~54_sumout\ & ( (\inst33|Equal0~0_combout\ & (!\inst33|Add0~0_combout\ & (\inst14|valor_interno\(13) & \inst700|valor_interno[13]~DUPLICATE_q\))) ) ) ) # ( !\inst33|opres[13]~30_combout\ & ( !\inst33|Add0~54_sumout\ & ( 
-- (!\inst33|Add0~0_combout\ & ((!\inst33|Equal0~0_combout\) # ((\inst14|valor_interno\(13) & \inst700|valor_interno[13]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001100000000000000010010111011101111110011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datab => \inst33|ALT_INV_Add0~0_combout\,
	datac => \inst14|ALT_INV_valor_interno\(13),
	datad => \inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\,
	datae => \inst33|ALT_INV_opres[13]~30_combout\,
	dataf => \inst33|ALT_INV_Add0~54_sumout\,
	combout => \inst33|opres[13]~31_combout\);

-- Location: LABCELL_X79_Y32_N6
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

-- Location: FF_X78_Y32_N35
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

-- Location: LABCELL_X75_Y34_N51
\inst202|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux19~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a12\ & ( (!\inst14|valor_interno[15]~0_combout\ & (((\inst700666|ACCB|valor_interno\(12) & \inst700666|inst|Equal0~2_combout\)) # (\inst14|valor_interno[15]~1_combout\))) ) ) # ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a12\ & ( (!\inst14|valor_interno[15]~1_combout\ & (!\inst14|valor_interno[15]~0_combout\ & (\inst700666|ACCB|valor_interno\(12) & \inst700666|inst|Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100001000100010011000100010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[15]~1_combout\,
	datab => \inst14|ALT_INV_valor_interno[15]~0_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(12),
	datad => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	combout => \inst202|Mux19~0_combout\);

-- Location: FF_X75_Y34_N52
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
	sclr => \inst14|valor_interno[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(12));

-- Location: FF_X80_Y34_N23
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(12));

-- Location: LABCELL_X80_Y34_N24
\inst33|opres[12]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~8_combout\ = ( \inst33|opres[8]~4_combout\ & ( \inst33|opres[8]~5_combout\ & ( !\inst14|valor_interno\(12) $ (\inst700|valor_interno\(12)) ) ) ) # ( !\inst33|opres[8]~4_combout\ & ( \inst33|opres[8]~5_combout\ & ( 
-- !\inst700|valor_interno\(11) ) ) ) # ( \inst33|opres[8]~4_combout\ & ( !\inst33|opres[8]~5_combout\ & ( (!\inst14|valor_interno\(12) & !\inst700|valor_interno\(12)) ) ) ) # ( !\inst33|opres[8]~4_combout\ & ( !\inst33|opres[8]~5_combout\ & ( 
-- !\inst700|valor_interno[13]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101000001010000011001100110011001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(12),
	datab => \inst700|ALT_INV_valor_interno\(11),
	datac => \inst700|ALT_INV_valor_interno\(12),
	datad => \inst700|ALT_INV_valor_interno[13]~DUPLICATE_q\,
	datae => \inst33|ALT_INV_opres[8]~4_combout\,
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[12]~8_combout\);

-- Location: LABCELL_X79_Y34_N48
\inst33|opres[12]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~9_combout\ = ( \inst14|valor_interno\(12) & ( \inst33|Add0~10_sumout\ & ( ((!\inst33|Equal0~0_combout\ & (!\inst33|opres[12]~8_combout\)) # (\inst33|Equal0~0_combout\ & ((\inst700|valor_interno[12]~DUPLICATE_q\)))) # 
-- (\inst33|Add0~0_combout\) ) ) ) # ( !\inst14|valor_interno\(12) & ( \inst33|Add0~10_sumout\ & ( ((!\inst33|Equal0~0_combout\ & !\inst33|opres[12]~8_combout\)) # (\inst33|Add0~0_combout\) ) ) ) # ( \inst14|valor_interno\(12) & ( !\inst33|Add0~10_sumout\ & 
-- ( (!\inst33|Add0~0_combout\ & ((!\inst33|Equal0~0_combout\ & (!\inst33|opres[12]~8_combout\)) # (\inst33|Equal0~0_combout\ & ((\inst700|valor_interno[12]~DUPLICATE_q\))))) ) ) ) # ( !\inst14|valor_interno\(12) & ( !\inst33|Add0~10_sumout\ & ( 
-- (!\inst33|Equal0~0_combout\ & (!\inst33|Add0~0_combout\ & !\inst33|opres[12]~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001100010010110011101100111011001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datab => \inst33|ALT_INV_Add0~0_combout\,
	datac => \inst33|ALT_INV_opres[12]~8_combout\,
	datad => \inst700|ALT_INV_valor_interno[12]~DUPLICATE_q\,
	datae => \inst14|ALT_INV_valor_interno\(12),
	dataf => \inst33|ALT_INV_Add0~10_sumout\,
	combout => \inst33|opres[12]~9_combout\);

-- Location: LABCELL_X79_Y34_N45
\inst33|opres[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(12) = ( \inst33|opres[12]~9_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(12)) ) ) # ( !\inst33|opres[12]~9_combout\ & ( (\inst33|opres\(12) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres\(12),
	datad => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[12]~9_combout\,
	combout => \inst33|opres\(12));

-- Location: FF_X78_Y32_N53
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

-- Location: LABCELL_X75_Y34_N24
\inst202|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux20~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a11\ & ( (!\inst14|valor_interno[15]~0_combout\ & (((\inst700666|ACCB|valor_interno\(11) & \inst700666|inst|Equal0~2_combout\)) # (\inst14|valor_interno[15]~1_combout\))) ) ) # ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a11\ & ( (!\inst14|valor_interno[15]~1_combout\ & (!\inst14|valor_interno[15]~0_combout\ & (\inst700666|ACCB|valor_interno\(11) & \inst700666|inst|Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100001000100010011000100010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[15]~1_combout\,
	datab => \inst14|ALT_INV_valor_interno[15]~0_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(11),
	datad => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \inst202|Mux20~0_combout\);

-- Location: FF_X75_Y34_N25
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
	sclr => \inst14|valor_interno[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(11));

-- Location: MLABCELL_X78_Y33_N54
\inst33|opres[11]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~28_combout\ = ( \inst700|valor_interno[10]~DUPLICATE_q\ & ( \inst33|opres[8]~5_combout\ & ( (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(11) $ (\inst14|valor_interno\(11)))) ) ) ) # ( !\inst700|valor_interno[10]~DUPLICATE_q\ 
-- & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\) # (!\inst700|valor_interno\(11) $ (\inst14|valor_interno\(11))) ) ) ) # ( \inst700|valor_interno[10]~DUPLICATE_q\ & ( !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & 
-- (((!\inst700|valor_interno[12]~DUPLICATE_q\)))) # (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(11) & (!\inst14|valor_interno\(11)))) ) ) ) # ( !\inst700|valor_interno[10]~DUPLICATE_q\ & ( !\inst33|opres[8]~5_combout\ & ( 
-- (!\inst33|opres[8]~4_combout\ & (((!\inst700|valor_interno[12]~DUPLICATE_q\)))) # (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(11) & (!\inst14|valor_interno\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000001000111110000000100011111001111110010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(11),
	datab => \inst14|ALT_INV_valor_interno\(11),
	datac => \inst33|ALT_INV_opres[8]~4_combout\,
	datad => \inst700|ALT_INV_valor_interno[12]~DUPLICATE_q\,
	datae => \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[11]~28_combout\);

-- Location: MLABCELL_X78_Y32_N24
\inst33|opres[11]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~29_combout\ = ( \inst33|Equal0~0_combout\ & ( \inst33|Add0~50_sumout\ & ( ((\inst14|valor_interno\(11) & \inst700|valor_interno\(11))) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Equal0~0_combout\ & ( \inst33|Add0~50_sumout\ & ( 
-- (!\inst33|opres[11]~28_combout\) # (\inst33|Add0~0_combout\) ) ) ) # ( \inst33|Equal0~0_combout\ & ( !\inst33|Add0~50_sumout\ & ( (\inst14|valor_interno\(11) & (!\inst33|Add0~0_combout\ & \inst700|valor_interno\(11))) ) ) ) # ( !\inst33|Equal0~0_combout\ 
-- & ( !\inst33|Add0~50_sumout\ & ( (!\inst33|Add0~0_combout\ & !\inst33|opres[11]~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000100010011110011111100110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(11),
	datab => \inst33|ALT_INV_Add0~0_combout\,
	datac => \inst33|ALT_INV_opres[11]~28_combout\,
	datad => \inst700|ALT_INV_valor_interno\(11),
	datae => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_Add0~50_sumout\,
	combout => \inst33|opres[11]~29_combout\);

-- Location: MLABCELL_X78_Y32_N45
\inst33|opres[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(11) = ( \inst33|opres[11]~29_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(11)) ) ) # ( !\inst33|opres[11]~29_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres[15]~3_combout\,
	datad => \inst33|ALT_INV_opres\(11),
	dataf => \inst33|ALT_INV_opres[11]~29_combout\,
	combout => \inst33|opres\(11));

-- Location: FF_X78_Y32_N14
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

-- Location: FF_X77_Y33_N16
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

-- Location: LABCELL_X79_Y33_N51
\inst202|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux4~0_combout\ = ( \inst700666|ACCB|valor_interno\(11) & ( \inst4|selregr\(2) & ( (!\inst49|PCWrite~1_combout\ & \inst4|selregr\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst49|ALT_INV_PCWrite~1_combout\,
	datad => \inst4|ALT_INV_selregr\(0),
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(11),
	dataf => \inst4|ALT_INV_selregr\(2),
	combout => \inst202|Mux4~0_combout\);

-- Location: FF_X79_Y33_N32
\inst700666|ACCA|valor_interno[11]~DUPLICATE\ : dffeas
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
	q => \inst700666|ACCA|valor_interno[11]~DUPLICATE_q\);

-- Location: FF_X79_Y33_N52
\inst700|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux4~0_combout\,
	asdata => \inst700666|ACCA|valor_interno[11]~DUPLICATE_q\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(11));

-- Location: FF_X75_Y34_N47
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
	sclr => \inst14|valor_interno[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(10));

-- Location: LABCELL_X79_Y32_N48
\inst33|opres[10]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~26_combout\ = ( \inst14|valor_interno\(10) & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & ((!\inst700|valor_interno\(9)))) # (\inst33|opres[8]~4_combout\ & (\inst700|valor_interno\(10))) ) ) ) # ( 
-- !\inst14|valor_interno\(10) & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & ((!\inst700|valor_interno\(9)))) # (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(10))) ) ) ) # ( \inst14|valor_interno\(10) & ( 
-- !\inst33|opres[8]~5_combout\ & ( (!\inst700|valor_interno\(11) & !\inst33|opres[8]~4_combout\) ) ) ) # ( !\inst14|valor_interno\(10) & ( !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & ((!\inst700|valor_interno\(11)))) # 
-- (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010101010110011000000000011110000101010101111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(10),
	datab => \inst700|ALT_INV_valor_interno\(11),
	datac => \inst700|ALT_INV_valor_interno\(9),
	datad => \inst33|ALT_INV_opres[8]~4_combout\,
	datae => \inst14|ALT_INV_valor_interno\(10),
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[10]~26_combout\);

-- Location: LABCELL_X79_Y32_N12
\inst33|opres[10]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~27_combout\ = ( \inst700|valor_interno\(10) & ( \inst33|Add0~46_sumout\ & ( ((!\inst33|Equal0~0_combout\ & (!\inst33|opres[10]~26_combout\)) # (\inst33|Equal0~0_combout\ & ((\inst14|valor_interno\(10))))) # (\inst33|Add0~0_combout\) ) ) 
-- ) # ( !\inst700|valor_interno\(10) & ( \inst33|Add0~46_sumout\ & ( ((!\inst33|Equal0~0_combout\ & !\inst33|opres[10]~26_combout\)) # (\inst33|Add0~0_combout\) ) ) ) # ( \inst700|valor_interno\(10) & ( !\inst33|Add0~46_sumout\ & ( (!\inst33|Add0~0_combout\ 
-- & ((!\inst33|Equal0~0_combout\ & (!\inst33|opres[10]~26_combout\)) # (\inst33|Equal0~0_combout\ & ((\inst14|valor_interno\(10)))))) ) ) ) # ( !\inst700|valor_interno\(10) & ( !\inst33|Add0~46_sumout\ & ( (!\inst33|Equal0~0_combout\ & 
-- (!\inst33|Add0~0_combout\ & !\inst33|opres[10]~26_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001100010010110011101100111011001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datab => \inst33|ALT_INV_Add0~0_combout\,
	datac => \inst33|ALT_INV_opres[10]~26_combout\,
	datad => \inst14|ALT_INV_valor_interno\(10),
	datae => \inst700|ALT_INV_valor_interno\(10),
	dataf => \inst33|ALT_INV_Add0~46_sumout\,
	combout => \inst33|opres[10]~27_combout\);

-- Location: LABCELL_X79_Y32_N9
\inst33|opres[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(10) = ( \inst33|opres[10]~27_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(10)) ) ) # ( !\inst33|opres[10]~27_combout\ & ( (\inst33|opres\(10) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres\(10),
	datad => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[10]~27_combout\,
	combout => \inst33|opres\(10));

-- Location: FF_X79_Y32_N35
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

-- Location: LABCELL_X75_Y34_N36
\inst202|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux22~0_combout\ = ( \inst700666|inst|Equal0~2_combout\ & ( \inst41|mem_rtl_0|auto_generated|ram_block1a9\ & ( (!\inst14|valor_interno[15]~0_combout\ & ((\inst700666|ACCB|valor_interno\(9)) # (\inst14|valor_interno[15]~1_combout\))) ) ) ) # ( 
-- !\inst700666|inst|Equal0~2_combout\ & ( \inst41|mem_rtl_0|auto_generated|ram_block1a9\ & ( (\inst14|valor_interno[15]~1_combout\ & !\inst14|valor_interno[15]~0_combout\) ) ) ) # ( \inst700666|inst|Equal0~2_combout\ & ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a9\ & ( (!\inst14|valor_interno[15]~1_combout\ & (\inst700666|ACCB|valor_interno\(9) & !\inst14|valor_interno[15]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000001010000010100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[15]~1_combout\,
	datab => \inst700666|ACCB|ALT_INV_valor_interno\(9),
	datac => \inst14|ALT_INV_valor_interno[15]~0_combout\,
	datae => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \inst202|Mux22~0_combout\);

-- Location: FF_X75_Y34_N37
\inst14|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux22~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(9));

-- Location: MLABCELL_X78_Y32_N48
\inst33|opres[9]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~24_combout\ = ( \inst33|opres[8]~5_combout\ & ( \inst700|valor_interno\(10) & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(8))) # (\inst33|opres[8]~4_combout\ & ((!\inst700|valor_interno\(9) $ (\inst14|valor_interno\(9))))) 
-- ) ) ) # ( !\inst33|opres[8]~5_combout\ & ( \inst700|valor_interno\(10) & ( (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(9) & !\inst14|valor_interno\(9))) ) ) ) # ( \inst33|opres[8]~5_combout\ & ( !\inst700|valor_interno\(10) & ( 
-- (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(8))) # (\inst33|opres[8]~4_combout\ & ((!\inst700|valor_interno\(9) $ (\inst14|valor_interno\(9))))) ) ) ) # ( !\inst33|opres[8]~5_combout\ & ( !\inst700|valor_interno\(10) & ( 
-- (!\inst33|opres[8]~4_combout\) # ((!\inst700|valor_interno\(9) & !\inst14|valor_interno\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010110110001000110101010000000000001101100010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[8]~4_combout\,
	datab => \inst700|ALT_INV_valor_interno\(8),
	datac => \inst700|ALT_INV_valor_interno\(9),
	datad => \inst14|ALT_INV_valor_interno\(9),
	datae => \inst33|ALT_INV_opres[8]~5_combout\,
	dataf => \inst700|ALT_INV_valor_interno\(10),
	combout => \inst33|opres[9]~24_combout\);

-- Location: MLABCELL_X78_Y32_N30
\inst33|opres[9]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~25_combout\ = ( \inst33|Equal0~0_combout\ & ( \inst33|Add0~42_sumout\ & ( ((\inst700|valor_interno\(9) & \inst14|valor_interno\(9))) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Equal0~0_combout\ & ( \inst33|Add0~42_sumout\ & ( 
-- (!\inst33|opres[9]~24_combout\) # (\inst33|Add0~0_combout\) ) ) ) # ( \inst33|Equal0~0_combout\ & ( !\inst33|Add0~42_sumout\ & ( (!\inst33|Add0~0_combout\ & (\inst700|valor_interno\(9) & \inst14|valor_interno\(9))) ) ) ) # ( !\inst33|Equal0~0_combout\ & ( 
-- !\inst33|Add0~42_sumout\ & ( (!\inst33|opres[9]~24_combout\ & !\inst33|Add0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000110010111011101110110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[9]~24_combout\,
	datab => \inst33|ALT_INV_Add0~0_combout\,
	datac => \inst700|ALT_INV_valor_interno\(9),
	datad => \inst14|ALT_INV_valor_interno\(9),
	datae => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_Add0~42_sumout\,
	combout => \inst33|opres[9]~25_combout\);

-- Location: MLABCELL_X78_Y32_N15
\inst33|opres[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(9) = ( \inst33|opres[15]~3_combout\ & ( \inst33|opres\(9) ) ) # ( !\inst33|opres[15]~3_combout\ & ( \inst33|opres[9]~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres\(9),
	datac => \inst33|ALT_INV_opres[9]~25_combout\,
	datae => \inst33|ALT_INV_opres[15]~3_combout\,
	combout => \inst33|opres\(9));

-- Location: FF_X79_Y32_N20
\inst24|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(9),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(9));

-- Location: LABCELL_X75_Y34_N9
\inst202|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux23~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a8\ & ( \inst700666|ACCB|valor_interno\(8) & ( (!\inst14|valor_interno[15]~0_combout\ & ((\inst14|valor_interno[15]~1_combout\) # (\inst700666|inst|Equal0~2_combout\))) ) ) ) # ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a8\ & ( \inst700666|ACCB|valor_interno\(8) & ( (!\inst14|valor_interno[15]~0_combout\ & (\inst700666|inst|Equal0~2_combout\ & !\inst14|valor_interno[15]~1_combout\)) ) ) ) # ( 
-- \inst41|mem_rtl_0|auto_generated|ram_block1a8\ & ( !\inst700666|ACCB|valor_interno\(8) & ( (!\inst14|valor_interno[15]~0_combout\ & \inst14|valor_interno[15]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000001010000000000000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[15]~0_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datad => \inst14|ALT_INV_valor_interno[15]~1_combout\,
	datae => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(8),
	combout => \inst202|Mux23~0_combout\);

-- Location: FF_X75_Y34_N11
\inst14|valor_interno[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux23~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[8]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y33_N51
\inst33|opres[8]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~22_combout\ = ( \inst700|valor_interno\(7) & ( \inst33|opres[8]~5_combout\ & ( (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[8]~DUPLICATE_q\ $ (\inst14|valor_interno[8]~DUPLICATE_q\))) ) ) ) # ( !\inst700|valor_interno\(7) & ( 
-- \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\) # (!\inst700|valor_interno[8]~DUPLICATE_q\ $ (\inst14|valor_interno[8]~DUPLICATE_q\)) ) ) ) # ( \inst700|valor_interno\(7) & ( !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & 
-- (((!\inst700|valor_interno\(9))))) # (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[8]~DUPLICATE_q\ & (!\inst14|valor_interno[8]~DUPLICATE_q\))) ) ) ) # ( !\inst700|valor_interno\(7) & ( !\inst33|opres[8]~5_combout\ & ( 
-- (!\inst33|opres[8]~4_combout\ & (((!\inst700|valor_interno\(9))))) # (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[8]~DUPLICATE_q\ & (!\inst14|valor_interno[8]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000111010100100000011101011111010110100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[8]~4_combout\,
	datab => \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	datac => \inst14|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno\(9),
	datae => \inst700|ALT_INV_valor_interno\(7),
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[8]~22_combout\);

-- Location: MLABCELL_X78_Y33_N18
\inst33|opres[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~23_combout\ = ( \inst33|Add0~0_combout\ & ( \inst33|Add0~38_sumout\ ) ) # ( !\inst33|Add0~0_combout\ & ( \inst33|Add0~38_sumout\ & ( (!\inst33|Equal0~0_combout\ & (!\inst33|opres[8]~22_combout\)) # (\inst33|Equal0~0_combout\ & 
-- (((\inst700|valor_interno[8]~DUPLICATE_q\ & \inst14|valor_interno[8]~DUPLICATE_q\)))) ) ) ) # ( !\inst33|Add0~0_combout\ & ( !\inst33|Add0~38_sumout\ & ( (!\inst33|Equal0~0_combout\ & (!\inst33|opres[8]~22_combout\)) # (\inst33|Equal0~0_combout\ & 
-- (((\inst700|valor_interno[8]~DUPLICATE_q\ & \inst14|valor_interno[8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100011000000000000000010100000101000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[8]~22_combout\,
	datab => \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	datac => \inst33|ALT_INV_Equal0~0_combout\,
	datad => \inst14|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	datae => \inst33|ALT_INV_Add0~0_combout\,
	dataf => \inst33|ALT_INV_Add0~38_sumout\,
	combout => \inst33|opres[8]~23_combout\);

-- Location: MLABCELL_X78_Y33_N39
\inst33|opres[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(8) = ( \inst33|opres[8]~23_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(8)) ) ) # ( !\inst33|opres[8]~23_combout\ & ( (\inst33|opres\(8) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres\(8),
	datad => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[8]~23_combout\,
	combout => \inst33|opres\(8));

-- Location: FF_X78_Y33_N29
\inst24|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(8),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(8));

-- Location: LABCELL_X77_Y32_N33
\inst202|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux24~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a7\ & ( (\inst202|Mux25~0_combout\ & ((!\inst14|valor_interno[7]~3_combout\) # (\inst700666|ACCB|valor_interno\(7)))) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a7\ & ( 
-- (\inst14|valor_interno[7]~3_combout\ & (\inst700666|ACCB|valor_interno\(7) & \inst202|Mux25~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|ALT_INV_valor_interno[7]~3_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(7),
	datad => \inst202|ALT_INV_Mux25~0_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \inst202|Mux24~0_combout\);

-- Location: FF_X77_Y34_N50
\inst14|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux24~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(7));

-- Location: LABCELL_X77_Y34_N12
\inst33|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~77_combout\ = ( \inst16|selop\(0) & ( \inst14|valor_interno\(7) ) ) # ( !\inst16|selop\(0) & ( !\inst14|valor_interno\(7) $ (((!\inst16|selop\(1)) # (\inst16|selop\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011111100001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno\(7),
	datad => \inst16|ALT_INV_selop\(1),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Add0~77_combout\);

-- Location: MLABCELL_X78_Y33_N12
\inst33|opres[7]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~20_combout\ = ( \inst14|valor_interno\(7) & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(6))) # (\inst33|opres[8]~4_combout\ & ((\inst700|valor_interno\(7)))) ) ) ) # ( 
-- !\inst14|valor_interno\(7) & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(6))) # (\inst33|opres[8]~4_combout\ & ((!\inst700|valor_interno\(7)))) ) ) ) # ( \inst14|valor_interno\(7) & ( 
-- !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & !\inst700|valor_interno[8]~DUPLICATE_q\) ) ) ) # ( !\inst14|valor_interno\(7) & ( !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & 
-- ((!\inst700|valor_interno[8]~DUPLICATE_q\))) # (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001010000101010100000000011011000110110001000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[8]~4_combout\,
	datab => \inst700|ALT_INV_valor_interno\(6),
	datac => \inst700|ALT_INV_valor_interno\(7),
	datad => \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	datae => \inst14|ALT_INV_valor_interno\(7),
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[7]~20_combout\);

-- Location: MLABCELL_X78_Y33_N24
\inst33|opres[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~21_combout\ = ( \inst14|valor_interno\(7) & ( \inst33|Add0~0_combout\ & ( \inst33|Add0~34_sumout\ ) ) ) # ( !\inst14|valor_interno\(7) & ( \inst33|Add0~0_combout\ & ( \inst33|Add0~34_sumout\ ) ) ) # ( \inst14|valor_interno\(7) & ( 
-- !\inst33|Add0~0_combout\ & ( (!\inst33|Equal0~0_combout\ & (!\inst33|opres[7]~20_combout\)) # (\inst33|Equal0~0_combout\ & ((\inst700|valor_interno\(7)))) ) ) ) # ( !\inst14|valor_interno\(7) & ( !\inst33|Add0~0_combout\ & ( (!\inst33|opres[7]~20_combout\ 
-- & !\inst33|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Add0~34_sumout\,
	datab => \inst33|ALT_INV_opres[7]~20_combout\,
	datac => \inst33|ALT_INV_Equal0~0_combout\,
	datad => \inst700|ALT_INV_valor_interno\(7),
	datae => \inst14|ALT_INV_valor_interno\(7),
	dataf => \inst33|ALT_INV_Add0~0_combout\,
	combout => \inst33|opres[7]~21_combout\);

-- Location: MLABCELL_X78_Y33_N0
\inst33|opres[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(7) = ( \inst33|opres[15]~3_combout\ & ( \inst33|opres[7]~21_combout\ & ( \inst33|opres\(7) ) ) ) # ( !\inst33|opres[15]~3_combout\ & ( \inst33|opres[7]~21_combout\ ) ) # ( \inst33|opres[15]~3_combout\ & ( !\inst33|opres[7]~21_combout\ & ( 
-- \inst33|opres\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres\(7),
	datae => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[7]~21_combout\,
	combout => \inst33|opres\(7));

-- Location: FF_X79_Y32_N8
\inst24|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(7),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(7));

-- Location: LABCELL_X77_Y32_N0
\inst202|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux25~1_combout\ = ( \inst700666|ACCB|valor_interno\(6) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a6\ & ( \inst202|Mux25~0_combout\ ) ) ) # ( !\inst700666|ACCB|valor_interno\(6) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a6\ & ( 
-- (!\inst14|valor_interno[7]~3_combout\ & \inst202|Mux25~0_combout\) ) ) ) # ( \inst700666|ACCB|valor_interno\(6) & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a6\ & ( (\inst14|valor_interno[7]~3_combout\ & \inst202|Mux25~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100001100000011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|ALT_INV_valor_interno[7]~3_combout\,
	datac => \inst202|ALT_INV_Mux25~0_combout\,
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(6),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \inst202|Mux25~1_combout\);

-- Location: FF_X77_Y34_N41
\inst14|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux25~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(6));

-- Location: MLABCELL_X78_Y33_N30
\inst33|opres[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~6_combout\ = ( \inst700|valor_interno\(7) & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (((!\inst700|valor_interno\(5))))) # (\inst33|opres[8]~4_combout\ & (!\inst14|valor_interno\(6) $ 
-- (((\inst700|valor_interno\(6)))))) ) ) ) # ( !\inst700|valor_interno\(7) & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (((!\inst700|valor_interno\(5))))) # (\inst33|opres[8]~4_combout\ & (!\inst14|valor_interno\(6) $ 
-- (((\inst700|valor_interno\(6)))))) ) ) ) # ( \inst700|valor_interno\(7) & ( !\inst33|opres[8]~5_combout\ & ( (!\inst14|valor_interno\(6) & (\inst33|opres[8]~4_combout\ & !\inst700|valor_interno\(6))) ) ) ) # ( !\inst700|valor_interno\(7) & ( 
-- !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\) # ((!\inst14|valor_interno\(6) & !\inst700|valor_interno\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011110000000010100000000011001010110001011100101011000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(6),
	datab => \inst700|ALT_INV_valor_interno\(5),
	datac => \inst33|ALT_INV_opres[8]~4_combout\,
	datad => \inst700|ALT_INV_valor_interno\(6),
	datae => \inst700|ALT_INV_valor_interno\(7),
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[6]~6_combout\);

-- Location: LABCELL_X77_Y32_N42
\inst33|opres[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~7_combout\ = ( \inst33|Add0~6_sumout\ & ( \inst33|opres[6]~6_combout\ & ( ((\inst33|Equal0~0_combout\ & (\inst700|valor_interno\(6) & \inst14|valor_interno\(6)))) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Add0~6_sumout\ & ( 
-- \inst33|opres[6]~6_combout\ & ( (!\inst33|Add0~0_combout\ & (\inst33|Equal0~0_combout\ & (\inst700|valor_interno\(6) & \inst14|valor_interno\(6)))) ) ) ) # ( \inst33|Add0~6_sumout\ & ( !\inst33|opres[6]~6_combout\ & ( ((!\inst33|Equal0~0_combout\) # 
-- ((\inst700|valor_interno\(6) & \inst14|valor_interno\(6)))) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Add0~6_sumout\ & ( !\inst33|opres[6]~6_combout\ & ( (!\inst33|Add0~0_combout\ & ((!\inst33|Equal0~0_combout\) # ((\inst700|valor_interno\(6) & 
-- \inst14|valor_interno\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001010110111011101111100000000000000100101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Add0~0_combout\,
	datab => \inst33|ALT_INV_Equal0~0_combout\,
	datac => \inst700|ALT_INV_valor_interno\(6),
	datad => \inst14|ALT_INV_valor_interno\(6),
	datae => \inst33|ALT_INV_Add0~6_sumout\,
	dataf => \inst33|ALT_INV_opres[6]~6_combout\,
	combout => \inst33|opres[6]~7_combout\);

-- Location: LABCELL_X77_Y32_N48
\inst33|opres[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(6) = ( \inst33|opres[15]~3_combout\ & ( \inst33|opres[6]~7_combout\ & ( \inst33|opres\(6) ) ) ) # ( !\inst33|opres[15]~3_combout\ & ( \inst33|opres[6]~7_combout\ ) ) # ( \inst33|opres[15]~3_combout\ & ( !\inst33|opres[6]~7_combout\ & ( 
-- \inst33|opres\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres\(6),
	datae => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[6]~7_combout\,
	combout => \inst33|opres\(6));

-- Location: FF_X77_Y32_N5
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

-- Location: FF_X75_Y32_N35
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

-- Location: LABCELL_X79_Y33_N12
\inst202|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux9~0_combout\ = ( \inst700666|ACCB|valor_interno\(6) & ( (\inst4|selregr\(0) & (!\inst49|PCWrite~1_combout\ & \inst4|selregr\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~1_combout\,
	datad => \inst4|ALT_INV_selregr\(2),
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(6),
	combout => \inst202|Mux9~0_combout\);

-- Location: FF_X77_Y32_N55
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

-- Location: FF_X79_Y33_N14
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(6));

-- Location: LABCELL_X79_Y32_N0
\inst33|opres[5]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~18_combout\ = ( \inst14|valor_interno\(5) & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[4]~DUPLICATE_q\)) # (\inst33|opres[8]~4_combout\ & ((\inst700|valor_interno\(5)))) ) ) ) # ( 
-- !\inst14|valor_interno\(5) & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[4]~DUPLICATE_q\)) # (\inst33|opres[8]~4_combout\ & ((!\inst700|valor_interno\(5)))) ) ) ) # ( \inst14|valor_interno\(5) & ( 
-- !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & !\inst700|valor_interno\(6)) ) ) ) # ( !\inst14|valor_interno\(5) & ( !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno\(6))) # 
-- (\inst33|opres[8]~4_combout\ & ((!\inst700|valor_interno\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111000000110000001100000010111011100010001000100010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datab => \inst33|ALT_INV_opres[8]~4_combout\,
	datac => \inst700|ALT_INV_valor_interno\(6),
	datad => \inst700|ALT_INV_valor_interno\(5),
	datae => \inst14|ALT_INV_valor_interno\(5),
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[5]~18_combout\);

-- Location: MLABCELL_X78_Y32_N36
\inst33|opres[5]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~19_combout\ = ( \inst33|Equal0~0_combout\ & ( \inst33|Add0~30_sumout\ & ( ((\inst700|valor_interno\(5) & \inst14|valor_interno\(5))) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Equal0~0_combout\ & ( \inst33|Add0~30_sumout\ & ( 
-- (!\inst33|opres[5]~18_combout\) # (\inst33|Add0~0_combout\) ) ) ) # ( \inst33|Equal0~0_combout\ & ( !\inst33|Add0~30_sumout\ & ( (\inst700|valor_interno\(5) & (\inst14|valor_interno\(5) & !\inst33|Add0~0_combout\)) ) ) ) # ( !\inst33|Equal0~0_combout\ & ( 
-- !\inst33|Add0~30_sumout\ & ( (!\inst33|opres[5]~18_combout\ & !\inst33|Add0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000110000000010101010111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[5]~18_combout\,
	datab => \inst700|ALT_INV_valor_interno\(5),
	datac => \inst14|ALT_INV_valor_interno\(5),
	datad => \inst33|ALT_INV_Add0~0_combout\,
	datae => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_Add0~30_sumout\,
	combout => \inst33|opres[5]~19_combout\);

-- Location: MLABCELL_X78_Y32_N21
\inst33|opres[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(5) = ( \inst33|opres[5]~19_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(5)) ) ) # ( !\inst33|opres[5]~19_combout\ & ( (\inst33|opres\(5) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres\(5),
	datad => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[5]~19_combout\,
	combout => \inst33|opres\(5));

-- Location: FF_X78_Y32_N41
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

-- Location: FF_X77_Y33_N23
\inst700666|ACCB|valor_interno[5]\ : dffeas
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
	ena => \inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(5));

-- Location: LABCELL_X75_Y32_N15
\inst11|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~21_sumout\ = SUM(( !\inst45|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) + ( (\inst700666|inst|Equal0~2_combout\ & (!\inst700666|inst|Equal0~3_combout\ & (!\inst700666|inst|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(5)))) 
-- ) + ( \inst11|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~3_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datad => \inst45|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(5),
	cin => \inst11|Add0~18\,
	sumout => \inst11|Add0~21_sumout\);

-- Location: LABCELL_X73_Y32_N6
\inst15|valor_interno[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|valor_interno[5]~feeder_combout\ = ( \inst11|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst11|ALT_INV_Add0~21_sumout\,
	combout => \inst15|valor_interno[5]~feeder_combout\);

-- Location: LABCELL_X74_Y32_N45
\inst10|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~2_combout\ = ( \inst23|valor_interno\(5) & ( ((!\inst4|seldir\(0)) # (\inst107|seldirw\(1))) # (\inst700666|inst|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datab => \inst4|ALT_INV_seldir\(0),
	datad => \inst107|ALT_INV_seldirw\(1),
	dataf => \inst23|ALT_INV_valor_interno\(5),
	combout => \inst10|Mux10~2_combout\);

-- Location: FF_X73_Y32_N7
\inst15|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst15|valor_interno[5]~feeder_combout\,
	asdata => \inst10|Mux10~2_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(5));

-- Location: FF_X75_Y32_N47
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

-- Location: LABCELL_X75_Y32_N45
\inst10|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~1_combout\ = ( \inst11|Add0~21_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((\inst107|seldirw\(1) & \inst23|valor_interno\(5))) ) ) # ( !\inst11|Add0~21_sumout\ & ( (\inst107|seldirw\(1) & \inst23|valor_interno\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111001100110111011100110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_seldirw\(1),
	datab => \inst10|ALT_INV_Mux10~0_combout\,
	datad => \inst23|ALT_INV_valor_interno\(5),
	dataf => \inst11|ALT_INV_Add0~21_sumout\,
	combout => \inst10|Mux10~1_combout\);

-- Location: LABCELL_X77_Y34_N27
\inst202|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux28~0_combout\ = ( \inst700666|ACCB|valor_interno\(3) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a3\ & ( (!\inst700666|inst|Equal0~1_combout\ & ((!\inst4|selsrc\(1) & (\inst700666|inst|Equal0~2_combout\ & \inst4|selsrc\(0))) # 
-- (\inst4|selsrc\(1) & ((!\inst4|selsrc\(0)))))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(3) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a3\ & ( (!\inst700666|inst|Equal0~1_combout\ & (\inst4|selsrc\(1) & !\inst4|selsrc\(0))) ) ) ) # ( 
-- \inst700666|ACCB|valor_interno\(3) & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a3\ & ( (!\inst700666|inst|Equal0~1_combout\ & (!\inst4|selsrc\(1) & (\inst700666|inst|Equal0~2_combout\ & \inst4|selsrc\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000100010000000000010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datad => \inst4|ALT_INV_selsrc\(0),
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(3),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \inst202|Mux28~0_combout\);

-- Location: FF_X77_Y34_N28
\inst14|valor_interno[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux28~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[3]~DUPLICATE_q\);

-- Location: FF_X80_Y34_N34
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[3]~DUPLICATE_q\);

-- Location: FF_X80_Y34_N1
\inst700|valor_interno[2]~DUPLICATE\ : dffeas
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[2]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y33_N6
\inst33|opres[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~14_combout\ = ( \inst700|valor_interno[3]~DUPLICATE_q\ & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[2]~DUPLICATE_q\)) # (\inst33|opres[8]~4_combout\ & 
-- ((\inst14|valor_interno[3]~DUPLICATE_q\))) ) ) ) # ( !\inst700|valor_interno[3]~DUPLICATE_q\ & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[2]~DUPLICATE_q\)) # (\inst33|opres[8]~4_combout\ & 
-- ((!\inst14|valor_interno[3]~DUPLICATE_q\))) ) ) ) # ( \inst700|valor_interno[3]~DUPLICATE_q\ & ( !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & !\inst700|valor_interno[4]~DUPLICATE_q\) ) ) ) # ( !\inst700|valor_interno[3]~DUPLICATE_q\ & 
-- ( !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[4]~DUPLICATE_q\)) # (\inst33|opres[8]~4_combout\ & ((!\inst14|valor_interno[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010110100000101000001010000011011101100010001000100011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[8]~4_combout\,
	datab => \inst700|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	datac => \inst700|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datad => \inst14|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datae => \inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[3]~14_combout\);

-- Location: MLABCELL_X78_Y32_N6
\inst33|opres[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~15_combout\ = ( \inst33|Equal0~0_combout\ & ( \inst33|Add0~0_combout\ & ( \inst33|Add0~22_sumout\ ) ) ) # ( !\inst33|Equal0~0_combout\ & ( \inst33|Add0~0_combout\ & ( \inst33|Add0~22_sumout\ ) ) ) # ( \inst33|Equal0~0_combout\ & ( 
-- !\inst33|Add0~0_combout\ & ( (\inst14|valor_interno[3]~DUPLICATE_q\ & \inst700|valor_interno[3]~DUPLICATE_q\) ) ) ) # ( !\inst33|Equal0~0_combout\ & ( !\inst33|Add0~0_combout\ & ( !\inst33|opres[3]~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000001010000010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datab => \inst33|ALT_INV_Add0~22_sumout\,
	datac => \inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datad => \inst33|ALT_INV_opres[3]~14_combout\,
	datae => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_Add0~0_combout\,
	combout => \inst33|opres[3]~15_combout\);

-- Location: MLABCELL_X78_Y32_N3
\inst33|opres[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(3) = ( \inst33|opres[3]~15_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(3)) ) ) # ( !\inst33|opres[3]~15_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres[15]~3_combout\,
	datad => \inst33|ALT_INV_opres\(3),
	dataf => \inst33|ALT_INV_opres[3]~15_combout\,
	combout => \inst33|opres\(3));

-- Location: FF_X78_Y32_N32
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

-- Location: FF_X75_Y32_N11
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

-- Location: LABCELL_X73_Y32_N33
\inst15|valor_interno[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|valor_interno[3]~feeder_combout\ = ( \inst11|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst11|ALT_INV_Add0~13_sumout\,
	combout => \inst15|valor_interno[3]~feeder_combout\);

-- Location: LABCELL_X74_Y32_N51
\inst10|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux12~1_combout\ = ( \inst107|seldirw\(1) & ( \inst700666|inst|Equal0~1_combout\ & ( \inst23|valor_interno\(3) ) ) ) # ( !\inst107|seldirw\(1) & ( \inst700666|inst|Equal0~1_combout\ & ( \inst23|valor_interno\(3) ) ) ) # ( \inst107|seldirw\(1) & ( 
-- !\inst700666|inst|Equal0~1_combout\ & ( \inst23|valor_interno\(3) ) ) ) # ( !\inst107|seldirw\(1) & ( !\inst700666|inst|Equal0~1_combout\ & ( (\inst23|valor_interno\(3) & !\inst4|seldir\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ALT_INV_valor_interno\(3),
	datac => \inst4|ALT_INV_seldir\(0),
	datae => \inst107|ALT_INV_seldirw\(1),
	dataf => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	combout => \inst10|Mux12~1_combout\);

-- Location: FF_X73_Y32_N35
\inst15|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst15|valor_interno[3]~feeder_combout\,
	asdata => \inst10|Mux12~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(3));

-- Location: FF_X75_Y32_N29
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

-- Location: LABCELL_X75_Y32_N27
\inst10|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux12~0_combout\ = ( \inst11|Add0~13_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((\inst107|seldirw\(1) & \inst23|valor_interno\(3))) ) ) # ( !\inst11|Add0~13_sumout\ & ( (\inst107|seldirw\(1) & \inst23|valor_interno\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111110000111101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_seldirw\(1),
	datac => \inst10|ALT_INV_Mux10~0_combout\,
	datad => \inst23|ALT_INV_valor_interno\(3),
	dataf => \inst11|ALT_INV_Add0~13_sumout\,
	combout => \inst10|Mux12~0_combout\);

-- Location: LABCELL_X77_Y34_N42
\inst202|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux30~0_combout\ = ( \inst8|valor_interno\(21) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( (!\inst14|valor_interno[3]~4_combout\ & (((\inst32|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) # 
-- (\inst14|valor_interno[3]~4_combout\ & ((!\inst32|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # ((\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(1))))) ) ) ) # ( !\inst8|valor_interno\(21) & ( 
-- \inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( (\inst14|valor_interno[3]~4_combout\ & ((!\inst32|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # ((\inst700666|inst|Equal0~2_combout\ & \inst700666|ACCB|valor_interno\(1))))) ) ) ) # ( 
-- \inst8|valor_interno\(21) & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( (\inst32|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst14|valor_interno[3]~4_combout\) # ((\inst700666|inst|Equal0~2_combout\ & 
-- \inst700666|ACCB|valor_interno\(1))))) ) ) ) # ( !\inst8|valor_interno\(21) & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( (\inst14|valor_interno[3]~4_combout\ & (\inst700666|inst|Equal0~2_combout\ & (\inst700666|ACCB|valor_interno\(1) & 
-- \inst32|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000001010101101010101000000010101010110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[3]~4_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(1),
	datad => \inst32|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|ALT_INV_valor_interno\(21),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \inst202|Mux30~0_combout\);

-- Location: FF_X77_Y34_N43
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

-- Location: FF_X80_Y34_N20
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(0));

-- Location: FF_X80_Y34_N41
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
	sclr => \inst700|valor_interno[2]~1_combout\,
	sload => \inst700|valor_interno[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(1));

-- Location: LABCELL_X80_Y34_N42
\inst33|opres[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~10_combout\ = ( \inst33|opres[8]~4_combout\ & ( \inst33|opres[8]~5_combout\ & ( !\inst14|valor_interno\(1) $ (\inst700|valor_interno\(1)) ) ) ) # ( !\inst33|opres[8]~4_combout\ & ( \inst33|opres[8]~5_combout\ & ( 
-- !\inst700|valor_interno\(0) ) ) ) # ( \inst33|opres[8]~4_combout\ & ( !\inst33|opres[8]~5_combout\ & ( (!\inst14|valor_interno\(1) & !\inst700|valor_interno\(1)) ) ) ) # ( !\inst33|opres[8]~4_combout\ & ( !\inst33|opres[8]~5_combout\ & ( 
-- !\inst700|valor_interno\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011000000000011110000111100001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(2),
	datab => \inst14|ALT_INV_valor_interno\(1),
	datac => \inst700|ALT_INV_valor_interno\(0),
	datad => \inst700|ALT_INV_valor_interno\(1),
	datae => \inst33|ALT_INV_opres[8]~4_combout\,
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[1]~10_combout\);

-- Location: LABCELL_X79_Y34_N18
\inst33|opres[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~11_combout\ = ( \inst700|valor_interno[1]~DUPLICATE_q\ & ( \inst33|Equal0~0_combout\ & ( (!\inst33|Add0~0_combout\ & (\inst14|valor_interno\(1))) # (\inst33|Add0~0_combout\ & ((\inst33|Add0~14_sumout\))) ) ) ) # ( 
-- !\inst700|valor_interno[1]~DUPLICATE_q\ & ( \inst33|Equal0~0_combout\ & ( (\inst33|Add0~0_combout\ & \inst33|Add0~14_sumout\) ) ) ) # ( \inst700|valor_interno[1]~DUPLICATE_q\ & ( !\inst33|Equal0~0_combout\ & ( (!\inst33|Add0~0_combout\ & 
-- (!\inst33|opres[1]~10_combout\)) # (\inst33|Add0~0_combout\ & ((\inst33|Add0~14_sumout\))) ) ) ) # ( !\inst700|valor_interno[1]~DUPLICATE_q\ & ( !\inst33|Equal0~0_combout\ & ( (!\inst33|Add0~0_combout\ & (!\inst33|opres[1]~10_combout\)) # 
-- (\inst33|Add0~0_combout\ & ((\inst33|Add0~14_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011011101100010001101110100000000010101010000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Add0~0_combout\,
	datab => \inst33|ALT_INV_opres[1]~10_combout\,
	datac => \inst14|ALT_INV_valor_interno\(1),
	datad => \inst33|ALT_INV_Add0~14_sumout\,
	datae => \inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	dataf => \inst33|ALT_INV_Equal0~0_combout\,
	combout => \inst33|opres[1]~11_combout\);

-- Location: LABCELL_X79_Y34_N42
\inst33|opres[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(1) = ( \inst33|opres[1]~11_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(1)) ) ) # ( !\inst33|opres[1]~11_combout\ & ( (\inst33|opres\(1) & \inst33|opres[15]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres\(1),
	datad => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[1]~11_combout\,
	combout => \inst33|opres\(1));

-- Location: FF_X78_Y32_N29
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

-- Location: FF_X75_Y32_N5
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

-- Location: LABCELL_X73_Y32_N57
\inst15|valor_interno[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|valor_interno[1]~feeder_combout\ = ( \inst11|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst11|ALT_INV_Add0~5_sumout\,
	combout => \inst15|valor_interno[1]~feeder_combout\);

-- Location: LABCELL_X74_Y32_N3
\inst10|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux14~1_combout\ = ( \inst700666|inst|Equal0~1_combout\ & ( \inst23|valor_interno\(1) ) ) # ( !\inst700666|inst|Equal0~1_combout\ & ( (!\inst107|seldirw\(1) & ((!\inst4|seldir\(0) & ((\inst23|valor_interno\(1)))) # (\inst4|seldir\(0) & 
-- (\inst8|valor_interno\(21))))) # (\inst107|seldirw\(1) & (((\inst23|valor_interno\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_seldirw\(1),
	datab => \inst4|ALT_INV_seldir\(0),
	datac => \inst8|ALT_INV_valor_interno\(21),
	datad => \inst23|ALT_INV_valor_interno\(1),
	dataf => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	combout => \inst10|Mux14~1_combout\);

-- Location: FF_X73_Y32_N58
\inst15|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst15|valor_interno[1]~feeder_combout\,
	asdata => \inst10|Mux14~1_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(1));

-- Location: FF_X74_Y32_N4
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

-- Location: LABCELL_X75_Y32_N33
\inst10|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux14~0_combout\ = ( \inst11|Add0~5_sumout\ & ( \inst700666|inst|Equal0~1_combout\ & ( (!\inst107|seldirw\(1)) # (\inst23|valor_interno\(1)) ) ) ) # ( !\inst11|Add0~5_sumout\ & ( \inst700666|inst|Equal0~1_combout\ & ( (\inst107|seldirw\(1) & 
-- \inst23|valor_interno\(1)) ) ) ) # ( \inst11|Add0~5_sumout\ & ( !\inst700666|inst|Equal0~1_combout\ & ( (!\inst107|seldirw\(1) & ((!\inst4|seldir\(0)) # ((\inst8|valor_interno\(21))))) # (\inst107|seldirw\(1) & (((\inst23|valor_interno\(1))))) ) ) ) # ( 
-- !\inst11|Add0~5_sumout\ & ( !\inst700666|inst|Equal0~1_combout\ & ( (!\inst107|seldirw\(1) & (\inst4|seldir\(0) & ((\inst8|valor_interno\(21))))) # (\inst107|seldirw\(1) & (((\inst23|valor_interno\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_seldirw\(1),
	datab => \inst4|ALT_INV_seldir\(0),
	datac => \inst23|ALT_INV_valor_interno\(1),
	datad => \inst8|ALT_INV_valor_interno\(21),
	datae => \inst11|ALT_INV_Add0~5_sumout\,
	dataf => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	combout => \inst10|Mux14~0_combout\);

-- Location: LABCELL_X77_Y32_N9
\inst202|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux29~0_combout\ = ( \inst4|selsrc\(1) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a2\ & ( (!\inst700666|inst|Equal0~1_combout\ & !\inst4|selsrc\(0)) ) ) ) # ( !\inst4|selsrc\(1) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a2\ & ( 
-- (!\inst700666|inst|Equal0~1_combout\ & (\inst700666|inst|Equal0~2_combout\ & (\inst4|selsrc\(0) & \inst700666|ACCB|valor_interno[2]~DUPLICATE_q\))) ) ) ) # ( !\inst4|selsrc\(1) & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a2\ & ( 
-- (!\inst700666|inst|Equal0~1_combout\ & (\inst700666|inst|Equal0~2_combout\ & (\inst4|selsrc\(0) & \inst700666|ACCB|valor_interno[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~1_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~2_combout\,
	datac => \inst4|ALT_INV_selsrc\(0),
	datad => \inst700666|ACCB|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	datae => \inst4|ALT_INV_selsrc\(1),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \inst202|Mux29~0_combout\);

-- Location: FF_X78_Y34_N2
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

-- Location: LABCELL_X79_Y34_N36
\inst33|opres[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~12_combout\ = ( \inst33|opres[8]~4_combout\ & ( \inst33|opres[8]~5_combout\ & ( !\inst14|valor_interno\(2) $ (\inst700|valor_interno[2]~DUPLICATE_q\) ) ) ) # ( !\inst33|opres[8]~4_combout\ & ( \inst33|opres[8]~5_combout\ & ( 
-- !\inst700|valor_interno[1]~DUPLICATE_q\ ) ) ) # ( \inst33|opres[8]~4_combout\ & ( !\inst33|opres[8]~5_combout\ & ( (!\inst14|valor_interno\(2) & !\inst700|valor_interno[2]~DUPLICATE_q\) ) ) ) # ( !\inst33|opres[8]~4_combout\ & ( 
-- !\inst33|opres[8]~5_combout\ & ( !\inst700|valor_interno[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100101000001010000011111111000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(2),
	datab => \inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datac => \inst700|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	datae => \inst33|ALT_INV_opres[8]~4_combout\,
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[2]~12_combout\);

-- Location: LABCELL_X79_Y34_N24
\inst33|opres[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~13_combout\ = ( \inst33|Add0~18_sumout\ & ( \inst33|Equal0~0_combout\ & ( ((\inst700|valor_interno[2]~DUPLICATE_q\ & \inst14|valor_interno\(2))) # (\inst33|Add0~0_combout\) ) ) ) # ( !\inst33|Add0~18_sumout\ & ( \inst33|Equal0~0_combout\ 
-- & ( (\inst700|valor_interno[2]~DUPLICATE_q\ & (!\inst33|Add0~0_combout\ & \inst14|valor_interno\(2))) ) ) ) # ( \inst33|Add0~18_sumout\ & ( !\inst33|Equal0~0_combout\ & ( (!\inst33|opres[2]~12_combout\) # (\inst33|Add0~0_combout\) ) ) ) # ( 
-- !\inst33|Add0~18_sumout\ & ( !\inst33|Equal0~0_combout\ & ( (!\inst33|opres[2]~12_combout\ & !\inst33|Add0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101011111010111100000000001100000000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[2]~12_combout\,
	datab => \inst700|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	datac => \inst33|ALT_INV_Add0~0_combout\,
	datad => \inst14|ALT_INV_valor_interno\(2),
	datae => \inst33|ALT_INV_Add0~18_sumout\,
	dataf => \inst33|ALT_INV_Equal0~0_combout\,
	combout => \inst33|opres[2]~13_combout\);

-- Location: LABCELL_X79_Y34_N3
\inst33|opres[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(2) = ( \inst33|opres[2]~13_combout\ & ( (!\inst33|opres[15]~3_combout\) # (\inst33|opres\(2)) ) ) # ( !\inst33|opres[2]~13_combout\ & ( (\inst33|opres[15]~3_combout\ & \inst33|opres\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[15]~3_combout\,
	datad => \inst33|ALT_INV_opres\(2),
	dataf => \inst33|ALT_INV_opres[2]~13_combout\,
	combout => \inst33|opres\(2));

-- Location: FF_X79_Y34_N5
\inst24|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst33|opres\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(2));

-- Location: FF_X75_Y33_N13
\inst34|valor_interno[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~combout\,
	d => \inst34|valor_interno[2]~feeder_combout\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno[2]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y33_N36
\inst7|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~5_sumout\ = SUM(( \inst34|valor_interno\(3) ) + ( GND ) + ( \inst7|Add0~10\ ))
-- \inst7|Add0~6\ = CARRY(( \inst34|valor_interno\(3) ) + ( GND ) + ( \inst7|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|ALT_INV_valor_interno\(3),
	cin => \inst7|Add0~10\,
	sumout => \inst7|Add0~5_sumout\,
	cout => \inst7|Add0~6\);

-- Location: LABCELL_X75_Y33_N54
\inst34|valor_interno[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[3]~feeder_combout\ = ( \inst7|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_Add0~5_sumout\,
	combout => \inst34|valor_interno[3]~feeder_combout\);

-- Location: FF_X75_Y33_N56
\inst34|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~combout\,
	d => \inst34|valor_interno[3]~feeder_combout\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(3));

-- Location: LABCELL_X74_Y33_N39
\inst7|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~17_sumout\ = SUM(( \inst34|valor_interno\(4) ) + ( GND ) + ( \inst7|Add0~6\ ))
-- \inst7|Add0~18\ = CARRY(( \inst34|valor_interno\(4) ) + ( GND ) + ( \inst7|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(4),
	cin => \inst7|Add0~6\,
	sumout => \inst7|Add0~17_sumout\,
	cout => \inst7|Add0~18\);

-- Location: LABCELL_X74_Y33_N42
\inst7|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~13_sumout\ = SUM(( \inst34|valor_interno\(5) ) + ( GND ) + ( \inst7|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|ALT_INV_valor_interno\(5),
	cin => \inst7|Add0~18\,
	sumout => \inst7|Add0~13_sumout\);

-- Location: LABCELL_X75_Y33_N15
\inst34|valor_interno[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[5]~feeder_combout\ = ( \inst7|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_Add0~13_sumout\,
	combout => \inst34|valor_interno[5]~feeder_combout\);

-- Location: FF_X75_Y33_N16
\inst34|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~combout\,
	d => \inst34|valor_interno[5]~feeder_combout\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(5));

-- Location: LABCELL_X74_Y33_N12
\inst1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = ( \inst34|valor_interno[0]~DUPLICATE_q\ & ( !\inst34|valor_interno\(3) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (\inst34|valor_interno\(1) & (!\inst34|valor_interno\(5) & !\inst34|valor_interno\(2)))) ) ) ) # ( 
-- !\inst34|valor_interno[0]~DUPLICATE_q\ & ( !\inst34|valor_interno\(3) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(5) & !\inst34|valor_interno\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno\(5),
	datad => \inst34|ALT_INV_valor_interno\(2),
	datae => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(3),
	combout => \inst1|Mux10~0_combout\);

-- Location: FF_X74_Y33_N13
\inst8|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux10~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(21));

-- Location: MLABCELL_X72_Y33_N45
\inst4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = ( !\inst8|valor_interno\(23) & ( (!\inst8|valor_interno\(21) & (\inst8|valor_interno\(16) & (!\inst8|valor_interno\(18) & !\inst8|valor_interno\(22)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(21),
	datab => \inst8|ALT_INV_valor_interno\(16),
	datac => \inst8|ALT_INV_valor_interno\(18),
	datad => \inst8|ALT_INV_valor_interno\(22),
	dataf => \inst8|ALT_INV_valor_interno\(23),
	combout => \inst4|Equal0~0_combout\);

-- Location: LABCELL_X71_Y33_N54
\inst4|selregr[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[3]~0_combout\ = ( !\inst4|Equal3~1_combout\ & ( \inst8|valor_interno\(20) & ( (!\inst8|valor_interno\(17)) # (!\inst4|Equal0~0_combout\) ) ) ) # ( !\inst4|Equal3~1_combout\ & ( !\inst8|valor_interno\(20) & ( (!\inst4|Equal0~0_combout\) # 
-- (\inst8|valor_interno\(17)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011000000000000000011111100111111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_valor_interno\(17),
	datac => \inst4|ALT_INV_Equal0~0_combout\,
	datae => \inst4|ALT_INV_Equal3~1_combout\,
	dataf => \inst8|ALT_INV_valor_interno\(20),
	combout => \inst4|selregr[3]~0_combout\);

-- Location: LABCELL_X71_Y33_N42
\inst4|comb~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~23_combout\ = ( \inst4|selfalgs[0]~0_combout\ & ( \inst4|Equal13~1_combout\ & ( (\inst4|Equal0~2_combout\) # (\inst4|Equal3~1_combout\) ) ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( \inst4|Equal13~1_combout\ & ( ((!\inst4|Equal11~0_combout\) # 
-- (\inst4|Equal0~2_combout\)) # (\inst4|Equal3~1_combout\) ) ) ) # ( \inst4|selfalgs[0]~0_combout\ & ( !\inst4|Equal13~1_combout\ & ( (\inst4|Equal0~2_combout\) # (\inst4|Equal3~1_combout\) ) ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( 
-- !\inst4|Equal13~1_combout\ & ( (!\inst4|selregr[3]~0_combout\ & (((\inst4|Equal0~2_combout\)) # (\inst4|Equal3~1_combout\))) # (\inst4|selregr[3]~0_combout\ & (\inst4|Equal11~0_combout\ & ((\inst4|Equal0~2_combout\) # (\inst4|Equal3~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001110101111001100111111111111110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[3]~0_combout\,
	datab => \inst4|ALT_INV_Equal3~1_combout\,
	datac => \inst4|ALT_INV_Equal11~0_combout\,
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	datae => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	dataf => \inst4|ALT_INV_Equal13~1_combout\,
	combout => \inst4|comb~23_combout\);

-- Location: LABCELL_X71_Y33_N36
\inst4|comb~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~22_combout\ = ( \inst4|selfalgs[0]~0_combout\ & ( \inst4|Equal13~1_combout\ & ( (!\inst4|Equal3~1_combout\ & !\inst4|Equal0~2_combout\) ) ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( \inst4|Equal13~1_combout\ & ( (!\inst4|Equal3~1_combout\ & 
-- (\inst4|Equal11~0_combout\ & !\inst4|Equal0~2_combout\)) ) ) ) # ( \inst4|selfalgs[0]~0_combout\ & ( !\inst4|Equal13~1_combout\ & ( (!\inst4|Equal3~1_combout\ & !\inst4|Equal0~2_combout\) ) ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( 
-- !\inst4|Equal13~1_combout\ & ( (!\inst4|Equal3~1_combout\ & (!\inst4|Equal0~2_combout\ & ((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000110011000000000000001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[3]~0_combout\,
	datab => \inst4|ALT_INV_Equal3~1_combout\,
	datac => \inst4|ALT_INV_Equal11~0_combout\,
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	datae => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	dataf => \inst4|ALT_INV_Equal13~1_combout\,
	combout => \inst4|comb~22_combout\);

-- Location: LABCELL_X71_Y33_N12
\inst4|selop[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop\(0) = ( \inst4|selop\(0) & ( !\inst4|comb~22_combout\ ) ) # ( !\inst4|selop\(0) & ( (\inst4|comb~23_combout\ & !\inst4|comb~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_comb~23_combout\,
	datac => \inst4|ALT_INV_comb~22_combout\,
	dataf => \inst4|ALT_INV_selop\(0),
	combout => \inst4|selop\(0));

-- Location: LABCELL_X75_Y33_N9
\inst31|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst4|selop\(0) & ( (!\inst4|selregr\(2) & ((!\inst700666|inst|Equal0~0_combout\) # ((!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & 
-- (((!\inst49|PCWrite~0_combout\ & !\inst4|selregr\(0))))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( \inst4|selop\(0) & ( (!\inst4|selregr\(2) & ((!\inst700666|inst|Equal0~0_combout\) # ((!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & 
-- (((!\inst49|PCWrite~0_combout\) # (\inst4|selregr\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100101011111111110010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst4|ALT_INV_selregr\(0),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_selop\(0),
	combout => \inst31|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X77_Y34_N38
\inst16|selop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst31|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(0));

-- Location: FF_X77_Y34_N25
\inst14|valor_interno[0]~DUPLICATE\ : dffeas
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
	q => \inst14|valor_interno[0]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y34_N57
\inst33|opres[0]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~34_combout\ = ( \inst14|valor_interno[0]~DUPLICATE_q\ & ( \inst16|selop\(2) & ( (!\inst16|selop\(1) & ((!\inst16|selop\(0)) # ((!\inst700|valor_interno\(0))))) # (\inst16|selop\(1) & (\inst16|selop\(0) & (\inst700|valor_interno\(1)))) ) ) 
-- ) # ( !\inst14|valor_interno[0]~DUPLICATE_q\ & ( \inst16|selop\(2) & ( (!\inst16|selop\(1) & (((\inst700|valor_interno\(0))))) # (\inst16|selop\(1) & (\inst16|selop\(0) & (\inst700|valor_interno\(1)))) ) ) ) # ( \inst14|valor_interno[0]~DUPLICATE_q\ & ( 
-- !\inst16|selop\(2) & ( (!\inst16|selop\(1) & (!\inst16|selop\(0) & (\inst700|valor_interno\(1)))) # (\inst16|selop\(1) & (\inst16|selop\(0) & ((\inst700|valor_interno\(0))))) ) ) ) # ( !\inst14|valor_interno[0]~DUPLICATE_q\ & ( !\inst16|selop\(2) & ( 
-- (!\inst16|selop\(1) & (!\inst16|selop\(0) & \inst700|valor_interno\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000001100100000001101010111010101110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(0),
	datac => \inst700|ALT_INV_valor_interno\(1),
	datad => \inst700|ALT_INV_valor_interno\(0),
	datae => \inst14|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	dataf => \inst16|ALT_INV_selop\(2),
	combout => \inst33|opres[0]~34_combout\);

-- Location: LABCELL_X79_Y32_N30
\inst33|opres[0]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~35_combout\ = ( \inst33|Add0~62_sumout\ & ( (\inst33|Add0~0_combout\) # (\inst33|opres[0]~34_combout\) ) ) # ( !\inst33|Add0~62_sumout\ & ( \inst33|opres[0]~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres[0]~34_combout\,
	datad => \inst33|ALT_INV_Add0~0_combout\,
	dataf => \inst33|ALT_INV_Add0~62_sumout\,
	combout => \inst33|opres[0]~35_combout\);

-- Location: LABCELL_X79_Y32_N33
\inst33|opres[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(0) = ( \inst33|opres[15]~3_combout\ & ( \inst33|opres\(0) ) ) # ( !\inst33|opres[15]~3_combout\ & ( \inst33|opres[0]~35_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(0),
	datab => \inst33|ALT_INV_opres[0]~35_combout\,
	dataf => \inst33|ALT_INV_opres[15]~3_combout\,
	combout => \inst33|opres\(0));

-- Location: FF_X78_Y32_N11
\inst24|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(0));

-- Location: FF_X75_Y33_N35
\inst34|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~combout\,
	d => \inst34|valor_interno[0]~feeder_combout\,
	asdata => \inst24|valor_interno\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(0));

-- Location: LABCELL_X75_Y33_N27
\inst34|valor_interno[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[1]~feeder_combout\ = \inst7|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst7|ALT_INV_Add0~1_sumout\,
	combout => \inst34|valor_interno[1]~feeder_combout\);

-- Location: FF_X75_Y33_N29
\inst34|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~combout\,
	d => \inst34|valor_interno[1]~feeder_combout\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(1));

-- Location: LABCELL_X74_Y33_N0
\inst1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux14~0_combout\ = ( \inst34|valor_interno[0]~DUPLICATE_q\ & ( !\inst34|valor_interno\(3) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (!\inst34|valor_interno\(5) & !\inst34|valor_interno\(2))) ) ) ) # ( !\inst34|valor_interno[0]~DUPLICATE_q\ & ( 
-- !\inst34|valor_interno\(3) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (\inst34|valor_interno\(1) & (!\inst34|valor_interno\(5) & !\inst34|valor_interno\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno\(5),
	datad => \inst34|ALT_INV_valor_interno\(2),
	datae => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(3),
	combout => \inst1|Mux14~0_combout\);

-- Location: FF_X74_Y33_N1
\inst8|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux14~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(17));

-- Location: MLABCELL_X72_Y33_N24
\inst4|Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal13~0_combout\ = ( \inst8|valor_interno\(16) & ( (\inst8|valor_interno\(17) & (\inst8|valor_interno\(22) & \inst8|valor_interno\(21))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(17),
	datab => \inst8|ALT_INV_valor_interno\(22),
	datac => \inst8|ALT_INV_valor_interno\(21),
	datae => \inst8|ALT_INV_valor_interno\(16),
	combout => \inst4|Equal13~0_combout\);

-- Location: LABCELL_X71_Y33_N18
\inst4|comb~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~20_combout\ = ( \inst4|Equal3~2_combout\ & ( \inst4|Equal0~0_combout\ & ( (\inst4|Equal13~0_combout\ & (!\inst4|Equal0~1_combout\ & ((!\inst4|Equal3~1_combout\) # (\inst8|valor_interno\(22))))) ) ) ) # ( \inst4|Equal3~2_combout\ & ( 
-- !\inst4|Equal0~0_combout\ & ( (\inst4|Equal13~0_combout\ & ((!\inst4|Equal3~1_combout\) # (\inst8|valor_interno\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110001000100000000000000000011000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(22),
	datab => \inst4|ALT_INV_Equal13~0_combout\,
	datac => \inst4|ALT_INV_Equal0~1_combout\,
	datad => \inst4|ALT_INV_Equal3~1_combout\,
	datae => \inst4|ALT_INV_Equal3~2_combout\,
	dataf => \inst4|ALT_INV_Equal0~0_combout\,
	combout => \inst4|comb~20_combout\);

-- Location: LABCELL_X71_Y33_N33
\inst4|comb~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~21_combout\ = ( !\inst4|comb~20_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal13~1_combout\)) # (\inst4|selfalgs[0]~0_combout\)) # (\inst4|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal11~0_combout\,
	datab => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datac => \inst4|ALT_INV_Equal13~1_combout\,
	datad => \inst4|ALT_INV_selregr[3]~0_combout\,
	dataf => \inst4|ALT_INV_comb~20_combout\,
	combout => \inst4|comb~21_combout\);

-- Location: LABCELL_X71_Y33_N24
\inst4|selop[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop\(1) = ( \inst4|selop\(1) & ( !\inst4|comb~21_combout\ ) ) # ( !\inst4|selop\(1) & ( (\inst4|comb~20_combout\ & !\inst4|comb~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_comb~20_combout\,
	datac => \inst4|ALT_INV_comb~21_combout\,
	dataf => \inst4|ALT_INV_selop\(1),
	combout => \inst4|selop\(1));

-- Location: LABCELL_X77_Y34_N54
\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst4|selop\(1) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst4|selregr\(2) & 
-- !\inst700666|inst|Equal0~0_combout\)))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( \inst4|selop\(1) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst700666|inst|Equal0~0_combout\) # 
-- (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111011110010111111100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_selop\(1),
	combout => \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X77_Y34_N56
\inst16|selop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(1));

-- Location: LABCELL_X79_Y34_N54
\inst33|opres[15]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~3_combout\ = ( !\inst16|selop\(2) & ( !\inst16|selop\(0) & ( !\inst16|selop\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_selop\(1),
	datae => \inst16|ALT_INV_selop\(2),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[15]~3_combout\);

-- Location: FF_X77_Y34_N46
\inst14|valor_interno[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux27~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[4]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y32_N54
\inst33|opres[4]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~16_combout\ = ( \inst14|valor_interno[4]~DUPLICATE_q\ & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[3]~DUPLICATE_q\)) # (\inst33|opres[8]~4_combout\ & 
-- ((\inst700|valor_interno[4]~DUPLICATE_q\))) ) ) ) # ( !\inst14|valor_interno[4]~DUPLICATE_q\ & ( \inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[3]~DUPLICATE_q\)) # (\inst33|opres[8]~4_combout\ & 
-- ((!\inst700|valor_interno[4]~DUPLICATE_q\))) ) ) ) # ( \inst14|valor_interno[4]~DUPLICATE_q\ & ( !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & !\inst700|valor_interno\(5)) ) ) ) # ( !\inst14|valor_interno[4]~DUPLICATE_q\ & ( 
-- !\inst33|opres[8]~5_combout\ & ( (!\inst33|opres[8]~4_combout\ & ((!\inst700|valor_interno\(5)))) # (\inst33|opres[8]~4_combout\ & (!\inst700|valor_interno[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000110000110011000000000010111000101110001000101110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datab => \inst33|ALT_INV_opres[8]~4_combout\,
	datac => \inst700|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno\(5),
	datae => \inst14|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	dataf => \inst33|ALT_INV_opres[8]~5_combout\,
	combout => \inst33|opres[4]~16_combout\);

-- Location: LABCELL_X79_Y32_N36
\inst33|opres[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~17_combout\ = ( \inst700|valor_interno[4]~DUPLICATE_q\ & ( \inst14|valor_interno[4]~DUPLICATE_q\ & ( (!\inst33|Add0~0_combout\ & ((!\inst33|opres[4]~16_combout\) # ((\inst33|Equal0~0_combout\)))) # (\inst33|Add0~0_combout\ & 
-- (((\inst33|Add0~26_sumout\)))) ) ) ) # ( !\inst700|valor_interno[4]~DUPLICATE_q\ & ( \inst14|valor_interno[4]~DUPLICATE_q\ & ( (!\inst33|Add0~0_combout\ & (!\inst33|opres[4]~16_combout\ & ((!\inst33|Equal0~0_combout\)))) # (\inst33|Add0~0_combout\ & 
-- (((\inst33|Add0~26_sumout\)))) ) ) ) # ( \inst700|valor_interno[4]~DUPLICATE_q\ & ( !\inst14|valor_interno[4]~DUPLICATE_q\ & ( (!\inst33|Add0~0_combout\ & (!\inst33|opres[4]~16_combout\ & ((!\inst33|Equal0~0_combout\)))) # (\inst33|Add0~0_combout\ & 
-- (((\inst33|Add0~26_sumout\)))) ) ) ) # ( !\inst700|valor_interno[4]~DUPLICATE_q\ & ( !\inst14|valor_interno[4]~DUPLICATE_q\ & ( (!\inst33|Add0~0_combout\ & (!\inst33|opres[4]~16_combout\ & ((!\inst33|Equal0~0_combout\)))) # (\inst33|Add0~0_combout\ & 
-- (((\inst33|Add0~26_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000110011101000000011001110100000001100111010111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[4]~16_combout\,
	datab => \inst33|ALT_INV_Add0~26_sumout\,
	datac => \inst33|ALT_INV_Equal0~0_combout\,
	datad => \inst33|ALT_INV_Add0~0_combout\,
	datae => \inst700|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	dataf => \inst14|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	combout => \inst33|opres[4]~17_combout\);

-- Location: LABCELL_X79_Y32_N24
\inst33|opres[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(4) = ( \inst33|opres[15]~3_combout\ & ( \inst33|opres[4]~17_combout\ & ( \inst33|opres\(4) ) ) ) # ( !\inst33|opres[15]~3_combout\ & ( \inst33|opres[4]~17_combout\ ) ) # ( \inst33|opres[15]~3_combout\ & ( !\inst33|opres[4]~17_combout\ & ( 
-- \inst33|opres\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres\(4),
	datae => \inst33|ALT_INV_opres[15]~3_combout\,
	dataf => \inst33|ALT_INV_opres[4]~17_combout\,
	combout => \inst33|opres\(4));

-- Location: FF_X77_Y32_N14
\inst24|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst33|opres\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst16|ALT_INV_selresult\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(4));

-- Location: FF_X75_Y33_N32
\inst34|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~combout\,
	d => \inst34|valor_interno[4]~feeder_combout\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(4));

-- Location: LABCELL_X75_Y33_N30
\inst34|valor_interno[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[4]~feeder_combout\ = ( \inst7|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_Add0~17_sumout\,
	combout => \inst34|valor_interno[4]~feeder_combout\);

-- Location: FF_X75_Y33_N31
\inst34|valor_interno[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~combout\,
	d => \inst34|valor_interno[4]~feeder_combout\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno[4]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y33_N54
\inst1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = ( !\inst34|valor_interno\(2) & ( !\inst34|valor_interno\(3) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (\inst34|valor_interno\(1) & (!\inst34|valor_interno\(5) & \inst34|valor_interno[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno\(5),
	datad => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	datae => \inst34|ALT_INV_valor_interno\(2),
	dataf => \inst34|ALT_INV_valor_interno\(3),
	combout => \inst1|Mux9~0_combout\);

-- Location: FF_X74_Y33_N55
\inst8|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux9~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(22));

-- Location: LABCELL_X71_Y33_N0
\inst4|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~3_combout\ = ( \inst4|Equal0~1_combout\ & ( (\inst8|valor_interno\(22) & (!\inst4|Equal0~0_combout\ & \inst4|Equal3~1_combout\)) ) ) # ( !\inst4|Equal0~1_combout\ & ( (\inst8|valor_interno\(22) & \inst4|Equal3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_valor_interno\(22),
	datac => \inst4|ALT_INV_Equal0~0_combout\,
	datad => \inst4|ALT_INV_Equal3~1_combout\,
	dataf => \inst4|ALT_INV_Equal0~1_combout\,
	combout => \inst4|comb~3_combout\);

-- Location: LABCELL_X71_Y33_N9
\inst4|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~4_combout\ = ( \inst4|Equal13~1_combout\ & ( !\inst4|comb~3_combout\ ) ) # ( !\inst4|Equal13~1_combout\ & ( (!\inst4|comb~3_combout\ & ((!\inst4|selregr[3]~0_combout\) # ((\inst4|Equal11~0_combout\) # (\inst4|selfalgs[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010101010100010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~3_combout\,
	datab => \inst4|ALT_INV_selregr[3]~0_combout\,
	datac => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datad => \inst4|ALT_INV_Equal11~0_combout\,
	dataf => \inst4|ALT_INV_Equal13~1_combout\,
	combout => \inst4|comb~4_combout\);

-- Location: LABCELL_X71_Y33_N6
\inst4|selregr[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr\(2) = ( \inst4|selregr\(2) & ( !\inst4|comb~4_combout\ ) ) # ( !\inst4|selregr\(2) & ( (\inst4|comb~3_combout\ & !\inst4|comb~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~3_combout\,
	datac => \inst4|ALT_INV_comb~4_combout\,
	dataf => \inst4|ALT_INV_selregr\(2),
	combout => \inst4|selregr\(2));

-- Location: MLABCELL_X72_Y33_N33
\inst4|comb~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~15_combout\ = (\inst8|valor_interno\(17) & (\inst4|Equal4~0_combout\ & (!\inst8|valor_interno\(16) & !\inst8|valor_interno\(21))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(17),
	datab => \inst4|ALT_INV_Equal4~0_combout\,
	datac => \inst8|ALT_INV_valor_interno\(16),
	datad => \inst8|ALT_INV_valor_interno\(21),
	combout => \inst4|comb~15_combout\);

-- Location: LABCELL_X77_Y33_N0
\inst4|comb~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~16_combout\ = ( !\inst4|comb~15_combout\ & ( !\inst4|Equal0~2_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\)) # (\inst4|Equal13~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal13~1_combout\,
	datab => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~0_combout\,
	datad => \inst4|ALT_INV_Equal11~0_combout\,
	datae => \inst4|ALT_INV_comb~15_combout\,
	dataf => \inst4|ALT_INV_Equal0~2_combout\,
	combout => \inst4|comb~16_combout\);

-- Location: LABCELL_X77_Y33_N42
\inst4|comb~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~17_combout\ = ( \inst4|comb~15_combout\ & ( \inst4|Equal0~2_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\)) # (\inst4|Equal13~1_combout\) ) ) ) # ( !\inst4|comb~15_combout\ & ( 
-- \inst4|Equal0~2_combout\ & ( (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\)) # (\inst4|Equal13~1_combout\) ) ) ) # ( \inst4|comb~15_combout\ & ( !\inst4|Equal0~2_combout\ & ( 
-- (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|selfalgs[0]~0_combout\)) # (\inst4|Equal13~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111111111111110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal13~1_combout\,
	datab => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~0_combout\,
	datad => \inst4|ALT_INV_Equal11~0_combout\,
	datae => \inst4|ALT_INV_comb~15_combout\,
	dataf => \inst4|ALT_INV_Equal0~2_combout\,
	combout => \inst4|comb~17_combout\);

-- Location: LABCELL_X77_Y33_N9
\inst4|selregw[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregw\(0) = ( \inst4|selregw\(0) & ( !\inst4|comb~16_combout\ ) ) # ( !\inst4|selregw\(0) & ( (!\inst4|comb~16_combout\ & \inst4|comb~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~16_combout\,
	datac => \inst4|ALT_INV_comb~17_combout\,
	dataf => \inst4|ALT_INV_selregw\(0),
	combout => \inst4|selregw\(0));

-- Location: LABCELL_X75_Y32_N57
\inst21|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst4|selregw\(0) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst700666|inst|Equal0~0_combout\ & !\inst4|selregr\(2))))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( \inst4|selregw\(0) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst700666|inst|Equal0~0_combout\) # (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010110111011111101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_selregw\(0),
	combout => \inst21|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X75_Y32_N59
\inst16|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst21|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selregw\(0));

-- Location: LABCELL_X75_Y32_N24
\inst700666|inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst|Equal0~0_combout\ = ( \inst107|selregw\(2) & ( (!\inst107|selregw\(0)) # ((\inst16|selregw\(0) & !\inst16|selregw\(2))) ) ) # ( !\inst107|selregw\(2) & ( (\inst16|selregw\(0) & !\inst16|selregw\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011110011111100001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selregw\(0),
	datac => \inst107|ALT_INV_selregw\(0),
	datad => \inst16|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(2),
	combout => \inst700666|inst|Equal0~0_combout\);

-- Location: MLABCELL_X72_Y33_N3
\inst4|selregw[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregw[2]~0_combout\ = ( \inst4|Equal3~0_combout\ & ( (!\inst8|valor_interno\(17) & ((!\inst8|valor_interno\(21)) # ((\inst4|Equal4~0_combout\ & \inst8|valor_interno\(16))))) ) ) # ( !\inst4|Equal3~0_combout\ & ( (\inst8|valor_interno\(21) & 
-- (\inst4|Equal4~0_combout\ & (\inst8|valor_interno\(16) & !\inst8|valor_interno\(17)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000010101011000000001010101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(21),
	datab => \inst4|ALT_INV_Equal4~0_combout\,
	datac => \inst8|ALT_INV_valor_interno\(16),
	datad => \inst8|ALT_INV_valor_interno\(17),
	dataf => \inst4|ALT_INV_Equal3~0_combout\,
	combout => \inst4|selregw[2]~0_combout\);

-- Location: LABCELL_X77_Y33_N30
\inst4|comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~13_combout\ = ( \inst4|selfalgs[0]~0_combout\ & ( \inst4|selregw[2]~0_combout\ & ( \inst4|Equal0~2_combout\ ) ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( \inst4|selregw[2]~0_combout\ & ( (\inst4|Equal0~2_combout\ & 
-- (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|Equal13~1_combout\))) ) ) ) # ( \inst4|selfalgs[0]~0_combout\ & ( !\inst4|selregw[2]~0_combout\ ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( !\inst4|selregw[2]~0_combout\ & ( 
-- ((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|Equal13~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111111111111111100000000111101110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal13~1_combout\,
	datab => \inst4|ALT_INV_Equal11~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~0_combout\,
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	datae => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	dataf => \inst4|ALT_INV_selregw[2]~0_combout\,
	combout => \inst4|comb~13_combout\);

-- Location: LABCELL_X77_Y33_N18
\inst4|comb~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~14_combout\ = ( \inst4|selfalgs[0]~0_combout\ & ( !\inst4|Equal0~2_combout\ & ( \inst4|selregw[2]~0_combout\ ) ) ) # ( !\inst4|selfalgs[0]~0_combout\ & ( !\inst4|Equal0~2_combout\ & ( (\inst4|selregw[2]~0_combout\ & 
-- (((!\inst4|selregr[3]~0_combout\) # (\inst4|Equal11~0_combout\)) # (\inst4|Equal13~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal13~1_combout\,
	datab => \inst4|ALT_INV_selregw[2]~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~0_combout\,
	datad => \inst4|ALT_INV_Equal11~0_combout\,
	datae => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	dataf => \inst4|ALT_INV_Equal0~2_combout\,
	combout => \inst4|comb~14_combout\);

-- Location: LABCELL_X77_Y33_N6
\inst4|selregw[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregw\(2) = ( \inst4|selregw\(2) & ( !\inst4|comb~13_combout\ ) ) # ( !\inst4|selregw\(2) & ( (!\inst4|comb~13_combout\ & \inst4|comb~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_comb~13_combout\,
	datac => \inst4|ALT_INV_comb~14_combout\,
	dataf => \inst4|ALT_INV_selregw\(2),
	combout => \inst4|selregw\(2));

-- Location: LABCELL_X74_Y33_N21
\inst21|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst4|selregw\(2) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst700666|inst|Equal0~0_combout\ & !\inst4|selregr\(2))))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( \inst4|selregw\(2) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst700666|inst|Equal0~0_combout\) # (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100101011111111110010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datac => \inst4|ALT_INV_selregr\(0),
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_selregw\(2),
	combout => \inst21|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X75_Y32_N38
\inst16|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst21|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selregw\(2));

-- Location: FF_X75_Y32_N26
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

-- Location: LABCELL_X75_Y32_N51
\inst49|PCWrite~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst49|PCWrite~0_combout\ = ( \inst107|selregw\(0) & ( (!\inst107|selregw\(2)) # ((!\inst16|selregw\(2) & \inst16|selregw\(0))) ) ) # ( !\inst107|selregw\(0) & ( (!\inst16|selregw\(2) & \inst16|selregw\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|ALT_INV_selregw\(2),
	datac => \inst16|ALT_INV_selregw\(2),
	datad => \inst16|ALT_INV_selregw\(0),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst49|PCWrite~0_combout\);

-- Location: LABCELL_X74_Y33_N18
inst3 : cyclonev_lcell_comb
-- Equation(s):
-- \inst3~combout\ = LCELL(( \inst49|PCWrite~1_combout\ & ( \RELOJ~input_o\ & ( (!\inst4|selregr\(2) & (((!\inst700666|inst|Equal0~0_combout\) # (!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & (!\inst49|PCWrite~0_combout\ & ((!\inst4|selregr\(0))))) ) ) ) # 
-- ( !\inst49|PCWrite~1_combout\ & ( \RELOJ~input_o\ & ( (!\inst4|selregr\(2) & (((!\inst700666|inst|Equal0~0_combout\) # (!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & ((!\inst49|PCWrite~0_combout\) # ((\inst4|selregr\(0))))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010110011111111101011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst4|ALT_INV_selregr\(0),
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \ALT_INV_RELOJ~input_o\,
	combout => \inst3~combout\);

-- Location: LABCELL_X74_Y33_N24
\inst1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = ( !\inst34|valor_interno\(3) & ( (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(2) & !\inst34|valor_interno[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(5),
	datab => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno\(2),
	datad => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(3),
	combout => \inst1|Mux8~0_combout\);

-- Location: FF_X74_Y33_N25
\inst8|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux8~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(23));

-- Location: MLABCELL_X72_Y33_N6
\inst4|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal3~2_combout\ = ( \inst8|valor_interno\(18) & ( (!\inst8|valor_interno\(23) & \inst8|valor_interno\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_valor_interno\(23),
	datac => \inst8|ALT_INV_valor_interno\(20),
	dataf => \inst8|ALT_INV_valor_interno\(18),
	combout => \inst4|Equal3~2_combout\);

-- Location: LABCELL_X71_Y33_N15
\inst4|Equal13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal13~1_combout\ = ( \inst4|Equal13~0_combout\ & ( \inst4|Equal3~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal3~2_combout\,
	dataf => \inst4|ALT_INV_Equal13~0_combout\,
	combout => \inst4|Equal13~1_combout\);

-- Location: LABCELL_X77_Y33_N27
\inst4|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~1_combout\ = ( \inst4|Equal11~0_combout\ & ( \inst4|comb~0_combout\ ) ) # ( !\inst4|Equal11~0_combout\ & ( (\inst4|comb~0_combout\ & (((!\inst4|selregr[3]~0_combout\) # (\inst4|selfalgs[0]~0_combout\)) # (\inst4|Equal13~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal13~1_combout\,
	datab => \inst4|ALT_INV_selregr[3]~0_combout\,
	datac => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datad => \inst4|ALT_INV_comb~0_combout\,
	dataf => \inst4|ALT_INV_Equal11~0_combout\,
	combout => \inst4|comb~1_combout\);

-- Location: LABCELL_X73_Y33_N27
\inst4|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~2_combout\ = ( !\inst4|comb~0_combout\ & ( ((!\inst4|selregr[3]~0_combout\) # ((\inst4|Equal13~1_combout\) # (\inst4|Equal11~0_combout\))) # (\inst4|selfalgs[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	datab => \inst4|ALT_INV_selregr[3]~0_combout\,
	datac => \inst4|ALT_INV_Equal11~0_combout\,
	datad => \inst4|ALT_INV_Equal13~1_combout\,
	dataf => \inst4|ALT_INV_comb~0_combout\,
	combout => \inst4|comb~2_combout\);

-- Location: LABCELL_X79_Y33_N33
\inst4|selregr[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr\(0) = ( \inst4|comb~2_combout\ & ( \inst4|selregr\(0) & ( !\inst4|comb~1_combout\ ) ) ) # ( !\inst4|comb~2_combout\ & ( \inst4|selregr\(0) & ( !\inst4|comb~1_combout\ ) ) ) # ( \inst4|comb~2_combout\ & ( !\inst4|selregr\(0) & ( 
-- !\inst4|comb~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~1_combout\,
	datae => \inst4|ALT_INV_comb~2_combout\,
	dataf => \inst4|ALT_INV_selregr\(0),
	combout => \inst4|selregr\(0));

-- Location: LABCELL_X75_Y33_N24
\inst4|selfalgs[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(2) = ( \inst4|selfalgs\(2) & ( !\inst4|comb~7_combout\ ) ) # ( !\inst4|selfalgs\(2) & ( (\inst4|comb~8_combout\ & !\inst4|comb~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~8_combout\,
	datac => \inst4|ALT_INV_comb~7_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(2),
	combout => \inst4|selfalgs\(2));

-- Location: LABCELL_X75_Y33_N3
\inst29|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst49|PCWrite~1_combout\ & ( \inst4|selfalgs\(2) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst4|selregr\(2) & 
-- !\inst700666|inst|Equal0~0_combout\)))) ) ) ) # ( !\inst49|PCWrite~1_combout\ & ( \inst4|selfalgs\(2) & ( (!\inst4|selregr\(0) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst700666|inst|Equal0~0_combout\) # 
-- (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101101011011111100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst700666|inst|ALT_INV_Equal0~0_combout\,
	datae => \inst49|ALT_INV_PCWrite~1_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(2),
	combout => \inst29|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y35_N5
\inst16|selfalgs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst29|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(2));

-- Location: MLABCELL_X78_Y35_N45
\inst|ni~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ni~0_combout\ = ( \inst16|selfalgs\(1) & ( (!\inst16|selfalgs\(2) & ((!\inst16|selfalgs\(3)) # (\inst16|selfalgs\(0)))) ) ) # ( !\inst16|selfalgs\(1) & ( (!\inst16|selfalgs\(2) & (!\inst16|selfalgs\(3) & \inst16|selfalgs\(0))) # 
-- (\inst16|selfalgs\(2) & (\inst16|selfalgs\(3) & !\inst16|selfalgs\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(2),
	datac => \inst16|ALT_INV_selfalgs\(3),
	datad => \inst16|ALT_INV_selfalgs\(0),
	dataf => \inst16|ALT_INV_selfalgs\(1),
	combout => \inst|ni~0_combout\);

-- Location: MLABCELL_X78_Y35_N18
\inst|ni\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ni~combout\ = ( \inst33|opres\(15) & ( (\inst|ni~0_combout\) # (\inst|ni~combout\) ) ) # ( !\inst33|opres\(15) & ( (\inst|ni~combout\ & !\inst|ni~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ni~combout\,
	datad => \inst|ALT_INV_ni~0_combout\,
	dataf => \inst33|ALT_INV_opres\(15),
	combout => \inst|ni~combout\);

-- Location: FF_X78_Y35_N20
\inst101|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst|ni~combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst101|valor_interno~q\);

-- Location: MLABCELL_X78_Y35_N27
\inst|zi~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|zi~0_combout\ = ( \inst16|selfalgs\(3) & ( (!\inst16|selfalgs\(2) & (\inst16|selfalgs\(1) & \inst16|selfalgs\(0))) # (\inst16|selfalgs\(2) & (!\inst16|selfalgs\(1) & !\inst16|selfalgs\(0))) ) ) # ( !\inst16|selfalgs\(3) & ( !\inst16|selfalgs\(2) $ 
-- (((!\inst16|selfalgs\(1) & !\inst16|selfalgs\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101001010000000010100101000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(2),
	datac => \inst16|ALT_INV_selfalgs\(1),
	datad => \inst16|ALT_INV_selfalgs\(0),
	dataf => \inst16|ALT_INV_selfalgs\(3),
	combout => \inst|zi~0_combout\);

-- Location: MLABCELL_X78_Y32_N54
\inst33|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~0_combout\ = ( !\inst33|opres\(5) & ( (!\inst33|opres\(2) & (!\inst33|opres\(4) & (!\inst33|opres\(3) & !\inst33|opres\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(2),
	datab => \inst33|ALT_INV_opres\(4),
	datac => \inst33|ALT_INV_opres\(3),
	datad => \inst33|ALT_INV_opres\(1),
	dataf => \inst33|ALT_INV_opres\(5),
	combout => \inst33|WideOr0~0_combout\);

-- Location: MLABCELL_X78_Y32_N0
\inst33|WideOr0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~2_combout\ = ( !\inst33|opres\(13) & ( (!\inst33|opres\(14) & (!\inst33|opres\(0) & !\inst33|opres\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(14),
	datac => \inst33|ALT_INV_opres\(0),
	datad => \inst33|ALT_INV_opres\(15),
	dataf => \inst33|ALT_INV_opres\(13),
	combout => \inst33|WideOr0~2_combout\);

-- Location: MLABCELL_X78_Y32_N18
\inst33|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~1_combout\ = ( !\inst33|opres\(8) & ( (!\inst33|opres\(10) & (!\inst33|opres\(9) & (!\inst33|opres\(7) & !\inst33|opres\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(10),
	datab => \inst33|ALT_INV_opres\(9),
	datac => \inst33|ALT_INV_opres\(7),
	datad => \inst33|ALT_INV_opres\(11),
	dataf => \inst33|ALT_INV_opres\(8),
	combout => \inst33|WideOr0~1_combout\);

-- Location: MLABCELL_X78_Y32_N42
\inst33|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~combout\ = ( \inst33|WideOr0~1_combout\ & ( (((!\inst33|WideOr0~0_combout\) # (!\inst33|WideOr0~2_combout\)) # (\inst33|opres\(12))) # (\inst33|opres\(6)) ) ) # ( !\inst33|WideOr0~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(6),
	datab => \inst33|ALT_INV_opres\(12),
	datac => \inst33|ALT_INV_WideOr0~0_combout\,
	datad => \inst33|ALT_INV_WideOr0~2_combout\,
	dataf => \inst33|ALT_INV_WideOr0~1_combout\,
	combout => \inst33|WideOr0~combout\);

-- Location: MLABCELL_X78_Y32_N57
\inst|zi\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|zi~combout\ = ( \inst33|WideOr0~combout\ & ( (\inst|zi~combout\ & !\inst|zi~0_combout\) ) ) # ( !\inst33|WideOr0~combout\ & ( (\inst|zi~0_combout\) # (\inst|zi~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_zi~combout\,
	datad => \inst|ALT_INV_zi~0_combout\,
	dataf => \inst33|ALT_INV_WideOr0~combout\,
	combout => \inst|zi~combout\);

-- Location: FF_X78_Y32_N58
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

-- Location: MLABCELL_X78_Y35_N30
\inst|vi~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|vi~0_combout\ = ( \inst16|selfalgs\(0) & ( (\inst33|opres\(16) & ((!\inst16|selfalgs\(2) & (!\inst16|selfalgs\(3) $ (!\inst16|selfalgs\(1)))) # (\inst16|selfalgs\(2) & ((!\inst16|selfalgs\(1)) # (\inst16|selfalgs\(3)))))) ) ) # ( 
-- !\inst16|selfalgs\(0) & ( ((!\inst16|selfalgs\(2) & (\inst16|selfalgs\(3) & \inst16|selfalgs\(1)))) # (\inst33|opres\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111000000101111111100000000011110010000000001111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(2),
	datab => \inst16|ALT_INV_selfalgs\(3),
	datac => \inst16|ALT_INV_selfalgs\(1),
	datad => \inst33|ALT_INV_opres\(16),
	dataf => \inst16|ALT_INV_selfalgs\(0),
	combout => \inst|vi~0_combout\);

-- Location: MLABCELL_X78_Y35_N39
\inst|vi~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|vi~1_combout\ = ( \inst16|selfalgs\(1) & ( (!\inst16|selfalgs\(2)) # ((!\inst16|selfalgs\(3) & \inst16|selfalgs\(0))) ) ) # ( !\inst16|selfalgs\(1) & ( (!\inst16|selfalgs\(3) & (!\inst16|selfalgs\(2) & \inst16|selfalgs\(0))) # (\inst16|selfalgs\(3) 
-- & (\inst16|selfalgs\(2) & !\inst16|selfalgs\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011110000111111001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selfalgs\(3),
	datac => \inst16|ALT_INV_selfalgs\(2),
	datad => \inst16|ALT_INV_selfalgs\(0),
	dataf => \inst16|ALT_INV_selfalgs\(1),
	combout => \inst|vi~1_combout\);

-- Location: MLABCELL_X78_Y35_N24
\inst|vi\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|vi~combout\ = ( \inst|vi~1_combout\ & ( \inst|vi~0_combout\ ) ) # ( !\inst|vi~1_combout\ & ( \inst|vi~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_vi~0_combout\,
	datac => \inst|ALT_INV_vi~combout\,
	dataf => \inst|ALT_INV_vi~1_combout\,
	combout => \inst|vi~combout\);

-- Location: FF_X78_Y35_N25
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

-- Location: FF_X78_Y35_N56
\inst104|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst|ci~combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|valor_interno~q\);

-- Location: MLABCELL_X78_Y35_N0
\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = ( !\inst16|selfalgs\(0) & ( \inst16|selfalgs\(1) & ( (!\inst16|selfalgs\(3) & !\inst16|selfalgs\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selfalgs\(3),
	datac => \inst16|ALT_INV_selfalgs\(2),
	datae => \inst16|ALT_INV_selfalgs\(0),
	dataf => \inst16|ALT_INV_selfalgs\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: MLABCELL_X78_Y33_N36
\inst|hi\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|hi~combout\ = ( \inst|Equal0~0_combout\ & ( \inst33|opres\(8) ) ) # ( !\inst|Equal0~0_combout\ & ( \inst|hi~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres\(8),
	datad => \inst|ALT_INV_hi~combout\,
	dataf => \inst|ALT_INV_Equal0~0_combout\,
	combout => \inst|hi~combout\);

-- Location: FF_X78_Y33_N37
\inst105|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst|hi~combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst105|valor_interno~q\);

-- Location: MLABCELL_X78_Y35_N54
\inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = ( !\inst16|selfalgs\(3) & ( (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1) & \inst16|selfalgs\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(0),
	datab => \inst16|ALT_INV_selfalgs\(1),
	datac => \inst16|ALT_INV_selfalgs\(2),
	dataf => \inst16|ALT_INV_selfalgs\(3),
	combout => \inst|Equal0~1_combout\);

-- Location: MLABCELL_X78_Y35_N48
\inst|ii~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ii~0_combout\ = ( \inst16|selfalgs\(1) & ( (!\inst16|selfalgs\(3) & (\inst16|selfalgs\(2) & !\inst16|selfalgs\(0))) ) ) # ( !\inst16|selfalgs\(1) & ( (\inst16|selfalgs\(3) & (!\inst16|selfalgs\(2) & \inst16|selfalgs\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst16|ALT_INV_selfalgs\(3),
	datac => \inst16|ALT_INV_selfalgs\(2),
	datad => \inst16|ALT_INV_selfalgs\(0),
	dataf => \inst16|ALT_INV_selfalgs\(1),
	combout => \inst|ii~0_combout\);

-- Location: MLABCELL_X78_Y35_N57
\inst|ii\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ii~combout\ = ( \inst|ii~0_combout\ & ( !\inst|Equal0~1_combout\ ) ) # ( !\inst|ii~0_combout\ & ( \inst|ii~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Equal0~1_combout\,
	datad => \inst|ALT_INV_ii~combout\,
	dataf => \inst|ALT_INV_ii~0_combout\,
	combout => \inst|ii~combout\);

-- Location: FF_X78_Y35_N59
\inst106|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst|ii~combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst106|valor_interno~q\);

-- Location: FF_X79_Y33_N31
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

-- Location: FF_X75_Y34_N17
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

-- Location: LABCELL_X73_Y32_N27
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

-- Location: LABCELL_X74_Y32_N9
\inst700666|inst1000|AUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|AUX~0_combout\ = ( \inst107|selregw\(0) & ( \inst107|selregw\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst107|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst700666|inst1000|AUX~0_combout\);

-- Location: FF_X73_Y32_N28
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

-- Location: FF_X73_Y32_N22
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

-- Location: LABCELL_X73_Y32_N48
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

-- Location: FF_X73_Y32_N49
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

-- Location: LABCELL_X73_Y32_N42
\inst700666|AUX|valor_interno[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[12]~feeder_combout\ = ( \inst24|valor_interno\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(12),
	combout => \inst700666|AUX|valor_interno[12]~feeder_combout\);

-- Location: FF_X73_Y32_N43
\inst700666|AUX|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[12]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(12));

-- Location: FF_X77_Y32_N52
\inst700666|AUX|valor_interno[11]\ : dffeas
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
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(11));

-- Location: MLABCELL_X72_Y32_N51
\inst700666|AUX|valor_interno[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[10]~feeder_combout\ = ( \inst24|valor_interno\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(10),
	combout => \inst700666|AUX|valor_interno[10]~feeder_combout\);

-- Location: FF_X72_Y32_N52
\inst700666|AUX|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(10));

-- Location: LABCELL_X73_Y32_N51
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

-- Location: FF_X73_Y32_N52
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

-- Location: MLABCELL_X72_Y32_N21
\inst700666|AUX|valor_interno[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[8]~feeder_combout\ = ( \inst24|valor_interno\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(8),
	combout => \inst700666|AUX|valor_interno[8]~feeder_combout\);

-- Location: FF_X72_Y32_N22
\inst700666|AUX|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(8));

-- Location: MLABCELL_X72_Y32_N27
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

-- Location: FF_X72_Y32_N28
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

-- Location: FF_X74_Y32_N22
\inst700666|AUX|valor_interno[6]\ : dffeas
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
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(6));

-- Location: FF_X77_Y32_N46
\inst700666|AUX|valor_interno[5]\ : dffeas
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
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(5));

-- Location: FF_X74_Y32_N17
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

-- Location: FF_X74_Y32_N35
\inst700666|AUX|valor_interno[3]\ : dffeas
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
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(3));

-- Location: FF_X74_Y32_N49
\inst700666|AUX|valor_interno[2]\ : dffeas
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
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(2));

-- Location: LABCELL_X74_Y32_N18
\inst700666|AUX|valor_interno[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[1]~feeder_combout\ = ( \inst24|valor_interno\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(1),
	combout => \inst700666|AUX|valor_interno[1]~feeder_combout\);

-- Location: FF_X74_Y32_N19
\inst700666|AUX|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(1));

-- Location: FF_X77_Y32_N8
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

-- Location: LABCELL_X1_Y37_N3
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


