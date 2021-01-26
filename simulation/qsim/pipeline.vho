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

-- DATE "01/26/2021 01:10:58"

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
-- n	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[15]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[14]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[13]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[11]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[10]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[9]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[15]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[14]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[13]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[12]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[11]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[10]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[9]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[8]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[15]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[14]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[13]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[12]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[11]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[9]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[7]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruccion[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[15]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[13]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[12]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[11]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[10]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[9]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[7]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[5]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[15]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[14]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[13]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[11]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[10]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[9]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[7]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[5]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[15]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[14]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[13]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[12]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[10]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[9]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[8]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[5]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \inst49|process_0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~1_sumout\ : std_logic;
SIGNAL \inst34|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|Add0~2\ : std_logic;
SIGNAL \inst7|Add0~5_sumout\ : std_logic;
SIGNAL \inst34|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst49|PCWrite~0_combout\ : std_logic;
SIGNAL \inst4|Equal8~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst4|selregr[3]~1_combout\ : std_logic;
SIGNAL \inst4|Equal7~2_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst4|Equal7~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Equal10~0_combout\ : std_logic;
SIGNAL \inst4|seldato~0_combout\ : std_logic;
SIGNAL \inst4|Equal7~1_combout\ : std_logic;
SIGNAL \inst4|Equal4~0_combout\ : std_logic;
SIGNAL \inst4|Equal6~0_combout\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \inst4|selsrc[1]~0_combout\ : std_logic;
SIGNAL \inst4|selregr[3]~2_combout\ : std_logic;
SIGNAL \inst4|Equal10~1_combout\ : std_logic;
SIGNAL \inst4|selregr[0]~4_combout\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|selop[1]~0_combout\ : std_logic;
SIGNAL \inst4|selsrc[1]~1_combout\ : std_logic;
SIGNAL \inst4|comb~23_combout\ : std_logic;
SIGNAL \inst4|comb~22_combout\ : std_logic;
SIGNAL \inst700666|inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|selfalgs[3]~2_combout\ : std_logic;
SIGNAL \inst4|Equal8~1_combout\ : std_logic;
SIGNAL \inst4|seldato~2_combout\ : std_logic;
SIGNAL \inst4|comb~21_combout\ : std_logic;
SIGNAL \inst4|comb~20_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~1_combout\ : std_logic;
SIGNAL \inst4|sels1~0_combout\ : std_logic;
SIGNAL \inst4|comb~31_combout\ : std_logic;
SIGNAL \inst4|comb~30_combout\ : std_logic;
SIGNAL \inst4|memw~combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|memw~q\ : std_logic;
SIGNAL \inst107|memw~q\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst700|valor_interno[4]~0_combout\ : std_logic;
SIGNAL \inst700666|inst|D1~0_combout\ : std_logic;
SIGNAL \inst34|valor_interno[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst34|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|Equal7~3_combout\ : std_logic;
SIGNAL \inst4|selfalgs[3]~1_combout\ : std_logic;
SIGNAL \inst4|comb~6_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|comb~7_combout\ : std_logic;
SIGNAL \inst4|comb~8_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|selfalgs[0]~0_combout\ : std_logic;
SIGNAL \inst4|comb~4_combout\ : std_logic;
SIGNAL \inst4|comb~5_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|zi~0_combout\ : std_logic;
SIGNAL \inst4|seldir[0]~0_combout\ : std_logic;
SIGNAL \inst4|comb~25_combout\ : std_logic;
SIGNAL \inst12|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst10|Mux10~0_combout\ : std_logic;
SIGNAL \inst4|Equal5~0_combout\ : std_logic;
SIGNAL \inst4|selregr[0]~3_combout\ : std_logic;
SIGNAL \inst4|sr~0_combout\ : std_logic;
SIGNAL \inst4|comb~29_combout\ : std_logic;
SIGNAL \inst4|comb~28_combout\ : std_logic;
SIGNAL \inst4|sr~combout\ : std_logic;
SIGNAL \inst4|sels1~combout\ : std_logic;
SIGNAL \inst700666|inst|D2[0]~0_combout\ : std_logic;
SIGNAL \inst11|Add0~1_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst10|Mux15~1_combout\ : std_logic;
SIGNAL \inst4|seldato~1_combout\ : std_logic;
SIGNAL \inst4|comb~9_combout\ : std_logic;
SIGNAL \inst4|comb~10_combout\ : std_logic;
SIGNAL \inst30|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst10|Mux10~1_combout\ : std_logic;
SIGNAL \inst10|Mux15~0_combout\ : std_logic;
SIGNAL \inst1|Mux30~0_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[1]~1_combout\ : std_logic;
SIGNAL \inst11|Add0~2\ : std_logic;
SIGNAL \inst11|Add0~5_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|Mux14~1_combout\ : std_logic;
SIGNAL \inst10|Mux14~0_combout\ : std_logic;
SIGNAL \inst1|Mux29~0_combout\ : std_logic;
SIGNAL \inst11|Add0~24_combout\ : std_logic;
SIGNAL \inst11|Add0~6\ : std_logic;
SIGNAL \inst11|Add0~9_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|Mux13~1_combout\ : std_logic;
SIGNAL \inst10|Mux13~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst11|Add0~10\ : std_logic;
SIGNAL \inst11|Add0~13_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst10|Mux12~1_combout\ : std_logic;
SIGNAL \inst10|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|Mux27~0_combout\ : std_logic;
SIGNAL \inst8|valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst11|Add0~25_combout\ : std_logic;
SIGNAL \inst11|Add0~14\ : std_logic;
SIGNAL \inst11|Add0~17_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst10|Mux11~1_combout\ : std_logic;
SIGNAL \inst10|Mux11~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst700|valor_interno[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst700|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst202|Mux16~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[8]~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst700|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst4|selop[0]~3_combout\ : std_logic;
SIGNAL \inst4|comb~19_combout\ : std_logic;
SIGNAL \inst4|comb~18_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst14|valor_interno[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|valor_interno[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|valor_interno[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst202|Mux21~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst202|Mux22~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst202|Mux23~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst202|Mux24~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst202|Mux26~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst14|valor_interno[0]~1_combout\ : std_logic;
SIGNAL \inst14|valor_interno[0]~2_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst202|Mux27~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst202|Mux29~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst202|Mux30~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst700|valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|cadj~0_combout\ : std_logic;
SIGNAL \inst4|comb~26_combout\ : std_logic;
SIGNAL \inst4|comb~27_combout\ : std_logic;
SIGNAL \inst4|cadj~combout\ : std_logic;
SIGNAL \inst28|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|cadj~q\ : std_logic;
SIGNAL \inst14|valor_interno[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|selc~combout\ : std_logic;
SIGNAL \inst27|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|selc~q\ : std_logic;
SIGNAL \inst33|Add0~66_cout\ : std_logic;
SIGNAL \inst33|Add0~58\ : std_logic;
SIGNAL \inst33|Add0~10\ : std_logic;
SIGNAL \inst33|Add0~14\ : std_logic;
SIGNAL \inst33|Add0~18\ : std_logic;
SIGNAL \inst33|Add0~22\ : std_logic;
SIGNAL \inst33|Add0~26\ : std_logic;
SIGNAL \inst33|Add0~2\ : std_logic;
SIGNAL \inst33|Add0~30\ : std_logic;
SIGNAL \inst33|Add0~34\ : std_logic;
SIGNAL \inst33|Add0~38\ : std_logic;
SIGNAL \inst33|Add0~42\ : std_logic;
SIGNAL \inst33|Add0~46\ : std_logic;
SIGNAL \inst33|Add0~6\ : std_logic;
SIGNAL \inst33|Add0~50\ : std_logic;
SIGNAL \inst33|Add0~54\ : std_logic;
SIGNAL \inst33|Add0~70\ : std_logic;
SIGNAL \inst33|Add0~61_sumout\ : std_logic;
SIGNAL \inst33|Add2~70\ : std_logic;
SIGNAL \inst33|Add2~61_sumout\ : std_logic;
SIGNAL \inst33|opres[16]~19_combout\ : std_logic;
SIGNAL \inst|ci~0_combout\ : std_logic;
SIGNAL \inst|ci~1_combout\ : std_logic;
SIGNAL \inst|ci~combout\ : std_logic;
SIGNAL \inst33|Add2~66_cout\ : std_logic;
SIGNAL \inst33|Add2~58\ : std_logic;
SIGNAL \inst33|Add2~10\ : std_logic;
SIGNAL \inst33|Add2~14\ : std_logic;
SIGNAL \inst33|Add2~18\ : std_logic;
SIGNAL \inst33|Add2~22\ : std_logic;
SIGNAL \inst33|Add2~26\ : std_logic;
SIGNAL \inst33|Add2~2\ : std_logic;
SIGNAL \inst33|Add2~30\ : std_logic;
SIGNAL \inst33|Add2~34\ : std_logic;
SIGNAL \inst33|Add2~38\ : std_logic;
SIGNAL \inst33|Add2~42\ : std_logic;
SIGNAL \inst33|Add2~46\ : std_logic;
SIGNAL \inst33|Add2~6\ : std_logic;
SIGNAL \inst33|Add2~50\ : std_logic;
SIGNAL \inst33|Add2~54\ : std_logic;
SIGNAL \inst33|Add2~69_sumout\ : std_logic;
SIGNAL \inst33|opres~18_combout\ : std_logic;
SIGNAL \inst33|Add0~69_sumout\ : std_logic;
SIGNAL \inst16|cadj~DUPLICATE_q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst33|opres[15]~14_combout\ : std_logic;
SIGNAL \inst33|opres[15]~87_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst202|Mux18~0_combout\ : std_logic;
SIGNAL \inst33|Add0~49_sumout\ : std_logic;
SIGNAL \inst33|opres[13]~12_combout\ : std_logic;
SIGNAL \inst33|Add2~49_sumout\ : std_logic;
SIGNAL \inst33|opres[13]~35_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst202|Mux19~0_combout\ : std_logic;
SIGNAL \inst33|opres[12]~1_combout\ : std_logic;
SIGNAL \inst33|Add0~5_sumout\ : std_logic;
SIGNAL \inst33|Add2~5_sumout\ : std_logic;
SIGNAL \inst33|opres[12]~79_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst202|Mux20~0_combout\ : std_logic;
SIGNAL \inst33|opres[11]~11_combout\ : std_logic;
SIGNAL \inst33|Add0~45_sumout\ : std_logic;
SIGNAL \inst33|Add2~45_sumout\ : std_logic;
SIGNAL \inst33|opres[11]~39_combout\ : std_logic;
SIGNAL \inst700|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst33|Add0~41_sumout\ : std_logic;
SIGNAL \inst33|opres[10]~10_combout\ : std_logic;
SIGNAL \inst33|Add2~41_sumout\ : std_logic;
SIGNAL \inst33|opres[10]~43_combout\ : std_logic;
SIGNAL \inst700|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst700|valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|Add0~37_sumout\ : std_logic;
SIGNAL \inst33|opres[9]~9_combout\ : std_logic;
SIGNAL \inst33|Add2~37_sumout\ : std_logic;
SIGNAL \inst33|opres[9]~47_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst33|Add0~33_sumout\ : std_logic;
SIGNAL \inst33|opres[8]~8_combout\ : std_logic;
SIGNAL \inst33|Add2~33_sumout\ : std_logic;
SIGNAL \inst33|opres[8]~51_combout\ : std_logic;
SIGNAL \inst700|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst33|Add0~29_sumout\ : std_logic;
SIGNAL \inst33|opres[7]~7_combout\ : std_logic;
SIGNAL \inst33|Add2~29_sumout\ : std_logic;
SIGNAL \inst33|opres[7]~55_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst202|Mux25~0_combout\ : std_logic;
SIGNAL \inst33|opres[6]~0_combout\ : std_logic;
SIGNAL \inst33|Add0~1_sumout\ : std_logic;
SIGNAL \inst33|Add2~1_sumout\ : std_logic;
SIGNAL \inst33|opres[6]~83_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst33|opres[5]~6_combout\ : std_logic;
SIGNAL \inst33|Add0~25_sumout\ : std_logic;
SIGNAL \inst33|Add2~25_sumout\ : std_logic;
SIGNAL \inst33|opres[5]~59_combout\ : std_logic;
SIGNAL \inst11|Add0~18\ : std_logic;
SIGNAL \inst11|Add0~21_sumout\ : std_logic;
SIGNAL \inst15|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst10|Mux10~3_combout\ : std_logic;
SIGNAL \inst10|Mux10~2_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst202|Mux17~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[14]~DUPLICATE_q\ : std_logic;
SIGNAL \inst33|opres[14]~13_combout\ : std_logic;
SIGNAL \inst33|Add0~53_sumout\ : std_logic;
SIGNAL \inst33|Add2~53_sumout\ : std_logic;
SIGNAL \inst33|opres[14]~31_combout\ : std_logic;
SIGNAL \inst33|WideOr0~2_combout\ : std_logic;
SIGNAL \inst33|WideOr0~1_combout\ : std_logic;
SIGNAL \inst33|WideOr0~0_combout\ : std_logic;
SIGNAL \inst33|WideOr0~combout\ : std_logic;
SIGNAL \inst|zi~combout\ : std_logic;
SIGNAL \inst4|comb~24_combout\ : std_logic;
SIGNAL \inst26|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst26|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|vf~combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~combout\ : std_logic;
SIGNAL \inst16|vf~q\ : std_logic;
SIGNAL \inst|vi~0_combout\ : std_logic;
SIGNAL \inst|vi~1_combout\ : std_logic;
SIGNAL \inst|vi~combout\ : std_logic;
SIGNAL \inst22|branch~0_combout\ : std_logic;
SIGNAL \inst100|valor_interno~q\ : std_logic;
SIGNAL \inst1|Mux31~0_combout\ : std_logic;
SIGNAL \inst8|valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst202|Mux31~0_combout\ : std_logic;
SIGNAL \inst33|Add2~57_sumout\ : std_logic;
SIGNAL \inst33|Add0~57_sumout\ : std_logic;
SIGNAL \inst33|opres[0]~27_combout\ : std_logic;
SIGNAL \inst33|opres[0]~23_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst202|Mux28~0_combout\ : std_logic;
SIGNAL \inst33|opres[3]~4_combout\ : std_logic;
SIGNAL \inst33|Add0~17_sumout\ : std_logic;
SIGNAL \inst33|Add2~17_sumout\ : std_logic;
SIGNAL \inst33|opres[3]~67_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst700|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst33|opres[2]~3_combout\ : std_logic;
SIGNAL \inst33|Add0~13_sumout\ : std_logic;
SIGNAL \inst33|Add2~13_sumout\ : std_logic;
SIGNAL \inst33|opres[2]~71_combout\ : std_logic;
SIGNAL \inst7|Add0~6\ : std_logic;
SIGNAL \inst7|Add0~9_sumout\ : std_logic;
SIGNAL \inst34|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst34|valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst7|Add0~10\ : std_logic;
SIGNAL \inst7|Add0~18\ : std_logic;
SIGNAL \inst7|Add0~13_sumout\ : std_logic;
SIGNAL \inst34|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst4|Equal3~0_combout\ : std_logic;
SIGNAL \inst4|Equal3~1_combout\ : std_logic;
SIGNAL \inst4|selop[2]~1_combout\ : std_logic;
SIGNAL \inst4|comb~15_combout\ : std_logic;
SIGNAL \inst4|comb~16_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst33|Equal0~0_combout\ : std_logic;
SIGNAL \inst33|opres[1]~2_combout\ : std_logic;
SIGNAL \inst33|Add0~9_sumout\ : std_logic;
SIGNAL \inst33|Add2~9_sumout\ : std_logic;
SIGNAL \inst33|opres[1]~75_combout\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst4|selop[1]~2_combout\ : std_logic;
SIGNAL \inst4|comb~17_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst33|opres[4]~5_combout\ : std_logic;
SIGNAL \inst33|Add0~21_sumout\ : std_logic;
SIGNAL \inst33|Add2~21_sumout\ : std_logic;
SIGNAL \inst33|opres[4]~63_combout\ : std_logic;
SIGNAL \inst34|valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst7|Add0~17_sumout\ : std_logic;
SIGNAL \inst34|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst4|Equal9~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~3_combout\ : std_logic;
SIGNAL \inst4|Equal1~1_combout\ : std_logic;
SIGNAL \inst4|selregw[0]~1_combout\ : std_logic;
SIGNAL \inst4|comb~14_combout\ : std_logic;
SIGNAL \inst4|comb~13_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst49|process_0~0_combout\ : std_logic;
SIGNAL \inst4|selregw[2]~0_combout\ : std_logic;
SIGNAL \inst4|comb~11_combout\ : std_logic;
SIGNAL \inst4|comb~12_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst49|process_0~1_combout\ : std_logic;
SIGNAL \inst47~combout\ : std_logic;
SIGNAL \inst34|valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|selregr[2]~0_combout\ : std_logic;
SIGNAL \inst4|selregr[2]~6_combout\ : std_logic;
SIGNAL \inst4|comb~2_combout\ : std_logic;
SIGNAL \inst4|comb~3_combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst4|Equal2~1_combout\ : std_logic;
SIGNAL \inst4|Equal2~2_combout\ : std_logic;
SIGNAL \inst4|selregr[0]~5_combout\ : std_logic;
SIGNAL \inst4|comb~0_combout\ : std_logic;
SIGNAL \inst4|comb~1_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|ni~0_combout\ : std_logic;
SIGNAL \inst|ni~combout\ : std_logic;
SIGNAL \inst101|valor_interno~q\ : std_logic;
SIGNAL \inst102|valor_interno~q\ : std_logic;
SIGNAL \inst103|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst103|valor_interno~q\ : std_logic;
SIGNAL \inst104|valor_interno~q\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|hi~combout\ : std_logic;
SIGNAL \inst105|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst105|valor_interno~q\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|ii~0_combout\ : std_logic;
SIGNAL \inst|ii~combout\ : std_logic;
SIGNAL \inst106|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst106|valor_interno~q\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~2_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst16|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst700666|ACCA|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst24|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCB|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst34|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst23|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|AUX|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst33|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst15|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst16|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst16|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|selbranch\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst107|seldirw\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst16|seldirw\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|selregr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|selsrc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|selbranch\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|seldir\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|seldirw\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst33|ALT_INV_opres[14]~13_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[13]~12_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[11]~11_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[10]~10_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[9]~9_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[8]~8_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[7]~7_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[5]~6_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[4]~5_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[3]~4_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[2]~3_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[1]~2_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[12]~1_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[6]~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_selop\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst49|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \inst49|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \inst49|ALT_INV_process_0~0_combout\ : std_logic;
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
SIGNAL \inst8|ALT_INV_valor_interno\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCA|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst33|ALT_INV_opres[6]~83_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[12]~79_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[1]~75_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[2]~71_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[3]~67_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[4]~63_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[5]~59_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[7]~55_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[8]~51_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[9]~47_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[10]~43_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[11]~39_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[13]~35_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[14]~31_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[0]~27_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[0]~23_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_opres[16]~19_combout\ : std_logic;
SIGNAL \inst23|ALT_INV_valor_interno\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst11|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~69_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~69_sumout\ : std_logic;
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
SIGNAL \inst33|ALT_INV_opres[15]~14_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst33|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst33|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst24|ALT_INV_valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|ALT_INV_comb~24_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst107|ALT_INV_seldirw\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst107|ALT_INV_memw~q\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~23_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~22_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selsrc[1]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~21_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~20_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_seldato~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selfalgs[3]~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~19_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~18_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selop[0]~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~17_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selop[1]~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~16_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~15_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selop[2]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_selc~q\ : std_logic;
SIGNAL \inst16|ALT_INV_cadj~q\ : std_logic;
SIGNAL \inst33|ALT_INV_opres~18_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~14_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~13_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregw[0]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregw[2]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_seldato~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sels1~0_combout\ : std_logic;
SIGNAL \inst202|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[0]~2_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[0]~1_combout\ : std_logic;
SIGNAL \inst700666|inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst49|ALT_INV_PCWrite~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selfalgs[3]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selfalgs[0]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[2]~6_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal7~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[0]~5_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[0]~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[0]~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selop[1]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[3]~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[3]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_seldato~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selregr[2]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selsrc[1]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_selbranch\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \inst16|ALT_INV_vf~q\ : std_logic;
SIGNAL \ALT_INV_RELOJ~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_RELOJ~input_o\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_seldirw\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst4|ALT_INV_memw~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sels1~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sr~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_selc~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_cadj~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_seldir\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|ALT_INV_selbranch\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \inst4|ALT_INV_vf~combout\ : std_logic;
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
SIGNAL \inst33|ALT_INV_opres[15]~87_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~31_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~30_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~29_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~28_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sr~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~27_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~26_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_cadj~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~25_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~24_combout\ : std_logic;
SIGNAL \inst700666|inst|ALT_INV_D2[1]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_comb~25_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_seldir[0]~0_combout\ : std_logic;
SIGNAL \inst700666|inst|ALT_INV_D2[0]~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_cadj~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|ALT_INV_valor_interno[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|ALT_INV_valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|ALT_INV_valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|ALT_INV_valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCB|ALT_INV_valor_interno[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCA|ALT_INV_valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700666|ACCA|ALT_INV_valor_interno[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[14]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|ALT_INV_valor_interno[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst700|ALT_INV_valor_interno[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\ : std_logic;

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
\inst14|ALT_INV_valor_interno\(0) <= NOT \inst14|valor_interno\(0);
\inst33|ALT_INV_opres[14]~13_combout\ <= NOT \inst33|opres[14]~13_combout\;
\inst33|ALT_INV_opres[13]~12_combout\ <= NOT \inst33|opres[13]~12_combout\;
\inst33|ALT_INV_opres[11]~11_combout\ <= NOT \inst33|opres[11]~11_combout\;
\inst33|ALT_INV_opres[10]~10_combout\ <= NOT \inst33|opres[10]~10_combout\;
\inst33|ALT_INV_opres[9]~9_combout\ <= NOT \inst33|opres[9]~9_combout\;
\inst33|ALT_INV_opres[8]~8_combout\ <= NOT \inst33|opres[8]~8_combout\;
\inst33|ALT_INV_opres[7]~7_combout\ <= NOT \inst33|opres[7]~7_combout\;
\inst14|ALT_INV_valor_interno\(7) <= NOT \inst14|valor_interno\(7);
\inst33|ALT_INV_opres[5]~6_combout\ <= NOT \inst33|opres[5]~6_combout\;
\inst14|ALT_INV_valor_interno\(5) <= NOT \inst14|valor_interno\(5);
\inst33|ALT_INV_opres[4]~5_combout\ <= NOT \inst33|opres[4]~5_combout\;
\inst14|ALT_INV_valor_interno\(4) <= NOT \inst14|valor_interno\(4);
\inst33|ALT_INV_opres[3]~4_combout\ <= NOT \inst33|opres[3]~4_combout\;
\inst14|ALT_INV_valor_interno\(3) <= NOT \inst14|valor_interno\(3);
\inst33|ALT_INV_opres[2]~3_combout\ <= NOT \inst33|opres[2]~3_combout\;
\inst14|ALT_INV_valor_interno\(2) <= NOT \inst14|valor_interno\(2);
\inst33|ALT_INV_opres[1]~2_combout\ <= NOT \inst33|opres[1]~2_combout\;
\inst14|ALT_INV_valor_interno\(1) <= NOT \inst14|valor_interno\(1);
\inst33|ALT_INV_opres[12]~1_combout\ <= NOT \inst33|opres[12]~1_combout\;
\inst33|ALT_INV_opres[6]~0_combout\ <= NOT \inst33|opres[6]~0_combout\;
\inst14|ALT_INV_valor_interno\(6) <= NOT \inst14|valor_interno\(6);
\inst33|ALT_INV_Equal0~0_combout\ <= NOT \inst33|Equal0~0_combout\;
\inst16|ALT_INV_selop\(0) <= NOT \inst16|selop\(0);
\inst16|ALT_INV_selop\(1) <= NOT \inst16|selop\(1);
\inst16|ALT_INV_selop\(2) <= NOT \inst16|selop\(2);
\inst49|ALT_INV_process_0~2_combout\ <= NOT \inst49|process_0~2_combout\;
\inst49|ALT_INV_process_0~1_combout\ <= NOT \inst49|process_0~1_combout\;
\inst49|ALT_INV_process_0~0_combout\ <= NOT \inst49|process_0~0_combout\;
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
\inst8|ALT_INV_valor_interno\(19) <= NOT \inst8|valor_interno\(19);
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
\inst700666|ACCB|ALT_INV_valor_interno\(10) <= NOT \inst700666|ACCB|valor_interno\(10);
\inst700666|ACCB|ALT_INV_valor_interno\(11) <= NOT \inst700666|ACCB|valor_interno\(11);
\inst700666|ACCB|ALT_INV_valor_interno\(12) <= NOT \inst700666|ACCB|valor_interno\(12);
\inst700666|ACCB|ALT_INV_valor_interno\(13) <= NOT \inst700666|ACCB|valor_interno\(13);
\inst700666|ACCB|ALT_INV_valor_interno\(14) <= NOT \inst700666|ACCB|valor_interno\(14);
\inst700666|ACCB|ALT_INV_valor_interno\(15) <= NOT \inst700666|ACCB|valor_interno\(15);
\inst700666|ACCA|ALT_INV_valor_interno\(0) <= NOT \inst700666|ACCA|valor_interno\(0);
\inst700666|ACCA|ALT_INV_valor_interno\(1) <= NOT \inst700666|ACCA|valor_interno\(1);
\inst700666|ACCA|ALT_INV_valor_interno\(3) <= NOT \inst700666|ACCA|valor_interno\(3);
\inst700666|ACCA|ALT_INV_valor_interno\(4) <= NOT \inst700666|ACCA|valor_interno\(4);
\inst700666|ACCA|ALT_INV_valor_interno\(5) <= NOT \inst700666|ACCA|valor_interno\(5);
\inst700666|ACCA|ALT_INV_valor_interno\(7) <= NOT \inst700666|ACCA|valor_interno\(7);
\inst700666|ACCA|ALT_INV_valor_interno\(8) <= NOT \inst700666|ACCA|valor_interno\(8);
\inst700666|ACCA|ALT_INV_valor_interno\(9) <= NOT \inst700666|ACCA|valor_interno\(9);
\inst700666|ACCA|ALT_INV_valor_interno\(10) <= NOT \inst700666|ACCA|valor_interno\(10);
\inst700666|ACCA|ALT_INV_valor_interno\(11) <= NOT \inst700666|ACCA|valor_interno\(11);
\inst700666|ACCA|ALT_INV_valor_interno\(12) <= NOT \inst700666|ACCA|valor_interno\(12);
\inst700666|ACCA|ALT_INV_valor_interno\(13) <= NOT \inst700666|ACCA|valor_interno\(13);
\inst700666|ACCA|ALT_INV_valor_interno\(14) <= NOT \inst700666|ACCA|valor_interno\(14);
\inst700666|ACCA|ALT_INV_valor_interno\(15) <= NOT \inst700666|ACCA|valor_interno\(15);
\inst33|ALT_INV_opres[6]~83_combout\ <= NOT \inst33|opres[6]~83_combout\;
\inst33|ALT_INV_opres[12]~79_combout\ <= NOT \inst33|opres[12]~79_combout\;
\inst33|ALT_INV_opres[1]~75_combout\ <= NOT \inst33|opres[1]~75_combout\;
\inst33|ALT_INV_opres[2]~71_combout\ <= NOT \inst33|opres[2]~71_combout\;
\inst33|ALT_INV_opres[3]~67_combout\ <= NOT \inst33|opres[3]~67_combout\;
\inst33|ALT_INV_opres[4]~63_combout\ <= NOT \inst33|opres[4]~63_combout\;
\inst33|ALT_INV_opres[5]~59_combout\ <= NOT \inst33|opres[5]~59_combout\;
\inst33|ALT_INV_opres[7]~55_combout\ <= NOT \inst33|opres[7]~55_combout\;
\inst33|ALT_INV_opres[8]~51_combout\ <= NOT \inst33|opres[8]~51_combout\;
\inst33|ALT_INV_opres[9]~47_combout\ <= NOT \inst33|opres[9]~47_combout\;
\inst33|ALT_INV_opres[10]~43_combout\ <= NOT \inst33|opres[10]~43_combout\;
\inst33|ALT_INV_opres[11]~39_combout\ <= NOT \inst33|opres[11]~39_combout\;
\inst33|ALT_INV_opres[13]~35_combout\ <= NOT \inst33|opres[13]~35_combout\;
\inst33|ALT_INV_opres[14]~31_combout\ <= NOT \inst33|opres[14]~31_combout\;
\inst33|ALT_INV_opres[0]~27_combout\ <= NOT \inst33|opres[0]~27_combout\;
\inst33|ALT_INV_opres[0]~23_combout\ <= NOT \inst33|opres[0]~23_combout\;
\inst33|ALT_INV_opres[16]~19_combout\ <= NOT \inst33|opres[16]~19_combout\;
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
\inst33|ALT_INV_Add2~69_sumout\ <= NOT \inst33|Add2~69_sumout\;
\inst33|ALT_INV_Add0~69_sumout\ <= NOT \inst33|Add0~69_sumout\;
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
\inst33|ALT_INV_opres[15]~14_combout\ <= NOT \inst33|opres[15]~14_combout\;
\inst14|ALT_INV_valor_interno\(15) <= NOT \inst14|valor_interno\(15);
\inst33|ALT_INV_Add2~61_sumout\ <= NOT \inst33|Add2~61_sumout\;
\inst33|ALT_INV_Add0~61_sumout\ <= NOT \inst33|Add0~61_sumout\;
\inst33|ALT_INV_Add2~57_sumout\ <= NOT \inst33|Add2~57_sumout\;
\inst33|ALT_INV_Add0~57_sumout\ <= NOT \inst33|Add0~57_sumout\;
\inst14|ALT_INV_valor_interno\(14) <= NOT \inst14|valor_interno\(14);
\inst33|ALT_INV_Add0~53_sumout\ <= NOT \inst33|Add0~53_sumout\;
\inst33|ALT_INV_Add2~53_sumout\ <= NOT \inst33|Add2~53_sumout\;
\inst700|ALT_INV_valor_interno\(15) <= NOT \inst700|valor_interno\(15);
\inst14|ALT_INV_valor_interno\(13) <= NOT \inst14|valor_interno\(13);
\inst33|ALT_INV_Add0~49_sumout\ <= NOT \inst33|Add0~49_sumout\;
\inst33|ALT_INV_Add2~49_sumout\ <= NOT \inst33|Add2~49_sumout\;
\inst700|ALT_INV_valor_interno\(14) <= NOT \inst700|valor_interno\(14);
\inst14|ALT_INV_valor_interno\(11) <= NOT \inst14|valor_interno\(11);
\inst33|ALT_INV_Add0~45_sumout\ <= NOT \inst33|Add0~45_sumout\;
\inst33|ALT_INV_Add2~45_sumout\ <= NOT \inst33|Add2~45_sumout\;
\inst14|ALT_INV_valor_interno\(10) <= NOT \inst14|valor_interno\(10);
\inst33|ALT_INV_Add0~41_sumout\ <= NOT \inst33|Add0~41_sumout\;
\inst33|ALT_INV_Add2~41_sumout\ <= NOT \inst33|Add2~41_sumout\;
\inst14|ALT_INV_valor_interno\(9) <= NOT \inst14|valor_interno\(9);
\inst33|ALT_INV_Add0~37_sumout\ <= NOT \inst33|Add0~37_sumout\;
\inst33|ALT_INV_Add2~37_sumout\ <= NOT \inst33|Add2~37_sumout\;
\inst700|ALT_INV_valor_interno\(10) <= NOT \inst700|valor_interno\(10);
\inst14|ALT_INV_valor_interno\(8) <= NOT \inst14|valor_interno\(8);
\inst33|ALT_INV_Add0~33_sumout\ <= NOT \inst33|Add0~33_sumout\;
\inst33|ALT_INV_Add2~33_sumout\ <= NOT \inst33|Add2~33_sumout\;
\inst700|ALT_INV_valor_interno\(9) <= NOT \inst700|valor_interno\(9);
\inst33|ALT_INV_Add0~29_sumout\ <= NOT \inst33|Add0~29_sumout\;
\inst33|ALT_INV_Add2~29_sumout\ <= NOT \inst33|Add2~29_sumout\;
\inst700|ALT_INV_valor_interno\(8) <= NOT \inst700|valor_interno\(8);
\inst33|ALT_INV_Add0~25_sumout\ <= NOT \inst33|Add0~25_sumout\;
\inst33|ALT_INV_Add2~25_sumout\ <= NOT \inst33|Add2~25_sumout\;
\inst33|ALT_INV_Add0~21_sumout\ <= NOT \inst33|Add0~21_sumout\;
\inst33|ALT_INV_Add2~21_sumout\ <= NOT \inst33|Add2~21_sumout\;
\inst33|ALT_INV_Add0~17_sumout\ <= NOT \inst33|Add0~17_sumout\;
\inst33|ALT_INV_Add2~17_sumout\ <= NOT \inst33|Add2~17_sumout\;
\inst700|ALT_INV_valor_interno\(4) <= NOT \inst700|valor_interno\(4);
\inst33|ALT_INV_Add0~13_sumout\ <= NOT \inst33|Add0~13_sumout\;
\inst33|ALT_INV_Add2~13_sumout\ <= NOT \inst33|Add2~13_sumout\;
\inst700|ALT_INV_valor_interno\(3) <= NOT \inst700|valor_interno\(3);
\inst700|ALT_INV_valor_interno\(0) <= NOT \inst700|valor_interno\(0);
\inst700|ALT_INV_valor_interno\(1) <= NOT \inst700|valor_interno\(1);
\inst33|ALT_INV_Add0~9_sumout\ <= NOT \inst33|Add0~9_sumout\;
\inst33|ALT_INV_Add2~9_sumout\ <= NOT \inst33|Add2~9_sumout\;
\inst700|ALT_INV_valor_interno\(2) <= NOT \inst700|valor_interno\(2);
\inst700|ALT_INV_valor_interno\(11) <= NOT \inst700|valor_interno\(11);
\inst700|ALT_INV_valor_interno\(12) <= NOT \inst700|valor_interno\(12);
\inst14|ALT_INV_valor_interno\(12) <= NOT \inst14|valor_interno\(12);
\inst33|ALT_INV_Add0~5_sumout\ <= NOT \inst33|Add0~5_sumout\;
\inst33|ALT_INV_Add2~5_sumout\ <= NOT \inst33|Add2~5_sumout\;
\inst700|ALT_INV_valor_interno\(13) <= NOT \inst700|valor_interno\(13);
\inst700|ALT_INV_valor_interno\(5) <= NOT \inst700|valor_interno\(5);
\inst700|ALT_INV_valor_interno\(6) <= NOT \inst700|valor_interno\(6);
\inst33|ALT_INV_Add0~1_sumout\ <= NOT \inst33|Add0~1_sumout\;
\inst33|ALT_INV_Add2~1_sumout\ <= NOT \inst33|Add2~1_sumout\;
\inst700|ALT_INV_valor_interno\(7) <= NOT \inst700|valor_interno\(7);
\inst7|ALT_INV_Add0~17_sumout\ <= NOT \inst7|Add0~17_sumout\;
\inst7|ALT_INV_Add0~13_sumout\ <= NOT \inst7|Add0~13_sumout\;
\inst7|ALT_INV_Add0~9_sumout\ <= NOT \inst7|Add0~9_sumout\;
\inst7|ALT_INV_Add0~5_sumout\ <= NOT \inst7|Add0~5_sumout\;
\inst7|ALT_INV_Add0~1_sumout\ <= NOT \inst7|Add0~1_sumout\;
\inst34|ALT_INV_valor_interno\(4) <= NOT \inst34|valor_interno\(4);
\inst34|ALT_INV_valor_interno\(5) <= NOT \inst34|valor_interno\(5);
\inst34|ALT_INV_valor_interno\(3) <= NOT \inst34|valor_interno\(3);
\inst34|ALT_INV_valor_interno\(2) <= NOT \inst34|valor_interno\(2);
\inst34|ALT_INV_valor_interno\(1) <= NOT \inst34|valor_interno\(1);
\inst34|ALT_INV_valor_interno\(0) <= NOT \inst34|valor_interno\(0);
\inst24|ALT_INV_valor_interno\(0) <= NOT \inst24|valor_interno\(0);
\inst24|ALT_INV_valor_interno\(1) <= NOT \inst24|valor_interno\(1);
\inst24|ALT_INV_valor_interno\(3) <= NOT \inst24|valor_interno\(3);
\inst24|ALT_INV_valor_interno\(4) <= NOT \inst24|valor_interno\(4);
\inst24|ALT_INV_valor_interno\(5) <= NOT \inst24|valor_interno\(5);
\inst24|ALT_INV_valor_interno\(6) <= NOT \inst24|valor_interno\(6);
\inst24|ALT_INV_valor_interno\(8) <= NOT \inst24|valor_interno\(8);
\inst24|ALT_INV_valor_interno\(9) <= NOT \inst24|valor_interno\(9);
\inst24|ALT_INV_valor_interno\(14) <= NOT \inst24|valor_interno\(14);
\inst24|ALT_INV_valor_interno\(15) <= NOT \inst24|valor_interno\(15);
\inst4|ALT_INV_comb~24_combout\ <= NOT \inst4|comb~24_combout\;
\inst10|ALT_INV_Mux10~1_combout\ <= NOT \inst10|Mux10~1_combout\;
\inst10|ALT_INV_Mux10~0_combout\ <= NOT \inst10|Mux10~0_combout\;
\inst107|ALT_INV_seldirw\(1) <= NOT \inst107|seldirw\(1);
\inst107|ALT_INV_memw~q\ <= NOT \inst107|memw~q\;
\inst4|ALT_INV_comb~23_combout\ <= NOT \inst4|comb~23_combout\;
\inst4|ALT_INV_comb~22_combout\ <= NOT \inst4|comb~22_combout\;
\inst4|ALT_INV_selsrc[1]~1_combout\ <= NOT \inst4|selsrc[1]~1_combout\;
\inst4|ALT_INV_comb~21_combout\ <= NOT \inst4|comb~21_combout\;
\inst4|ALT_INV_comb~20_combout\ <= NOT \inst4|comb~20_combout\;
\inst4|ALT_INV_seldato~2_combout\ <= NOT \inst4|seldato~2_combout\;
\inst4|ALT_INV_selfalgs[3]~2_combout\ <= NOT \inst4|selfalgs[3]~2_combout\;
\inst4|ALT_INV_comb~19_combout\ <= NOT \inst4|comb~19_combout\;
\inst4|ALT_INV_comb~18_combout\ <= NOT \inst4|comb~18_combout\;
\inst4|ALT_INV_selop[0]~3_combout\ <= NOT \inst4|selop[0]~3_combout\;
\inst4|ALT_INV_comb~17_combout\ <= NOT \inst4|comb~17_combout\;
\inst4|ALT_INV_selop[1]~2_combout\ <= NOT \inst4|selop[1]~2_combout\;
\inst4|ALT_INV_comb~16_combout\ <= NOT \inst4|comb~16_combout\;
\inst4|ALT_INV_comb~15_combout\ <= NOT \inst4|comb~15_combout\;
\inst4|ALT_INV_selop[2]~1_combout\ <= NOT \inst4|selop[2]~1_combout\;
\inst4|ALT_INV_Equal10~1_combout\ <= NOT \inst4|Equal10~1_combout\;
\inst40|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst16|ALT_INV_selc~q\ <= NOT \inst16|selc~q\;
\inst16|ALT_INV_cadj~q\ <= NOT \inst16|cadj~q\;
\inst33|ALT_INV_opres~18_combout\ <= NOT \inst33|opres~18_combout\;
\inst4|ALT_INV_comb~14_combout\ <= NOT \inst4|comb~14_combout\;
\inst4|ALT_INV_comb~13_combout\ <= NOT \inst4|comb~13_combout\;
\inst4|ALT_INV_selregw[0]~1_combout\ <= NOT \inst4|selregw[0]~1_combout\;
\inst4|ALT_INV_comb~12_combout\ <= NOT \inst4|comb~12_combout\;
\inst4|ALT_INV_comb~11_combout\ <= NOT \inst4|comb~11_combout\;
\inst4|ALT_INV_selregw[2]~0_combout\ <= NOT \inst4|selregw[2]~0_combout\;
\inst4|ALT_INV_Equal1~1_combout\ <= NOT \inst4|Equal1~1_combout\;
\inst4|ALT_INV_Equal0~3_combout\ <= NOT \inst4|Equal0~3_combout\;
\inst4|ALT_INV_comb~10_combout\ <= NOT \inst4|comb~10_combout\;
\inst4|ALT_INV_comb~9_combout\ <= NOT \inst4|comb~9_combout\;
\inst4|ALT_INV_seldato~1_combout\ <= NOT \inst4|seldato~1_combout\;
\inst4|ALT_INV_sels1~0_combout\ <= NOT \inst4|sels1~0_combout\;
\inst8|ALT_INV_valor_interno\(0) <= NOT \inst8|valor_interno\(0);
\inst8|ALT_INV_valor_interno\(4) <= NOT \inst8|valor_interno\(4);
\inst202|ALT_INV_Mux29~0_combout\ <= NOT \inst202|Mux29~0_combout\;
\inst8|ALT_INV_valor_interno\(2) <= NOT \inst8|valor_interno\(2);
\inst14|ALT_INV_valor_interno[0]~2_combout\ <= NOT \inst14|valor_interno[0]~2_combout\;
\inst14|ALT_INV_valor_interno[0]~1_combout\ <= NOT \inst14|valor_interno[0]~1_combout\;
\inst8|ALT_INV_valor_interno\(1) <= NOT \inst8|valor_interno\(1);
\inst700666|inst|ALT_INV_Equal1~0_combout\ <= NOT \inst700666|inst|Equal1~0_combout\;
\inst49|ALT_INV_PCWrite~0_combout\ <= NOT \inst49|PCWrite~0_combout\;
\inst4|ALT_INV_comb~8_combout\ <= NOT \inst4|comb~8_combout\;
\inst4|ALT_INV_comb~7_combout\ <= NOT \inst4|comb~7_combout\;
\inst4|ALT_INV_comb~6_combout\ <= NOT \inst4|comb~6_combout\;
\inst4|ALT_INV_selfalgs[3]~1_combout\ <= NOT \inst4|selfalgs[3]~1_combout\;
\inst4|ALT_INV_comb~5_combout\ <= NOT \inst4|comb~5_combout\;
\inst4|ALT_INV_comb~4_combout\ <= NOT \inst4|comb~4_combout\;
\inst4|ALT_INV_selfalgs[0]~0_combout\ <= NOT \inst4|selfalgs[0]~0_combout\;
\inst4|ALT_INV_Equal8~1_combout\ <= NOT \inst4|Equal8~1_combout\;
\inst4|ALT_INV_comb~3_combout\ <= NOT \inst4|comb~3_combout\;
\inst4|ALT_INV_comb~2_combout\ <= NOT \inst4|comb~2_combout\;
\inst4|ALT_INV_selregr[2]~6_combout\ <= NOT \inst4|selregr[2]~6_combout\;
\inst4|ALT_INV_Equal7~3_combout\ <= NOT \inst4|Equal7~3_combout\;
\inst4|ALT_INV_comb~1_combout\ <= NOT \inst4|comb~1_combout\;
\inst4|ALT_INV_comb~0_combout\ <= NOT \inst4|comb~0_combout\;
\inst4|ALT_INV_selregr[0]~5_combout\ <= NOT \inst4|selregr[0]~5_combout\;
\inst4|ALT_INV_selregr[0]~4_combout\ <= NOT \inst4|selregr[0]~4_combout\;
\inst4|ALT_INV_selregr[0]~3_combout\ <= NOT \inst4|selregr[0]~3_combout\;
\inst4|ALT_INV_Equal2~2_combout\ <= NOT \inst4|Equal2~2_combout\;
\inst4|ALT_INV_selop[1]~0_combout\ <= NOT \inst4|selop[1]~0_combout\;
\inst4|ALT_INV_Equal5~0_combout\ <= NOT \inst4|Equal5~0_combout\;
\inst4|ALT_INV_selregr[3]~2_combout\ <= NOT \inst4|selregr[3]~2_combout\;
\inst4|ALT_INV_selregr[3]~1_combout\ <= NOT \inst4|selregr[3]~1_combout\;
\inst4|ALT_INV_Equal8~0_combout\ <= NOT \inst4|Equal8~0_combout\;
\inst4|ALT_INV_seldato~0_combout\ <= NOT \inst4|seldato~0_combout\;
\inst4|ALT_INV_Equal10~0_combout\ <= NOT \inst4|Equal10~0_combout\;
\inst4|ALT_INV_Equal7~2_combout\ <= NOT \inst4|Equal7~2_combout\;
\inst4|ALT_INV_Equal4~0_combout\ <= NOT \inst4|Equal4~0_combout\;
\inst4|ALT_INV_Equal7~1_combout\ <= NOT \inst4|Equal7~1_combout\;
\inst4|ALT_INV_selregr[2]~0_combout\ <= NOT \inst4|selregr[2]~0_combout\;
\inst4|ALT_INV_Equal2~1_combout\ <= NOT \inst4|Equal2~1_combout\;
\inst4|ALT_INV_Equal1~0_combout\ <= NOT \inst4|Equal1~0_combout\;
\inst4|ALT_INV_Equal0~2_combout\ <= NOT \inst4|Equal0~2_combout\;
\inst4|ALT_INV_Equal0~1_combout\ <= NOT \inst4|Equal0~1_combout\;
\inst4|ALT_INV_Equal0~0_combout\ <= NOT \inst4|Equal0~0_combout\;
\inst4|ALT_INV_Equal3~1_combout\ <= NOT \inst4|Equal3~1_combout\;
\inst4|ALT_INV_selsrc[1]~0_combout\ <= NOT \inst4|selsrc[1]~0_combout\;
\inst4|ALT_INV_Equal6~0_combout\ <= NOT \inst4|Equal6~0_combout\;
\inst4|ALT_INV_Equal2~0_combout\ <= NOT \inst4|Equal2~0_combout\;
\inst4|ALT_INV_Equal3~0_combout\ <= NOT \inst4|Equal3~0_combout\;
\inst4|ALT_INV_Equal9~0_combout\ <= NOT \inst4|Equal9~0_combout\;
\inst4|ALT_INV_Equal7~0_combout\ <= NOT \inst4|Equal7~0_combout\;
\inst16|ALT_INV_selbranch\(1) <= NOT \inst16|selbranch\(1);
\inst16|ALT_INV_selbranch\(2) <= NOT \inst16|selbranch\(2);
\inst16|ALT_INV_vf~q\ <= NOT \inst16|vf~q\;
\ALT_INV_RELOJ~inputCLKENA0_outclk\ <= NOT \RELOJ~inputCLKENA0_outclk\;
\ALT_INV_RELOJ~input_o\ <= NOT \RELOJ~input_o\;
\inst34|ALT_INV_valor_interno[0]~_wirecell_combout\ <= NOT \inst34|valor_interno[0]~_wirecell_combout\;
\inst4|ALT_INV_seldirw\(1) <= NOT \inst4|seldirw\(1);
\inst4|ALT_INV_memw~combout\ <= NOT \inst4|memw~combout\;
\inst4|ALT_INV_sels1~combout\ <= NOT \inst4|sels1~combout\;
\inst4|ALT_INV_sr~combout\ <= NOT \inst4|sr~combout\;
\inst4|ALT_INV_selc~combout\ <= NOT \inst4|selc~combout\;
\inst4|ALT_INV_cadj~combout\ <= NOT \inst4|cadj~combout\;
\inst4|ALT_INV_seldir\(0) <= NOT \inst4|seldir\(0);
\inst4|ALT_INV_selbranch\(1) <= NOT \inst4|selbranch\(1);
\inst4|ALT_INV_selbranch\(2) <= NOT \inst4|selbranch\(2);
\inst4|ALT_INV_vf~combout\ <= NOT \inst4|vf~combout\;
\inst4|ALT_INV_selsrc\(1) <= NOT \inst4|selsrc\(1);
\inst4|ALT_INV_selsrc\(0) <= NOT \inst4|selsrc\(0);
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
\inst33|ALT_INV_opres[15]~87_combout\ <= NOT \inst33|opres[15]~87_combout\;
\inst4|ALT_INV_comb~31_combout\ <= NOT \inst4|comb~31_combout\;
\inst4|ALT_INV_comb~30_combout\ <= NOT \inst4|comb~30_combout\;
\inst4|ALT_INV_comb~29_combout\ <= NOT \inst4|comb~29_combout\;
\inst4|ALT_INV_comb~28_combout\ <= NOT \inst4|comb~28_combout\;
\inst4|ALT_INV_sr~0_combout\ <= NOT \inst4|sr~0_combout\;
\inst4|ALT_INV_comb~27_combout\ <= NOT \inst4|comb~27_combout\;
\inst4|ALT_INV_comb~26_combout\ <= NOT \inst4|comb~26_combout\;
\inst4|ALT_INV_cadj~0_combout\ <= NOT \inst4|cadj~0_combout\;
\inst11|ALT_INV_Add0~25_combout\ <= NOT \inst11|Add0~25_combout\;
\inst11|ALT_INV_Add0~24_combout\ <= NOT \inst11|Add0~24_combout\;
\inst700666|inst|ALT_INV_D2[1]~1_combout\ <= NOT \inst700666|inst|D2[1]~1_combout\;
\inst4|ALT_INV_comb~25_combout\ <= NOT \inst4|comb~25_combout\;
\inst4|ALT_INV_seldir[0]~0_combout\ <= NOT \inst4|seldir[0]~0_combout\;
\inst700666|inst|ALT_INV_D2[0]~0_combout\ <= NOT \inst700666|inst|D2[0]~0_combout\;
\inst16|ALT_INV_cadj~DUPLICATE_q\ <= NOT \inst16|cadj~DUPLICATE_q\;
\inst8|ALT_INV_valor_interno[0]~DUPLICATE_q\ <= NOT \inst8|valor_interno[0]~DUPLICATE_q\;
\inst8|ALT_INV_valor_interno[4]~DUPLICATE_q\ <= NOT \inst8|valor_interno[4]~DUPLICATE_q\;
\inst8|ALT_INV_valor_interno[2]~DUPLICATE_q\ <= NOT \inst8|valor_interno[2]~DUPLICATE_q\;
\inst8|ALT_INV_valor_interno[1]~DUPLICATE_q\ <= NOT \inst8|valor_interno[1]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[7]~DUPLICATE_q\ <= NOT \inst14|valor_interno[7]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[1]~DUPLICATE_q\ <= NOT \inst14|valor_interno[1]~DUPLICATE_q\;
\inst700666|ACCB|ALT_INV_valor_interno[3]~DUPLICATE_q\ <= NOT \inst700666|ACCB|valor_interno[3]~DUPLICATE_q\;
\inst700666|ACCB|ALT_INV_valor_interno[9]~DUPLICATE_q\ <= NOT \inst700666|ACCB|valor_interno[9]~DUPLICATE_q\;
\inst700666|ACCA|ALT_INV_valor_interno[2]~DUPLICATE_q\ <= NOT \inst700666|ACCA|valor_interno[2]~DUPLICATE_q\;
\inst700666|ACCA|ALT_INV_valor_interno[6]~DUPLICATE_q\ <= NOT \inst700666|ACCA|valor_interno[6]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[15]~DUPLICATE_q\ <= NOT \inst14|valor_interno[15]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[14]~DUPLICATE_q\ <= NOT \inst14|valor_interno[14]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\ <= NOT \inst700|valor_interno[15]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[13]~DUPLICATE_q\ <= NOT \inst14|valor_interno[13]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[11]~DUPLICATE_q\ <= NOT \inst14|valor_interno[11]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[10]~DUPLICATE_q\ <= NOT \inst14|valor_interno[10]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[9]~DUPLICATE_q\ <= NOT \inst14|valor_interno[9]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\ <= NOT \inst700|valor_interno[10]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[8]~DUPLICATE_q\ <= NOT \inst14|valor_interno[8]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\ <= NOT \inst700|valor_interno[8]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\ <= NOT \inst700|valor_interno[3]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\ <= NOT \inst700|valor_interno[1]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[2]~DUPLICATE_q\ <= NOT \inst700|valor_interno[2]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[11]~DUPLICATE_q\ <= NOT \inst700|valor_interno[11]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[12]~DUPLICATE_q\ <= NOT \inst700|valor_interno[12]~DUPLICATE_q\;
\inst14|ALT_INV_valor_interno[12]~DUPLICATE_q\ <= NOT \inst14|valor_interno[12]~DUPLICATE_q\;
\inst700|ALT_INV_valor_interno[5]~DUPLICATE_q\ <= NOT \inst700|valor_interno[5]~DUPLICATE_q\;
\inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\ <= NOT \inst34|valor_interno[4]~DUPLICATE_q\;
\inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\ <= NOT \inst34|valor_interno[3]~DUPLICATE_q\;
\inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\ <= NOT \inst34|valor_interno[0]~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y37_N22
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

-- Location: IOOBUF_X76_Y81_N36
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

-- Location: IOOBUF_X64_Y0_N53
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

-- Location: IOOBUF_X89_Y9_N22
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

-- Location: IOOBUF_X86_Y81_N2
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

-- Location: IOOBUF_X68_Y0_N19
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

-- Location: IOOBUF_X89_Y37_N39
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

-- Location: IOOBUF_X80_Y81_N36
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

-- Location: IOOBUF_X78_Y81_N2
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

-- Location: IOOBUF_X66_Y0_N42
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

-- Location: IOOBUF_X78_Y81_N19
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

-- Location: IOOBUF_X70_Y0_N36
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

-- Location: IOOBUF_X89_Y36_N39
\ACCA_D[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno[9]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACCA_D(9));

-- Location: IOOBUF_X68_Y0_N36
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

-- Location: IOOBUF_X66_Y0_N76
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

-- Location: IOOBUF_X68_Y0_N2
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

-- Location: IOOBUF_X70_Y0_N19
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

-- Location: IOOBUF_X76_Y81_N2
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

-- Location: IOOBUF_X74_Y81_N76
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

-- Location: IOOBUF_X89_Y9_N5
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

-- Location: IOOBUF_X82_Y81_N59
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

-- Location: IOOBUF_X78_Y81_N53
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

-- Location: IOOBUF_X80_Y81_N19
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

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X72_Y0_N53
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

-- Location: IOOBUF_X70_Y0_N53
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

-- Location: IOOBUF_X86_Y81_N36
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

-- Location: IOOBUF_X89_Y8_N39
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

-- Location: IOOBUF_X89_Y8_N22
\ACCB_D[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno[9]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACCB_D(9));

-- Location: IOOBUF_X89_Y36_N5
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

-- Location: IOOBUF_X72_Y0_N19
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

-- Location: IOOBUF_X64_Y0_N36
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

-- Location: IOOBUF_X89_Y8_N5
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

-- Location: IOOBUF_X89_Y36_N22
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X72_Y0_N36
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

-- Location: IOOBUF_X58_Y0_N42
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

-- Location: IOOBUF_X76_Y81_N19
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

-- Location: IOOBUF_X70_Y81_N53
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

-- Location: IOOBUF_X86_Y81_N53
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

-- Location: IOOBUF_X89_Y37_N5
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

-- Location: IOOBUF_X74_Y81_N93
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

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X82_Y81_N93
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

-- Location: IOOBUF_X89_Y38_N22
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

-- Location: IOOBUF_X89_Y38_N39
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

-- Location: IOOBUF_X84_Y81_N36
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

-- Location: IOOBUF_X72_Y81_N36
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

-- Location: IOOBUF_X80_Y81_N53
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

-- Location: IOOBUF_X89_Y38_N5
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

-- Location: IOOBUF_X89_Y9_N39
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

-- Location: IOOBUF_X89_Y37_N56
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

-- Location: IOOBUF_X70_Y81_N2
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

-- Location: IOOBUF_X89_Y38_N56
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

-- Location: IOOBUF_X66_Y0_N59
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

-- Location: IOOBUF_X88_Y81_N37
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

-- Location: IOOBUF_X30_Y0_N19
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: IOOBUF_X28_Y81_N19
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

-- Location: IOOBUF_X60_Y81_N19
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

-- Location: IOOBUF_X8_Y0_N19
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

-- Location: IOOBUF_X62_Y0_N53
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

-- Location: IOOBUF_X89_Y9_N56
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

-- Location: IOOBUF_X89_Y8_N56
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

-- Location: IOOBUF_X68_Y0_N53
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

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X89_Y35_N79
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

-- Location: IOOBUF_X89_Y35_N96
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

-- Location: IOOBUF_X89_Y36_N56
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

-- Location: IOOBUF_X34_Y0_N76
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

-- Location: IOOBUF_X30_Y81_N19
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

-- Location: IOOBUF_X6_Y0_N36
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

-- Location: IOOBUF_X70_Y81_N36
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

-- Location: IOOBUF_X70_Y81_N19
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

-- Location: IOOBUF_X26_Y81_N76
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

-- Location: IOOBUF_X32_Y0_N36
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

-- Location: IOOBUF_X62_Y81_N36
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X2_Y0_N76
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

-- Location: IOOBUF_X72_Y81_N2
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

-- Location: IOOBUF_X26_Y81_N59
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X72_Y81_N53
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

-- Location: IOOBUF_X64_Y81_N19
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

-- Location: IOOBUF_X60_Y81_N53
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

-- Location: IOOBUF_X56_Y81_N36
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

-- Location: IOOBUF_X26_Y0_N93
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

-- Location: IOOBUF_X8_Y0_N2
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

-- Location: IOOBUF_X30_Y81_N2
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

-- Location: IOOBUF_X58_Y81_N93
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N93
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

-- Location: IOOBUF_X66_Y81_N59
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

-- Location: IOOBUF_X52_Y81_N2
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

-- Location: IOOBUF_X76_Y81_N53
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

-- Location: IOOBUF_X38_Y81_N36
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

-- Location: IOOBUF_X64_Y81_N2
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

-- Location: IOOBUF_X68_Y81_N2
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

-- Location: IOOBUF_X60_Y81_N2
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

-- Location: IOOBUF_X88_Y81_N20
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

-- Location: IOOBUF_X50_Y81_N76
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X28_Y81_N36
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

-- Location: IOOBUF_X6_Y0_N53
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

-- Location: IOOBUF_X50_Y81_N93
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

-- Location: IOOBUF_X78_Y81_N36
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

-- Location: IOOBUF_X2_Y0_N93
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

-- Location: IOOBUF_X88_Y81_N54
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

-- Location: IOOBUF_X74_Y81_N42
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

-- Location: IOOBUF_X64_Y81_N36
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

-- Location: IOOBUF_X58_Y81_N59
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X36_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N19
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

-- Location: FF_X75_Y28_N50
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

-- Location: FF_X77_Y28_N20
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

-- Location: LABCELL_X75_Y28_N42
\inst49|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst49|process_0~2_combout\ = ( \inst107|selregw\(0) & ( (\inst16|selregw\(2) & !\inst16|selregw\(0)) ) ) # ( !\inst107|selregw\(0) & ( ((\inst16|selregw\(2) & !\inst16|selregw\(0))) # (\inst107|selregw\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selregw\(2),
	datab => \inst16|ALT_INV_selregw\(0),
	datac => \inst107|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst49|process_0~2_combout\);

-- Location: LABCELL_X77_Y27_N30
\inst7|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~1_sumout\ = SUM(( \inst34|valor_interno[0]~DUPLICATE_q\ ) + ( \inst34|valor_interno\(1) ) + ( !VCC ))
-- \inst7|Add0~2\ = CARRY(( \inst34|valor_interno[0]~DUPLICATE_q\ ) + ( \inst34|valor_interno\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(1),
	datac => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst7|Add0~1_sumout\,
	cout => \inst7|Add0~2\);

-- Location: MLABCELL_X78_Y28_N21
\inst34|valor_interno[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[1]~feeder_combout\ = ( \inst7|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_Add0~1_sumout\,
	combout => \inst34|valor_interno[1]~feeder_combout\);

-- Location: LABCELL_X77_Y27_N33
\inst7|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~5_sumout\ = SUM(( \inst34|valor_interno\(2) ) + ( GND ) + ( \inst7|Add0~2\ ))
-- \inst7|Add0~6\ = CARRY(( \inst34|valor_interno\(2) ) + ( GND ) + ( \inst7|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst34|ALT_INV_valor_interno\(2),
	cin => \inst7|Add0~2\,
	sumout => \inst7|Add0~5_sumout\,
	cout => \inst7|Add0~6\);

-- Location: MLABCELL_X78_Y28_N48
\inst34|valor_interno[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[2]~feeder_combout\ = ( \inst7|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_Add0~5_sumout\,
	combout => \inst34|valor_interno[2]~feeder_combout\);

-- Location: LABCELL_X77_Y28_N21
\inst49|PCWrite~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst49|PCWrite~0_combout\ = ( \inst107|selregw\(2) & ( \inst107|selregw\(0) & ( (!\inst16|selregw\(0) & ((!\inst4|selregr\(0)) # ((!\inst4|selregr\(2)) # (!\inst16|selregw\(2))))) # (\inst16|selregw\(0) & ((!\inst4|selregr\(0) $ (\inst4|selregr\(2))) # 
-- (\inst16|selregw\(2)))) ) ) ) # ( !\inst107|selregw\(2) & ( \inst107|selregw\(0) & ( (!\inst4|selregr\(0) & (((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & ((!\inst16|selregw\(0) & ((!\inst4|selregr\(2)) # (!\inst16|selregw\(2)))) # 
-- (\inst16|selregw\(0) & ((\inst16|selregw\(2)) # (\inst4|selregr\(2)))))) ) ) ) # ( \inst107|selregw\(2) & ( !\inst107|selregw\(0) & ( (!\inst4|selregr\(0) & ((!\inst16|selregw\(0)) # ((!\inst4|selregr\(2)) # (\inst16|selregw\(2))))) ) ) ) # ( 
-- !\inst107|selregw\(2) & ( !\inst107|selregw\(0) & ( (!\inst16|selregw\(0) & ((!\inst4|selregr\(0)) # ((!\inst4|selregr\(2)) # (!\inst16|selregw\(2))))) # (\inst16|selregw\(0) & ((!\inst4|selregr\(0) $ (\inst4|selregr\(2))) # (\inst16|selregw\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110111111011101010001010101011100101111100011110110111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst16|ALT_INV_selregw\(0),
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst16|ALT_INV_selregw\(2),
	datae => \inst107|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst49|PCWrite~0_combout\);

-- Location: LABCELL_X79_Y31_N24
\inst4|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal8~0_combout\ = ( \inst8|valor_interno\(16) & ( (!\inst8|valor_interno\(18) & (!\inst8|valor_interno\(17) & !\inst8|valor_interno\(19))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_valor_interno\(18),
	datac => \inst8|ALT_INV_valor_interno\(17),
	datad => \inst8|ALT_INV_valor_interno\(19),
	dataf => \inst8|ALT_INV_valor_interno\(16),
	combout => \inst4|Equal8~0_combout\);

-- Location: LABCELL_X77_Y27_N0
\inst1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = ( !\inst34|valor_interno\(2) & ( \inst34|valor_interno\(1) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (!\inst34|valor_interno\(5) & ((!\inst34|valor_interno[3]~DUPLICATE_q\) # (\inst34|valor_interno[0]~DUPLICATE_q\)))) ) ) ) # 
-- ( !\inst34|valor_interno\(2) & ( !\inst34|valor_interno\(1) & ( (!\inst34|valor_interno[3]~DUPLICATE_q\ & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000011010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datac => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datad => \inst34|ALT_INV_valor_interno\(5),
	datae => \inst34|ALT_INV_valor_interno\(2),
	dataf => \inst34|ALT_INV_valor_interno\(1),
	combout => \inst1|Mux8~0_combout\);

-- Location: FF_X77_Y27_N1
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

-- Location: LABCELL_X77_Y27_N12
\inst1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( \inst34|valor_interno\(2) & ( (!\inst34|valor_interno\(5) & ((!\inst34|valor_interno[3]~DUPLICATE_q\ & (!\inst34|valor_interno[0]~DUPLICATE_q\ $ (\inst34|valor_interno\(1)))) # 
-- (\inst34|valor_interno[3]~DUPLICATE_q\ & (\inst34|valor_interno[0]~DUPLICATE_q\ & !\inst34|valor_interno\(1))))) ) ) ) # ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( !\inst34|valor_interno\(2) & ( (!\inst34|valor_interno\(5) & 
-- (\inst34|valor_interno[0]~DUPLICATE_q\ & ((!\inst34|valor_interno[3]~DUPLICATE_q\) # (\inst34|valor_interno\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000000000000000010000100000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno\(5),
	datac => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	datad => \inst34|ALT_INV_valor_interno\(1),
	datae => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(2),
	combout => \inst1|Mux10~0_combout\);

-- Location: FF_X78_Y27_N49
\inst8|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst1|Mux10~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(21));

-- Location: LABCELL_X79_Y31_N27
\inst4|selregr[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[3]~1_combout\ = ( !\inst8|valor_interno\(21) & ( (!\inst8|valor_interno\(22) & (\inst4|Equal8~0_combout\ & !\inst8|valor_interno\(23))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(22),
	datac => \inst4|ALT_INV_Equal8~0_combout\,
	datad => \inst8|ALT_INV_valor_interno\(23),
	dataf => \inst8|ALT_INV_valor_interno\(21),
	combout => \inst4|selregr[3]~1_combout\);

-- Location: MLABCELL_X78_Y31_N18
\inst4|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal7~2_combout\ = ( !\inst8|valor_interno\(17) & ( !\inst8|valor_interno\(21) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_valor_interno\(21),
	dataf => \inst8|ALT_INV_valor_interno\(17),
	combout => \inst4|Equal7~2_combout\);

-- Location: LABCELL_X77_Y27_N48
\inst1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( \inst34|valor_interno\(1) & ( (!\inst34|valor_interno\(5) & ((!\inst34|valor_interno[3]~DUPLICATE_q\ & (\inst34|valor_interno\(2) & !\inst34|valor_interno[0]~DUPLICATE_q\)) # 
-- (\inst34|valor_interno[3]~DUPLICATE_q\ & (!\inst34|valor_interno\(2))))) ) ) ) # ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( !\inst34|valor_interno\(1) & ( (!\inst34|valor_interno\(5) & ((!\inst34|valor_interno[3]~DUPLICATE_q\ & 
-- ((\inst34|valor_interno[0]~DUPLICATE_q\))) # (\inst34|valor_interno[3]~DUPLICATE_q\ & (\inst34|valor_interno\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000000000000000001100100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno\(2),
	datac => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	datad => \inst34|ALT_INV_valor_interno\(5),
	datae => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(1),
	combout => \inst1|Mux11~0_combout\);

-- Location: FF_X78_Y27_N17
\inst8|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst1|Mux11~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(20));

-- Location: LABCELL_X79_Y31_N36
\inst4|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal7~0_combout\ = ( \inst8|valor_interno\(19) & ( !\inst8|valor_interno\(16) & ( (!\inst8|valor_interno\(23) & (\inst8|valor_interno\(18) & (\inst8|valor_interno\(22) & \inst8|valor_interno\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(23),
	datab => \inst8|ALT_INV_valor_interno\(18),
	datac => \inst8|ALT_INV_valor_interno\(22),
	datad => \inst8|ALT_INV_valor_interno\(20),
	datae => \inst8|ALT_INV_valor_interno\(19),
	dataf => \inst8|ALT_INV_valor_interno\(16),
	combout => \inst4|Equal7~0_combout\);

-- Location: LABCELL_X79_Y31_N57
\inst4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = ( !\inst8|valor_interno\(21) & ( (!\inst8|valor_interno\(22) & (\inst8|valor_interno\(20) & !\inst8|valor_interno\(23))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(22),
	datab => \inst8|ALT_INV_valor_interno\(20),
	datad => \inst8|ALT_INV_valor_interno\(23),
	dataf => \inst8|ALT_INV_valor_interno\(21),
	combout => \inst4|Equal0~0_combout\);

-- Location: MLABCELL_X78_Y31_N36
\inst4|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (\inst8|valor_interno\(17) & !\inst8|valor_interno\(18))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(17),
	datac => \inst8|ALT_INV_valor_interno\(18),
	combout => \inst4|Equal0~1_combout\);

-- Location: MLABCELL_X78_Y31_N15
\inst4|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal10~0_combout\ = ( !\inst8|valor_interno\(19) & ( !\inst8|valor_interno\(16) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_valor_interno\(16),
	dataf => \inst8|ALT_INV_valor_interno\(19),
	combout => \inst4|Equal10~0_combout\);

-- Location: MLABCELL_X78_Y31_N45
\inst4|seldato~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|seldato~0_combout\ = ( \inst4|Equal10~0_combout\ & ( (!\inst4|Equal7~2_combout\ & (((\inst4|Equal0~0_combout\ & \inst4|Equal0~1_combout\)))) # (\inst4|Equal7~2_combout\ & (((\inst4|Equal0~0_combout\ & \inst4|Equal0~1_combout\)) # 
-- (\inst4|Equal7~0_combout\))) ) ) # ( !\inst4|Equal10~0_combout\ & ( (\inst4|Equal7~2_combout\ & \inst4|Equal7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal7~2_combout\,
	datab => \inst4|ALT_INV_Equal7~0_combout\,
	datac => \inst4|ALT_INV_Equal0~0_combout\,
	datad => \inst4|ALT_INV_Equal0~1_combout\,
	dataf => \inst4|ALT_INV_Equal10~0_combout\,
	combout => \inst4|seldato~0_combout\);

-- Location: LABCELL_X79_Y31_N18
\inst4|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal7~1_combout\ = ( \inst8|valor_interno\(19) & ( !\inst8|valor_interno\(16) & ( (\inst8|valor_interno\(22) & !\inst8|valor_interno\(23)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(22),
	datac => \inst8|ALT_INV_valor_interno\(23),
	datae => \inst8|ALT_INV_valor_interno\(19),
	dataf => \inst8|ALT_INV_valor_interno\(16),
	combout => \inst4|Equal7~1_combout\);

-- Location: LABCELL_X79_Y31_N0
\inst4|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal4~0_combout\ = ( !\inst8|valor_interno\(18) & ( (!\inst8|valor_interno\(17) & (!\inst8|valor_interno\(20) & (\inst4|Equal7~1_combout\ & \inst8|valor_interno\(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(17),
	datab => \inst8|ALT_INV_valor_interno\(20),
	datac => \inst4|ALT_INV_Equal7~1_combout\,
	datad => \inst8|ALT_INV_valor_interno\(21),
	dataf => \inst8|ALT_INV_valor_interno\(18),
	combout => \inst4|Equal4~0_combout\);

-- Location: LABCELL_X79_Y31_N54
\inst4|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal6~0_combout\ = ( \inst8|valor_interno\(16) & ( (\inst8|valor_interno\(22) & \inst8|valor_interno\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(22),
	datab => \inst8|ALT_INV_valor_interno\(20),
	dataf => \inst8|ALT_INV_valor_interno\(16),
	combout => \inst4|Equal6~0_combout\);

-- Location: LABCELL_X79_Y31_N51
\inst4|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = ( !\inst8|valor_interno\(19) & ( \inst8|valor_interno\(17) & ( (!\inst8|valor_interno\(21) & (\inst8|valor_interno\(18) & \inst8|valor_interno\(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(21),
	datab => \inst8|ALT_INV_valor_interno\(18),
	datad => \inst8|ALT_INV_valor_interno\(23),
	datae => \inst8|ALT_INV_valor_interno\(19),
	dataf => \inst8|ALT_INV_valor_interno\(17),
	combout => \inst4|Equal2~0_combout\);

-- Location: LABCELL_X79_Y31_N3
\inst4|selsrc[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selsrc[1]~0_combout\ = ( \inst4|Equal2~0_combout\ & ( ((\inst8|valor_interno\(17) & (\inst8|valor_interno\(20) & \inst4|Equal3~0_combout\))) # (\inst4|Equal6~0_combout\) ) ) # ( !\inst4|Equal2~0_combout\ & ( (\inst8|valor_interno\(17) & 
-- (\inst8|valor_interno\(20) & \inst4|Equal3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(17),
	datab => \inst8|ALT_INV_valor_interno\(20),
	datac => \inst4|ALT_INV_Equal3~0_combout\,
	datad => \inst4|ALT_INV_Equal6~0_combout\,
	dataf => \inst4|ALT_INV_Equal2~0_combout\,
	combout => \inst4|selsrc[1]~0_combout\);

-- Location: LABCELL_X77_Y31_N48
\inst4|selregr[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[3]~2_combout\ = ( !\inst4|Equal4~0_combout\ & ( !\inst4|selsrc[1]~0_combout\ & ( (!\inst4|Equal3~1_combout\ & (!\inst4|selregr[3]~1_combout\ & (!\inst4|seldato~0_combout\ & !\inst4|selregr[2]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal3~1_combout\,
	datab => \inst4|ALT_INV_selregr[3]~1_combout\,
	datac => \inst4|ALT_INV_seldato~0_combout\,
	datad => \inst4|ALT_INV_selregr[2]~0_combout\,
	datae => \inst4|ALT_INV_Equal4~0_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~0_combout\,
	combout => \inst4|selregr[3]~2_combout\);

-- Location: MLABCELL_X78_Y31_N12
\inst4|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal10~1_combout\ = ( \inst4|Equal10~0_combout\ & ( (\inst4|Equal0~0_combout\ & \inst4|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Equal0~0_combout\,
	datac => \inst4|ALT_INV_Equal0~1_combout\,
	dataf => \inst4|ALT_INV_Equal10~0_combout\,
	combout => \inst4|Equal10~1_combout\);

-- Location: LABCELL_X79_Y31_N42
\inst4|selregr[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[0]~4_combout\ = ( !\inst8|valor_interno\(20) & ( !\inst8|valor_interno\(17) & ( ((\inst8|valor_interno\(21) & (\inst4|Equal7~1_combout\ & !\inst8|valor_interno\(18)))) # (\inst4|Equal3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(21),
	datab => \inst4|ALT_INV_Equal3~0_combout\,
	datac => \inst4|ALT_INV_Equal7~1_combout\,
	datad => \inst8|ALT_INV_valor_interno\(18),
	datae => \inst8|ALT_INV_valor_interno\(20),
	dataf => \inst8|ALT_INV_valor_interno\(17),
	combout => \inst4|selregr[0]~4_combout\);

-- Location: MLABCELL_X78_Y31_N9
\inst4|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = (\inst8|valor_interno\(19) & \inst8|valor_interno\(16))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(19),
	datab => \inst8|ALT_INV_valor_interno\(16),
	combout => \inst4|Equal0~2_combout\);

-- Location: MLABCELL_X78_Y31_N48
\inst4|selop[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop[1]~0_combout\ = ( \inst4|Equal1~0_combout\ & ( \inst4|Equal0~0_combout\ ) ) # ( !\inst4|Equal1~0_combout\ & ( (\inst4|Equal0~1_combout\ & (\inst4|Equal0~2_combout\ & \inst4|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~1_combout\,
	datab => \inst4|ALT_INV_Equal0~2_combout\,
	datad => \inst4|ALT_INV_Equal0~0_combout\,
	dataf => \inst4|ALT_INV_Equal1~0_combout\,
	combout => \inst4|selop[1]~0_combout\);

-- Location: LABCELL_X77_Y31_N30
\inst4|selsrc[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selsrc[1]~1_combout\ = ( !\inst4|selop[1]~0_combout\ & ( \inst4|selsrc[1]~0_combout\ & ( (\inst4|selregr[0]~4_combout\) # (\inst4|Equal2~2_combout\) ) ) ) # ( !\inst4|selop[1]~0_combout\ & ( !\inst4|selsrc[1]~0_combout\ & ( 
-- (((\inst4|selregr[0]~4_combout\) # (\inst4|Equal9~0_combout\)) # (\inst4|Equal10~1_combout\)) # (\inst4|Equal2~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111000000000000000001010101111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal2~2_combout\,
	datab => \inst4|ALT_INV_Equal10~1_combout\,
	datac => \inst4|ALT_INV_Equal9~0_combout\,
	datad => \inst4|ALT_INV_selregr[0]~4_combout\,
	datae => \inst4|ALT_INV_selop[1]~0_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~0_combout\,
	combout => \inst4|selsrc[1]~1_combout\);

-- Location: MLABCELL_X78_Y30_N30
\inst4|comb~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~23_combout\ = ( \inst4|Equal9~0_combout\ & ( \inst4|selsrc[1]~1_combout\ ) ) # ( !\inst4|Equal9~0_combout\ & ( (!\inst4|selregr[3]~2_combout\ & \inst4|selsrc[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr[3]~2_combout\,
	datac => \inst4|ALT_INV_selsrc[1]~1_combout\,
	dataf => \inst4|ALT_INV_Equal9~0_combout\,
	combout => \inst4|comb~23_combout\);

-- Location: MLABCELL_X78_Y30_N57
\inst4|comb~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~22_combout\ = ( \inst4|selregr[3]~2_combout\ & ( !\inst4|selsrc[1]~1_combout\ & ( \inst4|Equal9~0_combout\ ) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( !\inst4|selsrc[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datae => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~1_combout\,
	combout => \inst4|comb~22_combout\);

-- Location: MLABCELL_X78_Y30_N48
\inst4|selsrc[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selsrc\(1) = ( !\inst4|comb~22_combout\ & ( \inst4|selsrc\(1) ) ) # ( !\inst4|comb~22_combout\ & ( !\inst4|selsrc\(1) & ( \inst4|comb~23_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_comb~23_combout\,
	datae => \inst4|ALT_INV_comb~22_combout\,
	dataf => \inst4|ALT_INV_selsrc\(1),
	combout => \inst4|selsrc\(1));

-- Location: LABCELL_X75_Y27_N39
\inst700666|inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst|Equal1~0_combout\ = ( \inst107|selregw\(0) & ( \inst107|selregw\(2) & ( (\inst4|selregr\(0) & (!\inst4|selregr\(2) & ((!\inst16|selregw\(0)) # (\inst16|selregw\(2))))) ) ) ) # ( \inst107|selregw\(0) & ( !\inst107|selregw\(2) & ( 
-- (\inst4|selregr\(0) & (!\inst4|selregr\(2) & ((!\inst16|selregw\(0)) # (\inst16|selregw\(2))))) ) ) ) # ( !\inst107|selregw\(0) & ( !\inst107|selregw\(2) & ( (\inst4|selregr\(0) & (!\inst4|selregr\(2) & ((!\inst16|selregw\(0)) # (\inst16|selregw\(2))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000000001100010000000000000000000000000011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selregw\(2),
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst16|ALT_INV_selregw\(0),
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst107|ALT_INV_selregw\(0),
	dataf => \inst107|ALT_INV_selregw\(2),
	combout => \inst700666|inst|Equal1~0_combout\);

-- Location: LABCELL_X77_Y31_N42
\inst4|selfalgs[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs[3]~2_combout\ = ( !\inst4|Equal3~1_combout\ & ( !\inst4|selregr[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr[2]~0_combout\,
	dataf => \inst4|ALT_INV_Equal3~1_combout\,
	combout => \inst4|selfalgs[3]~2_combout\);

-- Location: MLABCELL_X78_Y31_N21
\inst4|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal8~1_combout\ = ( \inst4|Equal8~0_combout\ & ( \inst4|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal0~0_combout\,
	dataf => \inst4|ALT_INV_Equal8~0_combout\,
	combout => \inst4|Equal8~1_combout\);

-- Location: LABCELL_X77_Y31_N36
\inst4|seldato~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|seldato~2_combout\ = ( !\inst4|selsrc[1]~0_combout\ & ( (!\inst4|seldato~0_combout\ & (!\inst4|Equal8~1_combout\ & !\inst4|Equal9~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_seldato~0_combout\,
	datab => \inst4|ALT_INV_Equal8~1_combout\,
	datad => \inst4|ALT_INV_Equal9~0_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~0_combout\,
	combout => \inst4|seldato~2_combout\);

-- Location: LABCELL_X75_Y31_N30
\inst4|comb~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~21_combout\ = ( \inst4|selregr[3]~2_combout\ & ( (\inst4|Equal9~0_combout\ & ((!\inst4|selfalgs[3]~2_combout\) # ((!\inst4|Equal4~0_combout\ & !\inst4|seldato~2_combout\)))) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( 
-- (!\inst4|selfalgs[3]~2_combout\) # ((!\inst4|Equal4~0_combout\ & !\inst4|seldato~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110000111111001111000001010100010100000101010001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_Equal4~0_combout\,
	datac => \inst4|ALT_INV_selfalgs[3]~2_combout\,
	datad => \inst4|ALT_INV_seldato~2_combout\,
	dataf => \inst4|ALT_INV_selregr[3]~2_combout\,
	combout => \inst4|comb~21_combout\);

-- Location: LABCELL_X75_Y31_N51
\inst4|comb~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~20_combout\ = ( \inst4|Equal9~0_combout\ & ( (\inst4|selfalgs[3]~2_combout\ & ((\inst4|seldato~2_combout\) # (\inst4|Equal4~0_combout\))) ) ) # ( !\inst4|Equal9~0_combout\ & ( (\inst4|selfalgs[3]~2_combout\ & (!\inst4|selregr[3]~2_combout\ & 
-- ((\inst4|seldato~2_combout\) # (\inst4|Equal4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000000010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selfalgs[3]~2_combout\,
	datab => \inst4|ALT_INV_Equal4~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~2_combout\,
	datad => \inst4|ALT_INV_seldato~2_combout\,
	dataf => \inst4|ALT_INV_Equal9~0_combout\,
	combout => \inst4|comb~20_combout\);

-- Location: LABCELL_X75_Y31_N33
\inst4|selsrc[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selsrc\(0) = ( \inst4|selsrc\(0) & ( !\inst4|comb~20_combout\ ) ) # ( !\inst4|selsrc\(0) & ( (\inst4|comb~21_combout\ & !\inst4|comb~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~21_combout\,
	datad => \inst4|ALT_INV_comb~20_combout\,
	dataf => \inst4|ALT_INV_selsrc\(0),
	combout => \inst4|selsrc\(0));

-- Location: LABCELL_X79_Y26_N48
\inst700666|ACCB|valor_interno[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[3]~feeder_combout\ = ( \inst24|valor_interno\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(3),
	combout => \inst700666|ACCB|valor_interno[3]~feeder_combout\);

-- Location: MLABCELL_X78_Y27_N36
\inst700666|inst1000|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~1_combout\ = ( !\inst107|selregw\(0) & ( \inst107|selregw\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst107|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst700666|inst1000|Equal1~1_combout\);

-- Location: FF_X79_Y26_N49
\inst700666|ACCB|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|ACCB|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(3));

-- Location: MLABCELL_X78_Y30_N33
\inst4|sels1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sels1~0_combout\ = ( !\inst4|selregr[2]~0_combout\ & ( (!\inst4|Equal4~0_combout\ & !\inst4|Equal3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal4~0_combout\,
	datad => \inst4|ALT_INV_Equal3~1_combout\,
	dataf => \inst4|ALT_INV_selregr[2]~0_combout\,
	combout => \inst4|sels1~0_combout\);

-- Location: LABCELL_X77_Y29_N33
\inst4|comb~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~31_combout\ = ( \inst4|Equal9~0_combout\ & ( (\inst4|sels1~0_combout\ & \inst4|selsrc[1]~0_combout\) ) ) # ( !\inst4|Equal9~0_combout\ & ( (\inst4|sels1~0_combout\ & (\inst4|selsrc[1]~0_combout\ & !\inst4|selregr[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sels1~0_combout\,
	datab => \inst4|ALT_INV_selsrc[1]~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_Equal9~0_combout\,
	combout => \inst4|comb~31_combout\);

-- Location: LABCELL_X77_Y29_N30
\inst4|comb~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~30_combout\ = ( \inst4|Equal9~0_combout\ & ( (!\inst4|selsrc[1]~0_combout\) # (!\inst4|sels1~0_combout\) ) ) # ( !\inst4|Equal9~0_combout\ & ( (!\inst4|selregr[3]~2_combout\ & ((!\inst4|selsrc[1]~0_combout\) # (!\inst4|sels1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selsrc[1]~0_combout\,
	datac => \inst4|ALT_INV_sels1~0_combout\,
	datad => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_Equal9~0_combout\,
	combout => \inst4|comb~30_combout\);

-- Location: MLABCELL_X78_Y27_N6
\inst4|memw\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|memw~combout\ = ( !\inst4|comb~30_combout\ & ( \inst4|memw~combout\ ) ) # ( !\inst4|comb~30_combout\ & ( !\inst4|memw~combout\ & ( \inst4|comb~31_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~31_combout\,
	datae => \inst4|ALT_INV_comb~30_combout\,
	dataf => \inst4|ALT_INV_memw~combout\,
	combout => \inst4|memw~combout\);

-- Location: MLABCELL_X78_Y27_N21
\inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|memw~combout\ & ( (!\inst4|selregr\(0) & (((!\inst49|process_0~0_combout\) # (!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (!\inst49|process_0~1_combout\ & ((!\inst4|selregr\(2))))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|memw~combout\ & ( (!\inst4|selregr\(0) & (((!\inst49|process_0~0_combout\) # (!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- ((!\inst49|process_0~1_combout\) # ((\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010110011111111101011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_process_0~1_combout\,
	datab => \inst49|ALT_INV_process_0~0_combout\,
	datac => \inst4|ALT_INV_selregr\(0),
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_memw~combout\,
	combout => \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y27_N22
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

-- Location: FF_X77_Y27_N26
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

-- Location: MLABCELL_X78_Y30_N0
\inst700666|ACCA|valor_interno[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[0]~feeder_combout\ = ( \inst24|valor_interno\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(0),
	combout => \inst700666|ACCA|valor_interno[0]~feeder_combout\);

-- Location: MLABCELL_X78_Y26_N39
\inst700666|inst1000|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~0_combout\ = ( !\inst107|selregw\(2) & ( \inst107|selregw\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst107|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst700666|inst1000|Equal1~0_combout\);

-- Location: FF_X78_Y30_N1
\inst700666|ACCA|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|ACCA|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(0));

-- Location: MLABCELL_X82_Y28_N36
\inst700|valor_interno[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[0]~feeder_combout\ = \inst700666|ACCA|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700666|ACCA|ALT_INV_valor_interno\(0),
	combout => \inst700|valor_interno[0]~feeder_combout\);

-- Location: FF_X77_Y28_N56
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(0));

-- Location: LABCELL_X81_Y28_N45
\inst700|valor_interno[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[4]~0_combout\ = ( \inst49|PCWrite~0_combout\ & ( (!\inst4|selsrc\(0) & ((!\inst4|selsrc\(1)) # ((!\inst4|selregr\(2) & !\inst4|selregr\(0))))) # (\inst4|selsrc\(0) & (((!\inst4|selregr\(2) & !\inst4|selregr\(0))))) ) ) # ( 
-- !\inst49|PCWrite~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111000100010001111100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst4|ALT_INV_selregr\(0),
	dataf => \inst49|ALT_INV_PCWrite~0_combout\,
	combout => \inst700|valor_interno[4]~0_combout\);

-- Location: LABCELL_X81_Y28_N27
\inst700666|inst|D1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst|D1~0_combout\ = (!\inst49|PCWrite~0_combout\) # (!\inst4|selregr\(2) $ (\inst4|selregr\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001111111111001100111111111100110011111111110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst4|ALT_INV_selregr\(0),
	combout => \inst700666|inst|D1~0_combout\);

-- Location: FF_X82_Y28_N37
\inst700|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[0]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(0),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(0));

-- Location: MLABCELL_X78_Y28_N45
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

-- Location: MLABCELL_X78_Y28_N42
\inst34|valor_interno[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[0]~feeder_combout\ = \inst34|valor_interno[0]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|ALT_INV_valor_interno[0]~_wirecell_combout\,
	combout => \inst34|valor_interno[0]~feeder_combout\);

-- Location: MLABCELL_X78_Y31_N42
\inst4|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal7~3_combout\ = ( \inst4|Equal7~2_combout\ & ( \inst4|Equal7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Equal7~0_combout\,
	dataf => \inst4|ALT_INV_Equal7~2_combout\,
	combout => \inst4|Equal7~3_combout\);

-- Location: LABCELL_X77_Y31_N39
\inst4|selfalgs[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs[3]~1_combout\ = ( !\inst4|Equal3~1_combout\ & ( (!\inst4|selregr[2]~0_combout\ & \inst4|Equal7~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_selregr[2]~0_combout\,
	datad => \inst4|ALT_INV_Equal7~3_combout\,
	dataf => \inst4|ALT_INV_Equal3~1_combout\,
	combout => \inst4|selfalgs[3]~1_combout\);

-- Location: MLABCELL_X78_Y29_N54
\inst4|comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~6_combout\ = ( \inst4|selregr[3]~2_combout\ & ( (\inst4|Equal9~0_combout\ & !\inst4|selfalgs[3]~1_combout\) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( !\inst4|selfalgs[3]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datac => \inst4|ALT_INV_selfalgs[3]~1_combout\,
	dataf => \inst4|ALT_INV_selregr[3]~2_combout\,
	combout => \inst4|comb~6_combout\);

-- Location: MLABCELL_X78_Y29_N9
\inst4|selfalgs[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(3) = ( \inst4|selfalgs\(3) & ( !\inst4|comb~6_combout\ ) ) # ( !\inst4|selfalgs\(3) & ( (\inst4|selfalgs[3]~1_combout\ & !\inst4|comb~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_selfalgs[3]~1_combout\,
	datad => \inst4|ALT_INV_comb~6_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(3),
	combout => \inst4|selfalgs\(3));

-- Location: MLABCELL_X78_Y29_N51
\inst29|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|selfalgs\(3) & ( (!\inst4|selregr\(0) & ((!\inst49|process_0~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst49|process_0~1_combout\ & !\inst4|selregr\(2))))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|selfalgs\(3) & ( (!\inst4|selregr\(0) & ((!\inst49|process_0~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst49|process_0~1_combout\) # (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010110111011111101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_process_0~0_combout\,
	datac => \inst49|ALT_INV_process_0~1_combout\,
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(3),
	combout => \inst29|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y29_N53
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

-- Location: LABCELL_X75_Y31_N18
\inst4|comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~7_combout\ = ( \inst4|selregr[3]~2_combout\ & ( (!\inst4|selop[1]~0_combout\ & (!\inst4|Equal8~1_combout\ & \inst4|Equal9~0_combout\)) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( (!\inst4|selop[1]~0_combout\ & !\inst4|Equal8~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selop[1]~0_combout\,
	datab => \inst4|ALT_INV_Equal8~1_combout\,
	datac => \inst4|ALT_INV_Equal9~0_combout\,
	dataf => \inst4|ALT_INV_selregr[3]~2_combout\,
	combout => \inst4|comb~7_combout\);

-- Location: LABCELL_X75_Y31_N21
\inst4|comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~8_combout\ = ( \inst4|Equal9~0_combout\ & ( (\inst4|Equal8~1_combout\) # (\inst4|selop[1]~0_combout\) ) ) # ( !\inst4|Equal9~0_combout\ & ( (!\inst4|selregr[3]~2_combout\ & ((\inst4|Equal8~1_combout\) # (\inst4|selop[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selop[1]~0_combout\,
	datab => \inst4|ALT_INV_Equal8~1_combout\,
	datac => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_Equal9~0_combout\,
	combout => \inst4|comb~8_combout\);

-- Location: LABCELL_X75_Y31_N42
\inst4|selfalgs[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(1) = ( \inst4|selfalgs\(1) & ( !\inst4|comb~7_combout\ ) ) # ( !\inst4|selfalgs\(1) & ( (!\inst4|comb~7_combout\ & \inst4|comb~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~7_combout\,
	datad => \inst4|ALT_INV_comb~8_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(1),
	combout => \inst4|selfalgs\(1));

-- Location: MLABCELL_X78_Y29_N30
\inst29|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|selfalgs\(1) & ( (!\inst4|selregr\(0) & ((!\inst49|process_0~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst4|selregr\(2) & 
-- !\inst49|process_0~1_combout\)))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|selfalgs\(1) & ( (!\inst4|selregr\(0) & ((!\inst49|process_0~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst49|process_0~1_combout\) # 
-- (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101101011011111100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_process_0~0_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst49|ALT_INV_process_0~1_combout\,
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(1),
	combout => \inst29|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y29_N29
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

-- Location: LABCELL_X77_Y31_N0
\inst4|selfalgs[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs[0]~0_combout\ = ( !\inst4|selop[1]~0_combout\ & ( \inst4|Equal2~2_combout\ ) ) # ( !\inst4|selop[1]~0_combout\ & ( !\inst4|Equal2~2_combout\ & ( (!\inst4|Equal4~0_combout\ & (((\inst4|Equal8~1_combout\) # (\inst4|selsrc[1]~0_combout\)) # 
-- (\inst4|Equal3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal3~1_combout\,
	datab => \inst4|ALT_INV_selsrc[1]~0_combout\,
	datac => \inst4|ALT_INV_Equal8~1_combout\,
	datad => \inst4|ALT_INV_Equal4~0_combout\,
	datae => \inst4|ALT_INV_selop[1]~0_combout\,
	dataf => \inst4|ALT_INV_Equal2~2_combout\,
	combout => \inst4|selfalgs[0]~0_combout\);

-- Location: LABCELL_X75_Y31_N57
\inst4|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~4_combout\ = ( !\inst4|selfalgs[0]~0_combout\ & ( (!\inst4|selregr[3]~2_combout\) # (\inst4|Equal9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	combout => \inst4|comb~4_combout\);

-- Location: LABCELL_X75_Y31_N12
\inst4|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~5_combout\ = ( \inst4|selfalgs[0]~0_combout\ & ( (!\inst4|selregr[3]~2_combout\) # (\inst4|Equal9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr[3]~2_combout\,
	datac => \inst4|ALT_INV_Equal9~0_combout\,
	dataf => \inst4|ALT_INV_selfalgs[0]~0_combout\,
	combout => \inst4|comb~5_combout\);

-- Location: LABCELL_X75_Y31_N15
\inst4|selfalgs[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(0) = ( \inst4|selfalgs\(0) & ( !\inst4|comb~4_combout\ ) ) # ( !\inst4|selfalgs\(0) & ( (!\inst4|comb~4_combout\ & \inst4|comb~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~4_combout\,
	datac => \inst4|ALT_INV_comb~5_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(0),
	combout => \inst4|selfalgs\(0));

-- Location: MLABCELL_X78_Y29_N33
\inst29|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|selfalgs\(0) & ( (!\inst4|selregr\(0) & ((!\inst49|process_0~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst49|process_0~1_combout\ & !\inst4|selregr\(2))))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|selfalgs\(0) & ( (!\inst4|selregr\(0) & ((!\inst49|process_0~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (((!\inst49|process_0~1_combout\) # (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010110111011111101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_process_0~0_combout\,
	datac => \inst49|ALT_INV_process_0~1_combout\,
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(0),
	combout => \inst29|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y29_N35
\inst16|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst29|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(0));

-- Location: MLABCELL_X78_Y29_N15
\inst|zi~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|zi~0_combout\ = ( \inst16|selfalgs\(2) & ( (!\inst16|selfalgs\(1) & !\inst16|selfalgs\(0)) ) ) # ( !\inst16|selfalgs\(2) & ( (!\inst16|selfalgs\(3) & ((\inst16|selfalgs\(0)) # (\inst16|selfalgs\(1)))) # (\inst16|selfalgs\(3) & (\inst16|selfalgs\(1) 
-- & \inst16|selfalgs\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(3),
	datab => \inst16|ALT_INV_selfalgs\(1),
	datac => \inst16|ALT_INV_selfalgs\(0),
	dataf => \inst16|ALT_INV_selfalgs\(2),
	combout => \inst|zi~0_combout\);

-- Location: FF_X78_Y28_N2
\inst8|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux31~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(0));

-- Location: MLABCELL_X78_Y30_N27
\inst4|seldir[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|seldir[0]~0_combout\ = ( \inst4|selregr[2]~0_combout\ ) # ( !\inst4|selregr[2]~0_combout\ & ( !\inst4|Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal4~0_combout\,
	dataf => \inst4|ALT_INV_selregr[2]~0_combout\,
	combout => \inst4|seldir[0]~0_combout\);

-- Location: MLABCELL_X78_Y30_N24
\inst4|comb~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~25_combout\ = ( \inst4|Equal9~0_combout\ & ( \inst4|seldir[0]~0_combout\ ) ) # ( !\inst4|Equal9~0_combout\ & ( (!\inst4|selregr[3]~2_combout\ & \inst4|seldir[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr[3]~2_combout\,
	datac => \inst4|ALT_INV_seldir[0]~0_combout\,
	dataf => \inst4|ALT_INV_Equal9~0_combout\,
	combout => \inst4|comb~25_combout\);

-- Location: MLABCELL_X78_Y30_N42
\inst4|seldir[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|seldir\(0) = ( \inst4|seldir[0]~0_combout\ & ( \inst4|seldir\(0) & ( !\inst4|comb~25_combout\ ) ) ) # ( !\inst4|seldir[0]~0_combout\ & ( \inst4|seldir\(0) & ( !\inst4|comb~25_combout\ ) ) ) # ( !\inst4|seldir[0]~0_combout\ & ( !\inst4|seldir\(0) & 
-- ( !\inst4|comb~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~25_combout\,
	datae => \inst4|ALT_INV_seldir[0]~0_combout\,
	dataf => \inst4|ALT_INV_seldir\(0),
	combout => \inst4|seldir\(0));

-- Location: MLABCELL_X78_Y27_N39
\inst4|seldirw[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|seldirw\(1) = ( \inst4|seldirw\(1) & ( !\inst4|comb~30_combout\ ) ) # ( !\inst4|seldirw\(1) & ( (\inst4|comb~31_combout\ & !\inst4|comb~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~31_combout\,
	datac => \inst4|ALT_INV_comb~30_combout\,
	dataf => \inst4|ALT_INV_seldirw\(1),
	combout => \inst4|seldirw\(1));

-- Location: MLABCELL_X78_Y27_N18
\inst12|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|seldirw\(1) & ( (!\inst4|selregr\(2) & ((!\inst49|process_0~1_combout\) # ((!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & 
-- (((!\inst49|process_0~0_combout\ & !\inst4|selregr\(0))))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|seldirw\(1) & ( (!\inst4|selregr\(2) & ((!\inst49|process_0~1_combout\) # ((!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & 
-- (((!\inst49|process_0~0_combout\) # (\inst4|selregr\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100101011111111110010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_process_0~1_combout\,
	datab => \inst49|ALT_INV_process_0~0_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst4|ALT_INV_selregr\(0),
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_seldirw\(1),
	combout => \inst12|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y27_N19
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

-- Location: FF_X75_Y28_N14
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

-- Location: LABCELL_X75_Y28_N27
\inst10|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~0_combout\ = ( \inst107|seldirw\(1) ) # ( !\inst107|seldirw\(1) & ( (\inst49|PCWrite~0_combout\ & \inst4|seldir\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datad => \inst4|ALT_INV_seldir\(0),
	dataf => \inst107|ALT_INV_seldirw\(1),
	combout => \inst10|Mux10~0_combout\);

-- Location: LABCELL_X79_Y31_N33
\inst4|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal5~0_combout\ = ( \inst8|valor_interno\(20) & ( (\inst8|valor_interno\(17) & \inst4|Equal3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(17),
	datab => \inst4|ALT_INV_Equal3~0_combout\,
	dataf => \inst8|ALT_INV_valor_interno\(20),
	combout => \inst4|Equal5~0_combout\);

-- Location: MLABCELL_X78_Y31_N0
\inst4|selregr[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[0]~3_combout\ = ( \inst4|Equal7~0_combout\ & ( \inst4|Equal8~0_combout\ & ( (!\inst4|Equal7~2_combout\ & (!\inst4|Equal0~0_combout\ & ((!\inst4|Equal2~0_combout\) # (!\inst4|Equal6~0_combout\)))) ) ) ) # ( !\inst4|Equal7~0_combout\ & ( 
-- \inst4|Equal8~0_combout\ & ( (!\inst4|Equal0~0_combout\ & ((!\inst4|Equal2~0_combout\) # (!\inst4|Equal6~0_combout\))) ) ) ) # ( \inst4|Equal7~0_combout\ & ( !\inst4|Equal8~0_combout\ & ( (!\inst4|Equal7~2_combout\ & ((!\inst4|Equal2~0_combout\) # 
-- (!\inst4|Equal6~0_combout\))) ) ) ) # ( !\inst4|Equal7~0_combout\ & ( !\inst4|Equal8~0_combout\ & ( (!\inst4|Equal2~0_combout\) # (!\inst4|Equal6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal7~2_combout\,
	datab => \inst4|ALT_INV_Equal0~0_combout\,
	datac => \inst4|ALT_INV_Equal2~0_combout\,
	datad => \inst4|ALT_INV_Equal6~0_combout\,
	datae => \inst4|ALT_INV_Equal7~0_combout\,
	dataf => \inst4|ALT_INV_Equal8~0_combout\,
	combout => \inst4|selregr[0]~3_combout\);

-- Location: LABCELL_X77_Y31_N24
\inst4|sr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr~0_combout\ = ( !\inst4|selregr[2]~0_combout\ & ( (!\inst4|Equal3~1_combout\ & (!\inst4|Equal4~0_combout\ & (!\inst4|Equal5~0_combout\ & \inst4|selregr[0]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal3~1_combout\,
	datab => \inst4|ALT_INV_Equal4~0_combout\,
	datac => \inst4|ALT_INV_Equal5~0_combout\,
	datad => \inst4|ALT_INV_selregr[0]~3_combout\,
	dataf => \inst4|ALT_INV_selregr[2]~0_combout\,
	combout => \inst4|sr~0_combout\);

-- Location: LABCELL_X77_Y29_N3
\inst4|comb~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~29_combout\ = ( \inst4|selregr[3]~2_combout\ & ( (\inst4|Equal9~0_combout\ & !\inst4|sr~0_combout\) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( !\inst4|sr~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_sr~0_combout\,
	dataf => \inst4|ALT_INV_selregr[3]~2_combout\,
	combout => \inst4|comb~29_combout\);

-- Location: LABCELL_X77_Y29_N0
\inst4|comb~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~28_combout\ = ( \inst4|selregr[3]~2_combout\ & ( (\inst4|Equal9~0_combout\ & \inst4|sr~0_combout\) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( \inst4|sr~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_sr~0_combout\,
	dataf => \inst4|ALT_INV_selregr[3]~2_combout\,
	combout => \inst4|comb~28_combout\);

-- Location: LABCELL_X77_Y29_N24
\inst4|sr\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr~combout\ = ( \inst4|sr~combout\ & ( !\inst4|comb~28_combout\ ) ) # ( !\inst4|sr~combout\ & ( (\inst4|comb~29_combout\ & !\inst4|comb~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~29_combout\,
	datad => \inst4|ALT_INV_comb~28_combout\,
	dataf => \inst4|ALT_INV_sr~combout\,
	combout => \inst4|sr~combout\);

-- Location: MLABCELL_X78_Y28_N18
\inst4|sels1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sels1~combout\ = ( \inst4|sels1~combout\ & ( !\inst4|comb~30_combout\ ) ) # ( !\inst4|sels1~combout\ & ( (\inst4|comb~31_combout\ & !\inst4|comb~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~31_combout\,
	datac => \inst4|ALT_INV_comb~30_combout\,
	dataf => \inst4|ALT_INV_sels1~combout\,
	combout => \inst4|sels1~combout\);

-- Location: LABCELL_X77_Y28_N54
\inst700666|inst|D2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[0]~0_combout\ = ( !\inst49|process_0~1_combout\ & ( (\inst4|selregr\(0) & (!\inst4|selregr\(2) & \inst700666|ACCB|valor_interno\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst4|ALT_INV_selregr\(2),
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(0),
	dataf => \inst49|ALT_INV_process_0~1_combout\,
	combout => \inst700666|inst|D2[0]~0_combout\);

-- Location: LABCELL_X77_Y28_N0
\inst11|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~1_sumout\ = SUM(( (!\inst49|PCWrite~0_combout\) # (!\inst4|sr~combout\ $ (((\inst4|sels1~combout\ & \inst8|valor_interno\(0))))) ) + ( \inst700666|inst|D2[0]~0_combout\ ) + ( !VCC ))
-- \inst11|Add0~2\ = CARRY(( (!\inst49|PCWrite~0_combout\) # (!\inst4|sr~combout\ $ (((\inst4|sels1~combout\ & \inst8|valor_interno\(0))))) ) + ( \inst700666|inst|D2[0]~0_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111011101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_sr~combout\,
	datac => \inst4|ALT_INV_sels1~combout\,
	datad => \inst8|ALT_INV_valor_interno\(0),
	dataf => \inst700666|inst|ALT_INV_D2[0]~0_combout\,
	cin => GND,
	sumout => \inst11|Add0~1_sumout\,
	cout => \inst11|Add0~2\);

-- Location: LABCELL_X74_Y28_N27
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

-- Location: LABCELL_X75_Y28_N15
\inst10|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux15~1_combout\ = ( \inst107|seldirw\(1) & ( \inst23|valor_interno\(0) ) ) # ( !\inst107|seldirw\(1) & ( (!\inst49|PCWrite~0_combout\ & (((\inst23|valor_interno\(0))))) # (\inst49|PCWrite~0_combout\ & ((!\inst4|seldir\(0) & 
-- (\inst23|valor_interno\(0))) # (\inst4|seldir\(0) & ((\inst8|valor_interno[0]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_seldir\(0),
	datac => \inst23|ALT_INV_valor_interno\(0),
	datad => \inst8|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	dataf => \inst107|ALT_INV_seldirw\(1),
	combout => \inst10|Mux15~1_combout\);

-- Location: FF_X74_Y28_N29
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

-- Location: MLABCELL_X78_Y31_N33
\inst4|seldato~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|seldato~1_combout\ = (!\inst4|selsrc[1]~0_combout\ & !\inst4|seldato~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc[1]~0_combout\,
	datac => \inst4|ALT_INV_seldato~0_combout\,
	combout => \inst4|seldato~1_combout\);

-- Location: LABCELL_X77_Y29_N27
\inst4|comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~9_combout\ = ( \inst4|sels1~0_combout\ & ( (!\inst4|Equal9~0_combout\ & (\inst4|seldato~1_combout\ & !\inst4|selregr[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_seldato~1_combout\,
	datac => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_sels1~0_combout\,
	combout => \inst4|comb~9_combout\);

-- Location: LABCELL_X77_Y29_N21
\inst4|comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~10_combout\ = ( \inst4|sels1~0_combout\ & ( ((!\inst4|selregr[3]~2_combout\ & !\inst4|seldato~1_combout\)) # (\inst4|Equal9~0_combout\) ) ) # ( !\inst4|sels1~0_combout\ & ( (!\inst4|selregr[3]~2_combout\) # (\inst4|Equal9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111110101010101011111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~2_combout\,
	datad => \inst4|ALT_INV_seldato~1_combout\,
	dataf => \inst4|ALT_INV_sels1~0_combout\,
	combout => \inst4|comb~10_combout\);

-- Location: LABCELL_X77_Y29_N15
\inst4|selresult[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selresult\(0) = ( \inst4|selresult\(0) & ( !\inst4|comb~9_combout\ ) ) # ( !\inst4|selresult\(0) & ( (!\inst4|comb~9_combout\ & \inst4|comb~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~9_combout\,
	datad => \inst4|ALT_INV_comb~10_combout\,
	dataf => \inst4|ALT_INV_selresult\(0),
	combout => \inst4|selresult\(0));

-- Location: MLABCELL_X78_Y27_N30
\inst30|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|selresult\(0) & ( (!\inst4|selregr\(0) & (((!\inst4|selregr\(2)) # (!\inst49|process_0~0_combout\)))) # (\inst4|selregr\(0) & 
-- (!\inst49|process_0~1_combout\ & (!\inst4|selregr\(2)))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|selresult\(0) & ( (!\inst4|selregr\(0) & (((!\inst4|selregr\(2)) # (!\inst49|process_0~0_combout\)))) # (\inst4|selregr\(0) & 
-- ((!\inst49|process_0~1_combout\) # ((\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101111111000111110110011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_process_0~1_combout\,
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst49|ALT_INV_process_0~0_combout\,
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_selresult\(0),
	combout => \inst30|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y27_N32
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

-- Location: FF_X77_Y28_N49
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

-- Location: LABCELL_X75_Y28_N45
\inst10|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~1_combout\ = ( !\inst107|seldirw\(1) & ( (\inst4|seldir\(0) & \inst49|PCWrite~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_seldir\(0),
	datad => \inst49|ALT_INV_PCWrite~0_combout\,
	dataf => \inst107|ALT_INV_seldirw\(1),
	combout => \inst10|Mux10~1_combout\);

-- Location: LABCELL_X77_Y28_N48
\inst10|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux15~0_combout\ = ( \inst10|Mux10~1_combout\ & ( (!\inst10|Mux10~0_combout\ & ((\inst11|Add0~1_sumout\))) # (\inst10|Mux10~0_combout\ & (\inst8|valor_interno\(0))) ) ) # ( !\inst10|Mux10~1_combout\ & ( (!\inst10|Mux10~0_combout\ & 
-- (\inst11|Add0~1_sumout\)) # (\inst10|Mux10~0_combout\ & ((\inst23|valor_interno\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(0),
	datab => \inst10|ALT_INV_Mux10~0_combout\,
	datac => \inst11|ALT_INV_Add0~1_sumout\,
	datad => \inst23|ALT_INV_valor_interno\(0),
	dataf => \inst10|ALT_INV_Mux10~1_combout\,
	combout => \inst10|Mux15~0_combout\);

-- Location: MLABCELL_X78_Y28_N36
\inst1|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux30~0_combout\ = ( \inst34|valor_interno\(1) & ( \inst34|valor_interno[3]~DUPLICATE_q\ & ( (\inst34|valor_interno\(0) & (!\inst34|valor_interno\(2) & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(5)))) ) ) ) # ( 
-- !\inst34|valor_interno\(1) & ( \inst34|valor_interno[3]~DUPLICATE_q\ & ( (\inst34|valor_interno\(0) & (\inst34|valor_interno\(2) & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(5)))) ) ) ) # ( \inst34|valor_interno\(1) & ( 
-- !\inst34|valor_interno[3]~DUPLICATE_q\ & ( (\inst34|valor_interno\(0) & (\inst34|valor_interno\(2) & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000010000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(0),
	datab => \inst34|ALT_INV_valor_interno\(2),
	datac => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datad => \inst34|ALT_INV_valor_interno\(5),
	datae => \inst34|ALT_INV_valor_interno\(1),
	dataf => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	combout => \inst1|Mux30~0_combout\);

-- Location: FF_X78_Y28_N38
\inst8|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux30~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(1));

-- Location: FF_X77_Y28_N59
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(1));

-- Location: LABCELL_X77_Y28_N57
\inst700666|inst|D2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[1]~1_combout\ = ( !\inst49|process_0~1_combout\ & ( (\inst4|selregr\(0) & (!\inst4|selregr\(2) & \inst700666|ACCB|valor_interno\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst4|ALT_INV_selregr\(2),
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(1),
	dataf => \inst49|ALT_INV_process_0~1_combout\,
	combout => \inst700666|inst|D2[1]~1_combout\);

-- Location: LABCELL_X77_Y28_N3
\inst11|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~5_sumout\ = SUM(( \inst700666|inst|D2[1]~1_combout\ ) + ( (!\inst49|PCWrite~0_combout\) # (!\inst4|sr~combout\ $ (((\inst8|valor_interno\(1) & \inst4|sels1~combout\)))) ) + ( \inst11|Add0~2\ ))
-- \inst11|Add0~6\ = CARRY(( \inst700666|inst|D2[1]~1_combout\ ) + ( (!\inst49|PCWrite~0_combout\) # (!\inst4|sr~combout\ $ (((\inst8|valor_interno\(1) & \inst4|sels1~combout\)))) ) + ( \inst11|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_sr~combout\,
	datac => \inst8|ALT_INV_valor_interno\(1),
	datad => \inst700666|inst|ALT_INV_D2[1]~1_combout\,
	dataf => \inst4|ALT_INV_sels1~combout\,
	cin => \inst11|Add0~2\,
	sumout => \inst11|Add0~5_sumout\,
	cout => \inst11|Add0~6\);

-- Location: LABCELL_X74_Y28_N45
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

-- Location: FF_X78_Y28_N37
\inst8|valor_interno[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux30~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno[1]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y28_N48
\inst10|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux14~1_combout\ = ( \inst107|seldirw\(1) & ( \inst23|valor_interno\(1) ) ) # ( !\inst107|seldirw\(1) & ( (!\inst49|PCWrite~0_combout\ & (((\inst23|valor_interno\(1))))) # (\inst49|PCWrite~0_combout\ & ((!\inst4|seldir\(0) & 
-- ((\inst23|valor_interno\(1)))) # (\inst4|seldir\(0) & (\inst8|valor_interno[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110101001100110011010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	datab => \inst23|ALT_INV_valor_interno\(1),
	datac => \inst49|ALT_INV_PCWrite~0_combout\,
	datad => \inst4|ALT_INV_seldir\(0),
	dataf => \inst107|ALT_INV_seldirw\(1),
	combout => \inst10|Mux14~1_combout\);

-- Location: FF_X74_Y28_N47
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

-- Location: FF_X77_Y28_N28
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

-- Location: LABCELL_X77_Y28_N27
\inst10|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux14~0_combout\ = ( \inst11|Add0~5_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(1)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(1)))) ) ) # ( !\inst11|Add0~5_sumout\ & ( 
-- (\inst10|Mux10~0_combout\ & ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(1)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Mux10~1_combout\,
	datab => \inst10|ALT_INV_Mux10~0_combout\,
	datac => \inst8|ALT_INV_valor_interno\(1),
	datad => \inst23|ALT_INV_valor_interno\(1),
	dataf => \inst11|ALT_INV_Add0~5_sumout\,
	combout => \inst10|Mux14~0_combout\);

-- Location: MLABCELL_X78_Y28_N12
\inst1|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux29~0_combout\ = ( !\inst34|valor_interno\(0) & ( \inst34|valor_interno\(1) & ( (!\inst34|valor_interno[3]~DUPLICATE_q\ & (\inst34|valor_interno\(2) & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(5)))) ) ) ) # ( 
-- \inst34|valor_interno\(0) & ( !\inst34|valor_interno\(1) & ( (!\inst34|valor_interno[3]~DUPLICATE_q\ & (!\inst34|valor_interno\(2) & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(5)))) ) ) ) # ( !\inst34|valor_interno\(0) & ( 
-- !\inst34|valor_interno\(1) & ( (!\inst34|valor_interno[3]~DUPLICATE_q\ & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000100000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno\(2),
	datac => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datad => \inst34|ALT_INV_valor_interno\(5),
	datae => \inst34|ALT_INV_valor_interno\(0),
	dataf => \inst34|ALT_INV_valor_interno\(1),
	combout => \inst1|Mux29~0_combout\);

-- Location: FF_X78_Y28_N14
\inst8|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux29~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(2));

-- Location: LABCELL_X77_Y28_N36
\inst11|Add0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~24_combout\ = ( \inst8|valor_interno\(2) & ( (\inst49|PCWrite~0_combout\ & (!\inst4|sr~combout\ $ (!\inst4|sels1~combout\))) ) ) # ( !\inst8|valor_interno\(2) & ( (\inst4|sr~combout\ & \inst49|PCWrite~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_sr~combout\,
	datac => \inst4|ALT_INV_sels1~combout\,
	datad => \inst49|ALT_INV_PCWrite~0_combout\,
	dataf => \inst8|ALT_INV_valor_interno\(2),
	combout => \inst11|Add0~24_combout\);

-- Location: FF_X78_Y29_N56
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(2));

-- Location: LABCELL_X77_Y28_N6
\inst11|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~9_sumout\ = SUM(( !\inst11|Add0~24_combout\ ) + ( (!\inst4|selregr\(2) & (\inst4|selregr\(0) & (\inst49|PCWrite~0_combout\ & \inst700666|ACCB|valor_interno\(2)))) ) + ( \inst11|Add0~6\ ))
-- \inst11|Add0~10\ = CARRY(( !\inst11|Add0~24_combout\ ) + ( (!\inst4|selregr\(2) & (\inst4|selregr\(0) & (\inst49|PCWrite~0_combout\ & \inst700666|ACCB|valor_interno\(2)))) ) + ( \inst11|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(2),
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst49|ALT_INV_PCWrite~0_combout\,
	datad => \inst11|ALT_INV_Add0~24_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(2),
	cin => \inst11|Add0~6\,
	sumout => \inst11|Add0~9_sumout\,
	cout => \inst11|Add0~10\);

-- Location: LABCELL_X74_Y28_N15
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

-- Location: FF_X78_Y28_N13
\inst8|valor_interno[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux29~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno[2]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y28_N24
\inst10|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux13~1_combout\ = ( \inst23|valor_interno\(2) & ( (!\inst49|PCWrite~0_combout\) # (((!\inst4|seldir\(0)) # (\inst8|valor_interno[2]~DUPLICATE_q\)) # (\inst107|seldirw\(1))) ) ) # ( !\inst23|valor_interno\(2) & ( (\inst49|PCWrite~0_combout\ & 
-- (!\inst107|seldirw\(1) & (\inst8|valor_interno[2]~DUPLICATE_q\ & \inst4|seldir\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst107|ALT_INV_seldirw\(1),
	datac => \inst8|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_seldir\(0),
	dataf => \inst23|ALT_INV_valor_interno\(2),
	combout => \inst10|Mux13~1_combout\);

-- Location: FF_X74_Y28_N16
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

-- Location: FF_X75_Y28_N44
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

-- Location: LABCELL_X75_Y28_N57
\inst10|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux13~0_combout\ = ( \inst10|Mux10~0_combout\ & ( \inst11|Add0~9_sumout\ & ( (!\inst10|Mux10~1_combout\ & (\inst23|valor_interno\(2))) # (\inst10|Mux10~1_combout\ & ((\inst8|valor_interno[2]~DUPLICATE_q\))) ) ) ) # ( !\inst10|Mux10~0_combout\ & ( 
-- \inst11|Add0~9_sumout\ ) ) # ( \inst10|Mux10~0_combout\ & ( !\inst11|Add0~9_sumout\ & ( (!\inst10|Mux10~1_combout\ & (\inst23|valor_interno\(2))) # (\inst10|Mux10~1_combout\ & ((\inst8|valor_interno[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000011111111111111111111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_Mux10~1_combout\,
	datac => \inst23|ALT_INV_valor_interno\(2),
	datad => \inst8|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	datae => \inst10|ALT_INV_Mux10~0_combout\,
	dataf => \inst11|ALT_INV_Add0~9_sumout\,
	combout => \inst10|Mux13~0_combout\);

-- Location: FF_X79_Y26_N50
\inst700666|ACCB|valor_interno[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|ACCB|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno[3]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y28_N9
\inst11|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~13_sumout\ = SUM(( (!\inst4|selregr\(2) & (\inst4|selregr\(0) & (\inst49|PCWrite~0_combout\ & \inst700666|ACCB|valor_interno[3]~DUPLICATE_q\))) ) + ( (!\inst49|PCWrite~0_combout\) # (!\inst4|sr~combout\) ) + ( \inst11|Add0~10\ ))
-- \inst11|Add0~14\ = CARRY(( (!\inst4|selregr\(2) & (\inst4|selregr\(0) & (\inst49|PCWrite~0_combout\ & \inst700666|ACCB|valor_interno[3]~DUPLICATE_q\))) ) + ( (!\inst49|PCWrite~0_combout\) # (!\inst4|sr~combout\) ) + ( \inst11|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(2),
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst49|ALT_INV_PCWrite~0_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_sr~combout\,
	cin => \inst11|Add0~10\,
	sumout => \inst11|Add0~13_sumout\,
	cout => \inst11|Add0~14\);

-- Location: LABCELL_X74_Y28_N18
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

-- Location: LABCELL_X75_Y28_N12
\inst10|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux12~1_combout\ = ( \inst23|valor_interno\(3) & ( (!\inst49|PCWrite~0_combout\) # ((!\inst4|seldir\(0)) # (\inst107|seldirw\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_seldir\(0),
	datad => \inst107|ALT_INV_seldirw\(1),
	dataf => \inst23|ALT_INV_valor_interno\(3),
	combout => \inst10|Mux12~1_combout\);

-- Location: FF_X74_Y28_N19
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

-- Location: FF_X77_Y28_N52
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

-- Location: LABCELL_X77_Y28_N51
\inst10|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux12~0_combout\ = ( \inst11|Add0~13_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((\inst107|seldirw\(1) & \inst23|valor_interno\(3))) ) ) # ( !\inst11|Add0~13_sumout\ & ( (\inst107|seldirw\(1) & \inst23|valor_interno\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_Mux10~0_combout\,
	datac => \inst107|ALT_INV_seldirw\(1),
	datad => \inst23|ALT_INV_valor_interno\(3),
	dataf => \inst11|ALT_INV_Add0~13_sumout\,
	combout => \inst10|Mux12~0_combout\);

-- Location: MLABCELL_X78_Y28_N30
\inst1|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux27~0_combout\ = ( \inst34|valor_interno\(2) & ( !\inst34|valor_interno[3]~DUPLICATE_q\ & ( (\inst34|valor_interno\(1) & (!\inst34|valor_interno\(5) & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(1),
	datab => \inst34|ALT_INV_valor_interno\(5),
	datac => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datad => \inst34|ALT_INV_valor_interno\(0),
	datae => \inst34|ALT_INV_valor_interno\(2),
	dataf => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	combout => \inst1|Mux27~0_combout\);

-- Location: FF_X78_Y28_N32
\inst8|valor_interno[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux27~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno[4]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y28_N39
\inst11|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~25_combout\ = ( \inst8|valor_interno[4]~DUPLICATE_q\ & ( (\inst49|PCWrite~0_combout\ & (!\inst4|sels1~combout\ $ (!\inst4|sr~combout\))) ) ) # ( !\inst8|valor_interno[4]~DUPLICATE_q\ & ( (\inst4|sr~combout\ & \inst49|PCWrite~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sels1~combout\,
	datab => \inst4|ALT_INV_sr~combout\,
	datad => \inst49|ALT_INV_PCWrite~0_combout\,
	dataf => \inst8|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	combout => \inst11|Add0~25_combout\);

-- Location: FF_X75_Y28_N8
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(4));

-- Location: LABCELL_X77_Y28_N12
\inst11|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~17_sumout\ = SUM(( !\inst11|Add0~25_combout\ ) + ( (\inst4|selregr\(0) & (!\inst4|selregr\(2) & (\inst49|PCWrite~0_combout\ & \inst700666|ACCB|valor_interno\(4)))) ) + ( \inst11|Add0~14\ ))
-- \inst11|Add0~18\ = CARRY(( !\inst11|Add0~25_combout\ ) + ( (\inst4|selregr\(0) & (!\inst4|selregr\(2) & (\inst49|PCWrite~0_combout\ & \inst700666|ACCB|valor_interno\(4)))) ) + ( \inst11|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst4|ALT_INV_selregr\(2),
	datac => \inst49|ALT_INV_PCWrite~0_combout\,
	datad => \inst11|ALT_INV_Add0~25_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(4),
	cin => \inst11|Add0~14\,
	sumout => \inst11|Add0~17_sumout\,
	cout => \inst11|Add0~18\);

-- Location: LABCELL_X74_Y28_N3
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

-- Location: FF_X78_Y28_N31
\inst8|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux27~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(4));

-- Location: LABCELL_X75_Y28_N6
\inst10|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux11~1_combout\ = ( \inst8|valor_interno\(4) & ( ((\inst49|PCWrite~0_combout\ & (!\inst107|seldirw\(1) & \inst4|seldir\(0)))) # (\inst23|valor_interno\(4)) ) ) # ( !\inst8|valor_interno\(4) & ( (\inst23|valor_interno\(4) & 
-- ((!\inst49|PCWrite~0_combout\) # ((!\inst4|seldir\(0)) # (\inst107|seldirw\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000101100001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst107|ALT_INV_seldirw\(1),
	datac => \inst23|ALT_INV_valor_interno\(4),
	datad => \inst4|ALT_INV_seldir\(0),
	dataf => \inst8|ALT_INV_valor_interno\(4),
	combout => \inst10|Mux11~1_combout\);

-- Location: FF_X74_Y28_N4
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

-- Location: FF_X77_Y28_N25
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

-- Location: LABCELL_X77_Y28_N24
\inst10|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux11~0_combout\ = ( \inst11|Add0~17_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(4)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno[4]~DUPLICATE_q\))) ) ) # ( !\inst11|Add0~17_sumout\ & ( 
-- (\inst10|Mux10~0_combout\ & ((!\inst10|Mux10~1_combout\ & ((\inst23|valor_interno\(4)))) # (\inst10|Mux10~1_combout\ & (\inst8|valor_interno[4]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Mux10~1_combout\,
	datab => \inst10|ALT_INV_Mux10~0_combout\,
	datac => \inst8|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datad => \inst23|ALT_INV_valor_interno\(4),
	dataf => \inst11|ALT_INV_Add0~17_sumout\,
	combout => \inst10|Mux11~0_combout\);

-- Location: FF_X79_Y27_N22
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(5));

-- Location: MLABCELL_X82_Y28_N18
\inst700|valor_interno[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[5]~feeder_combout\ = \inst700666|ACCA|valor_interno\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700666|ACCA|ALT_INV_valor_interno\(5),
	combout => \inst700|valor_interno[5]~feeder_combout\);

-- Location: FF_X82_Y28_N19
\inst700|valor_interno[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[5]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(5),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[5]~DUPLICATE_q\);

-- Location: FF_X80_Y26_N49
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(6));

-- Location: FF_X80_Y29_N20
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(11));

-- Location: FF_X79_Y27_N34
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(12));

-- Location: MLABCELL_X82_Y28_N51
\inst700|valor_interno[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[12]~feeder_combout\ = ( \inst700666|ACCA|valor_interno\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst700666|ACCA|ALT_INV_valor_interno\(12),
	combout => \inst700|valor_interno[12]~feeder_combout\);

-- Location: FF_X79_Y27_N28
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(12));

-- Location: FF_X82_Y28_N52
\inst700|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[12]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(12),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(12));

-- Location: FF_X79_Y27_N52
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(13));

-- Location: FF_X79_Y29_N56
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

-- Location: FF_X78_Y29_N7
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(14));

-- Location: LABCELL_X80_Y29_N39
\inst700|valor_interno[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[14]~feeder_combout\ = \inst700666|ACCA|valor_interno\(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|ALT_INV_valor_interno\(14),
	combout => \inst700|valor_interno[14]~feeder_combout\);

-- Location: FF_X81_Y28_N58
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(14));

-- Location: FF_X80_Y29_N41
\inst700|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[14]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(14),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(14));

-- Location: FF_X80_Y29_N34
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(15));

-- Location: M10K_X76_Y28_N0
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

-- Location: LABCELL_X81_Y28_N51
\inst202|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux16~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a15\ & ( (!\inst4|selsrc\(1) & (((\inst700666|ACCB|valor_interno\(15))))) # (\inst4|selsrc\(1) & ((!\inst49|PCWrite~0_combout\ & ((\inst700666|ACCB|valor_interno\(15)))) # 
-- (\inst49|PCWrite~0_combout\ & (!\inst4|selsrc\(0))))) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a15\ & ( (\inst700666|ACCB|valor_interno\(15) & ((!\inst4|selsrc\(1)) # (!\inst49|PCWrite~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111001011100000111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(15),
	datad => \inst49|ALT_INV_PCWrite~0_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \inst202|Mux16~0_combout\);

-- Location: LABCELL_X81_Y28_N30
\inst14|valor_interno[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[8]~0_combout\ = ( \inst4|selregr\(2) & ( (!\inst4|selsrc\(1)) # (!\inst49|PCWrite~0_combout\) ) ) # ( !\inst4|selregr\(2) & ( (!\inst49|PCWrite~0_combout\) # ((!\inst4|selsrc\(1) & ((!\inst4|selsrc\(0)) # (!\inst4|selregr\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001000111111111100100011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst4|ALT_INV_selregr\(0),
	datad => \inst49|ALT_INV_PCWrite~0_combout\,
	dataf => \inst4|ALT_INV_selregr\(2),
	combout => \inst14|valor_interno[8]~0_combout\);

-- Location: FF_X81_Y28_N52
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[15]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y30_N51
\inst700666|ACCA|valor_interno[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[15]~feeder_combout\ = ( \inst24|valor_interno\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(15),
	combout => \inst700666|ACCA|valor_interno[15]~feeder_combout\);

-- Location: FF_X80_Y30_N53
\inst700666|ACCA|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|ACCA|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(15));

-- Location: LABCELL_X80_Y29_N42
\inst700|valor_interno[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[15]~feeder_combout\ = ( \inst700666|ACCA|valor_interno\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst700666|ACCA|ALT_INV_valor_interno\(15),
	combout => \inst700|valor_interno[15]~feeder_combout\);

-- Location: FF_X80_Y29_N44
\inst700|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[15]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(15),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(15));

-- Location: LABCELL_X77_Y31_N27
\inst4|selop[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop[0]~3_combout\ = ( \inst4|Equal2~2_combout\ & ( !\inst4|selop[1]~0_combout\ ) ) # ( !\inst4|Equal2~2_combout\ & ( (!\inst4|selop[1]~0_combout\ & (((!\inst4|Equal4~0_combout\ & !\inst4|Equal7~3_combout\)) # (\inst4|Equal3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001010000110100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal3~1_combout\,
	datab => \inst4|ALT_INV_Equal4~0_combout\,
	datac => \inst4|ALT_INV_selop[1]~0_combout\,
	datad => \inst4|ALT_INV_Equal7~3_combout\,
	dataf => \inst4|ALT_INV_Equal2~2_combout\,
	combout => \inst4|selop[0]~3_combout\);

-- Location: LABCELL_X77_Y29_N6
\inst4|comb~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~19_combout\ = ( !\inst4|selop[0]~3_combout\ & ( (!\inst4|selregr[3]~2_combout\) # (\inst4|Equal9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr[3]~2_combout\,
	datac => \inst4|ALT_INV_Equal9~0_combout\,
	dataf => \inst4|ALT_INV_selop[0]~3_combout\,
	combout => \inst4|comb~19_combout\);

-- Location: LABCELL_X77_Y29_N12
\inst4|comb~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~18_combout\ = ( \inst4|selop[0]~3_combout\ & ( (!\inst4|selregr[3]~2_combout\) # (\inst4|Equal9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr[3]~2_combout\,
	datac => \inst4|ALT_INV_Equal9~0_combout\,
	dataf => \inst4|ALT_INV_selop[0]~3_combout\,
	combout => \inst4|comb~18_combout\);

-- Location: LABCELL_X77_Y29_N18
\inst4|selop[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop\(0) = ( \inst4|selop\(0) & ( !\inst4|comb~18_combout\ ) ) # ( !\inst4|selop\(0) & ( (\inst4|comb~19_combout\ & !\inst4|comb~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_comb~19_combout\,
	datac => \inst4|ALT_INV_comb~18_combout\,
	dataf => \inst4|ALT_INV_selop\(0),
	combout => \inst4|selop\(0));

-- Location: LABCELL_X77_Y29_N54
\inst31|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|process_0~1_combout\ & ( \inst49|process_0~2_combout\ & ( (\inst4|selop\(0) & (!\inst4|selregr\(0) & ((!\inst49|process_0~0_combout\) # (!\inst4|selregr\(2))))) ) ) ) # ( 
-- !\inst49|process_0~1_combout\ & ( \inst49|process_0~2_combout\ & ( (\inst4|selop\(0) & ((!\inst4|selregr\(2)) # ((!\inst49|process_0~0_combout\ & !\inst4|selregr\(0))))) ) ) ) # ( \inst49|process_0~1_combout\ & ( !\inst49|process_0~2_combout\ & ( 
-- (\inst4|selop\(0) & ((!\inst4|selregr\(2) & ((!\inst4|selregr\(0)))) # (\inst4|selregr\(2) & ((!\inst49|process_0~0_combout\) # (\inst4|selregr\(0)))))) ) ) ) # ( !\inst49|process_0~1_combout\ & ( !\inst49|process_0~2_combout\ & ( (\inst4|selop\(0) & 
-- ((!\inst49|process_0~0_combout\) # ((!\inst4|selregr\(2)) # (\inst4|selregr\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010101010101000000010101010100010100000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selop\(0),
	datab => \inst49|ALT_INV_process_0~0_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst4|ALT_INV_selregr\(0),
	datae => \inst49|ALT_INV_process_0~1_combout\,
	dataf => \inst49|ALT_INV_process_0~2_combout\,
	combout => \inst31|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X80_Y29_N29
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

-- Location: FF_X80_Y29_N43
\inst700|valor_interno[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[15]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(15),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[15]~DUPLICATE_q\);

-- Location: FF_X81_Y28_N53
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(15));

-- Location: FF_X81_Y28_N2
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(14));

-- Location: FF_X77_Y29_N37
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(13));

-- Location: MLABCELL_X82_Y28_N33
\inst700|valor_interno[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[13]~feeder_combout\ = ( \inst700666|ACCA|valor_interno\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst700666|ACCA|ALT_INV_valor_interno\(13),
	combout => \inst700|valor_interno[13]~feeder_combout\);

-- Location: FF_X82_Y28_N34
\inst700|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[13]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(13),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(13));

-- Location: FF_X81_Y28_N10
\inst14|valor_interno[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux18~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[13]~DUPLICATE_q\);

-- Location: FF_X81_Y28_N35
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[12]~DUPLICATE_q\);

-- Location: FF_X82_Y28_N53
\inst700|valor_interno[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[12]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(12),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[12]~DUPLICATE_q\);

-- Location: FF_X80_Y29_N5
\inst700|valor_interno[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[11]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(11),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[11]~DUPLICATE_q\);

-- Location: FF_X81_Y28_N7
\inst14|valor_interno[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux20~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[11]~DUPLICATE_q\);

-- Location: FF_X79_Y27_N44
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(10));

-- Location: FF_X82_Y28_N14
\inst700|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[10]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(10),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(10));

-- Location: LABCELL_X81_Y28_N3
\inst202|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux21~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a10\ & ( (!\inst4|selsrc\(1) & (((\inst700666|ACCB|valor_interno\(10))))) # (\inst4|selsrc\(1) & ((!\inst49|PCWrite~0_combout\ & ((\inst700666|ACCB|valor_interno\(10)))) # 
-- (\inst49|PCWrite~0_combout\ & (!\inst4|selsrc\(0))))) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a10\ & ( (\inst700666|ACCB|valor_interno\(10) & ((!\inst4|selsrc\(1)) # (!\inst49|PCWrite~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111001011100000111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(10),
	datad => \inst49|ALT_INV_PCWrite~0_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	combout => \inst202|Mux21~0_combout\);

-- Location: FF_X81_Y28_N4
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[10]~DUPLICATE_q\);

-- Location: FF_X81_Y28_N22
\inst700666|ACCB|valor_interno[9]~DUPLICATE\ : dffeas
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno[9]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y28_N48
\inst202|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux22~0_combout\ = ( \inst700666|ACCB|valor_interno[9]~DUPLICATE_q\ & ( (!\inst4|selsrc\(1)) # ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selsrc\(0) & \inst41|mem_rtl_0|auto_generated|ram_block1a9\))) ) ) # ( 
-- !\inst700666|ACCB|valor_interno[9]~DUPLICATE_q\ & ( (!\inst4|selsrc\(0) & (\inst4|selsrc\(1) & (\inst49|PCWrite~0_combout\ & \inst41|mem_rtl_0|auto_generated|ram_block1a9\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001011111100111111101111110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst49|ALT_INV_PCWrite~0_combout\,
	datad => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno[9]~DUPLICATE_q\,
	combout => \inst202|Mux22~0_combout\);

-- Location: FF_X81_Y28_N49
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(9));

-- Location: FF_X81_Y28_N56
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(8));

-- Location: LABCELL_X81_Y28_N42
\inst202|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux23~0_combout\ = ( \inst700666|ACCB|valor_interno\(8) & ( (!\inst4|selsrc\(1)) # ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selsrc\(0) & \inst41|mem_rtl_0|auto_generated|ram_block1a8\))) ) ) # ( !\inst700666|ACCB|valor_interno\(8) & ( 
-- (!\inst4|selsrc\(0) & (\inst4|selsrc\(1) & (\inst49|PCWrite~0_combout\ & \inst41|mem_rtl_0|auto_generated|ram_block1a8\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001011111100111111101111110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst49|ALT_INV_PCWrite~0_combout\,
	datad => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(8),
	combout => \inst202|Mux23~0_combout\);

-- Location: FF_X81_Y28_N43
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[8]~DUPLICATE_q\);

-- Location: FF_X79_Y27_N8
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(7));

-- Location: MLABCELL_X82_Y28_N57
\inst700|valor_interno[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[7]~feeder_combout\ = ( \inst700666|ACCA|valor_interno\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst700666|ACCA|ALT_INV_valor_interno\(7),
	combout => \inst700|valor_interno[7]~feeder_combout\);

-- Location: FF_X80_Y27_N10
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(7));

-- Location: FF_X82_Y28_N58
\inst700|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[7]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(7),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(7));

-- Location: LABCELL_X81_Y28_N12
\inst202|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux24~0_combout\ = ( \inst700666|ACCB|valor_interno\(7) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a7\ & ( (\inst49|PCWrite~0_combout\ & ((!\inst4|selsrc\(1) & (\inst4|selsrc\(0) & \inst700666|inst|Equal1~0_combout\)) # (\inst4|selsrc\(1) & 
-- (!\inst4|selsrc\(0))))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(7) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a7\ & ( (\inst49|PCWrite~0_combout\ & (\inst4|selsrc\(1) & !\inst4|selsrc\(0))) ) ) ) # ( \inst700666|ACCB|valor_interno\(7) & ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a7\ & ( (\inst49|PCWrite~0_combout\ & (!\inst4|selsrc\(1) & (\inst4|selsrc\(0) & \inst700666|inst|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000010000000100000001000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst4|ALT_INV_selsrc\(0),
	datad => \inst700666|inst|ALT_INV_Equal1~0_combout\,
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(7),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \inst202|Mux24~0_combout\);

-- Location: FF_X81_Y28_N13
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

-- Location: FF_X82_Y28_N20
\inst700|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[5]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(5),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(5));

-- Location: LABCELL_X81_Y28_N36
\inst202|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux26~0_combout\ = ( \inst700666|ACCB|valor_interno\(5) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a5\ & ( (\inst49|PCWrite~0_combout\ & ((!\inst4|selsrc\(1) & (\inst4|selsrc\(0) & \inst700666|inst|Equal1~0_combout\)) # (\inst4|selsrc\(1) & 
-- (!\inst4|selsrc\(0))))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(5) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a5\ & ( (\inst49|PCWrite~0_combout\ & (\inst4|selsrc\(1) & !\inst4|selsrc\(0))) ) ) ) # ( \inst700666|ACCB|valor_interno\(5) & ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a5\ & ( (\inst49|PCWrite~0_combout\ & (!\inst4|selsrc\(1) & (\inst4|selsrc\(0) & \inst700666|inst|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000010000000100000001000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst4|ALT_INV_selsrc\(0),
	datad => \inst700666|inst|ALT_INV_Equal1~0_combout\,
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(5),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \inst202|Mux26~0_combout\);

-- Location: FF_X81_Y28_N38
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

-- Location: FF_X78_Y29_N41
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(4));

-- Location: MLABCELL_X82_Y28_N9
\inst700|valor_interno[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[4]~feeder_combout\ = ( \inst700666|ACCA|valor_interno\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst700666|ACCA|ALT_INV_valor_interno\(4),
	combout => \inst700|valor_interno[4]~feeder_combout\);

-- Location: FF_X82_Y28_N10
\inst700|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[4]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(4),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(4));

-- Location: LABCELL_X81_Y28_N24
\inst14|valor_interno[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[0]~1_combout\ = (\inst49|PCWrite~0_combout\ & (!\inst4|selsrc\(0) $ (!\inst4|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst49|ALT_INV_PCWrite~0_combout\,
	datac => \inst4|ALT_INV_selsrc\(0),
	datad => \inst4|ALT_INV_selsrc\(1),
	combout => \inst14|valor_interno[0]~1_combout\);

-- Location: LABCELL_X75_Y27_N18
\inst14|valor_interno[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[0]~2_combout\ = ( \inst4|selsrc\(0) & ( \inst49|process_0~1_combout\ & ( (!\inst4|selregr\(2) & (((!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & ((!\inst4|selregr\(0) & (!\inst49|process_0~0_combout\)) # (\inst4|selregr\(0) & 
-- ((!\inst49|process_0~2_combout\))))) ) ) ) # ( \inst4|selsrc\(0) & ( !\inst49|process_0~1_combout\ & ( (!\inst4|selregr\(2)) # ((!\inst4|selregr\(0) & (!\inst49|process_0~0_combout\)) # (\inst4|selregr\(0) & ((!\inst49|process_0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111110000000000000000001111101000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_process_0~0_combout\,
	datab => \inst49|ALT_INV_process_0~2_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst4|ALT_INV_selregr\(0),
	datae => \inst4|ALT_INV_selsrc\(0),
	dataf => \inst49|ALT_INV_process_0~1_combout\,
	combout => \inst14|valor_interno[0]~2_combout\);

-- Location: LABCELL_X75_Y28_N3
\inst202|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux27~0_combout\ = ( \inst14|valor_interno[0]~2_combout\ & ( \inst41|mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\inst14|valor_interno[0]~1_combout\ & (((\inst8|valor_interno\(4))))) # (\inst14|valor_interno[0]~1_combout\ & 
-- (\inst700666|inst|Equal1~0_combout\ & (\inst700666|ACCB|valor_interno\(4)))) ) ) ) # ( !\inst14|valor_interno[0]~2_combout\ & ( \inst41|mem_rtl_0|auto_generated|ram_block1a4\ & ( \inst14|valor_interno[0]~1_combout\ ) ) ) # ( 
-- \inst14|valor_interno[0]~2_combout\ & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\inst14|valor_interno[0]~1_combout\ & (((\inst8|valor_interno\(4))))) # (\inst14|valor_interno[0]~1_combout\ & (\inst700666|inst|Equal1~0_combout\ & 
-- (\inst700666|ACCB|valor_interno\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011100110100110011001100110000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal1~0_combout\,
	datab => \inst14|ALT_INV_valor_interno[0]~1_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(4),
	datad => \inst8|ALT_INV_valor_interno\(4),
	datae => \inst14|ALT_INV_valor_interno[0]~2_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \inst202|Mux27~0_combout\);

-- Location: FF_X79_Y28_N5
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

-- Location: FF_X79_Y26_N35
\inst700|valor_interno[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[3]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno[3]~DUPLICATE_q\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[3]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y28_N18
\inst202|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux29~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a2\ & ( \inst8|valor_interno[2]~DUPLICATE_q\ & ( (!\inst14|valor_interno[0]~1_combout\ & (((\inst14|valor_interno[0]~2_combout\)))) # (\inst14|valor_interno[0]~1_combout\ & 
-- ((!\inst14|valor_interno[0]~2_combout\) # ((\inst700666|inst|Equal1~0_combout\ & \inst700666|ACCB|valor_interno\(2))))) ) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a2\ & ( \inst8|valor_interno[2]~DUPLICATE_q\ & ( 
-- (\inst14|valor_interno[0]~2_combout\ & ((!\inst14|valor_interno[0]~1_combout\) # ((\inst700666|inst|Equal1~0_combout\ & \inst700666|ACCB|valor_interno\(2))))) ) ) ) # ( \inst41|mem_rtl_0|auto_generated|ram_block1a2\ & ( 
-- !\inst8|valor_interno[2]~DUPLICATE_q\ & ( (\inst14|valor_interno[0]~1_combout\ & ((!\inst14|valor_interno[0]~2_combout\) # ((\inst700666|inst|Equal1~0_combout\ & \inst700666|ACCB|valor_interno\(2))))) ) ) ) # ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a2\ & ( !\inst8|valor_interno[2]~DUPLICATE_q\ & ( (\inst700666|inst|Equal1~0_combout\ & (\inst14|valor_interno[0]~1_combout\ & (\inst700666|ACCB|valor_interno\(2) & \inst14|valor_interno[0]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001001100110000000100000000110011010011001111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal1~0_combout\,
	datab => \inst14|ALT_INV_valor_interno[0]~1_combout\,
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(2),
	datad => \inst14|ALT_INV_valor_interno[0]~2_combout\,
	datae => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \inst8|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	combout => \inst202|Mux29~0_combout\);

-- Location: LABCELL_X80_Y28_N57
\inst14|valor_interno[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[2]~feeder_combout\ = ( \inst202|Mux29~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst202|ALT_INV_Mux29~0_combout\,
	combout => \inst14|valor_interno[2]~feeder_combout\);

-- Location: FF_X80_Y28_N59
\inst14|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst14|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(2));

-- Location: FF_X82_Y28_N44
\inst700666|ACCA|valor_interno[2]~DUPLICATE\ : dffeas
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno[2]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y28_N0
\inst700|valor_interno[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[2]~feeder_combout\ = \inst700666|ACCA|valor_interno[2]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCA|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	combout => \inst700|valor_interno[2]~feeder_combout\);

-- Location: FF_X82_Y28_N1
\inst700|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[2]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(2));

-- Location: LABCELL_X75_Y28_N39
\inst202|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux30~0_combout\ = ( \inst8|valor_interno[1]~DUPLICATE_q\ & ( \inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( (!\inst14|valor_interno[0]~2_combout\ & (((\inst14|valor_interno[0]~1_combout\)))) # (\inst14|valor_interno[0]~2_combout\ & 
-- ((!\inst14|valor_interno[0]~1_combout\) # ((\inst700666|inst|Equal1~0_combout\ & \inst700666|ACCB|valor_interno\(1))))) ) ) ) # ( !\inst8|valor_interno[1]~DUPLICATE_q\ & ( \inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( 
-- (\inst14|valor_interno[0]~1_combout\ & ((!\inst14|valor_interno[0]~2_combout\) # ((\inst700666|inst|Equal1~0_combout\ & \inst700666|ACCB|valor_interno\(1))))) ) ) ) # ( \inst8|valor_interno[1]~DUPLICATE_q\ & ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( (\inst14|valor_interno[0]~2_combout\ & ((!\inst14|valor_interno[0]~1_combout\) # ((\inst700666|inst|Equal1~0_combout\ & \inst700666|ACCB|valor_interno\(1))))) ) ) ) # ( 
-- !\inst8|valor_interno[1]~DUPLICATE_q\ & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a1\ & ( (\inst700666|inst|Equal1~0_combout\ & (\inst14|valor_interno[0]~2_combout\ & (\inst14|valor_interno[0]~1_combout\ & \inst700666|ACCB|valor_interno\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001001100000011000100001100000011010011110000111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|ALT_INV_Equal1~0_combout\,
	datab => \inst14|ALT_INV_valor_interno[0]~2_combout\,
	datac => \inst14|ALT_INV_valor_interno[0]~1_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(1),
	datae => \inst8|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \inst202|Mux30~0_combout\);

-- Location: FF_X75_Y28_N40
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

-- Location: FF_X78_Y29_N5
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(1));

-- Location: MLABCELL_X82_Y28_N27
\inst700|valor_interno[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[1]~feeder_combout\ = ( \inst700666|ACCA|valor_interno\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst700666|ACCA|ALT_INV_valor_interno\(1),
	combout => \inst700|valor_interno[1]~feeder_combout\);

-- Location: FF_X82_Y28_N29
\inst700|valor_interno[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[1]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[1]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y31_N54
\inst4|cadj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cadj~0_combout\ = ( !\inst4|selregr[2]~0_combout\ & ( (!\inst4|selsrc[1]~0_combout\ & (!\inst4|selregr[0]~4_combout\ & ((\inst4|Equal7~3_combout\) # (\inst4|Equal8~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal8~1_combout\,
	datab => \inst4|ALT_INV_Equal7~3_combout\,
	datac => \inst4|ALT_INV_selsrc[1]~0_combout\,
	datad => \inst4|ALT_INV_selregr[0]~4_combout\,
	dataf => \inst4|ALT_INV_selregr[2]~0_combout\,
	combout => \inst4|cadj~0_combout\);

-- Location: LABCELL_X77_Y29_N48
\inst4|comb~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~26_combout\ = ( \inst4|Equal9~0_combout\ & ( !\inst4|cadj~0_combout\ ) ) # ( !\inst4|Equal9~0_combout\ & ( (!\inst4|selregr[3]~2_combout\ & !\inst4|cadj~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr[3]~2_combout\,
	datac => \inst4|ALT_INV_cadj~0_combout\,
	dataf => \inst4|ALT_INV_Equal9~0_combout\,
	combout => \inst4|comb~26_combout\);

-- Location: LABCELL_X77_Y29_N45
\inst4|comb~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~27_combout\ = ( \inst4|Equal9~0_combout\ & ( \inst4|cadj~0_combout\ ) ) # ( !\inst4|Equal9~0_combout\ & ( (\inst4|cadj~0_combout\ & !\inst4|selregr[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_cadj~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_Equal9~0_combout\,
	combout => \inst4|comb~27_combout\);

-- Location: LABCELL_X77_Y29_N9
\inst4|cadj\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cadj~combout\ = ( \inst4|cadj~combout\ & ( !\inst4|comb~26_combout\ ) ) # ( !\inst4|cadj~combout\ & ( (!\inst4|comb~26_combout\ & \inst4|comb~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~26_combout\,
	datac => \inst4|ALT_INV_comb~27_combout\,
	dataf => \inst4|ALT_INV_cadj~combout\,
	combout => \inst4|cadj~combout\);

-- Location: LABCELL_X77_Y29_N36
\inst28|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst28|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|process_0~0_combout\ & ( \inst4|cadj~combout\ & ( (!\inst4|selregr\(2) & ((!\inst4|selregr\(0)) # ((!\inst49|process_0~1_combout\)))) # (\inst4|selregr\(2) & (\inst4|selregr\(0) & 
-- ((!\inst49|process_0~2_combout\)))) ) ) ) # ( !\inst49|process_0~0_combout\ & ( \inst4|cadj~combout\ & ( (!\inst4|selregr\(0)) # ((!\inst4|selregr\(2) & (!\inst49|process_0~1_combout\)) # (\inst4|selregr\(2) & ((!\inst49|process_0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101111011001011100110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(2),
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst49|ALT_INV_process_0~1_combout\,
	datad => \inst49|ALT_INV_process_0~2_combout\,
	datae => \inst49|ALT_INV_process_0~0_combout\,
	dataf => \inst4|ALT_INV_cadj~combout\,
	combout => \inst28|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X80_Y28_N2
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

-- Location: FF_X81_Y28_N5
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(10));

-- Location: FF_X81_Y28_N50
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[9]~DUPLICATE_q\);

-- Location: FF_X81_Y28_N44
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(8));

-- Location: FF_X79_Y28_N58
\inst700|valor_interno[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[8]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(8),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[8]~DUPLICATE_q\);

-- Location: FF_X81_Y28_N14
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

-- Location: FF_X82_Y28_N2
\inst700|valor_interno[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[2]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(2),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[2]~DUPLICATE_q\);

-- Location: FF_X82_Y28_N28
\inst700|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[1]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(1),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(1));

-- Location: LABCELL_X77_Y29_N42
\inst4|selc\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selc~combout\ = ( \inst4|selc~combout\ & ( !\inst4|comb~28_combout\ ) ) # ( !\inst4|selc~combout\ & ( (\inst4|comb~29_combout\ & !\inst4|comb~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~29_combout\,
	datac => \inst4|ALT_INV_comb~28_combout\,
	dataf => \inst4|ALT_INV_selc~combout\,
	combout => \inst4|selc~combout\);

-- Location: LABCELL_X81_Y28_N18
\inst27|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst4|selregr\(0) & ( \inst49|process_0~0_combout\ & ( (\inst4|selc~combout\ & ((!\inst4|selregr\(2) & ((!\inst49|process_0~1_combout\))) # (\inst4|selregr\(2) & 
-- (!\inst49|process_0~2_combout\)))) ) ) ) # ( !\inst4|selregr\(0) & ( \inst49|process_0~0_combout\ & ( (\inst4|selc~combout\ & !\inst4|selregr\(2)) ) ) ) # ( \inst4|selregr\(0) & ( !\inst49|process_0~0_combout\ & ( (\inst4|selc~combout\ & 
-- ((!\inst4|selregr\(2) & ((!\inst49|process_0~1_combout\))) # (\inst4|selregr\(2) & (!\inst49|process_0~2_combout\)))) ) ) ) # ( !\inst4|selregr\(0) & ( !\inst49|process_0~0_combout\ & ( \inst4|selc~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000100010001010101000000000101000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selc~combout\,
	datab => \inst49|ALT_INV_process_0~2_combout\,
	datac => \inst49|ALT_INV_process_0~1_combout\,
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst4|ALT_INV_selregr\(0),
	dataf => \inst49|ALT_INV_process_0~0_combout\,
	combout => \inst27|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X81_Y28_N29
\inst16|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst27|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selc~q\);

-- Location: LABCELL_X80_Y28_N0
\inst33|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~66_cout\ = CARRY(( (!\inst16|selc~q\ & ((\inst|ci~combout\))) # (\inst16|selc~q\ & (\inst16|cadj~q\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_cadj~q\,
	datac => \inst|ALT_INV_ci~combout\,
	datad => \inst16|ALT_INV_selc~q\,
	cin => GND,
	cout => \inst33|Add0~66_cout\);

-- Location: LABCELL_X80_Y28_N3
\inst33|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~57_sumout\ = SUM(( \inst14|valor_interno\(0) ) + ( \inst700|valor_interno\(0) ) + ( \inst33|Add0~66_cout\ ))
-- \inst33|Add0~58\ = CARRY(( \inst14|valor_interno\(0) ) + ( \inst700|valor_interno\(0) ) + ( \inst33|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno\(0),
	datad => \inst14|ALT_INV_valor_interno\(0),
	cin => \inst33|Add0~66_cout\,
	sumout => \inst33|Add0~57_sumout\,
	cout => \inst33|Add0~58\);

-- Location: LABCELL_X80_Y28_N6
\inst33|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~9_sumout\ = SUM(( \inst14|valor_interno[1]~DUPLICATE_q\ ) + ( \inst700|valor_interno\(1) ) + ( \inst33|Add0~58\ ))
-- \inst33|Add0~10\ = CARRY(( \inst14|valor_interno[1]~DUPLICATE_q\ ) + ( \inst700|valor_interno\(1) ) + ( \inst33|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno\(1),
	datad => \inst14|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	cin => \inst33|Add0~58\,
	sumout => \inst33|Add0~9_sumout\,
	cout => \inst33|Add0~10\);

-- Location: LABCELL_X80_Y28_N9
\inst33|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~13_sumout\ = SUM(( \inst14|valor_interno\(2) ) + ( \inst700|valor_interno[2]~DUPLICATE_q\ ) + ( \inst33|Add0~10\ ))
-- \inst33|Add0~14\ = CARRY(( \inst14|valor_interno\(2) ) + ( \inst700|valor_interno[2]~DUPLICATE_q\ ) + ( \inst33|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno[2]~DUPLICATE_q\,
	datad => \inst14|ALT_INV_valor_interno\(2),
	cin => \inst33|Add0~10\,
	sumout => \inst33|Add0~13_sumout\,
	cout => \inst33|Add0~14\);

-- Location: LABCELL_X80_Y28_N12
\inst33|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~17_sumout\ = SUM(( \inst700|valor_interno\(3) ) + ( \inst14|valor_interno\(3) ) + ( \inst33|Add0~14\ ))
-- \inst33|Add0~18\ = CARRY(( \inst700|valor_interno\(3) ) + ( \inst14|valor_interno\(3) ) + ( \inst33|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|ALT_INV_valor_interno\(3),
	datac => \inst700|ALT_INV_valor_interno\(3),
	cin => \inst33|Add0~14\,
	sumout => \inst33|Add0~17_sumout\,
	cout => \inst33|Add0~18\);

-- Location: LABCELL_X80_Y28_N15
\inst33|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~21_sumout\ = SUM(( \inst14|valor_interno\(4) ) + ( \inst700|valor_interno\(4) ) + ( \inst33|Add0~18\ ))
-- \inst33|Add0~22\ = CARRY(( \inst14|valor_interno\(4) ) + ( \inst700|valor_interno\(4) ) + ( \inst33|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno\(4),
	datad => \inst14|ALT_INV_valor_interno\(4),
	cin => \inst33|Add0~18\,
	sumout => \inst33|Add0~21_sumout\,
	cout => \inst33|Add0~22\);

-- Location: LABCELL_X80_Y28_N18
\inst33|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~25_sumout\ = SUM(( \inst14|valor_interno\(5) ) + ( \inst700|valor_interno[5]~DUPLICATE_q\ ) + ( \inst33|Add0~22\ ))
-- \inst33|Add0~26\ = CARRY(( \inst14|valor_interno\(5) ) + ( \inst700|valor_interno[5]~DUPLICATE_q\ ) + ( \inst33|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datad => \inst14|ALT_INV_valor_interno\(5),
	cin => \inst33|Add0~22\,
	sumout => \inst33|Add0~25_sumout\,
	cout => \inst33|Add0~26\);

-- Location: LABCELL_X80_Y28_N21
\inst33|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~1_sumout\ = SUM(( \inst700|valor_interno\(6) ) + ( \inst14|valor_interno\(6) ) + ( \inst33|Add0~26\ ))
-- \inst33|Add0~2\ = CARRY(( \inst700|valor_interno\(6) ) + ( \inst14|valor_interno\(6) ) + ( \inst33|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(6),
	datac => \inst700|ALT_INV_valor_interno\(6),
	cin => \inst33|Add0~26\,
	sumout => \inst33|Add0~1_sumout\,
	cout => \inst33|Add0~2\);

-- Location: LABCELL_X80_Y28_N24
\inst33|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~29_sumout\ = SUM(( \inst700|valor_interno\(7) ) + ( \inst14|valor_interno\(7) ) + ( \inst33|Add0~2\ ))
-- \inst33|Add0~30\ = CARRY(( \inst700|valor_interno\(7) ) + ( \inst14|valor_interno\(7) ) + ( \inst33|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|ALT_INV_valor_interno\(7),
	datad => \inst700|ALT_INV_valor_interno\(7),
	cin => \inst33|Add0~2\,
	sumout => \inst33|Add0~29_sumout\,
	cout => \inst33|Add0~30\);

-- Location: LABCELL_X80_Y28_N27
\inst33|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~33_sumout\ = SUM(( \inst700|valor_interno[8]~DUPLICATE_q\ ) + ( \inst14|valor_interno\(8) ) + ( \inst33|Add0~30\ ))
-- \inst33|Add0~34\ = CARRY(( \inst700|valor_interno[8]~DUPLICATE_q\ ) + ( \inst14|valor_interno\(8) ) + ( \inst33|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst14|ALT_INV_valor_interno\(8),
	datad => \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	cin => \inst33|Add0~30\,
	sumout => \inst33|Add0~33_sumout\,
	cout => \inst33|Add0~34\);

-- Location: LABCELL_X80_Y28_N30
\inst33|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~37_sumout\ = SUM(( \inst14|valor_interno[9]~DUPLICATE_q\ ) + ( \inst700|valor_interno\(9) ) + ( \inst33|Add0~34\ ))
-- \inst33|Add0~38\ = CARRY(( \inst14|valor_interno[9]~DUPLICATE_q\ ) + ( \inst700|valor_interno\(9) ) + ( \inst33|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno\(9),
	datad => \inst14|ALT_INV_valor_interno[9]~DUPLICATE_q\,
	cin => \inst33|Add0~34\,
	sumout => \inst33|Add0~37_sumout\,
	cout => \inst33|Add0~38\);

-- Location: LABCELL_X80_Y28_N33
\inst33|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~41_sumout\ = SUM(( \inst700|valor_interno[10]~DUPLICATE_q\ ) + ( \inst14|valor_interno\(10) ) + ( \inst33|Add0~38\ ))
-- \inst33|Add0~42\ = CARRY(( \inst700|valor_interno[10]~DUPLICATE_q\ ) + ( \inst14|valor_interno\(10) ) + ( \inst33|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(10),
	datad => \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	cin => \inst33|Add0~38\,
	sumout => \inst33|Add0~41_sumout\,
	cout => \inst33|Add0~42\);

-- Location: LABCELL_X80_Y28_N36
\inst33|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~45_sumout\ = SUM(( \inst14|valor_interno\(11) ) + ( \inst700|valor_interno[11]~DUPLICATE_q\ ) + ( \inst33|Add0~42\ ))
-- \inst33|Add0~46\ = CARRY(( \inst14|valor_interno\(11) ) + ( \inst700|valor_interno[11]~DUPLICATE_q\ ) + ( \inst33|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst700|ALT_INV_valor_interno[11]~DUPLICATE_q\,
	datad => \inst14|ALT_INV_valor_interno\(11),
	cin => \inst33|Add0~42\,
	sumout => \inst33|Add0~45_sumout\,
	cout => \inst33|Add0~46\);

-- Location: LABCELL_X80_Y28_N39
\inst33|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~5_sumout\ = SUM(( \inst700|valor_interno[12]~DUPLICATE_q\ ) + ( \inst14|valor_interno[12]~DUPLICATE_q\ ) + ( \inst33|Add0~46\ ))
-- \inst33|Add0~6\ = CARRY(( \inst700|valor_interno[12]~DUPLICATE_q\ ) + ( \inst14|valor_interno[12]~DUPLICATE_q\ ) + ( \inst33|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[12]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno[12]~DUPLICATE_q\,
	cin => \inst33|Add0~46\,
	sumout => \inst33|Add0~5_sumout\,
	cout => \inst33|Add0~6\);

-- Location: LABCELL_X80_Y28_N42
\inst33|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~49_sumout\ = SUM(( \inst700|valor_interno\(13) ) + ( \inst14|valor_interno\(13) ) + ( \inst33|Add0~6\ ))
-- \inst33|Add0~50\ = CARRY(( \inst700|valor_interno\(13) ) + ( \inst14|valor_interno\(13) ) + ( \inst33|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst14|ALT_INV_valor_interno\(13),
	datad => \inst700|ALT_INV_valor_interno\(13),
	cin => \inst33|Add0~6\,
	sumout => \inst33|Add0~49_sumout\,
	cout => \inst33|Add0~50\);

-- Location: LABCELL_X80_Y28_N45
\inst33|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~53_sumout\ = SUM(( \inst700|valor_interno\(14) ) + ( \inst14|valor_interno\(14) ) + ( \inst33|Add0~50\ ))
-- \inst33|Add0~54\ = CARRY(( \inst700|valor_interno\(14) ) + ( \inst14|valor_interno\(14) ) + ( \inst33|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(14),
	datad => \inst700|ALT_INV_valor_interno\(14),
	cin => \inst33|Add0~50\,
	sumout => \inst33|Add0~53_sumout\,
	cout => \inst33|Add0~54\);

-- Location: LABCELL_X80_Y28_N48
\inst33|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~69_sumout\ = SUM(( \inst14|valor_interno\(15) ) + ( \inst700|valor_interno[15]~DUPLICATE_q\ ) + ( \inst33|Add0~54\ ))
-- \inst33|Add0~70\ = CARRY(( \inst14|valor_interno\(15) ) + ( \inst700|valor_interno[15]~DUPLICATE_q\ ) + ( \inst33|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datac => \inst14|ALT_INV_valor_interno\(15),
	cin => \inst33|Add0~54\,
	sumout => \inst33|Add0~69_sumout\,
	cout => \inst33|Add0~70\);

-- Location: LABCELL_X80_Y28_N51
\inst33|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add0~61_sumout\ = SUM(( GND ) + ( GND ) + ( \inst33|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst33|Add0~70\,
	sumout => \inst33|Add0~61_sumout\);

-- Location: LABCELL_X79_Y28_N48
\inst33|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~69_sumout\ = SUM(( !\inst14|valor_interno\(15) ) + ( \inst700|valor_interno[15]~DUPLICATE_q\ ) + ( \inst33|Add2~54\ ))
-- \inst33|Add2~70\ = CARRY(( !\inst14|valor_interno\(15) ) + ( \inst700|valor_interno[15]~DUPLICATE_q\ ) + ( \inst33|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datac => \inst14|ALT_INV_valor_interno\(15),
	cin => \inst33|Add2~54\,
	sumout => \inst33|Add2~69_sumout\,
	cout => \inst33|Add2~70\);

-- Location: LABCELL_X79_Y28_N51
\inst33|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~61_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst33|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst33|Add2~70\,
	sumout => \inst33|Add2~61_sumout\);

-- Location: LABCELL_X81_Y29_N6
\inst33|opres[16]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~19_combout\ = ( !\inst16|selop\(0) & ( ((\inst16|selop\(1) & ((!\inst16|selop\(2) & ((\inst33|Add2~61_sumout\))) # (\inst16|selop\(2) & (\inst700|valor_interno[15]~DUPLICATE_q\))))) ) ) # ( \inst16|selop\(0) & ( ((!\inst16|selop\(2) & 
-- (((\inst33|Add0~61_sumout\ & !\inst16|selop\(1))))) # (\inst16|selop\(2) & (\inst700|valor_interno\(0) & ((\inst16|selop\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000011110000000000001111010101010000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datab => \inst700|ALT_INV_valor_interno\(0),
	datac => \inst33|ALT_INV_Add0~61_sumout\,
	datad => \inst16|ALT_INV_selop\(2),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(1),
	datag => \inst33|ALT_INV_Add2~61_sumout\,
	combout => \inst33|opres[16]~19_combout\);

-- Location: LABCELL_X81_Y29_N21
\inst33|opres[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(16) = ( \inst33|Equal0~0_combout\ & ( \inst33|opres[16]~19_combout\ & ( \inst33|opres\(16) ) ) ) # ( !\inst33|Equal0~0_combout\ & ( \inst33|opres[16]~19_combout\ ) ) # ( \inst33|Equal0~0_combout\ & ( !\inst33|opres[16]~19_combout\ & ( 
-- \inst33|opres\(16) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst33|ALT_INV_opres\(16),
	datae => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_opres[16]~19_combout\,
	combout => \inst33|opres\(16));

-- Location: MLABCELL_X78_Y29_N36
\inst|ci~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ci~0_combout\ = ( \inst16|selfalgs\(2) & ( ((!\inst16|selfalgs\(0)) # (\inst16|selfalgs\(1))) # (\inst16|selfalgs\(3)) ) ) # ( !\inst16|selfalgs\(2) & ( ((!\inst16|selfalgs\(1)) # (\inst33|opres\(16))) # (\inst16|selfalgs\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111111111110111011111111111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(3),
	datab => \inst16|ALT_INV_selfalgs\(1),
	datac => \inst16|ALT_INV_selfalgs\(0),
	datad => \inst33|ALT_INV_opres\(16),
	dataf => \inst16|ALT_INV_selfalgs\(2),
	combout => \inst|ci~0_combout\);

-- Location: MLABCELL_X78_Y29_N27
\inst|ci~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ci~1_combout\ = ( \inst16|selfalgs\(2) & ( (!\inst16|selfalgs\(3) & (\inst16|selfalgs\(0) & !\inst16|selfalgs\(1))) ) ) # ( !\inst16|selfalgs\(2) & ( !\inst16|selfalgs\(1) $ (((!\inst16|selfalgs\(3)) # (\inst16|selfalgs\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111010100001010111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(3),
	datac => \inst16|ALT_INV_selfalgs\(0),
	datad => \inst16|ALT_INV_selfalgs\(1),
	dataf => \inst16|ALT_INV_selfalgs\(2),
	combout => \inst|ci~1_combout\);

-- Location: LABCELL_X79_Y28_N54
\inst|ci\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ci~combout\ = ( \inst|ci~1_combout\ & ( \inst|ci~0_combout\ ) ) # ( !\inst|ci~1_combout\ & ( \inst|ci~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_ci~0_combout\,
	datad => \inst|ALT_INV_ci~combout\,
	dataf => \inst|ALT_INV_ci~1_combout\,
	combout => \inst|ci~combout\);

-- Location: LABCELL_X79_Y28_N0
\inst33|Add2~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~66_cout\ = CARRY(( (!\inst16|selc~q\ & ((\inst|ci~combout\))) # (\inst16|selc~q\ & (\inst16|cadj~q\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_cadj~q\,
	datac => \inst|ALT_INV_ci~combout\,
	datad => \inst16|ALT_INV_selc~q\,
	cin => GND,
	cout => \inst33|Add2~66_cout\);

-- Location: LABCELL_X79_Y28_N3
\inst33|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~57_sumout\ = SUM(( !\inst14|valor_interno\(0) ) + ( \inst700|valor_interno\(0) ) + ( \inst33|Add2~66_cout\ ))
-- \inst33|Add2~58\ = CARRY(( !\inst14|valor_interno\(0) ) + ( \inst700|valor_interno\(0) ) + ( \inst33|Add2~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno\(0),
	datad => \inst14|ALT_INV_valor_interno\(0),
	cin => \inst33|Add2~66_cout\,
	sumout => \inst33|Add2~57_sumout\,
	cout => \inst33|Add2~58\);

-- Location: LABCELL_X79_Y28_N6
\inst33|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~9_sumout\ = SUM(( \inst700|valor_interno[1]~DUPLICATE_q\ ) + ( !\inst14|valor_interno[1]~DUPLICATE_q\ ) + ( \inst33|Add2~58\ ))
-- \inst33|Add2~10\ = CARRY(( \inst700|valor_interno[1]~DUPLICATE_q\ ) + ( !\inst14|valor_interno[1]~DUPLICATE_q\ ) + ( \inst33|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst14|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	cin => \inst33|Add2~58\,
	sumout => \inst33|Add2~9_sumout\,
	cout => \inst33|Add2~10\);

-- Location: LABCELL_X79_Y28_N9
\inst33|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~13_sumout\ = SUM(( \inst700|valor_interno\(2) ) + ( !\inst14|valor_interno\(2) ) + ( \inst33|Add2~10\ ))
-- \inst33|Add2~14\ = CARRY(( \inst700|valor_interno\(2) ) + ( !\inst14|valor_interno\(2) ) + ( \inst33|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst14|ALT_INV_valor_interno\(2),
	datad => \inst700|ALT_INV_valor_interno\(2),
	cin => \inst33|Add2~10\,
	sumout => \inst33|Add2~13_sumout\,
	cout => \inst33|Add2~14\);

-- Location: LABCELL_X79_Y28_N12
\inst33|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~17_sumout\ = SUM(( \inst700|valor_interno[3]~DUPLICATE_q\ ) + ( !\inst14|valor_interno\(3) ) + ( \inst33|Add2~14\ ))
-- \inst33|Add2~18\ = CARRY(( \inst700|valor_interno[3]~DUPLICATE_q\ ) + ( !\inst14|valor_interno\(3) ) + ( \inst33|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|ALT_INV_valor_interno\(3),
	datad => \inst700|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	cin => \inst33|Add2~14\,
	sumout => \inst33|Add2~17_sumout\,
	cout => \inst33|Add2~18\);

-- Location: LABCELL_X79_Y28_N15
\inst33|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~21_sumout\ = SUM(( !\inst14|valor_interno\(4) ) + ( \inst700|valor_interno\(4) ) + ( \inst33|Add2~18\ ))
-- \inst33|Add2~22\ = CARRY(( !\inst14|valor_interno\(4) ) + ( \inst700|valor_interno\(4) ) + ( \inst33|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno\(4),
	datad => \inst14|ALT_INV_valor_interno\(4),
	cin => \inst33|Add2~18\,
	sumout => \inst33|Add2~21_sumout\,
	cout => \inst33|Add2~22\);

-- Location: LABCELL_X79_Y28_N18
\inst33|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~25_sumout\ = SUM(( !\inst14|valor_interno\(5) ) + ( \inst700|valor_interno\(5) ) + ( \inst33|Add2~22\ ))
-- \inst33|Add2~26\ = CARRY(( !\inst14|valor_interno\(5) ) + ( \inst700|valor_interno\(5) ) + ( \inst33|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno\(5),
	datad => \inst14|ALT_INV_valor_interno\(5),
	cin => \inst33|Add2~22\,
	sumout => \inst33|Add2~25_sumout\,
	cout => \inst33|Add2~26\);

-- Location: LABCELL_X79_Y28_N21
\inst33|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~1_sumout\ = SUM(( \inst700|valor_interno\(6) ) + ( !\inst14|valor_interno\(6) ) + ( \inst33|Add2~26\ ))
-- \inst33|Add2~2\ = CARRY(( \inst700|valor_interno\(6) ) + ( !\inst14|valor_interno\(6) ) + ( \inst33|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(6),
	datac => \inst700|ALT_INV_valor_interno\(6),
	cin => \inst33|Add2~26\,
	sumout => \inst33|Add2~1_sumout\,
	cout => \inst33|Add2~2\);

-- Location: LABCELL_X79_Y28_N24
\inst33|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~29_sumout\ = SUM(( !\inst14|valor_interno[7]~DUPLICATE_q\ ) + ( \inst700|valor_interno\(7) ) + ( \inst33|Add2~2\ ))
-- \inst33|Add2~30\ = CARRY(( !\inst14|valor_interno[7]~DUPLICATE_q\ ) + ( \inst700|valor_interno\(7) ) + ( \inst33|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno\(7),
	datad => \inst14|ALT_INV_valor_interno[7]~DUPLICATE_q\,
	cin => \inst33|Add2~2\,
	sumout => \inst33|Add2~29_sumout\,
	cout => \inst33|Add2~30\);

-- Location: LABCELL_X79_Y28_N27
\inst33|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~33_sumout\ = SUM(( \inst700|valor_interno\(8) ) + ( !\inst14|valor_interno[8]~DUPLICATE_q\ ) + ( \inst33|Add2~30\ ))
-- \inst33|Add2~34\ = CARRY(( \inst700|valor_interno\(8) ) + ( !\inst14|valor_interno[8]~DUPLICATE_q\ ) + ( \inst33|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst14|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno\(8),
	cin => \inst33|Add2~30\,
	sumout => \inst33|Add2~33_sumout\,
	cout => \inst33|Add2~34\);

-- Location: LABCELL_X79_Y28_N30
\inst33|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~37_sumout\ = SUM(( \inst700|valor_interno\(9) ) + ( !\inst14|valor_interno\(9) ) + ( \inst33|Add2~34\ ))
-- \inst33|Add2~38\ = CARRY(( \inst700|valor_interno\(9) ) + ( !\inst14|valor_interno\(9) ) + ( \inst33|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst14|ALT_INV_valor_interno\(9),
	datad => \inst700|ALT_INV_valor_interno\(9),
	cin => \inst33|Add2~34\,
	sumout => \inst33|Add2~37_sumout\,
	cout => \inst33|Add2~38\);

-- Location: LABCELL_X79_Y28_N33
\inst33|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~41_sumout\ = SUM(( !\inst14|valor_interno[10]~DUPLICATE_q\ ) + ( \inst700|valor_interno\(10) ) + ( \inst33|Add2~38\ ))
-- \inst33|Add2~42\ = CARRY(( !\inst14|valor_interno[10]~DUPLICATE_q\ ) + ( \inst700|valor_interno\(10) ) + ( \inst33|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(10),
	datad => \inst14|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	cin => \inst33|Add2~38\,
	sumout => \inst33|Add2~41_sumout\,
	cout => \inst33|Add2~42\);

-- Location: LABCELL_X79_Y28_N36
\inst33|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~45_sumout\ = SUM(( !\inst14|valor_interno[11]~DUPLICATE_q\ ) + ( \inst700|valor_interno[11]~DUPLICATE_q\ ) + ( \inst33|Add2~42\ ))
-- \inst33|Add2~46\ = CARRY(( !\inst14|valor_interno[11]~DUPLICATE_q\ ) + ( \inst700|valor_interno[11]~DUPLICATE_q\ ) + ( \inst33|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno[11]~DUPLICATE_q\,
	datad => \inst14|ALT_INV_valor_interno[11]~DUPLICATE_q\,
	cin => \inst33|Add2~42\,
	sumout => \inst33|Add2~45_sumout\,
	cout => \inst33|Add2~46\);

-- Location: LABCELL_X79_Y28_N39
\inst33|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~5_sumout\ = SUM(( \inst700|valor_interno[12]~DUPLICATE_q\ ) + ( !\inst14|valor_interno[12]~DUPLICATE_q\ ) + ( \inst33|Add2~46\ ))
-- \inst33|Add2~6\ = CARRY(( \inst700|valor_interno[12]~DUPLICATE_q\ ) + ( !\inst14|valor_interno[12]~DUPLICATE_q\ ) + ( \inst33|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst14|ALT_INV_valor_interno[12]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno[12]~DUPLICATE_q\,
	cin => \inst33|Add2~46\,
	sumout => \inst33|Add2~5_sumout\,
	cout => \inst33|Add2~6\);

-- Location: LABCELL_X79_Y28_N42
\inst33|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~49_sumout\ = SUM(( !\inst14|valor_interno[13]~DUPLICATE_q\ ) + ( \inst700|valor_interno\(13) ) + ( \inst33|Add2~6\ ))
-- \inst33|Add2~50\ = CARRY(( !\inst14|valor_interno[13]~DUPLICATE_q\ ) + ( \inst700|valor_interno\(13) ) + ( \inst33|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno\(13),
	datad => \inst14|ALT_INV_valor_interno[13]~DUPLICATE_q\,
	cin => \inst33|Add2~6\,
	sumout => \inst33|Add2~49_sumout\,
	cout => \inst33|Add2~50\);

-- Location: LABCELL_X79_Y28_N45
\inst33|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Add2~53_sumout\ = SUM(( !\inst14|valor_interno\(14) ) + ( \inst700|valor_interno\(14) ) + ( \inst33|Add2~50\ ))
-- \inst33|Add2~54\ = CARRY(( !\inst14|valor_interno\(14) ) + ( \inst700|valor_interno\(14) ) + ( \inst33|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst700|ALT_INV_valor_interno\(14),
	datad => \inst14|ALT_INV_valor_interno\(14),
	cin => \inst33|Add2~50\,
	sumout => \inst33|Add2~53_sumout\,
	cout => \inst33|Add2~54\);

-- Location: LABCELL_X81_Y29_N0
\inst33|opres~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres~18_combout\ = ( \inst14|valor_interno[15]~DUPLICATE_q\ & ( \inst700|valor_interno[15]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	dataf => \inst14|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	combout => \inst33|opres~18_combout\);

-- Location: FF_X80_Y28_N1
\inst16|cadj~DUPLICATE\ : dffeas
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
	q => \inst16|cadj~DUPLICATE_q\);

-- Location: LABCELL_X81_Y28_N54
\inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|ci~combout\ & ( \inst16|cadj~DUPLICATE_q\ ) ) # ( !\inst|ci~combout\ & ( \inst16|cadj~DUPLICATE_q\ & ( \inst16|selc~q\ ) ) ) # ( \inst|ci~combout\ & ( !\inst16|cadj~DUPLICATE_q\ & ( 
-- !\inst16|selc~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_selc~q\,
	datae => \inst|ALT_INV_ci~combout\,
	dataf => \inst16|ALT_INV_cadj~DUPLICATE_q\,
	combout => \inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X79_Y29_N42
\inst33|opres[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~14_combout\ = ( !\inst16|selop\(1) & ( (!\inst16|selop\(2) & ((!\inst16|selop\(0) & (\inst40|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst16|selop\(0) & (((\inst33|Add0~69_sumout\)))))) # (\inst16|selop\(2) & 
-- (\inst16|selop\(0))) ) ) # ( \inst16|selop\(1) & ( (!\inst16|selop\(2) & ((!\inst16|selop\(0) & (\inst33|Add2~69_sumout\)) # (\inst16|selop\(0) & (((\inst33|opres~18_combout\)))))) # (\inst16|selop\(2) & (\inst16|selop\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(0),
	datac => \inst33|ALT_INV_Add2~69_sumout\,
	datad => \inst33|ALT_INV_opres~18_combout\,
	datae => \inst16|ALT_INV_selop\(1),
	dataf => \inst33|ALT_INV_Add0~69_sumout\,
	datag => \inst40|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst33|opres[15]~14_combout\);

-- Location: LABCELL_X79_Y29_N18
\inst33|opres[15]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~87_combout\ = ( \inst16|selop\(2) & ( \inst33|opres[15]~14_combout\ & ( !\inst700|valor_interno\(15) $ (((!\inst14|valor_interno[15]~DUPLICATE_q\) # (\inst16|selop\(1)))) ) ) ) # ( !\inst16|selop\(2) & ( \inst33|opres[15]~14_combout\ ) ) 
-- # ( \inst16|selop\(2) & ( !\inst33|opres[15]~14_combout\ & ( (!\inst16|selop\(1) & (((\inst700|valor_interno\(15)) # (\inst14|valor_interno[15]~DUPLICATE_q\)))) # (\inst16|selop\(1) & (\inst700|valor_interno\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101011111010111111111111111110011000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(14),
	datab => \inst14|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datac => \inst16|ALT_INV_selop\(1),
	datad => \inst700|ALT_INV_valor_interno\(15),
	datae => \inst16|ALT_INV_selop\(2),
	dataf => \inst33|ALT_INV_opres[15]~14_combout\,
	combout => \inst33|opres[15]~87_combout\);

-- Location: LABCELL_X79_Y29_N51
\inst33|opres[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(15) = ( \inst33|opres\(15) & ( (\inst33|opres[15]~87_combout\) # (\inst33|Equal0~0_combout\) ) ) # ( !\inst33|opres\(15) & ( (!\inst33|Equal0~0_combout\ & \inst33|opres[15]~87_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_Equal0~0_combout\,
	datad => \inst33|ALT_INV_opres[15]~87_combout\,
	dataf => \inst33|ALT_INV_opres\(15),
	combout => \inst33|opres\(15));

-- Location: FF_X79_Y29_N5
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

-- Location: LABCELL_X81_Y28_N9
\inst202|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux18~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a13\ & ( (!\inst4|selsrc\(1) & (((\inst700666|ACCB|valor_interno\(13))))) # (\inst4|selsrc\(1) & ((!\inst49|PCWrite~0_combout\ & ((\inst700666|ACCB|valor_interno\(13)))) # 
-- (\inst49|PCWrite~0_combout\ & (!\inst4|selsrc\(0))))) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a13\ & ( (\inst700666|ACCB|valor_interno\(13) & ((!\inst4|selsrc\(1)) # (!\inst49|PCWrite~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111001011100000111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(13),
	datad => \inst49|ALT_INV_PCWrite~0_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \inst202|Mux18~0_combout\);

-- Location: FF_X81_Y28_N11
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(13));

-- Location: LABCELL_X80_Y27_N48
\inst33|opres[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~12_combout\ = ( \inst14|valor_interno[13]~DUPLICATE_q\ & ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & (((!\inst700|valor_interno\(13) & \inst16|selop\(2))))) # (\inst16|selop\(1) & ((!\inst16|selop\(2) & ((\inst700|valor_interno\(13)))) 
-- # (\inst16|selop\(2) & (\inst700|valor_interno\(12))))) ) ) ) # ( !\inst14|valor_interno[13]~DUPLICATE_q\ & ( \inst16|selop\(0) & ( (\inst16|selop\(2) & ((!\inst16|selop\(1) & ((\inst700|valor_interno\(13)))) # (\inst16|selop\(1) & 
-- (\inst700|valor_interno\(12))))) ) ) ) # ( \inst14|valor_interno[13]~DUPLICATE_q\ & ( !\inst16|selop\(0) & ( (!\inst16|selop\(1) & (((\inst16|selop\(2))))) # (\inst16|selop\(1) & ((!\inst16|selop\(2) & ((\inst700|valor_interno\(13)))) # (\inst16|selop\(2) 
-- & (\inst700|valor_interno\(12))))) ) ) ) # ( !\inst14|valor_interno[13]~DUPLICATE_q\ & ( !\inst16|selop\(0) & ( (\inst16|selop\(2) & ((!\inst16|selop\(1) & ((\inst700|valor_interno\(13)))) # (\inst16|selop\(1) & (\inst700|valor_interno\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000001011011101100000000000110110000010110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst700|ALT_INV_valor_interno\(12),
	datac => \inst700|ALT_INV_valor_interno\(13),
	datad => \inst16|ALT_INV_selop\(2),
	datae => \inst14|ALT_INV_valor_interno[13]~DUPLICATE_q\,
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[13]~12_combout\);

-- Location: LABCELL_X80_Y27_N3
\inst33|opres[13]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~35_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & ((!\inst16|selop\(1) & (((\inst700|valor_interno\(14))))) # (\inst16|selop\(1) & (\inst33|Add2~49_sumout\)))) # (\inst16|selop\(2) & ((((\inst33|opres[13]~12_combout\))))) ) ) 
-- # ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & ((((!\inst16|selop\(2) & \inst33|Add0~49_sumout\)) # (\inst33|opres[13]~12_combout\)))) # (\inst16|selop\(1) & ((!\inst16|selop\(2) & (((\inst33|opres[13]~12_combout\)))) # (\inst16|selop\(2) & 
-- (((\inst700|valor_interno\(14))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010010001100000010000001100100110111101111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst33|ALT_INV_Add0~49_sumout\,
	datad => \inst700|ALT_INV_valor_interno\(14),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst33|ALT_INV_opres[13]~12_combout\,
	datag => \inst33|ALT_INV_Add2~49_sumout\,
	combout => \inst33|opres[13]~35_combout\);

-- Location: LABCELL_X80_Y27_N21
\inst33|opres[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(13) = ( \inst33|Equal0~0_combout\ & ( \inst33|opres\(13) ) ) # ( !\inst33|Equal0~0_combout\ & ( \inst33|opres[13]~35_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres[13]~35_combout\,
	datad => \inst33|ALT_INV_opres\(13),
	dataf => \inst33|ALT_INV_Equal0~0_combout\,
	combout => \inst33|opres\(13));

-- Location: FF_X80_Y27_N38
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

-- Location: LABCELL_X81_Y28_N33
\inst202|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux19~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a12\ & ( (!\inst4|selsrc\(1) & (((\inst700666|ACCB|valor_interno\(12))))) # (\inst4|selsrc\(1) & ((!\inst49|PCWrite~0_combout\ & ((\inst700666|ACCB|valor_interno\(12)))) # 
-- (\inst49|PCWrite~0_combout\ & (!\inst4|selsrc\(0))))) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a12\ & ( (\inst700666|ACCB|valor_interno\(12) & ((!\inst4|selsrc\(1)) # (!\inst49|PCWrite~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111001011100000111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(12),
	datad => \inst49|ALT_INV_PCWrite~0_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	combout => \inst202|Mux19~0_combout\);

-- Location: FF_X81_Y28_N34
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(12));

-- Location: LABCELL_X79_Y27_N24
\inst33|opres[12]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~1_combout\ = ( \inst14|valor_interno\(12) & ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & (((\inst16|selop\(2) & !\inst700|valor_interno\(12))))) # (\inst16|selop\(1) & ((!\inst16|selop\(2) & ((\inst700|valor_interno\(12)))) # 
-- (\inst16|selop\(2) & (\inst700|valor_interno\(11))))) ) ) ) # ( !\inst14|valor_interno\(12) & ( \inst16|selop\(0) & ( (\inst16|selop\(2) & ((!\inst16|selop\(1) & ((\inst700|valor_interno\(12)))) # (\inst16|selop\(1) & (\inst700|valor_interno\(11))))) ) ) 
-- ) # ( \inst14|valor_interno\(12) & ( !\inst16|selop\(0) & ( (!\inst16|selop\(1) & (((\inst16|selop\(2))))) # (\inst16|selop\(1) & ((!\inst16|selop\(2) & ((\inst700|valor_interno\(12)))) # (\inst16|selop\(2) & (\inst700|valor_interno\(11))))) ) ) ) # ( 
-- !\inst14|valor_interno\(12) & ( !\inst16|selop\(0) & ( (\inst16|selop\(2) & ((!\inst16|selop\(1) & ((\inst700|valor_interno\(12)))) # (\inst16|selop\(1) & (\inst700|valor_interno\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000011010011110100000001000011010000110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(11),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst700|ALT_INV_valor_interno\(12),
	datae => \inst14|ALT_INV_valor_interno\(12),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[12]~1_combout\);

-- Location: LABCELL_X79_Y27_N6
\inst33|opres[12]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~79_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & (((!\inst16|selop\(1) & ((\inst700|valor_interno\(13)))) # (\inst16|selop\(1) & (\inst33|Add2~5_sumout\))))) # (\inst16|selop\(2) & (\inst33|opres[12]~1_combout\)) ) ) # ( 
-- \inst16|selop\(0) & ( (!\inst16|selop\(2) & (((\inst33|Add0~5_sumout\ & ((!\inst16|selop\(1))))) # (\inst33|opres[12]~1_combout\))) # (\inst16|selop\(2) & (((!\inst16|selop\(1) & (\inst33|opres[12]~1_combout\)) # (\inst16|selop\(1) & 
-- ((\inst700|valor_interno\(13))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000110111011001110110011101100011011000110110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst33|ALT_INV_opres[12]~1_combout\,
	datac => \inst33|ALT_INV_Add0~5_sumout\,
	datad => \inst700|ALT_INV_valor_interno\(13),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(1),
	datag => \inst33|ALT_INV_Add2~5_sumout\,
	combout => \inst33|opres[12]~79_combout\);

-- Location: LABCELL_X79_Y27_N3
\inst33|opres[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(12) = ( \inst33|opres\(12) & ( \inst33|Equal0~0_combout\ ) ) # ( \inst33|opres\(12) & ( !\inst33|Equal0~0_combout\ & ( \inst33|opres[12]~79_combout\ ) ) ) # ( !\inst33|opres\(12) & ( !\inst33|Equal0~0_combout\ & ( 
-- \inst33|opres[12]~79_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres[12]~79_combout\,
	datae => \inst33|ALT_INV_opres\(12),
	dataf => \inst33|ALT_INV_Equal0~0_combout\,
	combout => \inst33|opres\(12));

-- Location: FF_X79_Y27_N56
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

-- Location: LABCELL_X81_Y28_N6
\inst202|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux20~0_combout\ = ( \inst41|mem_rtl_0|auto_generated|ram_block1a11\ & ( (!\inst4|selsrc\(1) & (((\inst700666|ACCB|valor_interno\(11))))) # (\inst4|selsrc\(1) & ((!\inst49|PCWrite~0_combout\ & ((\inst700666|ACCB|valor_interno\(11)))) # 
-- (\inst49|PCWrite~0_combout\ & (!\inst4|selsrc\(0))))) ) ) # ( !\inst41|mem_rtl_0|auto_generated|ram_block1a11\ & ( (\inst700666|ACCB|valor_interno\(11) & ((!\inst4|selsrc\(1)) # (!\inst49|PCWrite~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111001011100000111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst700666|ACCB|ALT_INV_valor_interno\(11),
	datad => \inst49|ALT_INV_PCWrite~0_combout\,
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \inst202|Mux20~0_combout\);

-- Location: FF_X81_Y28_N8
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
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(11));

-- Location: LABCELL_X79_Y27_N18
\inst33|opres[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~11_combout\ = ( \inst700|valor_interno[10]~DUPLICATE_q\ & ( \inst16|selop\(0) & ( (!\inst14|valor_interno\(11) & (\inst16|selop\(2) & ((\inst700|valor_interno[11]~DUPLICATE_q\) # (\inst16|selop\(1))))) # (\inst14|valor_interno\(11) & 
-- ((!\inst700|valor_interno[11]~DUPLICATE_q\ & ((\inst16|selop\(2)))) # (\inst700|valor_interno[11]~DUPLICATE_q\ & (\inst16|selop\(1))))) ) ) ) # ( !\inst700|valor_interno[10]~DUPLICATE_q\ & ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & (\inst16|selop\(2) & 
-- (!\inst14|valor_interno\(11) $ (!\inst700|valor_interno[11]~DUPLICATE_q\)))) # (\inst16|selop\(1) & (\inst14|valor_interno\(11) & (!\inst16|selop\(2) & \inst700|valor_interno[11]~DUPLICATE_q\))) ) ) ) # ( \inst700|valor_interno[10]~DUPLICATE_q\ & ( 
-- !\inst16|selop\(0) & ( (!\inst14|valor_interno\(11) & (\inst16|selop\(2) & ((\inst700|valor_interno[11]~DUPLICATE_q\) # (\inst16|selop\(1))))) # (\inst14|valor_interno\(11) & (((\inst16|selop\(1) & \inst700|valor_interno[11]~DUPLICATE_q\)) # 
-- (\inst16|selop\(2)))) ) ) ) # ( !\inst700|valor_interno[10]~DUPLICATE_q\ & ( !\inst16|selop\(0) & ( (!\inst16|selop\(1) & (\inst16|selop\(2) & ((\inst700|valor_interno[11]~DUPLICATE_q\) # (\inst14|valor_interno\(11))))) # (\inst16|selop\(1) & 
-- (\inst14|valor_interno\(11) & (!\inst16|selop\(2) & \inst700|valor_interno[11]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000011100000001110001111100000100000110000000011100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(11),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst700|ALT_INV_valor_interno[11]~DUPLICATE_q\,
	datae => \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[11]~11_combout\);

-- Location: LABCELL_X79_Y27_N42
\inst33|opres[11]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~39_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & (((!\inst16|selop\(1) & ((\inst700|valor_interno\(12)))) # (\inst16|selop\(1) & (\inst33|Add2~45_sumout\))))) # (\inst16|selop\(2) & (\inst33|opres[11]~11_combout\)) ) ) # ( 
-- \inst16|selop\(0) & ( (!\inst16|selop\(2) & (((\inst33|Add0~45_sumout\ & ((!\inst16|selop\(1))))) # (\inst33|opres[11]~11_combout\))) # (\inst16|selop\(2) & (((!\inst16|selop\(1) & (\inst33|opres[11]~11_combout\)) # (\inst16|selop\(1) & 
-- ((\inst700|valor_interno\(12))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000110111011001110110011101100011011000110110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst33|ALT_INV_opres[11]~11_combout\,
	datac => \inst33|ALT_INV_Add0~45_sumout\,
	datad => \inst700|ALT_INV_valor_interno\(12),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(1),
	datag => \inst33|ALT_INV_Add2~45_sumout\,
	combout => \inst33|opres[11]~39_combout\);

-- Location: LABCELL_X79_Y27_N57
\inst33|opres[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(11) = ( \inst33|opres\(11) & ( \inst33|opres[11]~39_combout\ ) ) # ( !\inst33|opres\(11) & ( \inst33|opres[11]~39_combout\ & ( !\inst33|Equal0~0_combout\ ) ) ) # ( \inst33|opres\(11) & ( !\inst33|opres[11]~39_combout\ & ( 
-- \inst33|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_Equal0~0_combout\,
	datae => \inst33|ALT_INV_opres\(11),
	dataf => \inst33|ALT_INV_opres[11]~39_combout\,
	combout => \inst33|opres\(11));

-- Location: FF_X79_Y29_N2
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

-- Location: FF_X80_Y29_N56
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(11));

-- Location: LABCELL_X80_Y29_N3
\inst700|valor_interno[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[11]~feeder_combout\ = \inst700666|ACCA|valor_interno\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|ALT_INV_valor_interno\(11),
	combout => \inst700|valor_interno[11]~feeder_combout\);

-- Location: FF_X80_Y29_N4
\inst700|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[11]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(11),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(11));

-- Location: LABCELL_X80_Y27_N6
\inst33|opres[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~10_combout\ = ( \inst700|valor_interno[10]~DUPLICATE_q\ & ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & (!\inst14|valor_interno[10]~DUPLICATE_q\ & ((\inst16|selop\(2))))) # (\inst16|selop\(1) & ((!\inst16|selop\(2) & 
-- (\inst14|valor_interno[10]~DUPLICATE_q\)) # (\inst16|selop\(2) & ((\inst700|valor_interno\(9)))))) ) ) ) # ( !\inst700|valor_interno[10]~DUPLICATE_q\ & ( \inst16|selop\(0) & ( (\inst16|selop\(2) & ((!\inst16|selop\(1) & 
-- (\inst14|valor_interno[10]~DUPLICATE_q\)) # (\inst16|selop\(1) & ((\inst700|valor_interno\(9)))))) ) ) ) # ( \inst700|valor_interno[10]~DUPLICATE_q\ & ( !\inst16|selop\(0) & ( (!\inst16|selop\(1) & (((\inst16|selop\(2))))) # (\inst16|selop\(1) & 
-- ((!\inst16|selop\(2) & (\inst14|valor_interno[10]~DUPLICATE_q\)) # (\inst16|selop\(2) & ((\inst700|valor_interno\(9)))))) ) ) ) # ( !\inst700|valor_interno[10]~DUPLICATE_q\ & ( !\inst16|selop\(0) & ( (\inst16|selop\(2) & ((!\inst16|selop\(1) & 
-- (\inst14|valor_interno[10]~DUPLICATE_q\)) # (\inst16|selop\(1) & ((\inst700|valor_interno\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000100011010111100000000001001110001000110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst14|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	datac => \inst700|ALT_INV_valor_interno\(9),
	datad => \inst16|ALT_INV_selop\(2),
	datae => \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[10]~10_combout\);

-- Location: LABCELL_X80_Y27_N12
\inst33|opres[10]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~43_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & ((!\inst16|selop\(1) & (\inst700|valor_interno\(11))) # (\inst16|selop\(1) & (((\inst33|Add2~41_sumout\)))))) # (\inst16|selop\(2) & ((((\inst33|opres[10]~10_combout\))))) ) ) 
-- # ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & ((((\inst33|Add0~41_sumout\ & !\inst16|selop\(2))) # (\inst33|opres[10]~10_combout\)))) # (\inst16|selop\(1) & (((!\inst16|selop\(2) & ((\inst33|opres[10]~10_combout\))) # (\inst16|selop\(2) & 
-- (\inst700|valor_interno\(11)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100000000000010100001000100100111111111111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst700|ALT_INV_valor_interno\(11),
	datac => \inst33|ALT_INV_Add0~41_sumout\,
	datad => \inst16|ALT_INV_selop\(2),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst33|ALT_INV_opres[10]~10_combout\,
	datag => \inst33|ALT_INV_Add2~41_sumout\,
	combout => \inst33|opres[10]~43_combout\);

-- Location: LABCELL_X79_Y29_N9
\inst33|opres[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(10) = ( \inst33|opres[10]~43_combout\ & ( (!\inst33|Equal0~0_combout\) # (\inst33|opres\(10)) ) ) # ( !\inst33|opres[10]~43_combout\ & ( (\inst33|opres\(10) & \inst33|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_opres\(10),
	datad => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_opres[10]~43_combout\,
	combout => \inst33|opres\(10));

-- Location: FF_X79_Y29_N32
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

-- Location: FF_X79_Y27_N20
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(10));

-- Location: MLABCELL_X82_Y28_N12
\inst700|valor_interno[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[10]~feeder_combout\ = ( \inst700666|ACCA|valor_interno\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst700666|ACCA|ALT_INV_valor_interno\(10),
	combout => \inst700|valor_interno[10]~feeder_combout\);

-- Location: FF_X82_Y28_N13
\inst700|valor_interno[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[10]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(10),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno[10]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y27_N39
\inst33|opres[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~9_combout\ = ( \inst700|valor_interno[8]~DUPLICATE_q\ & ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & (\inst16|selop\(2) & (!\inst14|valor_interno[9]~DUPLICATE_q\ $ (!\inst700|valor_interno\(9))))) # (\inst16|selop\(1) & 
-- (((\inst14|valor_interno[9]~DUPLICATE_q\ & \inst700|valor_interno\(9))) # (\inst16|selop\(2)))) ) ) ) # ( !\inst700|valor_interno[8]~DUPLICATE_q\ & ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & (\inst16|selop\(2) & (!\inst14|valor_interno[9]~DUPLICATE_q\ 
-- $ (!\inst700|valor_interno\(9))))) # (\inst16|selop\(1) & (!\inst16|selop\(2) & (\inst14|valor_interno[9]~DUPLICATE_q\ & \inst700|valor_interno\(9)))) ) ) ) # ( \inst700|valor_interno[8]~DUPLICATE_q\ & ( !\inst16|selop\(0) & ( (!\inst16|selop\(1) & 
-- (\inst16|selop\(2) & ((\inst700|valor_interno\(9)) # (\inst14|valor_interno[9]~DUPLICATE_q\)))) # (\inst16|selop\(1) & (((\inst14|valor_interno[9]~DUPLICATE_q\ & \inst700|valor_interno\(9))) # (\inst16|selop\(2)))) ) ) ) # ( 
-- !\inst700|valor_interno[8]~DUPLICATE_q\ & ( !\inst16|selop\(0) & ( (!\inst16|selop\(1) & (\inst16|selop\(2) & ((\inst700|valor_interno\(9)) # (\inst14|valor_interno[9]~DUPLICATE_q\)))) # (\inst16|selop\(1) & (!\inst16|selop\(2) & 
-- (\inst14|valor_interno[9]~DUPLICATE_q\ & \inst700|valor_interno\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100110000100110011011100000010001001000001001100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno[9]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno\(9),
	datae => \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[9]~9_combout\);

-- Location: LABCELL_X80_Y27_N30
\inst33|opres[9]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~47_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & ((!\inst16|selop\(1) & (\inst700|valor_interno[10]~DUPLICATE_q\)) # (\inst16|selop\(1) & (((\inst33|Add2~37_sumout\)))))) # (\inst16|selop\(2) & 
-- ((((\inst33|opres[9]~9_combout\))))) ) ) # ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & ((((\inst33|Add0~37_sumout\ & !\inst16|selop\(2))) # (\inst33|opres[9]~9_combout\)))) # (\inst16|selop\(1) & (((!\inst16|selop\(2) & ((\inst33|opres[9]~9_combout\))) 
-- # (\inst16|selop\(2) & (\inst700|valor_interno[10]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100000000000010100001000100100111111111111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst700|ALT_INV_valor_interno[10]~DUPLICATE_q\,
	datac => \inst33|ALT_INV_Add0~37_sumout\,
	datad => \inst16|ALT_INV_selop\(2),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst33|ALT_INV_opres[9]~9_combout\,
	datag => \inst33|ALT_INV_Add2~37_sumout\,
	combout => \inst33|opres[9]~47_combout\);

-- Location: LABCELL_X80_Y27_N18
\inst33|opres[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(9) = ( \inst33|opres\(9) & ( (\inst33|opres[9]~47_combout\) # (\inst33|Equal0~0_combout\) ) ) # ( !\inst33|opres\(9) & ( (!\inst33|Equal0~0_combout\ & \inst33|opres[9]~47_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datac => \inst33|ALT_INV_opres[9]~47_combout\,
	dataf => \inst33|ALT_INV_opres\(9),
	combout => \inst33|opres\(9));

-- Location: FF_X80_Y27_N44
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

-- Location: LABCELL_X80_Y30_N30
\inst700666|ACCA|valor_interno[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[9]~feeder_combout\ = ( \inst24|valor_interno\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(9),
	combout => \inst700666|ACCA|valor_interno[9]~feeder_combout\);

-- Location: FF_X80_Y30_N31
\inst700666|ACCA|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|ACCA|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(9));

-- Location: LABCELL_X80_Y28_N54
\inst700|valor_interno[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[9]~feeder_combout\ = \inst700666|ACCA|valor_interno\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCA|ALT_INV_valor_interno\(9),
	combout => \inst700|valor_interno[9]~feeder_combout\);

-- Location: FF_X81_Y28_N23
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(9));

-- Location: FF_X80_Y28_N56
\inst700|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[9]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(9),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(9));

-- Location: LABCELL_X80_Y27_N45
\inst33|opres[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~8_combout\ = ( \inst700|valor_interno\(7) & ( \inst16|selop\(0) & ( (!\inst14|valor_interno[8]~DUPLICATE_q\ & (\inst16|selop\(2) & ((\inst16|selop\(1)) # (\inst700|valor_interno[8]~DUPLICATE_q\)))) # (\inst14|valor_interno[8]~DUPLICATE_q\ 
-- & ((!\inst700|valor_interno[8]~DUPLICATE_q\ & (\inst16|selop\(2))) # (\inst700|valor_interno[8]~DUPLICATE_q\ & ((\inst16|selop\(1)))))) ) ) ) # ( !\inst700|valor_interno\(7) & ( \inst16|selop\(0) & ( (!\inst16|selop\(2) & 
-- (\inst14|valor_interno[8]~DUPLICATE_q\ & (\inst700|valor_interno[8]~DUPLICATE_q\ & \inst16|selop\(1)))) # (\inst16|selop\(2) & (!\inst16|selop\(1) & (!\inst14|valor_interno[8]~DUPLICATE_q\ $ (!\inst700|valor_interno[8]~DUPLICATE_q\)))) ) ) ) # ( 
-- \inst700|valor_interno\(7) & ( !\inst16|selop\(0) & ( (!\inst14|valor_interno[8]~DUPLICATE_q\ & (\inst16|selop\(2) & ((\inst16|selop\(1)) # (\inst700|valor_interno[8]~DUPLICATE_q\)))) # (\inst14|valor_interno[8]~DUPLICATE_q\ & 
-- (((\inst700|valor_interno[8]~DUPLICATE_q\ & \inst16|selop\(1))) # (\inst16|selop\(2)))) ) ) ) # ( !\inst700|valor_interno\(7) & ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & (\inst14|valor_interno[8]~DUPLICATE_q\ & (\inst700|valor_interno[8]~DUPLICATE_q\ 
-- & \inst16|selop\(1)))) # (\inst16|selop\(2) & (!\inst16|selop\(1) & ((\inst700|valor_interno[8]~DUPLICATE_q\) # (\inst14|valor_interno[8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000100000100110011011100010010000001000001001000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst700|ALT_INV_valor_interno[8]~DUPLICATE_q\,
	datad => \inst16|ALT_INV_selop\(1),
	datae => \inst700|ALT_INV_valor_interno\(7),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[8]~8_combout\);

-- Location: LABCELL_X80_Y27_N54
\inst33|opres[8]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~51_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & ((!\inst16|selop\(1) & (\inst700|valor_interno\(9))) # (\inst16|selop\(1) & (((\inst33|Add2~33_sumout\)))))) # (\inst16|selop\(2) & ((((\inst33|opres[8]~8_combout\))))) ) ) # ( 
-- \inst16|selop\(0) & ( (!\inst16|selop\(1) & ((((\inst33|Add0~33_sumout\ & !\inst16|selop\(2))) # (\inst33|opres[8]~8_combout\)))) # (\inst16|selop\(1) & (((!\inst16|selop\(2) & ((\inst33|opres[8]~8_combout\))) # (\inst16|selop\(2) & 
-- (\inst700|valor_interno\(9)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100000000000010100001000100100111111111111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst700|ALT_INV_valor_interno\(9),
	datac => \inst33|ALT_INV_Add0~33_sumout\,
	datad => \inst16|ALT_INV_selop\(2),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst33|ALT_INV_opres[8]~8_combout\,
	datag => \inst33|ALT_INV_Add2~33_sumout\,
	combout => \inst33|opres[8]~51_combout\);

-- Location: LABCELL_X80_Y27_N24
\inst33|opres[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(8) = ( \inst33|opres[8]~51_combout\ & ( (!\inst33|Equal0~0_combout\) # (\inst33|opres\(8)) ) ) # ( !\inst33|opres[8]~51_combout\ & ( (\inst33|opres\(8) & \inst33|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(8),
	datac => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_opres[8]~51_combout\,
	combout => \inst33|opres\(8));

-- Location: FF_X79_Y29_N17
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

-- Location: FF_X79_Y27_N32
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(8));

-- Location: LABCELL_X79_Y28_N57
\inst700|valor_interno[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[8]~feeder_combout\ = ( \inst700666|ACCA|valor_interno\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst700666|ACCA|ALT_INV_valor_interno\(8),
	combout => \inst700|valor_interno[8]~feeder_combout\);

-- Location: FF_X79_Y28_N59
\inst700|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[8]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(8),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(8));

-- Location: LABCELL_X81_Y29_N48
\inst33|opres[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~7_combout\ = ( \inst16|selop\(2) & ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & (!\inst14|valor_interno[7]~DUPLICATE_q\ $ ((!\inst700|valor_interno\(7))))) # (\inst16|selop\(1) & (((\inst700|valor_interno\(6))))) ) ) ) # ( 
-- !\inst16|selop\(2) & ( \inst16|selop\(0) & ( (\inst14|valor_interno[7]~DUPLICATE_q\ & (\inst700|valor_interno\(7) & \inst16|selop\(1))) ) ) ) # ( \inst16|selop\(2) & ( !\inst16|selop\(0) & ( (!\inst16|selop\(1) & (((\inst700|valor_interno\(7))) # 
-- (\inst14|valor_interno[7]~DUPLICATE_q\))) # (\inst16|selop\(1) & (((\inst700|valor_interno\(6))))) ) ) ) # ( !\inst16|selop\(2) & ( !\inst16|selop\(0) & ( (\inst14|valor_interno[7]~DUPLICATE_q\ & (\inst700|valor_interno\(7) & \inst16|selop\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001011100000111111100000001000000010110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno[7]~DUPLICATE_q\,
	datab => \inst700|ALT_INV_valor_interno\(7),
	datac => \inst16|ALT_INV_selop\(1),
	datad => \inst700|ALT_INV_valor_interno\(6),
	datae => \inst16|ALT_INV_selop\(2),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[7]~7_combout\);

-- Location: LABCELL_X79_Y29_N54
\inst33|opres[7]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~55_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & ((!\inst16|selop\(1) & (\inst700|valor_interno\(8))) # (\inst16|selop\(1) & (((\inst33|Add2~29_sumout\)))))) # (\inst16|selop\(2) & ((((\inst33|opres[7]~7_combout\))))) ) ) # ( 
-- \inst16|selop\(0) & ( (!\inst16|selop\(2) & ((((\inst33|Add0~29_sumout\ & !\inst16|selop\(1))) # (\inst33|opres[7]~7_combout\)))) # (\inst16|selop\(2) & (((!\inst16|selop\(1) & ((\inst33|opres[7]~7_combout\))) # (\inst16|selop\(1) & 
-- (\inst700|valor_interno\(8)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001000001010000010100001000101110111010111111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst700|ALT_INV_valor_interno\(8),
	datac => \inst33|ALT_INV_Add0~29_sumout\,
	datad => \inst16|ALT_INV_selop\(1),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst33|ALT_INV_opres[7]~7_combout\,
	datag => \inst33|ALT_INV_Add2~29_sumout\,
	combout => \inst33|opres[7]~55_combout\);

-- Location: LABCELL_X79_Y29_N12
\inst33|opres[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(7) = ( \inst33|opres\(7) & ( (\inst33|Equal0~0_combout\) # (\inst33|opres[7]~55_combout\) ) ) # ( !\inst33|opres\(7) & ( (\inst33|opres[7]~55_combout\ & !\inst33|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[7]~55_combout\,
	datad => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_opres\(7),
	combout => \inst33|opres\(7));

-- Location: FF_X79_Y29_N29
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

-- Location: LABCELL_X81_Y28_N15
\inst202|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux25~0_combout\ = ( \inst700666|ACCB|valor_interno\(6) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a6\ & ( (\inst49|PCWrite~0_combout\ & ((!\inst4|selsrc\(1) & (\inst700666|inst|Equal1~0_combout\ & \inst4|selsrc\(0))) # (\inst4|selsrc\(1) & 
-- ((!\inst4|selsrc\(0)))))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(6) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a6\ & ( (\inst49|PCWrite~0_combout\ & (\inst4|selsrc\(1) & !\inst4|selsrc\(0))) ) ) ) # ( \inst700666|ACCB|valor_interno\(6) & ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a6\ & ( (\inst49|PCWrite~0_combout\ & (!\inst4|selsrc\(1) & (\inst700666|inst|Equal1~0_combout\ & \inst4|selsrc\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000010001000000000001000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst700666|inst|ALT_INV_Equal1~0_combout\,
	datad => \inst4|ALT_INV_selsrc\(0),
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(6),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \inst202|Mux25~0_combout\);

-- Location: FF_X80_Y28_N53
\inst14|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst202|Mux25~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(6));

-- Location: LABCELL_X79_Y29_N3
\inst33|opres[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~0_combout\ = ( \inst16|selop\(0) & ( \inst16|selop\(1) & ( (!\inst16|selop\(2) & (((\inst14|valor_interno\(6) & \inst700|valor_interno\(6))))) # (\inst16|selop\(2) & (\inst700|valor_interno[5]~DUPLICATE_q\)) ) ) ) # ( !\inst16|selop\(0) & 
-- ( \inst16|selop\(1) & ( (!\inst16|selop\(2) & (((\inst14|valor_interno\(6) & \inst700|valor_interno\(6))))) # (\inst16|selop\(2) & (\inst700|valor_interno[5]~DUPLICATE_q\)) ) ) ) # ( \inst16|selop\(0) & ( !\inst16|selop\(1) & ( (\inst16|selop\(2) & 
-- (!\inst14|valor_interno\(6) $ (!\inst700|valor_interno\(6)))) ) ) ) # ( !\inst16|selop\(0) & ( !\inst16|selop\(1) & ( (\inst16|selop\(2) & ((\inst700|valor_interno\(6)) # (\inst14|valor_interno\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011110000000011010101010000001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datab => \inst14|ALT_INV_valor_interno\(6),
	datac => \inst700|ALT_INV_valor_interno\(6),
	datad => \inst16|ALT_INV_selop\(2),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(1),
	combout => \inst33|opres[6]~0_combout\);

-- Location: MLABCELL_X78_Y27_N24
\inst33|opres[6]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~83_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & (((!\inst16|selop\(1) & ((\inst700|valor_interno\(7)))) # (\inst16|selop\(1) & (\inst33|Add2~1_sumout\))))) # (\inst16|selop\(2) & (\inst33|opres[6]~0_combout\)) ) ) # ( 
-- \inst16|selop\(0) & ( (!\inst16|selop\(2) & (((\inst33|Add0~1_sumout\ & ((!\inst16|selop\(1))))) # (\inst33|opres[6]~0_combout\))) # (\inst16|selop\(2) & (((!\inst16|selop\(1) & (\inst33|opres[6]~0_combout\)) # (\inst16|selop\(1) & 
-- ((\inst700|valor_interno\(7))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000110111011001110110011101100011011000110110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst33|ALT_INV_opres[6]~0_combout\,
	datac => \inst33|ALT_INV_Add0~1_sumout\,
	datad => \inst700|ALT_INV_valor_interno\(7),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(1),
	datag => \inst33|ALT_INV_Add2~1_sumout\,
	combout => \inst33|opres[6]~83_combout\);

-- Location: MLABCELL_X78_Y27_N51
\inst33|opres[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(6) = ( \inst33|Equal0~0_combout\ & ( \inst33|opres\(6) ) ) # ( !\inst33|Equal0~0_combout\ & ( \inst33|opres\(6) & ( \inst33|opres[6]~83_combout\ ) ) ) # ( !\inst33|Equal0~0_combout\ & ( !\inst33|opres\(6) & ( \inst33|opres[6]~83_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres[6]~83_combout\,
	datae => \inst33|ALT_INV_Equal0~0_combout\,
	dataf => \inst33|ALT_INV_opres\(6),
	combout => \inst33|opres\(6));

-- Location: FF_X78_Y27_N26
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

-- Location: FF_X80_Y26_N41
\inst700666|ACCA|valor_interno[6]~DUPLICATE\ : dffeas
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno[6]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y26_N15
\inst700|valor_interno[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[6]~feeder_combout\ = ( \inst700666|ACCA|valor_interno[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst700666|ACCA|ALT_INV_valor_interno[6]~DUPLICATE_q\,
	combout => \inst700|valor_interno[6]~feeder_combout\);

-- Location: FF_X80_Y26_N16
\inst700|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[6]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno\(6),
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(6));

-- Location: LABCELL_X79_Y29_N24
\inst33|opres[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~6_combout\ = ( \inst700|valor_interno\(4) & ( \inst14|valor_interno\(5) & ( (!\inst700|valor_interno[5]~DUPLICATE_q\ & (((\inst16|selop\(2))))) # (\inst700|valor_interno[5]~DUPLICATE_q\ & (((!\inst16|selop\(0) & \inst16|selop\(2))) # 
-- (\inst16|selop\(1)))) ) ) ) # ( !\inst700|valor_interno\(4) & ( \inst14|valor_interno\(5) & ( (!\inst16|selop\(2) & (\inst700|valor_interno[5]~DUPLICATE_q\ & ((\inst16|selop\(1))))) # (\inst16|selop\(2) & (!\inst16|selop\(1) & 
-- ((!\inst700|valor_interno[5]~DUPLICATE_q\) # (!\inst16|selop\(0))))) ) ) ) # ( \inst700|valor_interno\(4) & ( !\inst14|valor_interno\(5) & ( (\inst16|selop\(2) & ((\inst16|selop\(1)) # (\inst700|valor_interno[5]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst700|valor_interno\(4) & ( !\inst14|valor_interno\(5) & ( (\inst700|valor_interno[5]~DUPLICATE_q\ & (\inst16|selop\(2) & !\inst16|selop\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000111100001110010100000000111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno[5]~DUPLICATE_q\,
	datab => \inst16|ALT_INV_selop\(0),
	datac => \inst16|ALT_INV_selop\(2),
	datad => \inst16|ALT_INV_selop\(1),
	datae => \inst700|ALT_INV_valor_interno\(4),
	dataf => \inst14|ALT_INV_valor_interno\(5),
	combout => \inst33|opres[5]~6_combout\);

-- Location: LABCELL_X80_Y29_N51
\inst33|opres[5]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~59_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & (((!\inst16|selop\(1) & (\inst700|valor_interno\(6))) # (\inst16|selop\(1) & ((\inst33|Add2~25_sumout\)))))) # (\inst16|selop\(2) & (((\inst33|opres[5]~6_combout\)))) ) ) # ( 
-- \inst16|selop\(0) & ( (!\inst16|selop\(1) & ((((\inst33|Add0~25_sumout\ & !\inst16|selop\(2))) # (\inst33|opres[5]~6_combout\)))) # (\inst16|selop\(1) & (((!\inst16|selop\(2) & ((\inst33|opres[5]~6_combout\))) # (\inst16|selop\(2) & 
-- (\inst700|valor_interno\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001111001111110011001100110011001100110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(6),
	datab => \inst33|ALT_INV_opres[5]~6_combout\,
	datac => \inst33|ALT_INV_Add0~25_sumout\,
	datad => \inst16|ALT_INV_selop\(1),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(2),
	datag => \inst33|ALT_INV_Add2~25_sumout\,
	combout => \inst33|opres[5]~59_combout\);

-- Location: LABCELL_X80_Y29_N36
\inst33|opres[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(5) = ( \inst33|opres[5]~59_combout\ & ( (!\inst33|Equal0~0_combout\) # (\inst33|opres\(5)) ) ) # ( !\inst33|opres[5]~59_combout\ & ( (\inst33|Equal0~0_combout\ & \inst33|opres\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_Equal0~0_combout\,
	datad => \inst33|ALT_INV_opres\(5),
	dataf => \inst33|ALT_INV_opres[5]~59_combout\,
	combout => \inst33|opres\(5));

-- Location: FF_X79_Y29_N26
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

-- Location: FF_X77_Y28_N17
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(5));

-- Location: LABCELL_X77_Y28_N15
\inst11|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~21_sumout\ = SUM(( (\inst4|selregr\(0) & (!\inst4|selregr\(2) & (\inst49|PCWrite~0_combout\ & \inst700666|ACCB|valor_interno\(5)))) ) + ( (!\inst49|PCWrite~0_combout\) # (!\inst4|sr~combout\) ) + ( \inst11|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst4|ALT_INV_selregr\(2),
	datac => \inst49|ALT_INV_PCWrite~0_combout\,
	datad => \inst700666|ACCB|ALT_INV_valor_interno\(5),
	dataf => \inst4|ALT_INV_sr~combout\,
	cin => \inst11|Add0~18\,
	sumout => \inst11|Add0~21_sumout\);

-- Location: LABCELL_X74_Y28_N6
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

-- Location: LABCELL_X75_Y28_N9
\inst10|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~3_combout\ = (\inst23|valor_interno\(5) & ((!\inst49|PCWrite~0_combout\) # ((!\inst4|seldir\(0)) # (\inst107|seldirw\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000101100001111000010110000111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst107|ALT_INV_seldirw\(1),
	datac => \inst23|ALT_INV_valor_interno\(5),
	datad => \inst4|ALT_INV_seldir\(0),
	combout => \inst10|Mux10~3_combout\);

-- Location: FF_X74_Y28_N7
\inst15|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst15|valor_interno[5]~feeder_combout\,
	asdata => \inst10|Mux10~3_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => \inst10|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|valor_interno\(5));

-- Location: FF_X77_Y28_N43
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

-- Location: LABCELL_X77_Y28_N42
\inst10|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~2_combout\ = ( \inst11|Add0~21_sumout\ & ( (!\inst10|Mux10~0_combout\) # ((\inst107|seldirw\(1) & \inst23|valor_interno\(5))) ) ) # ( !\inst11|Add0~21_sumout\ & ( (\inst107|seldirw\(1) & \inst23|valor_interno\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_Mux10~0_combout\,
	datac => \inst107|ALT_INV_seldirw\(1),
	datad => \inst23|ALT_INV_valor_interno\(5),
	dataf => \inst11|ALT_INV_Add0~21_sumout\,
	combout => \inst10|Mux10~2_combout\);

-- Location: LABCELL_X81_Y28_N0
\inst202|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux17~0_combout\ = ( \inst700666|ACCB|valor_interno\(14) & ( (!\inst4|selsrc\(1)) # ((!\inst49|PCWrite~0_combout\) # ((!\inst4|selsrc\(0) & \inst41|mem_rtl_0|auto_generated|ram_block1a14\))) ) ) # ( !\inst700666|ACCB|valor_interno\(14) & ( 
-- (!\inst4|selsrc\(0) & (\inst4|selsrc\(1) & (\inst41|mem_rtl_0|auto_generated|ram_block1a14\ & \inst49|PCWrite~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001011111111110011101111111111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selsrc\(0),
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	datad => \inst49|ALT_INV_PCWrite~0_combout\,
	dataf => \inst700666|ACCB|ALT_INV_valor_interno\(14),
	combout => \inst202|Mux17~0_combout\);

-- Location: FF_X81_Y28_N1
\inst14|valor_interno[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst202|Mux17~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst14|valor_interno[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno[14]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y27_N48
\inst33|opres[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~13_combout\ = ( \inst700|valor_interno\(13) & ( \inst16|selop\(0) & ( (!\inst16|selop\(2) & (\inst16|selop\(1) & (\inst14|valor_interno[14]~DUPLICATE_q\ & \inst700|valor_interno\(14)))) # (\inst16|selop\(2) & 
-- ((!\inst14|valor_interno[14]~DUPLICATE_q\ $ (!\inst700|valor_interno\(14))) # (\inst16|selop\(1)))) ) ) ) # ( !\inst700|valor_interno\(13) & ( \inst16|selop\(0) & ( (!\inst16|selop\(2) & (\inst16|selop\(1) & (\inst14|valor_interno[14]~DUPLICATE_q\ & 
-- \inst700|valor_interno\(14)))) # (\inst16|selop\(2) & (!\inst16|selop\(1) & (!\inst14|valor_interno[14]~DUPLICATE_q\ $ (!\inst700|valor_interno\(14))))) ) ) ) # ( \inst700|valor_interno\(13) & ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & 
-- (\inst16|selop\(1) & (\inst14|valor_interno[14]~DUPLICATE_q\ & \inst700|valor_interno\(14)))) # (\inst16|selop\(2) & (((\inst700|valor_interno\(14)) # (\inst14|valor_interno[14]~DUPLICATE_q\)) # (\inst16|selop\(1)))) ) ) ) # ( !\inst700|valor_interno\(13) 
-- & ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & (\inst16|selop\(1) & (\inst14|valor_interno[14]~DUPLICATE_q\ & \inst700|valor_interno\(14)))) # (\inst16|selop\(2) & (!\inst16|selop\(1) & ((\inst700|valor_interno\(14)) # 
-- (\inst14|valor_interno[14]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000110000101010101011100000100010000100001010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst14|ALT_INV_valor_interno[14]~DUPLICATE_q\,
	datad => \inst700|ALT_INV_valor_interno\(14),
	datae => \inst700|ALT_INV_valor_interno\(13),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[14]~13_combout\);

-- Location: LABCELL_X79_Y27_N12
\inst33|opres[14]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~31_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & (((!\inst16|selop\(1) & ((\inst700|valor_interno[15]~DUPLICATE_q\))) # (\inst16|selop\(1) & (\inst33|Add2~53_sumout\))))) # (\inst16|selop\(2) & 
-- (\inst33|opres[14]~13_combout\)) ) ) # ( \inst16|selop\(0) & ( (!\inst16|selop\(2) & (((\inst33|Add0~53_sumout\ & (!\inst16|selop\(1)))) # (\inst33|opres[14]~13_combout\))) # (\inst16|selop\(2) & (((!\inst16|selop\(1) & (\inst33|opres[14]~13_combout\)) # 
-- (\inst16|selop\(1) & ((\inst700|valor_interno[15]~DUPLICATE_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100011011001110110010001010111011000110110011101101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst33|ALT_INV_opres[14]~13_combout\,
	datac => \inst33|ALT_INV_Add0~53_sumout\,
	datad => \inst16|ALT_INV_selop\(1),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst700|ALT_INV_valor_interno[15]~DUPLICATE_q\,
	datag => \inst33|ALT_INV_Add2~53_sumout\,
	combout => \inst33|opres[14]~31_combout\);

-- Location: LABCELL_X79_Y27_N36
\inst33|opres[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(14) = ( \inst33|opres\(14) & ( \inst33|Equal0~0_combout\ ) ) # ( \inst33|opres\(14) & ( !\inst33|Equal0~0_combout\ & ( \inst33|opres[14]~31_combout\ ) ) ) # ( !\inst33|opres\(14) & ( !\inst33|Equal0~0_combout\ & ( 
-- \inst33|opres[14]~31_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres[14]~31_combout\,
	datae => \inst33|ALT_INV_opres\(14),
	dataf => \inst33|ALT_INV_Equal0~0_combout\,
	combout => \inst33|opres\(14));

-- Location: LABCELL_X79_Y29_N33
\inst33|WideOr0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~2_combout\ = ( !\inst33|opres\(13) & ( (!\inst33|opres\(14) & (!\inst33|opres\(0) & !\inst33|opres\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres\(14),
	datac => \inst33|ALT_INV_opres\(0),
	datad => \inst33|ALT_INV_opres\(15),
	dataf => \inst33|ALT_INV_opres\(13),
	combout => \inst33|WideOr0~2_combout\);

-- Location: LABCELL_X79_Y29_N36
\inst33|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~1_combout\ = ( !\inst33|opres\(10) & ( (!\inst33|opres\(9) & (!\inst33|opres\(7) & (!\inst33|opres\(11) & !\inst33|opres\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(9),
	datab => \inst33|ALT_INV_opres\(7),
	datac => \inst33|ALT_INV_opres\(11),
	datad => \inst33|ALT_INV_opres\(8),
	dataf => \inst33|ALT_INV_opres\(10),
	combout => \inst33|WideOr0~1_combout\);

-- Location: LABCELL_X79_Y29_N48
\inst33|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~0_combout\ = ( !\inst33|opres\(3) & ( (!\inst33|opres\(4) & (!\inst33|opres\(5) & (!\inst33|opres\(1) & !\inst33|opres\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(4),
	datab => \inst33|ALT_INV_opres\(5),
	datac => \inst33|ALT_INV_opres\(1),
	datad => \inst33|ALT_INV_opres\(2),
	dataf => \inst33|ALT_INV_opres\(3),
	combout => \inst33|WideOr0~0_combout\);

-- Location: LABCELL_X79_Y29_N6
\inst33|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~combout\ = ( \inst33|WideOr0~0_combout\ & ( (!\inst33|WideOr0~2_combout\) # (((!\inst33|WideOr0~1_combout\) # (\inst33|opres\(6))) # (\inst33|opres\(12))) ) ) # ( !\inst33|WideOr0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_WideOr0~2_combout\,
	datab => \inst33|ALT_INV_opres\(12),
	datac => \inst33|ALT_INV_opres\(6),
	datad => \inst33|ALT_INV_WideOr0~1_combout\,
	dataf => \inst33|ALT_INV_WideOr0~0_combout\,
	combout => \inst33|WideOr0~combout\);

-- Location: LABCELL_X79_Y29_N15
\inst|zi\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|zi~combout\ = ( \inst33|WideOr0~combout\ & ( (!\inst|zi~0_combout\ & \inst|zi~combout\) ) ) # ( !\inst33|WideOr0~combout\ & ( (\inst|zi~combout\) # (\inst|zi~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_zi~0_combout\,
	datac => \inst|ALT_INV_zi~combout\,
	dataf => \inst33|ALT_INV_WideOr0~combout\,
	combout => \inst|zi~combout\);

-- Location: LABCELL_X75_Y27_N12
\inst4|comb~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~24_combout\ = ( \inst4|selregr[3]~2_combout\ & ( (!\inst4|Equal10~1_combout\ & \inst4|Equal9~0_combout\) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( !\inst4|Equal10~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Equal10~1_combout\,
	datac => \inst4|ALT_INV_Equal9~0_combout\,
	dataf => \inst4|ALT_INV_selregr[3]~2_combout\,
	combout => \inst4|comb~24_combout\);

-- Location: LABCELL_X75_Y27_N24
\inst4|selbranch[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selbranch\(2) = ( \inst4|selbranch\(2) & ( !\inst4|comb~24_combout\ ) ) # ( !\inst4|selbranch\(2) & ( (!\inst4|comb~24_combout\ & \inst4|Equal10~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_comb~24_combout\,
	datad => \inst4|ALT_INV_Equal10~1_combout\,
	dataf => \inst4|ALT_INV_selbranch\(2),
	combout => \inst4|selbranch\(2));

-- Location: LABCELL_X75_Y27_N54
\inst26|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|selbranch\(2) & ( (!\inst4|selregr\(2) & (((!\inst49|process_0~1_combout\) # (!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & 
-- (!\inst49|process_0~0_combout\ & ((!\inst4|selregr\(0))))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|selbranch\(2) & ( (!\inst4|selregr\(2) & (((!\inst49|process_0~1_combout\) # (!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & 
-- ((!\inst49|process_0~0_combout\) # ((\inst4|selregr\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111100111110111011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_process_0~0_combout\,
	datab => \inst4|ALT_INV_selregr\(2),
	datac => \inst49|ALT_INV_process_0~1_combout\,
	datad => \inst4|ALT_INV_selregr\(0),
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_selbranch\(2),
	combout => \inst26|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X75_Y27_N55
\inst16|selbranch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst26|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selbranch\(2));

-- Location: LABCELL_X75_Y27_N33
\inst4|selbranch[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selbranch\(1) = ( \inst4|selbranch\(1) & ( !\inst4|comb~24_combout\ ) ) # ( !\inst4|selbranch\(1) & ( (\inst4|Equal10~1_combout\ & !\inst4|comb~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Equal10~1_combout\,
	datac => \inst4|ALT_INV_comb~24_combout\,
	dataf => \inst4|ALT_INV_selbranch\(1),
	combout => \inst4|selbranch\(1));

-- Location: LABCELL_X75_Y27_N57
\inst26|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|selbranch\(1) & ( (!\inst4|selregr\(2) & (((!\inst4|selregr\(0)) # (!\inst49|process_0~1_combout\)))) # (\inst4|selregr\(2) & 
-- (!\inst49|process_0~0_combout\ & (!\inst4|selregr\(0)))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|selbranch\(1) & ( (!\inst4|selregr\(2) & (((!\inst4|selregr\(0)) # (!\inst49|process_0~1_combout\)))) # (\inst4|selregr\(2) & 
-- ((!\inst49|process_0~0_combout\) # ((\inst4|selregr\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101111111000111110110011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_process_0~0_combout\,
	datab => \inst4|ALT_INV_selregr\(2),
	datac => \inst4|ALT_INV_selregr\(0),
	datad => \inst49|ALT_INV_process_0~1_combout\,
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_selbranch\(1),
	combout => \inst26|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X75_Y27_N58
\inst16|selbranch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst26|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selbranch\(1));

-- Location: LABCELL_X75_Y27_N9
\inst4|vf\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|vf~combout\ = ( \inst4|vf~combout\ & ( !\inst4|Equal9~0_combout\ ) ) # ( !\inst4|vf~combout\ & ( (!\inst4|Equal9~0_combout\ & !\inst4|selregr[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datac => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_vf~combout\,
	combout => \inst4|vf~combout\);

-- Location: LABCELL_X75_Y27_N3
\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~combout\ = ( \inst4|selregr\(2) & ( !\inst4|vf~combout\ & ( (!\inst4|selregr\(0) & (!\inst49|process_0~0_combout\)) # (\inst4|selregr\(0) & ((!\inst49|process_0~2_combout\))) ) ) ) # ( !\inst4|selregr\(2) 
-- & ( !\inst4|vf~combout\ & ( (!\inst4|selregr\(0)) # (!\inst49|process_0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101011001010110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_process_0~0_combout\,
	datab => \inst49|ALT_INV_process_0~2_combout\,
	datac => \inst4|ALT_INV_selregr\(0),
	datad => \inst49|ALT_INV_process_0~1_combout\,
	datae => \inst4|ALT_INV_selregr\(2),
	dataf => \inst4|ALT_INV_vf~combout\,
	combout => \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~combout\);

-- Location: FF_X75_Y27_N4
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

-- Location: MLABCELL_X78_Y29_N12
\inst|vi~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|vi~0_combout\ = ( \inst16|selfalgs\(0) & ( (\inst33|opres\(16) & ((!\inst16|selfalgs\(3) & (!\inst16|selfalgs\(1) $ (!\inst16|selfalgs\(2)))) # (\inst16|selfalgs\(3) & ((!\inst16|selfalgs\(1)) # (\inst16|selfalgs\(2)))))) ) ) # ( 
-- !\inst16|selfalgs\(0) & ( ((\inst16|selfalgs\(3) & (\inst16|selfalgs\(1) & !\inst16|selfalgs\(2)))) # (\inst33|opres\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111111000100001111111100000000011011010000000001101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(3),
	datab => \inst16|ALT_INV_selfalgs\(1),
	datac => \inst16|ALT_INV_selfalgs\(2),
	datad => \inst33|ALT_INV_opres\(16),
	dataf => \inst16|ALT_INV_selfalgs\(0),
	combout => \inst|vi~0_combout\);

-- Location: MLABCELL_X78_Y29_N39
\inst|vi~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|vi~1_combout\ = ( \inst16|selfalgs\(2) & ( (!\inst16|selfalgs\(3) & (\inst16|selfalgs\(1) & \inst16|selfalgs\(0))) # (\inst16|selfalgs\(3) & (!\inst16|selfalgs\(1) & !\inst16|selfalgs\(0))) ) ) # ( !\inst16|selfalgs\(2) & ( ((!\inst16|selfalgs\(3) & 
-- \inst16|selfalgs\(0))) # (\inst16|selfalgs\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101101000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(3),
	datab => \inst16|ALT_INV_selfalgs\(1),
	datac => \inst16|ALT_INV_selfalgs\(0),
	dataf => \inst16|ALT_INV_selfalgs\(2),
	combout => \inst|vi~1_combout\);

-- Location: MLABCELL_X78_Y29_N57
\inst|vi\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|vi~combout\ = ( \inst|vi~1_combout\ & ( \inst|vi~0_combout\ ) ) # ( !\inst|vi~1_combout\ & ( \inst|vi~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_vi~0_combout\,
	datad => \inst|ALT_INV_vi~combout\,
	dataf => \inst|ALT_INV_vi~1_combout\,
	combout => \inst|vi~combout\);

-- Location: MLABCELL_X78_Y29_N42
\inst22|branch~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|branch~0_combout\ = ( \inst16|vf~q\ & ( \inst|vi~combout\ & ( (!\inst16|selbranch\(2) & (((!\inst|zi~combout\) # (!\inst16|selbranch\(1))))) # (\inst16|selbranch\(2) & ((!\inst|ni~combout\ & ((\inst16|selbranch\(1)))) # (\inst|ni~combout\ & 
-- (!\inst|zi~combout\ & !\inst16|selbranch\(1))))) ) ) ) # ( !\inst16|vf~q\ & ( \inst|vi~combout\ & ( (!\inst16|selbranch\(2) & (((\inst|zi~combout\ & \inst16|selbranch\(1))))) # (\inst16|selbranch\(2) & ((!\inst|ni~combout\ & ((!\inst16|selbranch\(1)))) # 
-- (\inst|ni~combout\ & ((\inst16|selbranch\(1)) # (\inst|zi~combout\))))) ) ) ) # ( \inst16|vf~q\ & ( !\inst|vi~combout\ & ( (!\inst16|selbranch\(2) & (((!\inst|zi~combout\) # (!\inst16|selbranch\(1))))) # (\inst16|selbranch\(2) & (!\inst|ni~combout\ & 
-- ((!\inst|zi~combout\) # (\inst16|selbranch\(1))))) ) ) ) # ( !\inst16|vf~q\ & ( !\inst|vi~combout\ & ( (!\inst16|selbranch\(2) & (((\inst|zi~combout\ & \inst16|selbranch\(1))))) # (\inst16|selbranch\(2) & (((\inst|zi~combout\ & !\inst16|selbranch\(1))) # 
-- (\inst|ni~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100110101111110001100101000001011001101011111010011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ni~combout\,
	datab => \inst|ALT_INV_zi~combout\,
	datac => \inst16|ALT_INV_selbranch\(2),
	datad => \inst16|ALT_INV_selbranch\(1),
	datae => \inst16|ALT_INV_vf~q\,
	dataf => \inst|ALT_INV_vi~combout\,
	combout => \inst22|branch~0_combout\);

-- Location: FF_X78_Y29_N44
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

-- Location: FF_X78_Y28_N44
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

-- Location: MLABCELL_X78_Y28_N0
\inst1|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux31~0_combout\ = ( \inst34|valor_interno\(0) & ( \inst34|valor_interno\(1) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (!\inst34|valor_interno\(5) & ((!\inst34|valor_interno[3]~DUPLICATE_q\) # (!\inst34|valor_interno\(2))))) ) ) ) # ( 
-- !\inst34|valor_interno\(0) & ( !\inst34|valor_interno\(1) & ( (!\inst34|valor_interno[3]~DUPLICATE_q\ & (!\inst34|valor_interno\(2) & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno\(2),
	datac => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datad => \inst34|ALT_INV_valor_interno\(5),
	datae => \inst34|ALT_INV_valor_interno\(0),
	dataf => \inst34|ALT_INV_valor_interno\(1),
	combout => \inst1|Mux31~0_combout\);

-- Location: FF_X78_Y28_N1
\inst8|valor_interno[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|Mux31~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno[0]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y28_N30
\inst202|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux31~0_combout\ = ( \inst700666|ACCB|valor_interno\(0) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (!\inst14|valor_interno[0]~1_combout\ & (\inst8|valor_interno[0]~DUPLICATE_q\ & ((\inst14|valor_interno[0]~2_combout\)))) 
-- # (\inst14|valor_interno[0]~1_combout\ & (((!\inst14|valor_interno[0]~2_combout\) # (\inst700666|inst|Equal1~0_combout\)))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(0) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( 
-- (!\inst14|valor_interno[0]~1_combout\ & (\inst8|valor_interno[0]~DUPLICATE_q\ & \inst14|valor_interno[0]~2_combout\)) # (\inst14|valor_interno[0]~1_combout\ & ((!\inst14|valor_interno[0]~2_combout\))) ) ) ) # ( \inst700666|ACCB|valor_interno\(0) & ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (\inst14|valor_interno[0]~2_combout\ & ((!\inst14|valor_interno[0]~1_combout\ & (\inst8|valor_interno[0]~DUPLICATE_q\)) # (\inst14|valor_interno[0]~1_combout\ & 
-- ((\inst700666|inst|Equal1~0_combout\))))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(0) & ( !\inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (\inst8|valor_interno[0]~DUPLICATE_q\ & (!\inst14|valor_interno[0]~1_combout\ & 
-- \inst14|valor_interno[0]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100011100110011010001000011001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	datab => \inst14|ALT_INV_valor_interno[0]~1_combout\,
	datac => \inst700666|inst|ALT_INV_Equal1~0_combout\,
	datad => \inst14|ALT_INV_valor_interno[0]~2_combout\,
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(0),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \inst202|Mux31~0_combout\);

-- Location: FF_X75_Y28_N31
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

-- Location: LABCELL_X80_Y29_N6
\inst33|opres[0]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~27_combout\ = ( !\inst16|selop\(1) & ( (((!\inst16|selop\(0) & (\inst700|valor_interno[1]~DUPLICATE_q\)) # (\inst16|selop\(0) & ((\inst33|Add0~57_sumout\))))) ) ) # ( \inst16|selop\(1) & ( ((!\inst16|selop\(0) & (\inst33|Add2~57_sumout\)) 
-- # (\inst16|selop\(0) & (((\inst14|valor_interno\(0) & \inst700|valor_interno\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111010101010101010100000000111111110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Add2~57_sumout\,
	datab => \inst14|ALT_INV_valor_interno\(0),
	datac => \inst700|ALT_INV_valor_interno\(0),
	datad => \inst33|ALT_INV_Add0~57_sumout\,
	datae => \inst16|ALT_INV_selop\(1),
	dataf => \inst16|ALT_INV_selop\(0),
	datag => \inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	combout => \inst33|opres[0]~27_combout\);

-- Location: LABCELL_X80_Y29_N18
\inst33|opres[0]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~23_combout\ = ( !\inst16|selop\(1) & ( (!\inst16|selop\(2) & (\inst33|opres[0]~27_combout\)) # (\inst16|selop\(2) & (((!\inst700|valor_interno\(0) & (\inst14|valor_interno\(0))) # (\inst700|valor_interno\(0) & 
-- ((!\inst14|valor_interno\(0)) # (!\inst16|selop\(0))))))) ) ) # ( \inst16|selop\(1) & ( (!\inst16|selop\(2) & (\inst33|opres[0]~27_combout\)) # (\inst16|selop\(2) & (((\inst700|valor_interno[1]~DUPLICATE_q\ & ((\inst16|selop\(0))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011101110111001000100010001000100111011100100010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst33|ALT_INV_opres[0]~27_combout\,
	datac => \inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	datad => \inst14|ALT_INV_valor_interno\(0),
	datae => \inst16|ALT_INV_selop\(1),
	dataf => \inst16|ALT_INV_selop\(0),
	datag => \inst700|ALT_INV_valor_interno\(0),
	combout => \inst33|opres[0]~23_combout\);

-- Location: LABCELL_X79_Y29_N39
\inst33|opres[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(0) = ( \inst33|opres\(0) & ( (\inst33|opres[0]~23_combout\) # (\inst33|Equal0~0_combout\) ) ) # ( !\inst33|opres\(0) & ( (!\inst33|Equal0~0_combout\ & \inst33|opres[0]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_Equal0~0_combout\,
	datad => \inst33|ALT_INV_opres[0]~23_combout\,
	dataf => \inst33|ALT_INV_opres\(0),
	combout => \inst33|opres\(0));

-- Location: FF_X78_Y29_N17
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

-- Location: LABCELL_X81_Y28_N39
\inst202|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst202|Mux28~0_combout\ = ( \inst700666|ACCB|valor_interno\(3) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a3\ & ( (\inst49|PCWrite~0_combout\ & ((!\inst4|selsrc\(1) & (\inst700666|inst|Equal1~0_combout\ & \inst4|selsrc\(0))) # (\inst4|selsrc\(1) & 
-- ((!\inst4|selsrc\(0)))))) ) ) ) # ( !\inst700666|ACCB|valor_interno\(3) & ( \inst41|mem_rtl_0|auto_generated|ram_block1a3\ & ( (\inst49|PCWrite~0_combout\ & (\inst4|selsrc\(1) & !\inst4|selsrc\(0))) ) ) ) # ( \inst700666|ACCB|valor_interno\(3) & ( 
-- !\inst41|mem_rtl_0|auto_generated|ram_block1a3\ & ( (\inst49|PCWrite~0_combout\ & (!\inst4|selsrc\(1) & (\inst700666|inst|Equal1~0_combout\ & \inst4|selsrc\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000010001000000000001000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_PCWrite~0_combout\,
	datab => \inst4|ALT_INV_selsrc\(1),
	datac => \inst700666|inst|ALT_INV_Equal1~0_combout\,
	datad => \inst4|ALT_INV_selsrc\(0),
	datae => \inst700666|ACCB|ALT_INV_valor_interno\(3),
	dataf => \inst41|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \inst202|Mux28~0_combout\);

-- Location: FF_X80_Y28_N14
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

-- Location: LABCELL_X81_Y29_N36
\inst33|opres[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~4_combout\ = ( \inst700|valor_interno\(2) & ( \inst16|selop\(0) & ( (!\inst700|valor_interno\(3) & (\inst16|selop\(2) & ((\inst16|selop\(1)) # (\inst14|valor_interno\(3))))) # (\inst700|valor_interno\(3) & ((!\inst14|valor_interno\(3) & 
-- (\inst16|selop\(2))) # (\inst14|valor_interno\(3) & ((\inst16|selop\(1)))))) ) ) ) # ( !\inst700|valor_interno\(2) & ( \inst16|selop\(0) & ( (!\inst16|selop\(2) & (\inst700|valor_interno\(3) & (\inst14|valor_interno\(3) & \inst16|selop\(1)))) # 
-- (\inst16|selop\(2) & (!\inst16|selop\(1) & (!\inst700|valor_interno\(3) $ (!\inst14|valor_interno\(3))))) ) ) ) # ( \inst700|valor_interno\(2) & ( !\inst16|selop\(0) & ( (!\inst700|valor_interno\(3) & (\inst16|selop\(2) & ((\inst16|selop\(1)) # 
-- (\inst14|valor_interno\(3))))) # (\inst700|valor_interno\(3) & (((\inst14|valor_interno\(3) & \inst16|selop\(1))) # (\inst16|selop\(2)))) ) ) ) # ( !\inst700|valor_interno\(2) & ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & (\inst700|valor_interno\(3) & 
-- (\inst14|valor_interno\(3) & \inst16|selop\(1)))) # (\inst16|selop\(2) & (!\inst16|selop\(1) & ((\inst14|valor_interno\(3)) # (\inst700|valor_interno\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000100000100110011011100010010000001000001001000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(3),
	datab => \inst16|ALT_INV_selop\(2),
	datac => \inst14|ALT_INV_valor_interno\(3),
	datad => \inst16|ALT_INV_selop\(1),
	datae => \inst700|ALT_INV_valor_interno\(2),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[3]~4_combout\);

-- Location: LABCELL_X81_Y29_N24
\inst33|opres[3]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~67_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & (((!\inst16|selop\(1) & ((\inst700|valor_interno\(4)))) # (\inst16|selop\(1) & (\inst33|Add2~17_sumout\))))) # (\inst16|selop\(2) & (\inst33|opres[3]~4_combout\)) ) ) # ( 
-- \inst16|selop\(0) & ( (!\inst16|selop\(2) & (((\inst33|Add0~17_sumout\ & ((!\inst16|selop\(1))))) # (\inst33|opres[3]~4_combout\))) # (\inst16|selop\(2) & (((!\inst16|selop\(1) & (\inst33|opres[3]~4_combout\)) # (\inst16|selop\(1) & 
-- ((\inst700|valor_interno\(4))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000110111011001110110011101100011011000110110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst33|ALT_INV_opres[3]~4_combout\,
	datac => \inst33|ALT_INV_Add0~17_sumout\,
	datad => \inst700|ALT_INV_valor_interno\(4),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(1),
	datag => \inst33|ALT_INV_Add2~17_sumout\,
	combout => \inst33|opres[3]~67_combout\);

-- Location: LABCELL_X81_Y29_N3
\inst33|opres[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(3) = ( \inst33|Equal0~0_combout\ & ( \inst33|opres\(3) ) ) # ( !\inst33|Equal0~0_combout\ & ( \inst33|opres[3]~67_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres[3]~67_combout\,
	datad => \inst33|ALT_INV_opres\(3),
	dataf => \inst33|ALT_INV_Equal0~0_combout\,
	combout => \inst33|opres\(3));

-- Location: FF_X79_Y29_N20
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

-- Location: LABCELL_X79_Y26_N42
\inst700666|ACCA|valor_interno[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[3]~feeder_combout\ = ( \inst24|valor_interno\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(3),
	combout => \inst700666|ACCA|valor_interno[3]~feeder_combout\);

-- Location: FF_X79_Y26_N44
\inst700666|ACCA|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|ACCA|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(3));

-- Location: LABCELL_X79_Y26_N33
\inst700|valor_interno[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[3]~feeder_combout\ = ( \inst700666|ACCA|valor_interno\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst700666|ACCA|ALT_INV_valor_interno\(3),
	combout => \inst700|valor_interno[3]~feeder_combout\);

-- Location: FF_X79_Y26_N34
\inst700|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst700|valor_interno[3]~feeder_combout\,
	asdata => \inst700666|ACCB|valor_interno[3]~DUPLICATE_q\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sclr => \inst700|valor_interno[4]~0_combout\,
	sload => \inst700666|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(3));

-- Location: LABCELL_X81_Y29_N42
\inst33|opres[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~3_combout\ = ( \inst16|selop\(2) & ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & (!\inst14|valor_interno\(2) $ ((!\inst700|valor_interno\(2))))) # (\inst16|selop\(1) & (((\inst700|valor_interno[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\inst16|selop\(2) & ( \inst16|selop\(0) & ( (\inst14|valor_interno\(2) & (\inst16|selop\(1) & \inst700|valor_interno\(2))) ) ) ) # ( \inst16|selop\(2) & ( !\inst16|selop\(0) & ( (!\inst16|selop\(1) & (((\inst700|valor_interno\(2))) # 
-- (\inst14|valor_interno\(2)))) # (\inst16|selop\(1) & (((\inst700|valor_interno[1]~DUPLICATE_q\)))) ) ) ) # ( !\inst16|selop\(2) & ( !\inst16|selop\(0) & ( (\inst14|valor_interno\(2) & (\inst16|selop\(1) & \inst700|valor_interno\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010011000111111100000001000000010100100001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(2),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst700|ALT_INV_valor_interno\(2),
	datad => \inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	datae => \inst16|ALT_INV_selop\(2),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[2]~3_combout\);

-- Location: LABCELL_X81_Y29_N12
\inst33|opres[2]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~71_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & (((!\inst16|selop\(1) & (\inst700|valor_interno\(3))) # (\inst16|selop\(1) & ((\inst33|Add2~13_sumout\)))))) # (\inst16|selop\(2) & (((\inst33|opres[2]~3_combout\)))) ) ) # ( 
-- \inst16|selop\(0) & ( (!\inst16|selop\(2) & ((((\inst33|Add0~13_sumout\ & !\inst16|selop\(1))) # (\inst33|opres[2]~3_combout\)))) # (\inst16|selop\(2) & (((!\inst16|selop\(1) & ((\inst33|opres[2]~3_combout\))) # (\inst16|selop\(1) & 
-- (\inst700|valor_interno\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100110011001111110011001100001111001100110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|ALT_INV_valor_interno\(3),
	datab => \inst33|ALT_INV_opres[2]~3_combout\,
	datac => \inst33|ALT_INV_Add0~13_sumout\,
	datad => \inst16|ALT_INV_selop\(2),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(1),
	datag => \inst33|ALT_INV_Add2~13_sumout\,
	combout => \inst33|opres[2]~71_combout\);

-- Location: LABCELL_X80_Y29_N0
\inst33|opres[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(2) = ( \inst33|opres[2]~71_combout\ & ( (!\inst33|Equal0~0_combout\) # (\inst33|opres\(2)) ) ) # ( !\inst33|opres[2]~71_combout\ & ( (\inst33|Equal0~0_combout\ & \inst33|opres\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst33|ALT_INV_Equal0~0_combout\,
	datad => \inst33|ALT_INV_opres\(2),
	dataf => \inst33|ALT_INV_opres[2]~71_combout\,
	combout => \inst33|opres\(2));

-- Location: FF_X79_Y29_N35
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

-- Location: FF_X78_Y28_N50
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

-- Location: LABCELL_X77_Y27_N36
\inst7|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~9_sumout\ = SUM(( \inst34|valor_interno[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst7|Add0~6\ ))
-- \inst7|Add0~10\ = CARRY(( \inst34|valor_interno[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst7|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	cin => \inst7|Add0~6\,
	sumout => \inst7|Add0~9_sumout\,
	cout => \inst7|Add0~10\);

-- Location: MLABCELL_X78_Y28_N57
\inst34|valor_interno[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[3]~feeder_combout\ = ( \inst7|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_Add0~9_sumout\,
	combout => \inst34|valor_interno[3]~feeder_combout\);

-- Location: FF_X78_Y28_N58
\inst34|valor_interno[3]~DUPLICATE\ : dffeas
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
	q => \inst34|valor_interno[3]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y27_N39
\inst7|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~17_sumout\ = SUM(( \inst34|valor_interno[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst7|Add0~10\ ))
-- \inst7|Add0~18\ = CARRY(( \inst34|valor_interno[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst7|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	cin => \inst7|Add0~10\,
	sumout => \inst7|Add0~17_sumout\,
	cout => \inst7|Add0~18\);

-- Location: LABCELL_X77_Y27_N42
\inst7|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~13_sumout\ = SUM(( \inst34|valor_interno\(5) ) + ( GND ) + ( \inst7|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst34|ALT_INV_valor_interno\(5),
	cin => \inst7|Add0~18\,
	sumout => \inst7|Add0~13_sumout\);

-- Location: MLABCELL_X78_Y28_N24
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

-- Location: FF_X78_Y28_N25
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

-- Location: LABCELL_X77_Y27_N54
\inst1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = ( \inst34|valor_interno[3]~DUPLICATE_q\ & ( \inst34|valor_interno[0]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(5) & (\inst34|valor_interno\(2) & (!\inst34|valor_interno\(1) & !\inst34|valor_interno[4]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst34|valor_interno[3]~DUPLICATE_q\ & ( \inst34|valor_interno[0]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(5) & (\inst34|valor_interno\(2) & (\inst34|valor_interno\(1) & !\inst34|valor_interno[4]~DUPLICATE_q\))) ) ) ) # ( 
-- \inst34|valor_interno[3]~DUPLICATE_q\ & ( !\inst34|valor_interno[0]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(5) & (\inst34|valor_interno\(2) & (!\inst34|valor_interno\(1) & !\inst34|valor_interno[4]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst34|valor_interno[3]~DUPLICATE_q\ & ( !\inst34|valor_interno[0]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(5) & (\inst34|valor_interno\(2) & (!\inst34|valor_interno\(1) & !\inst34|valor_interno[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000010000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(5),
	datab => \inst34|ALT_INV_valor_interno\(2),
	datac => \inst34|ALT_INV_valor_interno\(1),
	datad => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datae => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	combout => \inst1|Mux9~0_combout\);

-- Location: FF_X78_Y27_N10
\inst8|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst1|Mux9~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(22));

-- Location: LABCELL_X79_Y31_N6
\inst4|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal3~0_combout\ = ( \inst8|valor_interno\(23) & ( \inst8|valor_interno\(18) & ( (\inst8|valor_interno\(16) & (!\inst8|valor_interno\(19) & (!\inst8|valor_interno\(22) & \inst8|valor_interno\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datab => \inst8|ALT_INV_valor_interno\(19),
	datac => \inst8|ALT_INV_valor_interno\(22),
	datad => \inst8|ALT_INV_valor_interno\(21),
	datae => \inst8|ALT_INV_valor_interno\(23),
	dataf => \inst8|ALT_INV_valor_interno\(18),
	combout => \inst4|Equal3~0_combout\);

-- Location: LABCELL_X79_Y31_N30
\inst4|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal3~1_combout\ = ( !\inst8|valor_interno\(20) & ( (!\inst8|valor_interno\(17) & \inst4|Equal3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(17),
	datab => \inst4|ALT_INV_Equal3~0_combout\,
	dataf => \inst8|ALT_INV_valor_interno\(20),
	combout => \inst4|Equal3~1_combout\);

-- Location: LABCELL_X77_Y31_N54
\inst4|selop[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop[2]~1_combout\ = ( \inst4|Equal9~0_combout\ & ( \inst4|Equal10~1_combout\ & ( (!\inst4|Equal2~2_combout\ & \inst4|Equal4~0_combout\) ) ) ) # ( !\inst4|Equal9~0_combout\ & ( \inst4|Equal10~1_combout\ & ( (!\inst4|Equal2~2_combout\ & 
-- \inst4|Equal4~0_combout\) ) ) ) # ( \inst4|Equal9~0_combout\ & ( !\inst4|Equal10~1_combout\ & ( (!\inst4|Equal2~2_combout\ & \inst4|Equal4~0_combout\) ) ) ) # ( !\inst4|Equal9~0_combout\ & ( !\inst4|Equal10~1_combout\ & ( (!\inst4|Equal2~2_combout\ & 
-- (((!\inst4|Equal3~1_combout\ & !\inst4|selsrc[1]~0_combout\)) # (\inst4|Equal4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal3~1_combout\,
	datab => \inst4|ALT_INV_selsrc[1]~0_combout\,
	datac => \inst4|ALT_INV_Equal2~2_combout\,
	datad => \inst4|ALT_INV_Equal4~0_combout\,
	datae => \inst4|ALT_INV_Equal9~0_combout\,
	dataf => \inst4|ALT_INV_Equal10~1_combout\,
	combout => \inst4|selop[2]~1_combout\);

-- Location: LABCELL_X75_Y31_N45
\inst4|comb~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~15_combout\ = ( \inst4|selop[1]~0_combout\ & ( (!\inst4|selregr[3]~2_combout\) # (\inst4|Equal9~0_combout\) ) ) # ( !\inst4|selop[1]~0_combout\ & ( (\inst4|selop[2]~1_combout\ & ((!\inst4|selregr[3]~2_combout\) # (\inst4|Equal9~0_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100010011000111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_selop[2]~1_combout\,
	datac => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_selop[1]~0_combout\,
	combout => \inst4|comb~15_combout\);

-- Location: LABCELL_X75_Y31_N36
\inst4|comb~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~16_combout\ = (!\inst4|selop[1]~0_combout\ & (!\inst4|selop[2]~1_combout\ & ((!\inst4|selregr[3]~2_combout\) # (\inst4|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000110100000000000011010000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_selregr[3]~2_combout\,
	datac => \inst4|ALT_INV_selop[1]~0_combout\,
	datad => \inst4|ALT_INV_selop[2]~1_combout\,
	combout => \inst4|comb~16_combout\);

-- Location: LABCELL_X80_Y31_N24
\inst4|selop[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop\(2) = ( \inst4|selop\(2) & ( !\inst4|comb~15_combout\ ) ) # ( !\inst4|selop\(2) & ( (!\inst4|comb~15_combout\ & \inst4|comb~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_comb~15_combout\,
	datac => \inst4|ALT_INV_comb~16_combout\,
	dataf => \inst4|ALT_INV_selop\(2),
	combout => \inst4|selop\(2));

-- Location: MLABCELL_X78_Y27_N0
\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst49|process_0~0_combout\ & ( (\inst4|selop\(2) & (!\inst4|selregr\(2) & ((!\inst49|process_0~1_combout\) # (!\inst4|selregr\(0))))) ) ) ) # ( 
-- !\inst49|process_0~2_combout\ & ( \inst49|process_0~0_combout\ & ( (\inst4|selop\(2) & ((!\inst4|selregr\(2) & ((!\inst49|process_0~1_combout\) # (!\inst4|selregr\(0)))) # (\inst4|selregr\(2) & ((\inst4|selregr\(0)))))) ) ) ) # ( 
-- \inst49|process_0~2_combout\ & ( !\inst49|process_0~0_combout\ & ( (\inst4|selop\(2) & ((!\inst4|selregr\(0)) # ((!\inst49|process_0~1_combout\ & !\inst4|selregr\(2))))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( !\inst49|process_0~0_combout\ & ( 
-- (\inst4|selop\(2) & ((!\inst49|process_0~1_combout\) # ((!\inst4|selregr\(0)) # (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100011001100110010000000110000001000110011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_process_0~1_combout\,
	datab => \inst4|ALT_INV_selop\(2),
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst4|ALT_INV_selregr\(0),
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst49|ALT_INV_process_0~0_combout\,
	combout => \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X79_Y27_N2
\inst16|selop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(2));

-- Location: LABCELL_X79_Y27_N30
\inst33|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|Equal0~0_combout\ = ( !\inst16|selop\(2) & ( !\inst16|selop\(0) & ( !\inst16|selop\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst16|ALT_INV_selop\(1),
	datae => \inst16|ALT_INV_selop\(2),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|Equal0~0_combout\);

-- Location: FF_X75_Y28_N41
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

-- Location: LABCELL_X81_Y29_N30
\inst33|opres[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~2_combout\ = ( \inst16|selop\(1) & ( \inst16|selop\(0) & ( (!\inst16|selop\(2) & (\inst14|valor_interno\(1) & ((\inst700|valor_interno[1]~DUPLICATE_q\)))) # (\inst16|selop\(2) & (((\inst700|valor_interno\(0))))) ) ) ) # ( 
-- !\inst16|selop\(1) & ( \inst16|selop\(0) & ( (\inst16|selop\(2) & (!\inst14|valor_interno\(1) $ (!\inst700|valor_interno[1]~DUPLICATE_q\))) ) ) ) # ( \inst16|selop\(1) & ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & (\inst14|valor_interno\(1) & 
-- ((\inst700|valor_interno[1]~DUPLICATE_q\)))) # (\inst16|selop\(2) & (((\inst700|valor_interno\(0))))) ) ) ) # ( !\inst16|selop\(1) & ( !\inst16|selop\(0) & ( (\inst16|selop\(2) & ((\inst700|valor_interno[1]~DUPLICATE_q\) # (\inst14|valor_interno\(1)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000001010010011100010001010001000000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(2),
	datab => \inst14|ALT_INV_valor_interno\(1),
	datac => \inst700|ALT_INV_valor_interno\(0),
	datad => \inst700|ALT_INV_valor_interno[1]~DUPLICATE_q\,
	datae => \inst16|ALT_INV_selop\(1),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[1]~2_combout\);

-- Location: LABCELL_X80_Y29_N54
\inst33|opres[1]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~75_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & ((!\inst16|selop\(1) & (((\inst700|valor_interno\(2))))) # (\inst16|selop\(1) & (((\inst33|Add2~9_sumout\)))))) # (\inst16|selop\(2) & (((\inst33|opres[1]~2_combout\)))) ) ) # ( 
-- \inst16|selop\(0) & ( (!\inst16|selop\(1) & (((\inst33|Add0~9_sumout\ & ((!\inst16|selop\(2))))) # (\inst33|opres[1]~2_combout\))) # (\inst16|selop\(1) & (((!\inst16|selop\(2) & (\inst33|opres[1]~2_combout\)) # (\inst16|selop\(2) & 
-- ((\inst700|valor_interno\(2))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110101111001110110011101100110011001100110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst33|ALT_INV_opres[1]~2_combout\,
	datac => \inst33|ALT_INV_Add0~9_sumout\,
	datad => \inst700|ALT_INV_valor_interno\(2),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst16|ALT_INV_selop\(2),
	datag => \inst33|ALT_INV_Add2~9_sumout\,
	combout => \inst33|opres[1]~75_combout\);

-- Location: LABCELL_X80_Y29_N45
\inst33|opres[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(1) = ( \inst33|opres[1]~75_combout\ & ( (!\inst33|Equal0~0_combout\) # (\inst33|opres\(1)) ) ) # ( !\inst33|opres[1]~75_combout\ & ( (\inst33|Equal0~0_combout\ & \inst33|opres\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_Equal0~0_combout\,
	datad => \inst33|ALT_INV_opres\(1),
	dataf => \inst33|ALT_INV_opres[1]~75_combout\,
	combout => \inst33|opres\(1));

-- Location: FF_X79_Y29_N44
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

-- Location: FF_X78_Y28_N22
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

-- Location: LABCELL_X77_Y27_N6
\inst1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = ( \inst34|valor_interno\(2) & ( \inst34|valor_interno\(0) & ( (!\inst34|valor_interno\(1) & (\inst34|valor_interno[3]~DUPLICATE_q\ & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(5)))) ) ) ) # ( 
-- !\inst34|valor_interno\(2) & ( \inst34|valor_interno\(0) & ( (!\inst34|valor_interno[4]~DUPLICATE_q\ & (!\inst34|valor_interno\(5) & ((!\inst34|valor_interno[3]~DUPLICATE_q\) # (\inst34|valor_interno\(1))))) ) ) ) # ( \inst34|valor_interno\(2) & ( 
-- !\inst34|valor_interno\(0) & ( (!\inst34|valor_interno\(1) & (\inst34|valor_interno[3]~DUPLICATE_q\ & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(5)))) ) ) ) # ( !\inst34|valor_interno\(2) & ( !\inst34|valor_interno\(0) & ( 
-- (!\inst34|valor_interno[3]~DUPLICATE_q\ & (!\inst34|valor_interno[4]~DUPLICATE_q\ & !\inst34|valor_interno\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000001000000000000011010000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(1),
	datab => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datac => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	datad => \inst34|ALT_INV_valor_interno\(5),
	datae => \inst34|ALT_INV_valor_interno\(2),
	dataf => \inst34|ALT_INV_valor_interno\(0),
	combout => \inst1|Mux13~0_combout\);

-- Location: FF_X77_Y27_N7
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

-- Location: LABCELL_X79_Y31_N12
\inst4|selop[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop[1]~2_combout\ = ( !\inst8|valor_interno\(17) & ( (\inst8|valor_interno\(16) & (!\inst8|valor_interno\(18) & (!\inst8|valor_interno\(19) & \inst4|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datab => \inst8|ALT_INV_valor_interno\(18),
	datac => \inst8|ALT_INV_valor_interno\(19),
	datad => \inst4|ALT_INV_Equal0~0_combout\,
	dataf => \inst8|ALT_INV_valor_interno\(17),
	combout => \inst4|selop[1]~2_combout\);

-- Location: MLABCELL_X78_Y30_N15
\inst4|comb~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~17_combout\ = ( \inst4|selregr[3]~2_combout\ & ( \inst4|Equal9~0_combout\ & ( !\inst4|selop[1]~2_combout\ ) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( \inst4|Equal9~0_combout\ & ( !\inst4|selop[1]~2_combout\ ) ) ) # ( 
-- !\inst4|selregr[3]~2_combout\ & ( !\inst4|Equal9~0_combout\ & ( !\inst4|selop[1]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selop[1]~2_combout\,
	datae => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_Equal9~0_combout\,
	combout => \inst4|comb~17_combout\);

-- Location: MLABCELL_X78_Y30_N18
\inst4|selop[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selop\(1) = ( \inst4|selop\(1) & ( !\inst4|comb~17_combout\ ) ) # ( !\inst4|selop\(1) & ( (!\inst4|comb~17_combout\ & \inst4|selop[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_comb~17_combout\,
	datac => \inst4|ALT_INV_selop[1]~2_combout\,
	dataf => \inst4|ALT_INV_selop\(1),
	combout => \inst4|selop\(1));

-- Location: MLABCELL_X78_Y27_N33
\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|selop\(1) & ( (!\inst4|selregr\(0) & (((!\inst49|process_0~0_combout\) # (!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- (!\inst49|process_0~1_combout\ & ((!\inst4|selregr\(2))))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|selop\(1) & ( (!\inst4|selregr\(0) & (((!\inst49|process_0~0_combout\) # (!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & 
-- ((!\inst49|process_0~1_combout\) # ((\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111100111110111011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|ALT_INV_process_0~1_combout\,
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst49|ALT_INV_process_0~0_combout\,
	datad => \inst4|ALT_INV_selregr\(2),
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_selop\(1),
	combout => \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X79_Y27_N41
\inst16|selop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(1));

-- Location: LABCELL_X81_Y29_N54
\inst33|opres[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~5_combout\ = ( \inst16|selop\(2) & ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & (!\inst14|valor_interno\(4) $ (((!\inst700|valor_interno\(4)))))) # (\inst16|selop\(1) & (((\inst700|valor_interno\(3))))) ) ) ) # ( !\inst16|selop\(2) & ( 
-- \inst16|selop\(0) & ( (\inst14|valor_interno\(4) & (\inst16|selop\(1) & \inst700|valor_interno\(4))) ) ) ) # ( \inst16|selop\(2) & ( !\inst16|selop\(0) & ( (!\inst16|selop\(1) & (((\inst700|valor_interno\(4))) # (\inst14|valor_interno\(4)))) # 
-- (\inst16|selop\(1) & (((\inst700|valor_interno\(3))))) ) ) ) # ( !\inst16|selop\(2) & ( !\inst16|selop\(0) & ( (\inst14|valor_interno\(4) & (\inst16|selop\(1) & \inst700|valor_interno\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001010001111100111100000000000100010100011110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_valor_interno\(4),
	datab => \inst16|ALT_INV_selop\(1),
	datac => \inst700|ALT_INV_valor_interno\(3),
	datad => \inst700|ALT_INV_valor_interno\(4),
	datae => \inst16|ALT_INV_selop\(2),
	dataf => \inst16|ALT_INV_selop\(0),
	combout => \inst33|opres[4]~5_combout\);

-- Location: LABCELL_X80_Y29_N12
\inst33|opres[4]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~63_combout\ = ( !\inst16|selop\(0) & ( (!\inst16|selop\(2) & ((!\inst16|selop\(1) & (((\inst700|valor_interno\(5))))) # (\inst16|selop\(1) & (((\inst33|Add2~21_sumout\)))))) # (\inst16|selop\(2) & (((\inst33|opres[4]~5_combout\)))) ) ) # 
-- ( \inst16|selop\(0) & ( (!\inst16|selop\(1) & (((\inst33|Add0~21_sumout\ & (!\inst16|selop\(2)))) # (\inst33|opres[4]~5_combout\))) # (\inst16|selop\(1) & (((!\inst16|selop\(2) & (\inst33|opres[4]~5_combout\)) # (\inst16|selop\(2) & 
-- ((\inst700|valor_interno\(5))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100110011001110110010001010101111001100110011101101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selop\(1),
	datab => \inst33|ALT_INV_opres[4]~5_combout\,
	datac => \inst33|ALT_INV_Add0~21_sumout\,
	datad => \inst16|ALT_INV_selop\(2),
	datae => \inst16|ALT_INV_selop\(0),
	dataf => \inst700|ALT_INV_valor_interno\(5),
	datag => \inst33|ALT_INV_Add2~21_sumout\,
	combout => \inst33|opres[4]~63_combout\);

-- Location: LABCELL_X80_Y29_N30
\inst33|opres[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst33|opres\(4) = ( \inst33|Equal0~0_combout\ & ( \inst33|opres\(4) ) ) # ( !\inst33|Equal0~0_combout\ & ( \inst33|opres[4]~63_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst33|ALT_INV_opres[4]~63_combout\,
	datad => \inst33|ALT_INV_opres\(4),
	dataf => \inst33|ALT_INV_Equal0~0_combout\,
	combout => \inst33|opres\(4));

-- Location: FF_X78_Y29_N47
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

-- Location: FF_X78_Y28_N28
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

-- Location: MLABCELL_X78_Y28_N27
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

-- Location: FF_X78_Y28_N29
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

-- Location: FF_X78_Y28_N59
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

-- Location: MLABCELL_X78_Y28_N6
\inst1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux14~0_combout\ = ( \inst34|valor_interno[0]~DUPLICATE_q\ & ( \inst34|valor_interno\(1) & ( (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(2) & \inst34|valor_interno\(3)))) ) ) ) # ( 
-- !\inst34|valor_interno[0]~DUPLICATE_q\ & ( \inst34|valor_interno\(1) & ( (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & ((!\inst34|valor_interno\(2)) # (!\inst34|valor_interno\(3))))) ) ) ) # ( \inst34|valor_interno[0]~DUPLICATE_q\ & ( 
-- !\inst34|valor_interno\(1) & ( (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(2) $ (\inst34|valor_interno\(3))))) ) ) ) # ( !\inst34|valor_interno[0]~DUPLICATE_q\ & ( !\inst34|valor_interno\(1) & ( 
-- (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(2) & !\inst34|valor_interno\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000100010001000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno\(4),
	datab => \inst34|ALT_INV_valor_interno\(5),
	datac => \inst34|ALT_INV_valor_interno\(2),
	datad => \inst34|ALT_INV_valor_interno\(3),
	datae => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(1),
	combout => \inst1|Mux14~0_combout\);

-- Location: FF_X78_Y27_N41
\inst8|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst1|Mux14~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(17));

-- Location: MLABCELL_X78_Y31_N39
\inst4|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal9~0_combout\ = (\inst8|valor_interno\(17) & (\inst4|Equal7~0_combout\ & \inst8|valor_interno\(21)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(17),
	datac => \inst4|ALT_INV_Equal7~0_combout\,
	datad => \inst8|ALT_INV_valor_interno\(21),
	combout => \inst4|Equal9~0_combout\);

-- Location: MLABCELL_X78_Y31_N51
\inst4|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~3_combout\ = ( \inst4|Equal0~2_combout\ & ( (\inst4|Equal0~1_combout\ & \inst4|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~1_combout\,
	datac => \inst4|ALT_INV_Equal0~0_combout\,
	dataf => \inst4|ALT_INV_Equal0~2_combout\,
	combout => \inst4|Equal0~3_combout\);

-- Location: MLABCELL_X78_Y31_N57
\inst4|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal1~1_combout\ = ( \inst4|Equal1~0_combout\ & ( \inst4|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal0~0_combout\,
	dataf => \inst4|ALT_INV_Equal1~0_combout\,
	combout => \inst4|Equal1~1_combout\);

-- Location: LABCELL_X77_Y31_N9
\inst4|selregw[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregw[0]~1_combout\ = ( \inst4|Equal2~2_combout\ & ( (!\inst4|Equal0~3_combout\ & \inst4|Equal1~1_combout\) ) ) # ( !\inst4|Equal2~2_combout\ & ( (!\inst4|Equal0~3_combout\ & ((!\inst4|Equal4~0_combout\) # (\inst4|Equal1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~3_combout\,
	datab => \inst4|ALT_INV_Equal1~1_combout\,
	datac => \inst4|ALT_INV_Equal4~0_combout\,
	dataf => \inst4|ALT_INV_Equal2~2_combout\,
	combout => \inst4|selregw[0]~1_combout\);

-- Location: LABCELL_X75_Y31_N3
\inst4|comb~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~14_combout\ = ( \inst4|selregr[3]~2_combout\ & ( (\inst4|Equal9~0_combout\ & !\inst4|selregw[0]~1_combout\) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( !\inst4|selregw[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_selregw[0]~1_combout\,
	dataf => \inst4|ALT_INV_selregr[3]~2_combout\,
	combout => \inst4|comb~14_combout\);

-- Location: LABCELL_X75_Y31_N0
\inst4|comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~13_combout\ = ( \inst4|selregr[3]~2_combout\ & ( (\inst4|Equal9~0_combout\ & \inst4|selregw[0]~1_combout\) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( \inst4|selregw[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_selregw[0]~1_combout\,
	dataf => \inst4|ALT_INV_selregr[3]~2_combout\,
	combout => \inst4|comb~13_combout\);

-- Location: LABCELL_X75_Y31_N48
\inst4|selregw[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregw\(0) = ( \inst4|selregw\(0) & ( !\inst4|comb~13_combout\ ) ) # ( !\inst4|selregw\(0) & ( (\inst4|comb~14_combout\ & !\inst4|comb~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~14_combout\,
	datad => \inst4|ALT_INV_comb~13_combout\,
	dataf => \inst4|ALT_INV_selregw\(0),
	combout => \inst4|selregw\(0));

-- Location: LABCELL_X77_Y28_N30
\inst21|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|selregw\(0) & ( (!\inst4|selregr\(2) & ((!\inst49|process_0~1_combout\) # ((!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & (((!\inst4|selregr\(0) & 
-- !\inst49|process_0~0_combout\)))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|selregw\(0) & ( (!\inst4|selregr\(2) & ((!\inst49|process_0~1_combout\) # ((!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & (((!\inst49|process_0~0_combout\) # 
-- (\inst4|selregr\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101101011011111100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(2),
	datab => \inst49|ALT_INV_process_0~1_combout\,
	datac => \inst4|ALT_INV_selregr\(0),
	datad => \inst49|ALT_INV_process_0~0_combout\,
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_selregw\(0),
	combout => \inst21|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X77_Y28_N32
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

-- Location: MLABCELL_X78_Y27_N15
\inst49|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst49|process_0~0_combout\ = ( \inst16|selregw\(0) & ( \inst107|selregw\(0) & ( (!\inst16|selregw\(2)) # (!\inst107|selregw\(2)) ) ) ) # ( !\inst16|selregw\(0) & ( \inst107|selregw\(0) & ( !\inst107|selregw\(2) ) ) ) # ( \inst16|selregw\(0) & ( 
-- !\inst107|selregw\(0) & ( !\inst16|selregw\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011111111000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_selregw\(2),
	datad => \inst107|ALT_INV_selregw\(2),
	datae => \inst16|ALT_INV_selregw\(0),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst49|process_0~0_combout\);

-- Location: LABCELL_X77_Y31_N6
\inst4|selregw[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregw[2]~0_combout\ = ( \inst4|Equal3~1_combout\ & ( (!\inst4|Equal0~3_combout\ & ((!\inst4|Equal2~2_combout\) # (\inst4|Equal1~1_combout\))) ) ) # ( !\inst4|Equal3~1_combout\ & ( (!\inst4|Equal0~3_combout\ & (((!\inst4|Equal2~2_combout\ & 
-- \inst4|Equal7~3_combout\)) # (\inst4|Equal1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010100010001000101010001010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~3_combout\,
	datab => \inst4|ALT_INV_Equal1~1_combout\,
	datac => \inst4|ALT_INV_Equal2~2_combout\,
	datad => \inst4|ALT_INV_Equal7~3_combout\,
	dataf => \inst4|ALT_INV_Equal3~1_combout\,
	combout => \inst4|selregw[2]~0_combout\);

-- Location: LABCELL_X75_Y31_N39
\inst4|comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~11_combout\ = ( !\inst4|selregw[2]~0_combout\ & ( (!\inst4|selregr[3]~2_combout\) # (\inst4|Equal9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_selregw[2]~0_combout\,
	combout => \inst4|comb~11_combout\);

-- Location: LABCELL_X75_Y31_N6
\inst4|comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~12_combout\ = ( \inst4|selregw[2]~0_combout\ & ( (!\inst4|selregr[3]~2_combout\) # (\inst4|Equal9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_selregw[2]~0_combout\,
	combout => \inst4|comb~12_combout\);

-- Location: LABCELL_X75_Y31_N9
\inst4|selregw[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregw\(2) = ( \inst4|selregw\(2) & ( !\inst4|comb~11_combout\ ) ) # ( !\inst4|selregw\(2) & ( (!\inst4|comb~11_combout\ & \inst4|comb~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~11_combout\,
	datad => \inst4|ALT_INV_comb~12_combout\,
	dataf => \inst4|ALT_INV_selregw\(2),
	combout => \inst4|selregw\(2));

-- Location: LABCELL_X77_Y28_N33
\inst21|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|selregw\(2) & ( (!\inst4|selregr\(2) & ((!\inst49|process_0~1_combout\) # ((!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & 
-- (((!\inst49|process_0~0_combout\ & !\inst4|selregr\(0))))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|selregw\(2) & ( (!\inst4|selregr\(2) & ((!\inst49|process_0~1_combout\) # ((!\inst4|selregr\(0))))) # (\inst4|selregr\(2) & 
-- (((!\inst49|process_0~0_combout\) # (\inst4|selregr\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010110111011111101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(2),
	datab => \inst49|ALT_INV_process_0~1_combout\,
	datac => \inst49|ALT_INV_process_0~0_combout\,
	datad => \inst4|ALT_INV_selregr\(0),
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_selregw\(2),
	combout => \inst21|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X77_Y28_N35
\inst16|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst21|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selregw\(2));

-- Location: LABCELL_X77_Y28_N45
\inst49|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst49|process_0~1_combout\ = ( \inst107|selregw\(0) & ( (!\inst16|selregw\(2) & \inst16|selregw\(0)) ) ) # ( !\inst107|selregw\(0) & ( ((!\inst16|selregw\(2) & \inst16|selregw\(0))) # (\inst107|selregw\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000010101111111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selregw\(2),
	datac => \inst16|ALT_INV_selregw\(0),
	datad => \inst107|ALT_INV_selregw\(2),
	dataf => \inst107|ALT_INV_selregw\(0),
	combout => \inst49|process_0~1_combout\);

-- Location: MLABCELL_X78_Y27_N54
inst47 : cyclonev_lcell_comb
-- Equation(s):
-- \inst47~combout\ = LCELL(( \inst49|process_0~2_combout\ & ( !\RELOJ~input_o\ & ( (!\inst4|selregr\(2) & ((!\inst4|selregr\(0)) # ((!\inst49|process_0~1_combout\)))) # (\inst4|selregr\(2) & (!\inst4|selregr\(0) & ((!\inst49|process_0~0_combout\)))) ) ) ) # 
-- ( !\inst49|process_0~2_combout\ & ( !\RELOJ~input_o\ & ( (!\inst4|selregr\(2) & ((!\inst4|selregr\(0)) # ((!\inst49|process_0~1_combout\)))) # (\inst4|selregr\(2) & (((!\inst49|process_0~0_combout\)) # (\inst4|selregr\(0)))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110110111001111011001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(2),
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst49|ALT_INV_process_0~1_combout\,
	datad => \inst49|ALT_INV_process_0~0_combout\,
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \ALT_INV_RELOJ~input_o\,
	combout => \inst47~combout\);

-- Location: FF_X78_Y28_N43
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

-- Location: LABCELL_X77_Y27_N27
\inst1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = ( \inst34|valor_interno[3]~DUPLICATE_q\ & ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( (!\inst34|valor_interno\(5) & ((!\inst34|valor_interno\(2) & (!\inst34|valor_interno[0]~DUPLICATE_q\ & \inst34|valor_interno\(1))) # 
-- (\inst34|valor_interno\(2) & ((!\inst34|valor_interno\(1)))))) ) ) ) # ( !\inst34|valor_interno[3]~DUPLICATE_q\ & ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( (\inst34|valor_interno\(2) & (!\inst34|valor_interno\(5) & 
-- (!\inst34|valor_interno[0]~DUPLICATE_q\ $ (\inst34|valor_interno\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[0]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno\(2),
	datac => \inst34|ALT_INV_valor_interno\(5),
	datad => \inst34|ALT_INV_valor_interno\(1),
	datae => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	combout => \inst1|Mux12~0_combout\);

-- Location: FF_X78_Y27_N47
\inst8|valor_interno[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst1|Mux12~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(19));

-- Location: MLABCELL_X78_Y31_N6
\inst4|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = ( !\inst8|valor_interno\(17) & ( (\inst8|valor_interno\(19) & (!\inst8|valor_interno\(16) & \inst8|valor_interno\(18))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(19),
	datab => \inst8|ALT_INV_valor_interno\(16),
	datac => \inst8|ALT_INV_valor_interno\(18),
	dataf => \inst8|ALT_INV_valor_interno\(17),
	combout => \inst4|Equal1~0_combout\);

-- Location: MLABCELL_X78_Y31_N24
\inst4|selregr[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[2]~0_combout\ = ( \inst4|Equal0~0_combout\ & ( \inst4|Equal2~0_combout\ & ( (((\inst4|Equal0~1_combout\ & \inst4|Equal0~2_combout\)) # (\inst4|Equal1~0_combout\)) # (\inst4|Equal2~1_combout\) ) ) ) # ( !\inst4|Equal0~0_combout\ & ( 
-- \inst4|Equal2~0_combout\ & ( \inst4|Equal2~1_combout\ ) ) ) # ( \inst4|Equal0~0_combout\ & ( !\inst4|Equal2~0_combout\ & ( ((\inst4|Equal0~1_combout\ & \inst4|Equal0~2_combout\)) # (\inst4|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011111101010101010101010111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal2~1_combout\,
	datab => \inst4|ALT_INV_Equal1~0_combout\,
	datac => \inst4|ALT_INV_Equal0~1_combout\,
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	datae => \inst4|ALT_INV_Equal0~0_combout\,
	dataf => \inst4|ALT_INV_Equal2~0_combout\,
	combout => \inst4|selregr[2]~0_combout\);

-- Location: LABCELL_X77_Y31_N45
\inst4|selregr[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[2]~6_combout\ = ( \inst4|selsrc[1]~0_combout\ & ( (!\inst4|selregr[2]~0_combout\ & !\inst4|selregr[0]~4_combout\) ) ) # ( !\inst4|selsrc[1]~0_combout\ & ( (!\inst4|selregr[2]~0_combout\ & (!\inst4|selregr[0]~4_combout\ & 
-- \inst4|Equal7~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_selregr[2]~0_combout\,
	datac => \inst4|ALT_INV_selregr[0]~4_combout\,
	datad => \inst4|ALT_INV_Equal7~3_combout\,
	dataf => \inst4|ALT_INV_selsrc[1]~0_combout\,
	combout => \inst4|selregr[2]~6_combout\);

-- Location: LABCELL_X75_Y31_N27
\inst4|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~2_combout\ = ( \inst4|Equal9~0_combout\ & ( !\inst4|selregr[2]~6_combout\ ) ) # ( !\inst4|Equal9~0_combout\ & ( (!\inst4|selregr[2]~6_combout\ & !\inst4|selregr[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[2]~6_combout\,
	datac => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_Equal9~0_combout\,
	combout => \inst4|comb~2_combout\);

-- Location: LABCELL_X75_Y31_N54
\inst4|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~3_combout\ = ( \inst4|selregr[2]~6_combout\ & ( (!\inst4|selregr[3]~2_combout\) # (\inst4|Equal9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal9~0_combout\,
	datab => \inst4|ALT_INV_selregr[3]~2_combout\,
	dataf => \inst4|ALT_INV_selregr[2]~6_combout\,
	combout => \inst4|comb~3_combout\);

-- Location: LABCELL_X75_Y31_N24
\inst4|selregr[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr\(2) = ( \inst4|selregr\(2) & ( !\inst4|comb~2_combout\ ) ) # ( !\inst4|selregr\(2) & ( (!\inst4|comb~2_combout\ & \inst4|comb~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_comb~2_combout\,
	datad => \inst4|ALT_INV_comb~3_combout\,
	dataf => \inst4|ALT_INV_selregr\(2),
	combout => \inst4|selregr\(2));

-- Location: MLABCELL_X78_Y27_N42
inst3 : cyclonev_lcell_comb
-- Equation(s):
-- \inst3~combout\ = LCELL(( \inst49|process_0~2_combout\ & ( \RELOJ~input_o\ & ( (!\inst4|selregr\(2) & ((!\inst4|selregr\(0)) # ((!\inst49|process_0~1_combout\)))) # (\inst4|selregr\(2) & (!\inst4|selregr\(0) & ((!\inst49|process_0~0_combout\)))) ) ) ) # ( 
-- !\inst49|process_0~2_combout\ & ( \RELOJ~input_o\ & ( (!\inst4|selregr\(2) & ((!\inst4|selregr\(0)) # ((!\inst49|process_0~1_combout\)))) # (\inst4|selregr\(2) & (((!\inst49|process_0~0_combout\)) # (\inst4|selregr\(0)))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101101110011110110010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(2),
	datab => \inst4|ALT_INV_selregr\(0),
	datac => \inst49|ALT_INV_process_0~1_combout\,
	datad => \inst49|ALT_INV_process_0~0_combout\,
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \ALT_INV_RELOJ~input_o\,
	combout => \inst3~combout\);

-- Location: LABCELL_X77_Y27_N18
\inst1|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux15~0_combout\ = ( !\inst34|valor_interno[4]~DUPLICATE_q\ & ( \inst34|valor_interno\(1) & ( (!\inst34|valor_interno\(5) & (((!\inst34|valor_interno\(2) & \inst34|valor_interno\(0))) # (\inst34|valor_interno[3]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst34|valor_interno[4]~DUPLICATE_q\ & ( !\inst34|valor_interno\(1) & ( (!\inst34|valor_interno\(5) & ((!\inst34|valor_interno[3]~DUPLICATE_q\ & ((\inst34|valor_interno\(0)))) # (\inst34|valor_interno[3]~DUPLICATE_q\ & (!\inst34|valor_interno\(2))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011100000000000000000000001010000110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_valor_interno[3]~DUPLICATE_q\,
	datab => \inst34|ALT_INV_valor_interno\(2),
	datac => \inst34|ALT_INV_valor_interno\(5),
	datad => \inst34|ALT_INV_valor_interno\(0),
	datae => \inst34|ALT_INV_valor_interno[4]~DUPLICATE_q\,
	dataf => \inst34|ALT_INV_valor_interno\(1),
	combout => \inst1|Mux15~0_combout\);

-- Location: FF_X78_Y27_N44
\inst8|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst1|Mux15~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(16));

-- Location: LABCELL_X79_Y31_N15
\inst4|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal2~1_combout\ = (!\inst8|valor_interno\(16) & (!\inst8|valor_interno\(20) & !\inst8|valor_interno\(22)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_valor_interno\(16),
	datac => \inst8|ALT_INV_valor_interno\(20),
	datad => \inst8|ALT_INV_valor_interno\(22),
	combout => \inst4|Equal2~1_combout\);

-- Location: MLABCELL_X78_Y31_N30
\inst4|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal2~2_combout\ = ( \inst4|Equal2~0_combout\ & ( \inst4|Equal2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Equal2~1_combout\,
	dataf => \inst4|ALT_INV_Equal2~0_combout\,
	combout => \inst4|Equal2~2_combout\);

-- Location: LABCELL_X77_Y31_N21
\inst4|selregr[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr[0]~5_combout\ = ( \inst4|Equal5~0_combout\ & ( !\inst4|selop[1]~0_combout\ ) ) # ( !\inst4|Equal5~0_combout\ & ( (!\inst4|selop[1]~0_combout\ & (((\inst4|selregr[0]~3_combout\) # (\inst4|selregr[0]~4_combout\)) # 
-- (\inst4|Equal2~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110000011100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal2~2_combout\,
	datab => \inst4|ALT_INV_selregr[0]~4_combout\,
	datac => \inst4|ALT_INV_selop[1]~0_combout\,
	datad => \inst4|ALT_INV_selregr[0]~3_combout\,
	dataf => \inst4|ALT_INV_Equal5~0_combout\,
	combout => \inst4|selregr[0]~5_combout\);

-- Location: LABCELL_X77_Y31_N15
\inst4|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~0_combout\ = ( \inst4|selregr[3]~2_combout\ & ( (\inst4|selregr[0]~5_combout\ & \inst4|Equal9~0_combout\) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( \inst4|selregr[0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr[0]~5_combout\,
	datad => \inst4|ALT_INV_Equal9~0_combout\,
	dataf => \inst4|ALT_INV_selregr[3]~2_combout\,
	combout => \inst4|comb~0_combout\);

-- Location: LABCELL_X77_Y31_N18
\inst4|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|comb~1_combout\ = ( \inst4|selregr[3]~2_combout\ & ( (!\inst4|selregr[0]~5_combout\ & \inst4|Equal9~0_combout\) ) ) # ( !\inst4|selregr[3]~2_combout\ & ( !\inst4|selregr[0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_selregr[0]~5_combout\,
	datad => \inst4|ALT_INV_Equal9~0_combout\,
	dataf => \inst4|ALT_INV_selregr[3]~2_combout\,
	combout => \inst4|comb~1_combout\);

-- Location: LABCELL_X77_Y31_N12
\inst4|selregr[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selregr\(0) = ( \inst4|selregr\(0) & ( !\inst4|comb~0_combout\ ) ) # ( !\inst4|selregr\(0) & ( (!\inst4|comb~0_combout\ & \inst4|comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_comb~0_combout\,
	datac => \inst4|ALT_INV_comb~1_combout\,
	dataf => \inst4|ALT_INV_selregr\(0),
	combout => \inst4|selregr\(0));

-- Location: LABCELL_X77_Y29_N51
\inst4|selfalgs[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(2) = ( \inst4|selfalgs\(2) & ( !\inst4|comb~6_combout\ ) ) # ( !\inst4|selfalgs\(2) & ( (\inst4|selfalgs[3]~1_combout\ & !\inst4|comb~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selfalgs[3]~1_combout\,
	datac => \inst4|ALT_INV_comb~6_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(2),
	combout => \inst4|selfalgs\(2));

-- Location: MLABCELL_X78_Y29_N48
\inst29|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst49|process_0~2_combout\ & ( \inst4|selfalgs\(2) & ( (!\inst4|selregr\(0) & ((!\inst49|process_0~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst4|selregr\(2) & 
-- !\inst49|process_0~1_combout\)))) ) ) ) # ( !\inst49|process_0~2_combout\ & ( \inst4|selfalgs\(2) & ( (!\inst4|selregr\(0) & ((!\inst49|process_0~0_combout\) # ((!\inst4|selregr\(2))))) # (\inst4|selregr\(0) & (((!\inst49|process_0~1_combout\) # 
-- (\inst4|selregr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101101011011111100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_selregr\(0),
	datab => \inst49|ALT_INV_process_0~0_combout\,
	datac => \inst4|ALT_INV_selregr\(2),
	datad => \inst49|ALT_INV_process_0~1_combout\,
	datae => \inst49|ALT_INV_process_0~2_combout\,
	dataf => \inst4|ALT_INV_selfalgs\(2),
	combout => \inst29|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X78_Y29_N50
\inst16|selfalgs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst29|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(2));

-- Location: MLABCELL_X78_Y29_N21
\inst|ni~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ni~0_combout\ = ( \inst16|selfalgs\(3) & ( (!\inst16|selfalgs\(2) & (\inst16|selfalgs\(0) & \inst16|selfalgs\(1))) # (\inst16|selfalgs\(2) & (!\inst16|selfalgs\(0) & !\inst16|selfalgs\(1))) ) ) # ( !\inst16|selfalgs\(3) & ( (!\inst16|selfalgs\(2) & 
-- ((\inst16|selfalgs\(1)) # (\inst16|selfalgs\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101001010000000010100101000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(2),
	datac => \inst16|ALT_INV_selfalgs\(0),
	datad => \inst16|ALT_INV_selfalgs\(1),
	dataf => \inst16|ALT_INV_selfalgs\(3),
	combout => \inst|ni~0_combout\);

-- Location: MLABCELL_X78_Y29_N24
\inst|ni\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ni~combout\ = ( \inst33|opres\(15) & ( (\inst|ni~0_combout\) # (\inst|ni~combout\) ) ) # ( !\inst33|opres\(15) & ( (\inst|ni~combout\ & !\inst|ni~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_ni~combout\,
	datac => \inst|ALT_INV_ni~0_combout\,
	dataf => \inst33|ALT_INV_opres\(15),
	combout => \inst|ni~combout\);

-- Location: FF_X79_Y29_N22
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

-- Location: FF_X78_Y29_N26
\inst102|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	asdata => \inst|zi~combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|valor_interno~q\);

-- Location: LABCELL_X75_Y29_N24
\inst103|valor_interno~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst103|valor_interno~feeder_combout\ = ( \inst|vi~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_vi~combout\,
	combout => \inst103|valor_interno~feeder_combout\);

-- Location: FF_X75_Y29_N25
\inst103|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst103|valor_interno~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst103|valor_interno~q\);

-- Location: FF_X79_Y28_N17
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

-- Location: MLABCELL_X78_Y29_N18
\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = ( !\inst16|selfalgs\(3) & ( (!\inst16|selfalgs\(2) & (!\inst16|selfalgs\(0) & \inst16|selfalgs\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(2),
	datac => \inst16|ALT_INV_selfalgs\(0),
	datad => \inst16|ALT_INV_selfalgs\(1),
	dataf => \inst16|ALT_INV_selfalgs\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LABCELL_X80_Y27_N27
\inst|hi\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|hi~combout\ = ( \inst|Equal0~0_combout\ & ( \inst33|opres\(8) ) ) # ( !\inst|Equal0~0_combout\ & ( \inst|hi~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|ALT_INV_opres\(8),
	datad => \inst|ALT_INV_hi~combout\,
	dataf => \inst|ALT_INV_Equal0~0_combout\,
	combout => \inst|hi~combout\);

-- Location: LABCELL_X81_Y27_N39
\inst105|valor_interno~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst105|valor_interno~feeder_combout\ = \inst|hi~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_hi~combout\,
	combout => \inst105|valor_interno~feeder_combout\);

-- Location: FF_X81_Y27_N40
\inst105|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputCLKENA0_outclk\,
	d => \inst105|valor_interno~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst105|valor_interno~q\);

-- Location: MLABCELL_X78_Y29_N0
\inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = ( !\inst16|selfalgs\(0) & ( (\inst16|selfalgs\(2) & (!\inst16|selfalgs\(3) & \inst16|selfalgs\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(2),
	datac => \inst16|ALT_INV_selfalgs\(3),
	datad => \inst16|ALT_INV_selfalgs\(1),
	dataf => \inst16|ALT_INV_selfalgs\(0),
	combout => \inst|Equal0~1_combout\);

-- Location: MLABCELL_X78_Y29_N6
\inst|ii~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ii~0_combout\ = ( \inst16|selfalgs\(3) & ( (!\inst16|selfalgs\(1) & (\inst16|selfalgs\(0) & !\inst16|selfalgs\(2))) ) ) # ( !\inst16|selfalgs\(3) & ( (\inst16|selfalgs\(1) & (!\inst16|selfalgs\(0) & \inst16|selfalgs\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_selfalgs\(1),
	datab => \inst16|ALT_INV_selfalgs\(0),
	datac => \inst16|ALT_INV_selfalgs\(2),
	dataf => \inst16|ALT_INV_selfalgs\(3),
	combout => \inst|ii~0_combout\);

-- Location: MLABCELL_X78_Y29_N3
\inst|ii\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ii~combout\ = ( \inst|ii~combout\ & ( (!\inst|Equal0~1_combout\) # (!\inst|ii~0_combout\) ) ) # ( !\inst|ii~combout\ & ( (!\inst|Equal0~1_combout\ & \inst|ii~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Equal0~1_combout\,
	datac => \inst|ALT_INV_ii~0_combout\,
	dataf => \inst|ALT_INV_ii~combout\,
	combout => \inst|ii~combout\);

-- Location: LABCELL_X73_Y25_N48
\inst106|valor_interno~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst106|valor_interno~feeder_combout\ = \inst|ii~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ii~combout\,
	combout => \inst106|valor_interno~feeder_combout\);

-- Location: FF_X73_Y25_N49
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

-- Location: FF_X80_Y30_N32
\inst700666|ACCA|valor_interno[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|ACCA|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno[9]~DUPLICATE_q\);

-- Location: FF_X80_Y26_N40
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(6));

-- Location: FF_X82_Y28_N43
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(2));

-- Location: LABCELL_X75_Y30_N15
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

-- Location: LABCELL_X75_Y28_N51
\inst700666|inst1000|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~2_combout\ = (\inst107|selregw\(0) & \inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst107|ALT_INV_selregw\(0),
	datad => \inst107|ALT_INV_selregw\(2),
	combout => \inst700666|inst1000|Equal1~2_combout\);

-- Location: FF_X75_Y30_N16
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(15));

-- Location: LABCELL_X81_Y30_N12
\inst700666|AUX|valor_interno[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[14]~feeder_combout\ = ( \inst24|valor_interno\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(14),
	combout => \inst700666|AUX|valor_interno[14]~feeder_combout\);

-- Location: FF_X81_Y30_N13
\inst700666|AUX|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[14]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(14));

-- Location: FF_X81_Y29_N19
\inst700666|AUX|valor_interno[13]\ : dffeas
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(13));

-- Location: FF_X77_Y31_N4
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(12));

-- Location: FF_X75_Y28_N56
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(11));

-- Location: FF_X77_Y31_N58
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(10));

-- Location: LABCELL_X81_Y30_N33
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

-- Location: FF_X81_Y30_N34
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(9));

-- Location: LABCELL_X81_Y30_N27
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

-- Location: FF_X81_Y30_N28
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(8));

-- Location: FF_X81_Y30_N22
\inst700666|AUX|valor_interno[7]\ : dffeas
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(7));

-- Location: LABCELL_X75_Y30_N33
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

-- Location: FF_X75_Y30_N34
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(6));

-- Location: MLABCELL_X78_Y30_N9
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

-- Location: FF_X78_Y30_N10
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(5));

-- Location: MLABCELL_X78_Y30_N39
\inst700666|AUX|valor_interno[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[4]~feeder_combout\ = ( \inst24|valor_interno\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(4),
	combout => \inst700666|AUX|valor_interno[4]~feeder_combout\);

-- Location: FF_X78_Y30_N40
\inst700666|AUX|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(4));

-- Location: FF_X75_Y28_N1
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(3));

-- Location: FF_X81_Y29_N34
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(2));

-- Location: LABCELL_X75_Y30_N39
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

-- Location: FF_X75_Y30_N40
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(1));

-- Location: MLABCELL_X78_Y30_N36
\inst700666|AUX|valor_interno[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[0]~feeder_combout\ = ( \inst24|valor_interno\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst24|ALT_INV_valor_interno\(0),
	combout => \inst700666|AUX|valor_interno[0]~feeder_combout\);

-- Location: FF_X78_Y30_N37
\inst700666|AUX|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputCLKENA0_outclk\,
	d => \inst700666|AUX|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputCLKENA0_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(0));

-- Location: LABCELL_X18_Y52_N3
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


