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

-- DATE "01/26/2021 00:40:08"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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
	IX_D : OUT std_logic_vector(15 DOWNTO 0);
	IY_D : OUT std_logic_vector(15 DOWNTO 0);
	SP_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipeline;

-- Design Ports Information
-- n	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[15]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[14]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[13]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[12]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[11]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[10]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[15]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[14]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[13]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[12]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[11]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[8]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[15]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[14]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[13]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[12]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[11]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[10]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[8]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[7]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[5]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[15]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[14]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[13]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[12]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[11]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[10]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[9]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[8]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[15]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[14]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[13]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[12]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[11]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[10]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[9]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[8]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[6]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_IX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IY_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst33|opres[16]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst47~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOJ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \n~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \h~output_o\ : std_logic;
SIGNAL \i~output_o\ : std_logic;
SIGNAL \ACCA_D[15]~output_o\ : std_logic;
SIGNAL \ACCA_D[14]~output_o\ : std_logic;
SIGNAL \ACCA_D[13]~output_o\ : std_logic;
SIGNAL \ACCA_D[12]~output_o\ : std_logic;
SIGNAL \ACCA_D[11]~output_o\ : std_logic;
SIGNAL \ACCA_D[10]~output_o\ : std_logic;
SIGNAL \ACCA_D[9]~output_o\ : std_logic;
SIGNAL \ACCA_D[8]~output_o\ : std_logic;
SIGNAL \ACCA_D[7]~output_o\ : std_logic;
SIGNAL \ACCA_D[6]~output_o\ : std_logic;
SIGNAL \ACCA_D[5]~output_o\ : std_logic;
SIGNAL \ACCA_D[4]~output_o\ : std_logic;
SIGNAL \ACCA_D[3]~output_o\ : std_logic;
SIGNAL \ACCA_D[2]~output_o\ : std_logic;
SIGNAL \ACCA_D[1]~output_o\ : std_logic;
SIGNAL \ACCA_D[0]~output_o\ : std_logic;
SIGNAL \ACCB_D[15]~output_o\ : std_logic;
SIGNAL \ACCB_D[14]~output_o\ : std_logic;
SIGNAL \ACCB_D[13]~output_o\ : std_logic;
SIGNAL \ACCB_D[12]~output_o\ : std_logic;
SIGNAL \ACCB_D[11]~output_o\ : std_logic;
SIGNAL \ACCB_D[10]~output_o\ : std_logic;
SIGNAL \ACCB_D[9]~output_o\ : std_logic;
SIGNAL \ACCB_D[8]~output_o\ : std_logic;
SIGNAL \ACCB_D[7]~output_o\ : std_logic;
SIGNAL \ACCB_D[6]~output_o\ : std_logic;
SIGNAL \ACCB_D[5]~output_o\ : std_logic;
SIGNAL \ACCB_D[4]~output_o\ : std_logic;
SIGNAL \ACCB_D[3]~output_o\ : std_logic;
SIGNAL \ACCB_D[2]~output_o\ : std_logic;
SIGNAL \ACCB_D[1]~output_o\ : std_logic;
SIGNAL \ACCB_D[0]~output_o\ : std_logic;
SIGNAL \AUX_D[15]~output_o\ : std_logic;
SIGNAL \AUX_D[14]~output_o\ : std_logic;
SIGNAL \AUX_D[13]~output_o\ : std_logic;
SIGNAL \AUX_D[12]~output_o\ : std_logic;
SIGNAL \AUX_D[11]~output_o\ : std_logic;
SIGNAL \AUX_D[10]~output_o\ : std_logic;
SIGNAL \AUX_D[9]~output_o\ : std_logic;
SIGNAL \AUX_D[8]~output_o\ : std_logic;
SIGNAL \AUX_D[7]~output_o\ : std_logic;
SIGNAL \AUX_D[6]~output_o\ : std_logic;
SIGNAL \AUX_D[5]~output_o\ : std_logic;
SIGNAL \AUX_D[4]~output_o\ : std_logic;
SIGNAL \AUX_D[3]~output_o\ : std_logic;
SIGNAL \AUX_D[2]~output_o\ : std_logic;
SIGNAL \AUX_D[1]~output_o\ : std_logic;
SIGNAL \AUX_D[0]~output_o\ : std_logic;
SIGNAL \IX_D[15]~output_o\ : std_logic;
SIGNAL \IX_D[14]~output_o\ : std_logic;
SIGNAL \IX_D[13]~output_o\ : std_logic;
SIGNAL \IX_D[12]~output_o\ : std_logic;
SIGNAL \IX_D[11]~output_o\ : std_logic;
SIGNAL \IX_D[10]~output_o\ : std_logic;
SIGNAL \IX_D[9]~output_o\ : std_logic;
SIGNAL \IX_D[8]~output_o\ : std_logic;
SIGNAL \IX_D[7]~output_o\ : std_logic;
SIGNAL \IX_D[6]~output_o\ : std_logic;
SIGNAL \IX_D[5]~output_o\ : std_logic;
SIGNAL \IX_D[4]~output_o\ : std_logic;
SIGNAL \IX_D[3]~output_o\ : std_logic;
SIGNAL \IX_D[2]~output_o\ : std_logic;
SIGNAL \IX_D[1]~output_o\ : std_logic;
SIGNAL \IX_D[0]~output_o\ : std_logic;
SIGNAL \IY_D[15]~output_o\ : std_logic;
SIGNAL \IY_D[14]~output_o\ : std_logic;
SIGNAL \IY_D[13]~output_o\ : std_logic;
SIGNAL \IY_D[12]~output_o\ : std_logic;
SIGNAL \IY_D[11]~output_o\ : std_logic;
SIGNAL \IY_D[10]~output_o\ : std_logic;
SIGNAL \IY_D[9]~output_o\ : std_logic;
SIGNAL \IY_D[8]~output_o\ : std_logic;
SIGNAL \IY_D[7]~output_o\ : std_logic;
SIGNAL \IY_D[6]~output_o\ : std_logic;
SIGNAL \IY_D[5]~output_o\ : std_logic;
SIGNAL \IY_D[4]~output_o\ : std_logic;
SIGNAL \IY_D[3]~output_o\ : std_logic;
SIGNAL \IY_D[2]~output_o\ : std_logic;
SIGNAL \IY_D[1]~output_o\ : std_logic;
SIGNAL \IY_D[0]~output_o\ : std_logic;
SIGNAL \SP_D[15]~output_o\ : std_logic;
SIGNAL \SP_D[14]~output_o\ : std_logic;
SIGNAL \SP_D[13]~output_o\ : std_logic;
SIGNAL \SP_D[12]~output_o\ : std_logic;
SIGNAL \SP_D[11]~output_o\ : std_logic;
SIGNAL \SP_D[10]~output_o\ : std_logic;
SIGNAL \SP_D[9]~output_o\ : std_logic;
SIGNAL \SP_D[8]~output_o\ : std_logic;
SIGNAL \SP_D[7]~output_o\ : std_logic;
SIGNAL \SP_D[6]~output_o\ : std_logic;
SIGNAL \SP_D[5]~output_o\ : std_logic;
SIGNAL \SP_D[4]~output_o\ : std_logic;
SIGNAL \SP_D[3]~output_o\ : std_logic;
SIGNAL \SP_D[2]~output_o\ : std_logic;
SIGNAL \SP_D[1]~output_o\ : std_logic;
SIGNAL \SP_D[0]~output_o\ : std_logic;
SIGNAL \RELOJ~input_o\ : std_logic;
SIGNAL \RELOJ~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst34|valor_interno[4]~12\ : std_logic;
SIGNAL \inst34|valor_interno[5]~13_combout\ : std_logic;
SIGNAL \inst1|Mux31~0_combout\ : std_logic;
SIGNAL \inst1|Mux31~2_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~1_combout\ : std_logic;
SIGNAL \inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst1|Mux14~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~3_combout\ : std_logic;
SIGNAL \inst4|Equal0~4_combout\ : std_logic;
SIGNAL \inst4|sels1~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|Equal1~1_combout\ : std_logic;
SIGNAL \inst4|selsrc[1]~0_combout\ : std_logic;
SIGNAL \inst4|comb~21_combout\ : std_logic;
SIGNAL \inst4|comb~22_combout\ : std_logic;
SIGNAL \inst700|valor_interno[1]~0_combout\ : std_logic;
SIGNAL \inst4|selsrc[0]~1_combout\ : std_logic;
SIGNAL \inst4|selsrc[0]~2_combout\ : std_logic;
SIGNAL \inst4|selsrc[0]~3_combout\ : std_logic;
SIGNAL \inst4|selsrc[0]~4_combout\ : std_logic;
SIGNAL \inst4|comb~23_combout\ : std_logic;
SIGNAL \inst4|comb~24_combout\ : std_logic;
SIGNAL \inst700666|inst|D1~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[1]~1_combout\ : std_logic;
SIGNAL \inst4|comb~16_combout\ : std_logic;
SIGNAL \inst4|comb~17_combout\ : std_logic;
SIGNAL \inst4|comb~18_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D1~1_combout\ : std_logic;
SIGNAL \inst202|Mux10~0_combout\ : std_logic;
SIGNAL \inst4|comb~4_combout\ : std_logic;
SIGNAL \inst4|Equal7~0_combout\ : std_logic;
SIGNAL \inst4|comb~29_combout\ : std_logic;
SIGNAL \inst4|comb~28_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[0]~0_combout\ : std_logic;
SIGNAL \inst49|process_0~2_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[5]~1_combout\ : std_logic;
SIGNAL \inst4|comb~31_combout\ : std_logic;
SIGNAL \inst4|comb~27_combout\ : std_logic;
SIGNAL \inst4|sr~combout\ : std_logic;
SIGNAL \inst45|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[0]~6_combout\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst32|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst32|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux11~0_combout\ : std_logic;
SIGNAL \inst11|Add0~1\ : std_logic;
SIGNAL \inst11|Add0~3\ : std_logic;
SIGNAL \inst11|Add0~5\ : std_logic;
SIGNAL \inst11|Add0~7\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst14|valor_interno[10]~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux8~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux7~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux1~0_combout\ : std_logic;
SIGNAL \inst20|Mux16~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst202|Mux17~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux2~0_combout\ : std_logic;
SIGNAL \inst202|Mux3~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux4~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux5~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux6~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux9~0_combout\ : std_logic;
SIGNAL \inst202|Mux12~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux13~0_combout\ : std_logic;
SIGNAL \inst202|Mux14~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst1|Mux31~1_combout\ : std_logic;
SIGNAL \inst202|Mux31~0_combout\ : std_logic;
SIGNAL \inst202|Mux31~1_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux15~0_combout\ : std_logic;
SIGNAL \inst4|comb~12_combout\ : std_logic;
SIGNAL \inst4|comb~11_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux0~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst202|Mux16~0_combout\ : std_logic;
SIGNAL \inst33|Add0~31\ : std_logic;
SIGNAL \inst33|Add0~33\ : std_logic;
SIGNAL \inst33|Add0~34_combout\ : std_logic;
SIGNAL \inst33|opres[16]~33_combout\ : std_logic;
SIGNAL \inst33|opres[16]~2_combout\ : std_logic;
SIGNAL \inst33|opres[16]~2clkctrl_outclk\ : std_logic;
SIGNAL \inst4|comb~6_combout\ : std_logic;
SIGNAL \inst4|comb~7_combout\ : std_logic;
SIGNAL \inst4|selregr[0]~4_combout\ : std_logic;
SIGNAL \inst4|comb~5_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst4|comb~13_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst|ci~4_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst|ci~6_combout\ : std_logic;
SIGNAL \inst|ci~5_combout\ : std_logic;
SIGNAL \inst|ci~combout\ : std_logic;
SIGNAL \inst4|selc~combout\ : std_logic;
SIGNAL \inst27|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst16|selc~q\ : std_logic;
SIGNAL \inst4|comb~30_combout\ : std_logic;
SIGNAL \inst4|cadj~combout\ : std_logic;
SIGNAL \inst28|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst16|cadj~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst33|Add0~1_cout\ : std_logic;
SIGNAL \inst33|Add0~3\ : std_logic;
SIGNAL \inst33|Add0~5\ : std_logic;
SIGNAL \inst33|Add0~7\ : std_logic;
SIGNAL \inst33|Add0~9\ : std_logic;
SIGNAL \inst33|Add0~11\ : std_logic;
SIGNAL \inst33|Add0~13\ : std_logic;
SIGNAL \inst33|Add0~15\ : std_logic;
SIGNAL \inst33|Add0~17\ : std_logic;
SIGNAL \inst33|Add0~19\ : std_logic;
SIGNAL \inst33|Add0~21\ : std_logic;
SIGNAL \inst33|Add0~23\ : std_logic;
SIGNAL \inst33|Add0~25\ : std_logic;
SIGNAL \inst33|Add0~27\ : std_logic;
SIGNAL \inst33|Add0~29\ : std_logic;
SIGNAL \inst33|Add0~30_combout\ : std_logic;
SIGNAL \inst33|opres[14]~29_combout\ : std_logic;
SIGNAL \inst33|opres[14]~30_combout\ : std_logic;
SIGNAL \inst20|Mux17~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst202|Mux18~0_combout\ : std_logic;
SIGNAL \inst33|opres[13]~27_combout\ : std_logic;
SIGNAL \inst33|Add0~28_combout\ : std_logic;
SIGNAL \inst33|opres[13]~28_combout\ : std_logic;
SIGNAL \inst20|Mux18~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst202|Mux19~0_combout\ : std_logic;
SIGNAL \inst33|opres[12]~25_combout\ : std_logic;
SIGNAL \inst33|Add0~26_combout\ : std_logic;
SIGNAL \inst33|opres[12]~26_combout\ : std_logic;
SIGNAL \inst20|Mux19~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst202|Mux20~0_combout\ : std_logic;
SIGNAL \inst33|opres[11]~23_combout\ : std_logic;
SIGNAL \inst33|Add0~24_combout\ : std_logic;
SIGNAL \inst33|opres[11]~24_combout\ : std_logic;
SIGNAL \inst20|Mux20~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst202|Mux21~0_combout\ : std_logic;
SIGNAL \inst33|opres[10]~21_combout\ : std_logic;
SIGNAL \inst33|Add0~22_combout\ : std_logic;
SIGNAL \inst33|opres[10]~22_combout\ : std_logic;
SIGNAL \inst20|Mux21~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst202|Mux22~0_combout\ : std_logic;
SIGNAL \inst33|Add0~20_combout\ : std_logic;
SIGNAL \inst33|opres[9]~19_combout\ : std_logic;
SIGNAL \inst33|opres[9]~20_combout\ : std_logic;
SIGNAL \inst20|Mux22~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst202|Mux23~0_combout\ : std_logic;
SIGNAL \inst33|opres[8]~17_combout\ : std_logic;
SIGNAL \inst33|Add0~18_combout\ : std_logic;
SIGNAL \inst33|opres[8]~18_combout\ : std_logic;
SIGNAL \inst20|Mux23~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst202|Mux24~0_combout\ : std_logic;
SIGNAL \inst33|opres[7]~15_combout\ : std_logic;
SIGNAL \inst33|Add0~16_combout\ : std_logic;
SIGNAL \inst33|opres[7]~16_combout\ : std_logic;
SIGNAL \inst20|Mux24~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst202|Mux25~0_combout\ : std_logic;
SIGNAL \inst33|Add0~14_combout\ : std_logic;
SIGNAL \inst33|opres[6]~13_combout\ : std_logic;
SIGNAL \inst33|opres[6]~14_combout\ : std_logic;
SIGNAL \inst20|Mux25~0_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst202|Mux27~2_combout\ : std_logic;
SIGNAL \inst202|Mux27~3_combout\ : std_logic;
SIGNAL \inst33|Add0~10_combout\ : std_logic;
SIGNAL \inst33|opres[4]~9_combout\ : std_logic;
SIGNAL \inst33|opres[4]~10_combout\ : std_logic;
SIGNAL \inst20|Mux27~0_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[4]~2_combout\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst202|Mux28~2_combout\ : std_logic;
SIGNAL \inst202|Mux28~3_combout\ : std_logic;
SIGNAL \inst33|Add0~8_combout\ : std_logic;
SIGNAL \inst33|opres[3]~7_combout\ : std_logic;
SIGNAL \inst33|opres[3]~8_combout\ : std_logic;
SIGNAL \inst20|Mux28~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[3]~3_combout\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst202|Mux29~2_combout\ : std_logic;
SIGNAL \inst202|Mux29~3_combout\ : std_logic;
SIGNAL \inst33|Add0~6_combout\ : std_logic;
SIGNAL \inst33|opres[2]~5_combout\ : std_logic;
SIGNAL \inst33|opres[2]~6_combout\ : std_logic;
SIGNAL \inst20|Mux29~0_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[2]~4_combout\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst1|Mux30~0_combout\ : std_logic;
SIGNAL \inst1|Mux30~1_combout\ : std_logic;
SIGNAL \inst202|Mux30~0_combout\ : std_logic;
SIGNAL \inst202|Mux30~1_combout\ : std_logic;
SIGNAL \inst33|Add0~4_combout\ : std_logic;
SIGNAL \inst33|opres[1]~3_combout\ : std_logic;
SIGNAL \inst33|opres[1]~4_combout\ : std_logic;
SIGNAL \inst20|Mux30~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[1]~5_combout\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst41|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst202|Mux26~2_combout\ : std_logic;
SIGNAL \inst202|Mux26~3_combout\ : std_logic;
SIGNAL \inst33|opres[5]~11_combout\ : std_logic;
SIGNAL \inst33|Add0~12_combout\ : std_logic;
SIGNAL \inst33|opres[5]~12_combout\ : std_logic;
SIGNAL \inst20|Mux26~0_combout\ : std_logic;
SIGNAL \inst4|selregr[3]~5_combout\ : std_logic;
SIGNAL \inst4|vf~combout\ : std_logic;
SIGNAL \inst16|vf~q\ : std_logic;
SIGNAL \inst100|valor_interno~q\ : std_logic;
SIGNAL \inst1|Mux15~1_combout\ : std_logic;
SIGNAL \inst4|Equal9~0_combout\ : std_logic;
SIGNAL \inst4|Equal9~1_combout\ : std_logic;
SIGNAL \inst4|comb~15_combout\ : std_logic;
SIGNAL \inst4|comb~14_combout\ : std_logic;
SIGNAL \inst30|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst33|opres[0]~31_combout\ : std_logic;
SIGNAL \inst33|Add0~2_combout\ : std_logic;
SIGNAL \inst33|opres[0]~32_combout\ : std_logic;
SIGNAL \inst20|Mux31~0_combout\ : std_logic;
SIGNAL \inst9999|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst34|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst34|valor_interno[1]~5_combout\ : std_logic;
SIGNAL \inst34|valor_interno[1]~6\ : std_logic;
SIGNAL \inst34|valor_interno[2]~8\ : std_logic;
SIGNAL \inst34|valor_interno[3]~9_combout\ : std_logic;
SIGNAL \inst34|valor_interno[3]~10\ : std_logic;
SIGNAL \inst34|valor_interno[4]~11_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux11~1_combout\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \inst4|Equal2~1_combout\ : std_logic;
SIGNAL \inst4|comb~20_combout\ : std_logic;
SIGNAL \inst4|comb~19_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst107|selregw[2]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~1_combout\ : std_logic;
SIGNAL \inst49|process_0~3_combout\ : std_logic;
SIGNAL \inst47~combout\ : std_logic;
SIGNAL \inst47~clkctrl_outclk\ : std_logic;
SIGNAL \inst34|valor_interno[2]~7_combout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|Mux10~1_combout\ : std_logic;
SIGNAL \inst4|Equal3~0_combout\ : std_logic;
SIGNAL \inst4|Equal3~1_combout\ : std_logic;
SIGNAL \inst4|selregr[2]~2_combout\ : std_logic;
SIGNAL \inst4|comb~10_combout\ : std_logic;
SIGNAL \inst49|PCWrite~0_combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst3~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|Mux13~1_combout\ : std_logic;
SIGNAL \inst4|Equal11~0_combout\ : std_logic;
SIGNAL \inst4|selregr[3]~3_combout\ : std_logic;
SIGNAL \inst4|selresult[0]~2_combout\ : std_logic;
SIGNAL \inst4|comb~9_combout\ : std_logic;
SIGNAL \inst4|comb~8_combout\ : std_logic;
SIGNAL \inst49|process_0~0_combout\ : std_logic;
SIGNAL \inst49|process_0~1_combout\ : std_logic;
SIGNAL \inst4|comb~26_combout\ : std_logic;
SIGNAL \inst4|comb~25_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|result_node[2]~0_combout\ : std_logic;
SIGNAL \inst33|Add0~32_combout\ : std_logic;
SIGNAL \inst33|opres[15]~0_combout\ : std_logic;
SIGNAL \inst33|opres[15]~1_combout\ : std_logic;
SIGNAL \inst|ni~15_combout\ : std_logic;
SIGNAL \inst|ni~combout\ : std_logic;
SIGNAL \inst101|valor_interno~q\ : std_logic;
SIGNAL \inst|zi~2_combout\ : std_logic;
SIGNAL \inst33|WideOr0~0_combout\ : std_logic;
SIGNAL \inst33|WideOr0~3_combout\ : std_logic;
SIGNAL \inst33|WideOr0~1_combout\ : std_logic;
SIGNAL \inst33|WideOr0~2_combout\ : std_logic;
SIGNAL \inst33|WideOr0~4_combout\ : std_logic;
SIGNAL \inst|zi~combout\ : std_logic;
SIGNAL \inst102|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst102|valor_interno~q\ : std_logic;
SIGNAL \inst|vi~2_combout\ : std_logic;
SIGNAL \inst|vi~3_combout\ : std_logic;
SIGNAL \inst|vi~4_combout\ : std_logic;
SIGNAL \inst|vi~combout\ : std_logic;
SIGNAL \inst103|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst103|valor_interno~q\ : std_logic;
SIGNAL \inst104|valor_interno~q\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|hi~combout\ : std_logic;
SIGNAL \inst105|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst105|valor_interno~q\ : std_logic;
SIGNAL \inst|ii~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|ii~combout\ : std_logic;
SIGNAL \inst106|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst106|valor_interno~q\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~2_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst34|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCA|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst24|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCB|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst700666|AUX|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst16|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst25|$00000|auto_generated|result_node\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst16|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst33|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst4|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|selregr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|selsrc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RELOJ~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
IX_D <= ww_IX_D;
IY_D <= ww_IY_D;
SP_D <= ww_SP_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst24|valor_interno\(15) & \inst24|valor_interno\(14) & 
\inst24|valor_interno\(13) & \inst24|valor_interno\(12) & \inst24|valor_interno\(11) & \inst24|valor_interno\(10) & \inst24|valor_interno\(9) & \inst24|valor_interno\(8) & \inst24|valor_interno\(7) & \inst24|valor_interno\(6) & 
\inst24|valor_interno\(5) & \inst24|valor_interno\(4) & \inst24|valor_interno\(3) & \inst24|valor_interno\(2) & \inst24|valor_interno\(1) & \inst24|valor_interno\(0));

\inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst11|Add0~10_combout\ & \inst11|Add0~8_combout\ & \inst11|Add0~6_combout\ & \inst11|Add0~4_combout\ & \inst11|Add0~2_combout\ & \inst11|Add0~0_combout\);

\inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst11|Add0~10_combout\ & \inst11|Add0~8_combout\ & \inst11|Add0~6_combout\ & \inst11|Add0~4_combout\ & \inst11|Add0~2_combout\ & \inst11|Add0~0_combout\);

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

\inst3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3~combout\);

\inst33|opres[16]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst33|opres[16]~2_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\inst47~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst47~combout\);

\RELOJ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RELOJ~input_o\);
\ALT_INV_RELOJ~inputclkctrl_outclk\ <= NOT \RELOJ~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y25_N2
\n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|valor_interno~q\,
	devoe => ww_devoe,
	o => \n~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|valor_interno~q\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\v~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst103|valor_interno~q\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst104|valor_interno~q\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\h~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst105|valor_interno~q\,
	devoe => ww_devoe,
	o => \h~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\i~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst106|valor_interno~q\,
	devoe => ww_devoe,
	o => \i~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\ACCA_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(15),
	devoe => ww_devoe,
	o => \ACCA_D[15]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\ACCA_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(14),
	devoe => ww_devoe,
	o => \ACCA_D[14]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\ACCA_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(13),
	devoe => ww_devoe,
	o => \ACCA_D[13]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\ACCA_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(12),
	devoe => ww_devoe,
	o => \ACCA_D[12]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\ACCA_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(11),
	devoe => ww_devoe,
	o => \ACCA_D[11]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\ACCA_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(10),
	devoe => ww_devoe,
	o => \ACCA_D[10]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\ACCA_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(9),
	devoe => ww_devoe,
	o => \ACCA_D[9]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\ACCA_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(8),
	devoe => ww_devoe,
	o => \ACCA_D[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\ACCA_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(7),
	devoe => ww_devoe,
	o => \ACCA_D[7]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\ACCA_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(6),
	devoe => ww_devoe,
	o => \ACCA_D[6]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\ACCA_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(5),
	devoe => ww_devoe,
	o => \ACCA_D[5]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\ACCA_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(4),
	devoe => ww_devoe,
	o => \ACCA_D[4]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\ACCA_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(3),
	devoe => ww_devoe,
	o => \ACCA_D[3]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\ACCA_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(2),
	devoe => ww_devoe,
	o => \ACCA_D[2]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\ACCA_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(1),
	devoe => ww_devoe,
	o => \ACCA_D[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\ACCA_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(0),
	devoe => ww_devoe,
	o => \ACCA_D[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\ACCB_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(15),
	devoe => ww_devoe,
	o => \ACCB_D[15]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\ACCB_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(14),
	devoe => ww_devoe,
	o => \ACCB_D[14]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\ACCB_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(13),
	devoe => ww_devoe,
	o => \ACCB_D[13]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\ACCB_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(12),
	devoe => ww_devoe,
	o => \ACCB_D[12]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\ACCB_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(11),
	devoe => ww_devoe,
	o => \ACCB_D[11]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\ACCB_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(10),
	devoe => ww_devoe,
	o => \ACCB_D[10]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\ACCB_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(9),
	devoe => ww_devoe,
	o => \ACCB_D[9]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\ACCB_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(8),
	devoe => ww_devoe,
	o => \ACCB_D[8]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\ACCB_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(7),
	devoe => ww_devoe,
	o => \ACCB_D[7]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\ACCB_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(6),
	devoe => ww_devoe,
	o => \ACCB_D[6]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\ACCB_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(5),
	devoe => ww_devoe,
	o => \ACCB_D[5]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\ACCB_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(4),
	devoe => ww_devoe,
	o => \ACCB_D[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ACCB_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(3),
	devoe => ww_devoe,
	o => \ACCB_D[3]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\ACCB_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(2),
	devoe => ww_devoe,
	o => \ACCB_D[2]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\ACCB_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(1),
	devoe => ww_devoe,
	o => \ACCB_D[1]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\ACCB_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(0),
	devoe => ww_devoe,
	o => \ACCB_D[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\AUX_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(15),
	devoe => ww_devoe,
	o => \AUX_D[15]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\AUX_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(14),
	devoe => ww_devoe,
	o => \AUX_D[14]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\AUX_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(13),
	devoe => ww_devoe,
	o => \AUX_D[13]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\AUX_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(12),
	devoe => ww_devoe,
	o => \AUX_D[12]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\AUX_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(11),
	devoe => ww_devoe,
	o => \AUX_D[11]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\AUX_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(10),
	devoe => ww_devoe,
	o => \AUX_D[10]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\AUX_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(9),
	devoe => ww_devoe,
	o => \AUX_D[9]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\AUX_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(8),
	devoe => ww_devoe,
	o => \AUX_D[8]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\AUX_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(7),
	devoe => ww_devoe,
	o => \AUX_D[7]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\AUX_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(6),
	devoe => ww_devoe,
	o => \AUX_D[6]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\AUX_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(5),
	devoe => ww_devoe,
	o => \AUX_D[5]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\AUX_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(4),
	devoe => ww_devoe,
	o => \AUX_D[4]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\AUX_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(3),
	devoe => ww_devoe,
	o => \AUX_D[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\AUX_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(2),
	devoe => ww_devoe,
	o => \AUX_D[2]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\AUX_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(1),
	devoe => ww_devoe,
	o => \AUX_D[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\AUX_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(0),
	devoe => ww_devoe,
	o => \AUX_D[0]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\IX_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[15]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\IX_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[14]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\IX_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[13]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\IX_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[12]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\IX_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[11]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\IX_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[10]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\IX_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\IX_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[8]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\IX_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\IX_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[6]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\IX_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\IX_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[4]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\IX_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\IX_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\IX_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\IX_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\IY_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[15]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\IY_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[14]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\IY_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[13]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\IY_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[12]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\IY_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[11]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\IY_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\IY_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[9]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\IY_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[8]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\IY_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\IY_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\IY_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\IY_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\IY_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[3]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\IY_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\IY_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\IY_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\SP_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[15]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\SP_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[14]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\SP_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[13]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\SP_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[12]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\SP_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[11]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\SP_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[10]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\SP_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[9]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\SP_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[8]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\SP_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\SP_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[6]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\SP_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[5]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\SP_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[4]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\SP_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\SP_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\SP_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\SP_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\RELOJ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RELOJ,
	o => \RELOJ~input_o\);

-- Location: CLKCTRL_G2
\RELOJ~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RELOJ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RELOJ~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y24_N0
\inst1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux15~0_combout\ = (\inst34|valor_interno\(2) & (!\inst34|valor_interno\(3) & (\inst34|valor_interno\(1) $ (!\inst34|valor_interno\(0))))) # (!\inst34|valor_interno\(2) & (\inst34|valor_interno\(3) $ (((\inst34|valor_interno\(1)) # 
-- (\inst34|valor_interno\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(3),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(0),
	combout => \inst1|Mux15~0_combout\);

-- Location: LCCOMB_X24_Y24_N18
\inst34|valor_interno[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[4]~11_combout\ = (\inst34|valor_interno\(4) & (!\inst34|valor_interno[3]~10\)) # (!\inst34|valor_interno\(4) & ((\inst34|valor_interno[3]~10\) # (GND)))
-- \inst34|valor_interno[4]~12\ = CARRY((!\inst34|valor_interno[3]~10\) # (!\inst34|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(4),
	datad => VCC,
	cin => \inst34|valor_interno[3]~10\,
	combout => \inst34|valor_interno[4]~11_combout\,
	cout => \inst34|valor_interno[4]~12\);

-- Location: LCCOMB_X24_Y24_N20
\inst34|valor_interno[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[5]~13_combout\ = \inst34|valor_interno\(5) $ (!\inst34|valor_interno[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(5),
	cin => \inst34|valor_interno[4]~12\,
	combout => \inst34|valor_interno[5]~13_combout\);

-- Location: LCCOMB_X24_Y24_N8
\inst1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux31~0_combout\ = (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(1) & !\inst34|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(4),
	datab => \inst34|valor_interno\(5),
	datac => \inst34|valor_interno\(1),
	datad => \inst34|valor_interno\(3),
	combout => \inst1|Mux31~0_combout\);

-- Location: LCCOMB_X25_Y24_N4
\inst1|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux31~2_combout\ = (\inst1|Mux31~0_combout\ & !\inst34|valor_interno\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux31~0_combout\,
	datad => \inst34|valor_interno\(2),
	combout => \inst1|Mux31~2_combout\);

-- Location: IOIBUF_X0_Y16_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G1
\RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X25_Y24_N5
\inst8|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst1|Mux31~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(23));

-- Location: LCCOMB_X24_Y24_N10
\inst1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = (!\inst34|valor_interno\(3) & (\inst34|valor_interno\(2) & (\inst34|valor_interno\(1) $ (\inst34|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(3),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(0),
	combout => \inst1|Mux9~0_combout\);

-- Location: LCCOMB_X25_Y24_N0
\inst1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~1_combout\ = (\inst1|Mux9~0_combout\ & (!\inst34|valor_interno\(4) & !\inst34|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux9~0_combout\,
	datab => \inst34|valor_interno\(4),
	datad => \inst34|valor_interno\(5),
	combout => \inst1|Mux9~1_combout\);

-- Location: FF_X25_Y24_N1
\inst8|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst1|Mux9~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(22));

-- Location: LCCOMB_X24_Y24_N6
\inst1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux14~0_combout\ = (\inst34|valor_interno\(3)) # ((\inst34|valor_interno\(0)) # ((\inst34|valor_interno\(1) & !\inst34|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(3),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(0),
	combout => \inst1|Mux14~0_combout\);

-- Location: LCCOMB_X25_Y24_N6
\inst1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux14~1_combout\ = (!\inst34|valor_interno\(4) & (!\inst1|Mux14~0_combout\ & !\inst34|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(4),
	datac => \inst1|Mux14~0_combout\,
	datad => \inst34|valor_interno\(5),
	combout => \inst1|Mux14~1_combout\);

-- Location: FF_X25_Y24_N7
\inst8|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst1|Mux14~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(17));

-- Location: LCCOMB_X26_Y24_N6
\inst4|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~3_combout\ = (!\inst8|valor_interno\(22) & (\inst8|valor_interno\(17) & (\inst8|valor_interno\(16) & !\inst8|valor_interno\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(22),
	datab => \inst8|valor_interno\(17),
	datac => \inst8|valor_interno\(16),
	datad => \inst8|valor_interno\(18),
	combout => \inst4|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y24_N10
\inst4|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~4_combout\ = (!\inst8|valor_interno\(21) & (\inst8|valor_interno\(20) & (!\inst8|valor_interno\(23) & \inst4|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(21),
	datab => \inst8|valor_interno\(20),
	datac => \inst8|valor_interno\(23),
	datad => \inst4|Equal0~3_combout\,
	combout => \inst4|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y25_N30
\inst4|sels1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sels1~0_combout\ = (!\inst4|Equal2~1_combout\ & ((!\inst4|Equal3~1_combout\) # (!\inst8|valor_interno\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal2~1_combout\,
	datac => \inst8|valor_interno\(18),
	datad => \inst4|Equal3~1_combout\,
	combout => \inst4|sels1~0_combout\);

-- Location: LCCOMB_X26_Y24_N14
\inst4|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = (!\inst8|valor_interno\(17) & (!\inst8|valor_interno\(16) & \inst8|valor_interno\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|valor_interno\(17),
	datac => \inst8|valor_interno\(16),
	datad => \inst8|valor_interno\(18),
	combout => \inst4|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y24_N20
\inst4|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = (!\inst8|valor_interno\(21) & (!\inst8|valor_interno\(23) & \inst8|valor_interno\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(21),
	datac => \inst8|valor_interno\(23),
	datad => \inst8|valor_interno\(20),
	combout => \inst4|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y26_N8
\inst4|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~1_combout\ = (\inst4|Equal1~0_combout\ & (!\inst8|valor_interno\(22) & \inst4|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal1~0_combout\,
	datac => \inst8|valor_interno\(22),
	datad => \inst4|Equal0~2_combout\,
	combout => \inst4|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y24_N18
\inst4|selsrc[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selsrc[1]~0_combout\ = (!\inst4|Equal0~4_combout\ & (((\inst4|Equal9~1_combout\ & !\inst4|Equal1~1_combout\)) # (!\inst4|sels1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~4_combout\,
	datab => \inst4|Equal9~1_combout\,
	datac => \inst4|sels1~0_combout\,
	datad => \inst4|Equal1~1_combout\,
	combout => \inst4|selsrc[1]~0_combout\);

-- Location: LCCOMB_X25_Y24_N12
\inst4|comb~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~21_combout\ = (\inst4|selregr[3]~3_combout\ & !\inst4|selsrc[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|selregr[3]~3_combout\,
	datad => \inst4|selsrc[1]~0_combout\,
	combout => \inst4|comb~21_combout\);

-- Location: LCCOMB_X25_Y24_N26
\inst4|comb~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~22_combout\ = (\inst4|selregr[3]~3_combout\ & \inst4|selsrc[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|selregr[3]~3_combout\,
	datad => \inst4|selsrc[1]~0_combout\,
	combout => \inst4|comb~22_combout\);

-- Location: LCCOMB_X25_Y24_N20
\inst4|selsrc[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selsrc\(1) = (!\inst4|comb~21_combout\ & ((\inst4|comb~22_combout\) # (\inst4|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~21_combout\,
	datac => \inst4|comb~22_combout\,
	datad => \inst4|selsrc\(1),
	combout => \inst4|selsrc\(1));

-- Location: LCCOMB_X25_Y26_N28
\inst700|valor_interno[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[1]~0_combout\ = (!\inst4|selregr\(0) & !\inst4|selregr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selregr\(0),
	datad => \inst4|selregr\(2),
	combout => \inst700|valor_interno[1]~0_combout\);

-- Location: LCCOMB_X26_Y24_N12
\inst4|selsrc[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selsrc[0]~1_combout\ = (\inst8|valor_interno\(21) & (\inst8|valor_interno\(20) & (!\inst8|valor_interno\(23) & \inst8|valor_interno\(22)))) # (!\inst8|valor_interno\(21) & (!\inst8|valor_interno\(20) & (\inst8|valor_interno\(23) & 
-- !\inst8|valor_interno\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(21),
	datab => \inst8|valor_interno\(20),
	datac => \inst8|valor_interno\(23),
	datad => \inst8|valor_interno\(22),
	combout => \inst4|selsrc[0]~1_combout\);

-- Location: LCCOMB_X26_Y24_N26
\inst4|selsrc[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selsrc[0]~2_combout\ = (\inst4|Equal3~1_combout\) # ((\inst4|selsrc[0]~1_combout\ & (\inst8|valor_interno\(17) & !\inst8|valor_interno\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selsrc[0]~1_combout\,
	datab => \inst8|valor_interno\(17),
	datac => \inst8|valor_interno\(16),
	datad => \inst4|Equal3~1_combout\,
	combout => \inst4|selsrc[0]~2_combout\);

-- Location: LCCOMB_X26_Y24_N16
\inst4|selsrc[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selsrc[0]~3_combout\ = (\inst8|valor_interno\(17) & (!\inst8|valor_interno\(22) & (\inst8|valor_interno\(16) & !\inst8|valor_interno\(18)))) # (!\inst8|valor_interno\(17) & (((!\inst8|valor_interno\(16) & \inst8|valor_interno\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(22),
	datab => \inst8|valor_interno\(17),
	datac => \inst8|valor_interno\(16),
	datad => \inst8|valor_interno\(18),
	combout => \inst4|selsrc[0]~3_combout\);

-- Location: LCCOMB_X26_Y24_N22
\inst4|selsrc[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selsrc[0]~4_combout\ = (\inst4|selsrc[0]~2_combout\ & ((\inst8|valor_interno\(18)) # ((\inst4|selsrc[0]~3_combout\ & \inst4|Equal0~2_combout\)))) # (!\inst4|selsrc[0]~2_combout\ & (\inst4|selsrc[0]~3_combout\ & (\inst4|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selsrc[0]~2_combout\,
	datab => \inst4|selsrc[0]~3_combout\,
	datac => \inst4|Equal0~2_combout\,
	datad => \inst8|valor_interno\(18),
	combout => \inst4|selsrc[0]~4_combout\);

-- Location: LCCOMB_X26_Y24_N4
\inst4|comb~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~23_combout\ = (!\inst4|selsrc[0]~4_combout\ & \inst4|selregr[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selsrc[0]~4_combout\,
	datad => \inst4|selregr[3]~3_combout\,
	combout => \inst4|comb~23_combout\);

-- Location: LCCOMB_X25_Y24_N8
\inst4|comb~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~24_combout\ = (\inst4|selregr[3]~3_combout\ & \inst4|selsrc[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|selregr[3]~3_combout\,
	datad => \inst4|selsrc[0]~4_combout\,
	combout => \inst4|comb~24_combout\);

-- Location: LCCOMB_X25_Y24_N2
\inst4|selsrc[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selsrc\(0) = (!\inst4|comb~23_combout\ & ((\inst4|comb~24_combout\) # (\inst4|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~23_combout\,
	datac => \inst4|comb~24_combout\,
	datad => \inst4|selsrc\(0),
	combout => \inst4|selsrc\(0));

-- Location: LCCOMB_X25_Y26_N16
\inst700666|inst|D1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst|D1~0_combout\ = (\inst49|process_0~1_combout\ & (!\inst49|process_0~3_combout\ & !\inst49|PCWrite~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~1_combout\,
	datac => \inst49|process_0~3_combout\,
	datad => \inst49|PCWrite~0_combout\,
	combout => \inst700666|inst|D1~0_combout\);

-- Location: LCCOMB_X25_Y26_N10
\inst700|valor_interno[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[1]~1_combout\ = (\inst700|valor_interno[1]~0_combout\) # (((!\inst4|selsrc\(1) & !\inst4|selsrc\(0))) # (!\inst700666|inst|D1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selsrc\(1),
	datab => \inst700|valor_interno[1]~0_combout\,
	datac => \inst4|selsrc\(0),
	datad => \inst700666|inst|D1~0_combout\,
	combout => \inst700|valor_interno[1]~1_combout\);

-- Location: LCCOMB_X26_Y25_N4
\inst4|comb~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~16_combout\ = (\inst4|Equal0~2_combout\ & (!\inst4|Equal0~3_combout\ & ((\inst4|Equal1~1_combout\) # (!\inst4|Equal2~1_combout\)))) # (!\inst4|Equal0~2_combout\ & (((\inst4|Equal1~1_combout\) # (!\inst4|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~2_combout\,
	datab => \inst4|Equal0~3_combout\,
	datac => \inst4|Equal2~1_combout\,
	datad => \inst4|Equal1~1_combout\,
	combout => \inst4|comb~16_combout\);

-- Location: LCCOMB_X25_Y24_N24
\inst4|comb~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~17_combout\ = (\inst4|selregr[3]~3_combout\ & \inst4|comb~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|selregr[3]~3_combout\,
	datad => \inst4|comb~16_combout\,
	combout => \inst4|comb~17_combout\);

-- Location: LCCOMB_X25_Y24_N30
\inst4|comb~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~18_combout\ = (\inst4|selregr[3]~3_combout\ & !\inst4|comb~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|selregr[3]~3_combout\,
	datad => \inst4|comb~16_combout\,
	combout => \inst4|comb~18_combout\);

-- Location: LCCOMB_X25_Y23_N6
\inst4|selregw[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selregw\(0) = (!\inst4|comb~17_combout\ & ((\inst4|comb~18_combout\) # (\inst4|selregw\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|comb~17_combout\,
	datac => \inst4|comb~18_combout\,
	datad => \inst4|selregw\(0),
	combout => \inst4|selregw\(0));

-- Location: LCCOMB_X25_Y23_N8
\inst21|$00000|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|result_node[0]~0_combout\ = (!\inst49|process_0~3_combout\ & (!\inst49|PCWrite~0_combout\ & (\inst49|process_0~1_combout\ & \inst4|selregw\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~3_combout\,
	datab => \inst49|PCWrite~0_combout\,
	datac => \inst49|process_0~1_combout\,
	datad => \inst4|selregw\(0),
	combout => \inst21|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X25_Y23_N9
\inst16|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst21|$00000|auto_generated|result_node[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selregw\(0));

-- Location: FF_X25_Y23_N21
\inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \inst16|selregw\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(0));

-- Location: LCCOMB_X25_Y23_N14
\inst700666|inst1000|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~0_combout\ = (!\inst107|selregw\(2) & \inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst700666|inst1000|Equal1~0_combout\);

-- Location: FF_X24_Y26_N29
\inst700666|ACCA|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(5));

-- Location: LCCOMB_X24_Y23_N2
\inst700666|ACCB|valor_interno[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[5]~feeder_combout\ = \inst24|valor_interno\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(5),
	combout => \inst700666|ACCB|valor_interno[5]~feeder_combout\);

-- Location: FF_X24_Y23_N3
\inst700666|ACCB|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(5));

-- Location: LCCOMB_X25_Y26_N30
\inst700666|inst|D1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst|D1~1_combout\ = (\inst700666|inst|D1~0_combout\ & (\inst4|selregr\(0) $ (\inst4|selregr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selregr\(0),
	datab => \inst4|selregr\(2),
	datad => \inst700666|inst|D1~0_combout\,
	combout => \inst700666|inst|D1~1_combout\);

-- Location: LCCOMB_X23_Y26_N0
\inst202|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux10~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & (\inst700666|ACCA|valor_interno\(5))) # (!\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCB|valor_interno\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno[1]~1_combout\,
	datab => \inst700666|ACCA|valor_interno\(5),
	datac => \inst700666|ACCB|valor_interno\(5),
	datad => \inst700666|inst|D1~1_combout\,
	combout => \inst202|Mux10~0_combout\);

-- Location: FF_X23_Y26_N1
\inst700|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux10~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(5));

-- Location: LCCOMB_X26_Y26_N30
\inst4|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~4_combout\ = ((!\inst4|Equal0~3_combout\ & ((\inst8|valor_interno\(22)) # (!\inst4|Equal1~0_combout\)))) # (!\inst4|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~3_combout\,
	datab => \inst4|Equal1~0_combout\,
	datac => \inst8|valor_interno\(22),
	datad => \inst4|Equal0~2_combout\,
	combout => \inst4|comb~4_combout\);

-- Location: LCCOMB_X26_Y26_N20
\inst4|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal7~0_combout\ = (\inst4|Equal1~0_combout\ & (\inst8|valor_interno\(22) & \inst4|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal1~0_combout\,
	datac => \inst8|valor_interno\(22),
	datad => \inst4|Equal0~2_combout\,
	combout => \inst4|Equal7~0_combout\);

-- Location: LCCOMB_X26_Y26_N4
\inst4|comb~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~29_combout\ = (\inst4|selregr[3]~3_combout\ & ((\inst4|Equal7~0_combout\) # (!\inst4|comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~4_combout\,
	datab => \inst4|selregr[3]~3_combout\,
	datad => \inst4|Equal7~0_combout\,
	combout => \inst4|comb~29_combout\);

-- Location: LCCOMB_X26_Y26_N14
\inst4|comb~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~28_combout\ = (\inst4|comb~4_combout\ & (\inst4|selregr[3]~3_combout\ & !\inst4|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~4_combout\,
	datab => \inst4|selregr[3]~3_combout\,
	datad => \inst4|Equal7~0_combout\,
	combout => \inst4|comb~28_combout\);

-- Location: LCCOMB_X25_Y26_N20
\inst4|selop[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selop\(0) = (!\inst4|comb~28_combout\ & ((\inst4|comb~29_combout\) # (\inst4|selop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~29_combout\,
	datac => \inst4|comb~28_combout\,
	datad => \inst4|selop\(0),
	combout => \inst4|selop\(0));

-- Location: LCCOMB_X24_Y27_N0
\inst31|$00000|auto_generated|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|result_node[0]~1_combout\ = (\inst49|process_0~1_combout\ & (!\inst49|process_0~3_combout\ & (!\inst49|PCWrite~0_combout\ & \inst4|selop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~1_combout\,
	datab => \inst49|process_0~3_combout\,
	datac => \inst49|PCWrite~0_combout\,
	datad => \inst4|selop\(0),
	combout => \inst31|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: FF_X24_Y27_N1
\inst16|selop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst31|$00000|auto_generated|result_node[0]~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(0));

-- Location: LCCOMB_X25_Y23_N20
\inst700666|inst|D2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[0]~0_combout\ = (!\inst4|selregr\(2) & \inst4|selregr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selregr\(2),
	datad => \inst4|selregr\(0),
	combout => \inst700666|inst|D2[0]~0_combout\);

-- Location: LCCOMB_X25_Y23_N2
\inst49|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|process_0~2_combout\ = (\inst16|selregw\(0) & !\inst16|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selregw\(0),
	datad => \inst16|selregw\(2),
	combout => \inst49|process_0~2_combout\);

-- Location: LCCOMB_X24_Y23_N16
\inst700666|inst|D2[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[5]~1_combout\ = (\inst700666|inst|D2[0]~0_combout\ & (\inst700666|ACCB|valor_interno\(5) & (!\inst700666|inst1000|Equal1~1_combout\ & !\inst49|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|D2[0]~0_combout\,
	datab => \inst700666|ACCB|valor_interno\(5),
	datac => \inst700666|inst1000|Equal1~1_combout\,
	datad => \inst49|process_0~2_combout\,
	combout => \inst700666|inst|D2[5]~1_combout\);

-- Location: LCCOMB_X26_Y26_N18
\inst4|comb~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~31_combout\ = ((\inst4|Equal0~2_combout\ & (\inst4|Equal1~0_combout\ & \inst8|valor_interno\(22)))) # (!\inst4|selregr[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~2_combout\,
	datab => \inst4|Equal1~0_combout\,
	datac => \inst8|valor_interno\(22),
	datad => \inst4|selregr[2]~2_combout\,
	combout => \inst4|comb~31_combout\);

-- Location: LCCOMB_X25_Y25_N10
\inst4|comb~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~27_combout\ = (\inst4|selregr[2]~2_combout\ & (!\inst4|Equal7~0_combout\ & ((\inst4|Equal11~0_combout\) # (\inst4|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal11~0_combout\,
	datab => \inst4|selregr[2]~2_combout\,
	datac => \inst4|Equal9~1_combout\,
	datad => \inst4|Equal7~0_combout\,
	combout => \inst4|comb~27_combout\);

-- Location: LCCOMB_X23_Y24_N12
\inst4|sr\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr~combout\ = (!\inst4|comb~27_combout\ & ((\inst4|comb~31_combout\) # (\inst4|sr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~31_combout\,
	datac => \inst4|comb~27_combout\,
	datad => \inst4|sr~combout\,
	combout => \inst4|sr~combout\);

-- Location: LCCOMB_X23_Y23_N30
\inst45|$00000|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|$00000|auto_generated|result_node[0]~0_combout\ = (!\inst49|process_0~3_combout\ & (\inst4|sr~combout\ & (!\inst49|PCWrite~0_combout\ & \inst49|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~3_combout\,
	datab => \inst4|sr~combout\,
	datac => \inst49|PCWrite~0_combout\,
	datad => \inst49|process_0~1_combout\,
	combout => \inst45|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X24_Y23_N24
\inst700666|ACCB|valor_interno[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[0]~feeder_combout\ = \inst24|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(0),
	combout => \inst700666|ACCB|valor_interno[0]~feeder_combout\);

-- Location: FF_X24_Y23_N25
\inst700666|ACCB|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(0));

-- Location: LCCOMB_X24_Y23_N26
\inst700666|inst|D2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[0]~6_combout\ = (!\inst49|process_0~2_combout\ & (!\inst700666|inst1000|Equal1~1_combout\ & (\inst700666|inst|D2[0]~0_combout\ & \inst700666|ACCB|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~2_combout\,
	datab => \inst700666|inst1000|Equal1~1_combout\,
	datac => \inst700666|inst|D2[0]~0_combout\,
	datad => \inst700666|ACCB|valor_interno\(0),
	combout => \inst700666|inst|D2[0]~6_combout\);

-- Location: LCCOMB_X23_Y23_N14
\inst11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = (\inst45|$00000|auto_generated|result_node[0]~0_combout\ & (\inst700666|inst|D2[0]~6_combout\ & VCC)) # (!\inst45|$00000|auto_generated|result_node[0]~0_combout\ & (\inst700666|inst|D2[0]~6_combout\ $ (VCC)))
-- \inst11|Add0~1\ = CARRY((!\inst45|$00000|auto_generated|result_node[0]~0_combout\ & \inst700666|inst|D2[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst700666|inst|D2[0]~6_combout\,
	datad => VCC,
	combout => \inst11|Add0~0_combout\,
	cout => \inst11|Add0~1\);

-- Location: LCCOMB_X24_Y27_N30
\inst32|$00000|auto_generated|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|$00000|auto_generated|result_node[0]~1_combout\ = (!\inst49|process_0~3_combout\ & (\inst49|process_0~1_combout\ & (!\inst49|PCWrite~0_combout\ & \inst4|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~3_combout\,
	datab => \inst49|process_0~1_combout\,
	datac => \inst49|PCWrite~0_combout\,
	datad => \inst4|selsrc\(0),
	combout => \inst32|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X25_Y23_N0
\inst32|$00000|auto_generated|result_node[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|$00000|auto_generated|result_node[1]~0_combout\ = (\inst4|selsrc\(1) & (!\inst49|PCWrite~0_combout\ & (\inst49|process_0~1_combout\ & !\inst49|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selsrc\(1),
	datab => \inst49|PCWrite~0_combout\,
	datac => \inst49|process_0~1_combout\,
	datad => \inst49|process_0~3_combout\,
	combout => \inst32|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X24_Y26_N2
\inst700666|ACCA|valor_interno[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[4]~feeder_combout\ = \inst24|valor_interno\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(4),
	combout => \inst700666|ACCA|valor_interno[4]~feeder_combout\);

-- Location: FF_X24_Y26_N3
\inst700666|ACCA|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(4));

-- Location: LCCOMB_X23_Y26_N6
\inst202|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux11~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(4)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno[1]~1_combout\,
	datab => \inst700666|ACCB|valor_interno\(4),
	datac => \inst700666|ACCA|valor_interno\(4),
	datad => \inst700666|inst|D1~1_combout\,
	combout => \inst202|Mux11~0_combout\);

-- Location: FF_X23_Y26_N7
\inst700|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux11~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(4));

-- Location: LCCOMB_X23_Y23_N16
\inst11|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = (\inst45|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst700666|inst|D2[1]~5_combout\ & (!\inst11|Add0~1\)) # (!\inst700666|inst|D2[1]~5_combout\ & ((\inst11|Add0~1\) # (GND))))) # 
-- (!\inst45|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst700666|inst|D2[1]~5_combout\ & (\inst11|Add0~1\ & VCC)) # (!\inst700666|inst|D2[1]~5_combout\ & (!\inst11|Add0~1\))))
-- \inst11|Add0~3\ = CARRY((\inst45|$00000|auto_generated|result_node[0]~0_combout\ & ((!\inst11|Add0~1\) # (!\inst700666|inst|D2[1]~5_combout\))) # (!\inst45|$00000|auto_generated|result_node[0]~0_combout\ & (!\inst700666|inst|D2[1]~5_combout\ & 
-- !\inst11|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst700666|inst|D2[1]~5_combout\,
	datad => VCC,
	cin => \inst11|Add0~1\,
	combout => \inst11|Add0~2_combout\,
	cout => \inst11|Add0~3\);

-- Location: LCCOMB_X23_Y23_N18
\inst11|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~4_combout\ = ((\inst45|$00000|auto_generated|result_node[0]~0_combout\ $ (\inst700666|inst|D2[2]~4_combout\ $ (\inst11|Add0~3\)))) # (GND)
-- \inst11|Add0~5\ = CARRY((\inst45|$00000|auto_generated|result_node[0]~0_combout\ & (\inst700666|inst|D2[2]~4_combout\ & !\inst11|Add0~3\)) # (!\inst45|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst700666|inst|D2[2]~4_combout\) # 
-- (!\inst11|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst700666|inst|D2[2]~4_combout\,
	datad => VCC,
	cin => \inst11|Add0~3\,
	combout => \inst11|Add0~4_combout\,
	cout => \inst11|Add0~5\);

-- Location: LCCOMB_X23_Y23_N20
\inst11|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = (\inst45|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst700666|inst|D2[3]~3_combout\ & (!\inst11|Add0~5\)) # (!\inst700666|inst|D2[3]~3_combout\ & ((\inst11|Add0~5\) # (GND))))) # 
-- (!\inst45|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst700666|inst|D2[3]~3_combout\ & (\inst11|Add0~5\ & VCC)) # (!\inst700666|inst|D2[3]~3_combout\ & (!\inst11|Add0~5\))))
-- \inst11|Add0~7\ = CARRY((\inst45|$00000|auto_generated|result_node[0]~0_combout\ & ((!\inst11|Add0~5\) # (!\inst700666|inst|D2[3]~3_combout\))) # (!\inst45|$00000|auto_generated|result_node[0]~0_combout\ & (!\inst700666|inst|D2[3]~3_combout\ & 
-- !\inst11|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst700666|inst|D2[3]~3_combout\,
	datad => VCC,
	cin => \inst11|Add0~5\,
	combout => \inst11|Add0~6_combout\,
	cout => \inst11|Add0~7\);

-- Location: LCCOMB_X23_Y23_N22
\inst11|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = ((\inst45|$00000|auto_generated|result_node[0]~0_combout\ $ (\inst700666|inst|D2[4]~2_combout\ $ (\inst11|Add0~7\)))) # (GND)
-- \inst11|Add0~9\ = CARRY((\inst45|$00000|auto_generated|result_node[0]~0_combout\ & (\inst700666|inst|D2[4]~2_combout\ & !\inst11|Add0~7\)) # (!\inst45|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst700666|inst|D2[4]~2_combout\) # 
-- (!\inst11|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst700666|inst|D2[4]~2_combout\,
	datad => VCC,
	cin => \inst11|Add0~7\,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: LCCOMB_X23_Y23_N24
\inst11|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = \inst45|$00000|auto_generated|result_node[0]~0_combout\ $ (\inst11|Add0~9\ $ (!\inst700666|inst|D2[5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst700666|inst|D2[5]~1_combout\,
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\);

-- Location: LCCOMB_X24_Y23_N30
\inst14|valor_interno[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[10]~0_combout\ = ((\inst4|selsrc\(0) & ((\inst4|selsrc\(1)) # (!\inst700666|inst|D2[0]~0_combout\))) # (!\inst4|selsrc\(0) & (!\inst4|selsrc\(1)))) # (!\inst700666|inst|D1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selsrc\(0),
	datab => \inst4|selsrc\(1),
	datac => \inst700666|inst|D2[0]~0_combout\,
	datad => \inst700666|inst|D1~0_combout\,
	combout => \inst14|valor_interno[10]~0_combout\);

-- Location: LCCOMB_X21_Y23_N0
\inst700666|ACCB|valor_interno[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[6]~feeder_combout\ = \inst24|valor_interno\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(6),
	combout => \inst700666|ACCB|valor_interno[6]~feeder_combout\);

-- Location: FF_X21_Y23_N1
\inst700666|ACCB|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(6));

-- Location: FF_X23_Y26_N15
\inst700666|ACCB|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(7));

-- Location: LCCOMB_X21_Y26_N4
\inst700666|ACCA|valor_interno[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[7]~feeder_combout\ = \inst24|valor_interno\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(7),
	combout => \inst700666|ACCA|valor_interno[7]~feeder_combout\);

-- Location: FF_X21_Y26_N5
\inst700666|ACCA|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(7));

-- Location: LCCOMB_X23_Y26_N8
\inst202|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux8~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(7)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno[1]~1_combout\,
	datab => \inst700666|inst|D1~1_combout\,
	datac => \inst700666|ACCB|valor_interno\(7),
	datad => \inst700666|ACCA|valor_interno\(7),
	combout => \inst202|Mux8~0_combout\);

-- Location: FF_X23_Y26_N9
\inst700|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux8~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(7));

-- Location: LCCOMB_X21_Y23_N18
\inst700666|ACCB|valor_interno[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[8]~feeder_combout\ = \inst24|valor_interno\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(8),
	combout => \inst700666|ACCB|valor_interno[8]~feeder_combout\);

-- Location: FF_X21_Y23_N19
\inst700666|ACCB|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(8));

-- Location: LCCOMB_X20_Y25_N0
\inst700666|ACCA|valor_interno[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[8]~feeder_combout\ = \inst24|valor_interno\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(8),
	combout => \inst700666|ACCA|valor_interno[8]~feeder_combout\);

-- Location: FF_X20_Y25_N1
\inst700666|ACCA|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(8));

-- Location: LCCOMB_X20_Y25_N6
\inst202|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux7~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(8)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(8),
	datab => \inst700666|ACCA|valor_interno\(8),
	datac => \inst700666|inst|D1~1_combout\,
	datad => \inst700|valor_interno[1]~1_combout\,
	combout => \inst202|Mux7~0_combout\);

-- Location: FF_X23_Y25_N27
\inst700|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux7~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(8));

-- Location: LCCOMB_X24_Y23_N0
\inst700666|ACCB|valor_interno[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[10]~feeder_combout\ = \inst24|valor_interno\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(10),
	combout => \inst700666|ACCB|valor_interno[10]~feeder_combout\);

-- Location: FF_X24_Y23_N1
\inst700666|ACCB|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(10));

-- Location: LCCOMB_X24_Y23_N14
\inst700666|ACCB|valor_interno[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[11]~feeder_combout\ = \inst24|valor_interno\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(11),
	combout => \inst700666|ACCB|valor_interno[11]~feeder_combout\);

-- Location: FF_X24_Y23_N15
\inst700666|ACCB|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(11));

-- Location: LCCOMB_X21_Y23_N20
\inst700666|ACCB|valor_interno[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[12]~feeder_combout\ = \inst24|valor_interno\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(12),
	combout => \inst700666|ACCB|valor_interno[12]~feeder_combout\);

-- Location: FF_X21_Y23_N21
\inst700666|ACCB|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(12));

-- Location: LCCOMB_X20_Y25_N2
\inst700666|ACCA|valor_interno[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[14]~feeder_combout\ = \inst24|valor_interno\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(14),
	combout => \inst700666|ACCA|valor_interno[14]~feeder_combout\);

-- Location: FF_X20_Y25_N3
\inst700666|ACCA|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(14));

-- Location: LCCOMB_X21_Y23_N14
\inst700666|ACCB|valor_interno[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[14]~feeder_combout\ = \inst24|valor_interno\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(14),
	combout => \inst700666|ACCB|valor_interno[14]~feeder_combout\);

-- Location: FF_X21_Y23_N15
\inst700666|ACCB|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(14));

-- Location: LCCOMB_X20_Y25_N28
\inst202|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux1~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & (\inst700666|ACCA|valor_interno\(14))) # (!\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCB|valor_interno\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|D1~1_combout\,
	datab => \inst700666|ACCA|valor_interno\(14),
	datac => \inst700666|ACCB|valor_interno\(14),
	datad => \inst700|valor_interno[1]~1_combout\,
	combout => \inst202|Mux1~0_combout\);

-- Location: FF_X20_Y25_N29
\inst700|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux1~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(14));

-- Location: LCCOMB_X24_Y25_N14
\inst20|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux16~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datad => \inst33|opres\(15),
	combout => \inst20|Mux16~0_combout\);

-- Location: FF_X24_Y25_N15
\inst24|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux16~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(15));

-- Location: M9K_X22_Y23_N0
\inst41|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memoria_datos:inst41|altsyncram:mem_rtl_0|altsyncram_cpd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 51,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 51,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst41|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N28
\inst202|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux17~0_combout\ = (!\inst14|valor_interno[10]~0_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & ((\inst41|mem_rtl_0|auto_generated|ram_block1a14\))) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- (\inst700666|ACCB|valor_interno\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datab => \inst700666|ACCB|valor_interno\(14),
	datac => \inst14|valor_interno[10]~0_combout\,
	datad => \inst41|mem_rtl_0|auto_generated|ram_block1a14\,
	combout => \inst202|Mux17~0_combout\);

-- Location: FF_X21_Y23_N29
\inst14|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux17~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(14));

-- Location: LCCOMB_X24_Y23_N20
\inst700666|ACCB|valor_interno[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[13]~feeder_combout\ = \inst24|valor_interno\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(13),
	combout => \inst700666|ACCB|valor_interno[13]~feeder_combout\);

-- Location: FF_X24_Y23_N21
\inst700666|ACCB|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(13));

-- Location: LCCOMB_X25_Y26_N12
\inst700666|ACCA|valor_interno[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[13]~feeder_combout\ = \inst24|valor_interno\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(13),
	combout => \inst700666|ACCA|valor_interno[13]~feeder_combout\);

-- Location: FF_X25_Y26_N13
\inst700666|ACCA|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(13));

-- Location: LCCOMB_X25_Y26_N24
\inst202|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux2~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(13)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(13),
	datab => \inst700666|ACCA|valor_interno\(13),
	datac => \inst700666|inst|D1~1_combout\,
	datad => \inst700|valor_interno[1]~1_combout\,
	combout => \inst202|Mux2~0_combout\);

-- Location: FF_X25_Y26_N25
\inst700|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux2~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(13));

-- Location: FF_X24_Y26_N31
\inst700666|ACCA|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(12));

-- Location: LCCOMB_X24_Y26_N6
\inst202|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux3~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & (\inst700666|ACCA|valor_interno\(12))) # (!\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCB|valor_interno\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(12),
	datab => \inst700|valor_interno[1]~1_combout\,
	datac => \inst700666|inst|D1~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(12),
	combout => \inst202|Mux3~0_combout\);

-- Location: FF_X24_Y26_N7
\inst700|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux3~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(12));

-- Location: LCCOMB_X24_Y23_N8
\inst700666|ACCA|valor_interno[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[11]~feeder_combout\ = \inst24|valor_interno\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(11),
	combout => \inst700666|ACCA|valor_interno[11]~feeder_combout\);

-- Location: FF_X24_Y23_N9
\inst700666|ACCA|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(11));

-- Location: LCCOMB_X24_Y26_N16
\inst202|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux4~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(11)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|D1~1_combout\,
	datab => \inst700666|ACCB|valor_interno\(11),
	datac => \inst700|valor_interno[1]~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(11),
	combout => \inst202|Mux4~0_combout\);

-- Location: FF_X24_Y26_N17
\inst700|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux4~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(11));

-- Location: LCCOMB_X24_Y23_N10
\inst700666|ACCA|valor_interno[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[10]~feeder_combout\ = \inst24|valor_interno\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(10),
	combout => \inst700666|ACCA|valor_interno[10]~feeder_combout\);

-- Location: FF_X24_Y23_N11
\inst700666|ACCA|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(10));

-- Location: LCCOMB_X25_Y25_N18
\inst202|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux5~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(10)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(10),
	datab => \inst700666|ACCA|valor_interno\(10),
	datac => \inst700666|inst|D1~1_combout\,
	datad => \inst700|valor_interno[1]~1_combout\,
	combout => \inst202|Mux5~0_combout\);

-- Location: FF_X23_Y25_N21
\inst700|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux5~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(10));

-- Location: LCCOMB_X21_Y26_N22
\inst700666|ACCB|valor_interno[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[9]~feeder_combout\ = \inst24|valor_interno\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(9),
	combout => \inst700666|ACCB|valor_interno[9]~feeder_combout\);

-- Location: FF_X21_Y26_N23
\inst700666|ACCB|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(9));

-- Location: LCCOMB_X24_Y26_N26
\inst700666|ACCA|valor_interno[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[9]~feeder_combout\ = \inst24|valor_interno\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(9),
	combout => \inst700666|ACCA|valor_interno[9]~feeder_combout\);

-- Location: FF_X24_Y26_N27
\inst700666|ACCA|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(9));

-- Location: LCCOMB_X24_Y26_N24
\inst202|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux6~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(9)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno[1]~1_combout\,
	datab => \inst700666|ACCB|valor_interno\(9),
	datac => \inst700666|inst|D1~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(9),
	combout => \inst202|Mux6~0_combout\);

-- Location: FF_X24_Y26_N25
\inst700|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(9));

-- Location: LCCOMB_X21_Y26_N18
\inst700666|ACCA|valor_interno[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[6]~feeder_combout\ = \inst24|valor_interno\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(6),
	combout => \inst700666|ACCA|valor_interno[6]~feeder_combout\);

-- Location: FF_X21_Y26_N19
\inst700666|ACCA|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(6));

-- Location: LCCOMB_X21_Y26_N28
\inst202|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux9~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(6)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(6),
	datab => \inst700666|ACCA|valor_interno\(6),
	datac => \inst700666|inst|D1~1_combout\,
	datad => \inst700|valor_interno[1]~1_combout\,
	combout => \inst202|Mux9~0_combout\);

-- Location: FF_X23_Y26_N11
\inst700|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux9~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(6));

-- Location: FF_X24_Y26_N15
\inst700666|ACCA|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(3));

-- Location: LCCOMB_X24_Y26_N14
\inst202|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux12~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(3)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(3),
	datab => \inst700|valor_interno[1]~1_combout\,
	datac => \inst700666|ACCA|valor_interno\(3),
	datad => \inst700666|inst|D1~1_combout\,
	combout => \inst202|Mux12~0_combout\);

-- Location: FF_X23_Y26_N17
\inst700|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux12~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(3));

-- Location: LCCOMB_X25_Y26_N22
\inst700666|ACCA|valor_interno[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[2]~feeder_combout\ = \inst24|valor_interno\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(2),
	combout => \inst700666|ACCA|valor_interno[2]~feeder_combout\);

-- Location: FF_X25_Y26_N23
\inst700666|ACCA|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(2));

-- Location: LCCOMB_X23_Y26_N4
\inst202|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux13~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(2)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(2),
	datab => \inst700666|inst|D1~1_combout\,
	datac => \inst700666|ACCA|valor_interno\(2),
	datad => \inst700|valor_interno[1]~1_combout\,
	combout => \inst202|Mux13~0_combout\);

-- Location: FF_X23_Y26_N5
\inst700|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux13~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(2));

-- Location: FF_X24_Y26_N9
\inst700666|ACCA|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(1));

-- Location: LCCOMB_X24_Y26_N8
\inst202|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux14~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(1)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|inst|D1~1_combout\,
	datab => \inst700666|ACCB|valor_interno\(1),
	datac => \inst700666|ACCA|valor_interno\(1),
	datad => \inst700|valor_interno[1]~1_combout\,
	combout => \inst202|Mux14~0_combout\);

-- Location: FF_X23_Y26_N27
\inst700|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux14~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(1));

-- Location: LCCOMB_X24_Y24_N2
\inst1|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux31~1_combout\ = (\inst1|Mux31~0_combout\ & (!\inst34|valor_interno\(2) & \inst34|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux31~0_combout\,
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(0),
	combout => \inst1|Mux31~1_combout\);

-- Location: FF_X24_Y24_N3
\inst8|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst1|Mux31~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(0));

-- Location: LCCOMB_X23_Y24_N14
\inst202|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux31~0_combout\ = (\inst32|$00000|auto_generated|result_node[0]~1_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & ((\inst8|valor_interno\(0)))) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- (\inst700666|inst|D2[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datab => \inst32|$00000|auto_generated|result_node[0]~1_combout\,
	datac => \inst700666|inst|D2[0]~6_combout\,
	datad => \inst8|valor_interno\(0),
	combout => \inst202|Mux31~0_combout\);

-- Location: LCCOMB_X23_Y26_N12
\inst202|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux31~1_combout\ = (\inst202|Mux31~0_combout\) # ((!\inst32|$00000|auto_generated|result_node[0]~1_combout\ & (\inst32|$00000|auto_generated|result_node[1]~0_combout\ & \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|$00000|auto_generated|result_node[0]~1_combout\,
	datab => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datac => \inst41|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \inst202|Mux31~0_combout\,
	combout => \inst202|Mux31~1_combout\);

-- Location: FF_X23_Y26_N13
\inst14|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux31~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(0));

-- Location: LCCOMB_X21_Y26_N8
\inst700666|ACCA|valor_interno[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[0]~feeder_combout\ = \inst24|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(0),
	combout => \inst700666|ACCA|valor_interno[0]~feeder_combout\);

-- Location: FF_X21_Y26_N9
\inst700666|ACCA|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(0));

-- Location: LCCOMB_X21_Y26_N2
\inst202|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux15~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(0)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(0),
	datab => \inst700666|ACCA|valor_interno\(0),
	datac => \inst700666|inst|D1~1_combout\,
	datad => \inst700|valor_interno[1]~1_combout\,
	combout => \inst202|Mux15~0_combout\);

-- Location: FF_X23_Y26_N21
\inst700|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux15~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(0));

-- Location: LCCOMB_X26_Y26_N0
\inst4|comb~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~12_combout\ = (!\inst4|comb~4_combout\ & \inst4|selregr[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~4_combout\,
	datad => \inst4|selregr[3]~3_combout\,
	combout => \inst4|comb~12_combout\);

-- Location: LCCOMB_X26_Y26_N22
\inst4|comb~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~11_combout\ = (\inst4|comb~4_combout\ & \inst4|selregr[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~4_combout\,
	datad => \inst4|selregr[3]~3_combout\,
	combout => \inst4|comb~11_combout\);

-- Location: LCCOMB_X26_Y26_N10
\inst4|selfalgs[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(1) = (!\inst4|comb~11_combout\ & ((\inst4|comb~12_combout\) # (\inst4|selfalgs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|comb~12_combout\,
	datac => \inst4|comb~11_combout\,
	datad => \inst4|selfalgs\(1),
	combout => \inst4|selfalgs\(1));

-- Location: LCCOMB_X23_Y27_N22
\inst29|$00000|auto_generated|result_node[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|result_node[1]~1_combout\ = (!\inst49|PCWrite~0_combout\ & (!\inst49|process_0~3_combout\ & (\inst4|selfalgs\(1) & \inst49|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|PCWrite~0_combout\,
	datab => \inst49|process_0~3_combout\,
	datac => \inst4|selfalgs\(1),
	datad => \inst49|process_0~1_combout\,
	combout => \inst29|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: FF_X23_Y27_N23
\inst16|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst29|$00000|auto_generated|result_node[1]~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(1));

-- Location: LCCOMB_X21_Y23_N4
\inst700666|ACCB|valor_interno[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[15]~feeder_combout\ = \inst24|valor_interno\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(15),
	combout => \inst700666|ACCB|valor_interno[15]~feeder_combout\);

-- Location: FF_X21_Y23_N5
\inst700666|ACCB|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(15));

-- Location: LCCOMB_X20_Y25_N12
\inst700666|ACCA|valor_interno[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[15]~feeder_combout\ = \inst24|valor_interno\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(15),
	combout => \inst700666|ACCA|valor_interno[15]~feeder_combout\);

-- Location: FF_X20_Y25_N13
\inst700666|ACCA|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(15));

-- Location: LCCOMB_X20_Y25_N14
\inst202|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux0~0_combout\ = (!\inst700|valor_interno[1]~1_combout\ & ((\inst700666|inst|D1~1_combout\ & ((\inst700666|ACCA|valor_interno\(15)))) # (!\inst700666|inst|D1~1_combout\ & (\inst700666|ACCB|valor_interno\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(15),
	datab => \inst700666|ACCA|valor_interno\(15),
	datac => \inst700666|inst|D1~1_combout\,
	datad => \inst700|valor_interno[1]~1_combout\,
	combout => \inst202|Mux0~0_combout\);

-- Location: FF_X20_Y25_N15
\inst700|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux0~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(15));

-- Location: LCCOMB_X21_Y23_N2
\inst202|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux16~0_combout\ = (!\inst14|valor_interno[10]~0_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & (\inst41|mem_rtl_0|auto_generated|ram_block1a15\)) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- ((\inst700666|ACCB|valor_interno\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datab => \inst14|valor_interno[10]~0_combout\,
	datac => \inst41|mem_rtl_0|auto_generated|ram_block1a15\,
	datad => \inst700666|ACCB|valor_interno\(15),
	combout => \inst202|Mux16~0_combout\);

-- Location: FF_X21_Y23_N3
\inst14|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux16~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(15));

-- Location: LCCOMB_X23_Y25_N12
\inst33|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~30_combout\ = (\inst700|valor_interno\(14) & ((\inst14|valor_interno\(14) & (\inst33|Add0~29\ & VCC)) # (!\inst14|valor_interno\(14) & (!\inst33|Add0~29\)))) # (!\inst700|valor_interno\(14) & ((\inst14|valor_interno\(14) & 
-- (!\inst33|Add0~29\)) # (!\inst14|valor_interno\(14) & ((\inst33|Add0~29\) # (GND)))))
-- \inst33|Add0~31\ = CARRY((\inst700|valor_interno\(14) & (!\inst14|valor_interno\(14) & !\inst33|Add0~29\)) # (!\inst700|valor_interno\(14) & ((!\inst33|Add0~29\) # (!\inst14|valor_interno\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(14),
	datab => \inst14|valor_interno\(14),
	datad => VCC,
	cin => \inst33|Add0~29\,
	combout => \inst33|Add0~30_combout\,
	cout => \inst33|Add0~31\);

-- Location: LCCOMB_X23_Y25_N14
\inst33|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~32_combout\ = ((\inst700|valor_interno\(15) $ (\inst14|valor_interno\(15) $ (!\inst33|Add0~31\)))) # (GND)
-- \inst33|Add0~33\ = CARRY((\inst700|valor_interno\(15) & ((\inst14|valor_interno\(15)) # (!\inst33|Add0~31\))) # (!\inst700|valor_interno\(15) & (\inst14|valor_interno\(15) & !\inst33|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(15),
	datab => \inst14|valor_interno\(15),
	datad => VCC,
	cin => \inst33|Add0~31\,
	combout => \inst33|Add0~32_combout\,
	cout => \inst33|Add0~33\);

-- Location: LCCOMB_X23_Y25_N16
\inst33|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~34_combout\ = \inst33|Add0~33\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst33|Add0~33\,
	combout => \inst33|Add0~34_combout\);

-- Location: LCCOMB_X23_Y27_N16
\inst33|opres[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~33_combout\ = (!\inst16|selop\(2) & (\inst16|selop\(0) & \inst33|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datab => \inst16|selop\(0),
	datad => \inst33|Add0~34_combout\,
	combout => \inst33|opres[16]~33_combout\);

-- Location: LCCOMB_X24_Y27_N18
\inst33|opres[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~2_combout\ = (!\inst16|selop\(2) & !\inst16|selop\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datad => \inst16|selop\(0),
	combout => \inst33|opres[16]~2_combout\);

-- Location: CLKCTRL_G12
\inst33|opres[16]~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst33|opres[16]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst33|opres[16]~2clkctrl_outclk\);

-- Location: LCCOMB_X23_Y27_N20
\inst33|opres[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(16) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres\(16)))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres[16]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[16]~33_combout\,
	datab => \inst33|opres\(16),
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(16));

-- Location: LCCOMB_X26_Y25_N20
\inst4|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~6_combout\ = (!\inst4|sels1~0_combout\ & (!\inst4|Equal1~1_combout\ & ((!\inst4|Equal0~3_combout\) # (!\inst4|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~2_combout\,
	datab => \inst4|Equal0~3_combout\,
	datac => \inst4|sels1~0_combout\,
	datad => \inst4|Equal1~1_combout\,
	combout => \inst4|comb~6_combout\);

-- Location: LCCOMB_X26_Y25_N18
\inst4|comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~7_combout\ = (\inst4|selregr[3]~3_combout\ & \inst4|comb~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selregr[3]~3_combout\,
	datad => \inst4|comb~6_combout\,
	combout => \inst4|comb~7_combout\);

-- Location: LCCOMB_X26_Y25_N28
\inst4|selregr[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selregr[0]~4_combout\ = (\inst4|Equal0~2_combout\ & ((\inst4|Equal0~3_combout\) # ((\inst4|sels1~0_combout\ & !\inst4|Equal1~1_combout\)))) # (!\inst4|Equal0~2_combout\ & (((\inst4|sels1~0_combout\ & !\inst4|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~2_combout\,
	datab => \inst4|Equal0~3_combout\,
	datac => \inst4|sels1~0_combout\,
	datad => \inst4|Equal1~1_combout\,
	combout => \inst4|selregr[0]~4_combout\);

-- Location: LCCOMB_X26_Y25_N26
\inst4|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~5_combout\ = (\inst4|selregr[3]~3_combout\ & ((\inst4|selregr[0]~4_combout\) # (\inst4|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selregr[3]~3_combout\,
	datab => \inst4|selregr[0]~4_combout\,
	datad => \inst4|Equal1~1_combout\,
	combout => \inst4|comb~5_combout\);

-- Location: LCCOMB_X26_Y25_N6
\inst4|selfalgs[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(0) = (!\inst4|comb~5_combout\ & ((\inst4|comb~7_combout\) # (\inst4|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|comb~7_combout\,
	datac => \inst4|comb~5_combout\,
	datad => \inst4|selfalgs\(0),
	combout => \inst4|selfalgs\(0));

-- Location: LCCOMB_X24_Y27_N2
\inst29|$00000|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|result_node[0]~0_combout\ = (!\inst49|PCWrite~0_combout\ & (!\inst49|process_0~3_combout\ & (\inst49|process_0~1_combout\ & \inst4|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|PCWrite~0_combout\,
	datab => \inst49|process_0~3_combout\,
	datac => \inst49|process_0~1_combout\,
	datad => \inst4|selfalgs\(0),
	combout => \inst29|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X23_Y27_N5
\inst16|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst29|$00000|auto_generated|result_node[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(0));

-- Location: LCCOMB_X25_Y25_N24
\inst4|comb~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~13_combout\ = (!\inst4|Equal7~0_combout\ & ((\inst4|Equal11~0_combout\) # ((\inst4|Equal9~1_combout\) # (!\inst4|selregr[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal11~0_combout\,
	datab => \inst4|selregr[2]~2_combout\,
	datac => \inst4|Equal9~1_combout\,
	datad => \inst4|Equal7~0_combout\,
	combout => \inst4|comb~13_combout\);

-- Location: LCCOMB_X26_Y27_N28
\inst4|selfalgs[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(2) = (!\inst4|comb~13_combout\ & ((\inst4|Equal7~0_combout\) # (\inst4|selfalgs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal7~0_combout\,
	datac => \inst4|comb~13_combout\,
	datad => \inst4|selfalgs\(2),
	combout => \inst4|selfalgs\(2));

-- Location: LCCOMB_X23_Y27_N10
\inst29|$00000|auto_generated|result_node[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|result_node[2]~2_combout\ = (!\inst49|PCWrite~0_combout\ & (!\inst49|process_0~3_combout\ & (\inst4|selfalgs\(2) & \inst49|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|PCWrite~0_combout\,
	datab => \inst49|process_0~3_combout\,
	datac => \inst4|selfalgs\(2),
	datad => \inst49|process_0~1_combout\,
	combout => \inst29|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: FF_X23_Y27_N11
\inst16|selfalgs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst29|$00000|auto_generated|result_node[2]~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(2));

-- Location: LCCOMB_X23_Y27_N14
\inst|ci~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ci~4_combout\ = (\inst16|selfalgs\(1) & ((\inst33|opres\(16)) # ((\inst16|selfalgs\(2))))) # (!\inst16|selfalgs\(1) & (((!\inst16|selfalgs\(2)) # (!\inst16|selfalgs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \inst33|opres\(16),
	datac => \inst16|selfalgs\(0),
	datad => \inst16|selfalgs\(2),
	combout => \inst|ci~4_combout\);

-- Location: LCCOMB_X26_Y27_N10
\inst4|selfalgs[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selfalgs\(3) = (!\inst4|comb~13_combout\ & ((\inst4|Equal7~0_combout\) # (\inst4|selfalgs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal7~0_combout\,
	datac => \inst4|comb~13_combout\,
	datad => \inst4|selfalgs\(3),
	combout => \inst4|selfalgs\(3));

-- Location: LCCOMB_X24_Y27_N22
\inst29|$00000|auto_generated|result_node[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|result_node[3]~3_combout\ = (\inst4|selfalgs\(3) & (!\inst49|process_0~3_combout\ & (\inst49|process_0~1_combout\ & !\inst49|PCWrite~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selfalgs\(3),
	datab => \inst49|process_0~3_combout\,
	datac => \inst49|process_0~1_combout\,
	datad => \inst49|PCWrite~0_combout\,
	combout => \inst29|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: FF_X23_Y27_N17
\inst16|selfalgs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \inst29|$00000|auto_generated|result_node[3]~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(3));

-- Location: LCCOMB_X23_Y27_N8
\inst|ci~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ci~6_combout\ = (\inst|ci~4_combout\) # (\inst16|selfalgs\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ci~4_combout\,
	datad => \inst16|selfalgs\(3),
	combout => \inst|ci~6_combout\);

-- Location: LCCOMB_X23_Y27_N12
\inst|ci~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ci~5_combout\ = (\inst16|selfalgs\(2) & (!\inst16|selfalgs\(1) & (!\inst16|selfalgs\(3) & \inst16|selfalgs\(0)))) # (!\inst16|selfalgs\(2) & (\inst16|selfalgs\(1) $ (((\inst16|selfalgs\(3) & !\inst16|selfalgs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \inst16|selfalgs\(3),
	datac => \inst16|selfalgs\(0),
	datad => \inst16|selfalgs\(2),
	combout => \inst|ci~5_combout\);

-- Location: LCCOMB_X23_Y27_N18
\inst|ci\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ci~combout\ = (\inst|ci~5_combout\ & ((\inst|ci~6_combout\))) # (!\inst|ci~5_combout\ & (\inst|ci~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ci~combout\,
	datac => \inst|ci~6_combout\,
	datad => \inst|ci~5_combout\,
	combout => \inst|ci~combout\);

-- Location: LCCOMB_X23_Y24_N18
\inst4|selc\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selc~combout\ = (!\inst4|comb~27_combout\ & ((\inst4|comb~31_combout\) # (\inst4|selc~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~31_combout\,
	datac => \inst4|comb~27_combout\,
	datad => \inst4|selc~combout\,
	combout => \inst4|selc~combout\);

-- Location: LCCOMB_X23_Y24_N16
\inst27|$00000|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|$00000|auto_generated|result_node[0]~0_combout\ = (!\inst49|process_0~3_combout\ & (\inst49|process_0~1_combout\ & (!\inst49|PCWrite~0_combout\ & \inst4|selc~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~3_combout\,
	datab => \inst49|process_0~1_combout\,
	datac => \inst49|PCWrite~0_combout\,
	datad => \inst4|selc~combout\,
	combout => \inst27|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X23_Y27_N31
\inst16|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst27|$00000|auto_generated|result_node[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selc~q\);

-- Location: LCCOMB_X26_Y26_N28
\inst4|comb~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~30_combout\ = (\inst4|Equal0~2_combout\ & (\inst4|Equal1~0_combout\ & (\inst8|valor_interno\(22) & \inst4|selregr[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~2_combout\,
	datab => \inst4|Equal1~0_combout\,
	datac => \inst8|valor_interno\(22),
	datad => \inst4|selregr[2]~2_combout\,
	combout => \inst4|comb~30_combout\);

-- Location: LCCOMB_X26_Y25_N2
\inst4|cadj\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cadj~combout\ = (!\inst4|comb~10_combout\ & ((\inst4|comb~30_combout\) # (\inst4|cadj~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~10_combout\,
	datac => \inst4|comb~30_combout\,
	datad => \inst4|cadj~combout\,
	combout => \inst4|cadj~combout\);

-- Location: LCCOMB_X24_Y27_N4
\inst28|$00000|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|$00000|auto_generated|result_node[0]~0_combout\ = (!\inst49|PCWrite~0_combout\ & (\inst4|cadj~combout\ & (\inst49|process_0~1_combout\ & !\inst49|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|PCWrite~0_combout\,
	datab => \inst4|cadj~combout\,
	datac => \inst49|process_0~1_combout\,
	datad => \inst49|process_0~3_combout\,
	combout => \inst28|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X23_Y27_N29
\inst16|cadj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst28|$00000|auto_generated|result_node[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|cadj~q\);

-- Location: LCCOMB_X23_Y27_N30
\inst40|$00000|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[0]~0_combout\ = (\inst16|selc~q\ & ((\inst16|cadj~q\))) # (!\inst16|selc~q\ & (\inst|ci~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ci~combout\,
	datac => \inst16|selc~q\,
	datad => \inst16|cadj~q\,
	combout => \inst40|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X23_Y26_N14
\inst33|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~1_cout\ = CARRY(\inst40|$00000|auto_generated|result_node[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	datad => VCC,
	cout => \inst33|Add0~1_cout\);

-- Location: LCCOMB_X23_Y26_N16
\inst33|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~2_combout\ = (\inst14|valor_interno\(0) & ((\inst700|valor_interno\(0) & (\inst33|Add0~1_cout\ & VCC)) # (!\inst700|valor_interno\(0) & (!\inst33|Add0~1_cout\)))) # (!\inst14|valor_interno\(0) & ((\inst700|valor_interno\(0) & 
-- (!\inst33|Add0~1_cout\)) # (!\inst700|valor_interno\(0) & ((\inst33|Add0~1_cout\) # (GND)))))
-- \inst33|Add0~3\ = CARRY((\inst14|valor_interno\(0) & (!\inst700|valor_interno\(0) & !\inst33|Add0~1_cout\)) # (!\inst14|valor_interno\(0) & ((!\inst33|Add0~1_cout\) # (!\inst700|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(0),
	datab => \inst700|valor_interno\(0),
	datad => VCC,
	cin => \inst33|Add0~1_cout\,
	combout => \inst33|Add0~2_combout\,
	cout => \inst33|Add0~3\);

-- Location: LCCOMB_X23_Y26_N18
\inst33|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~4_combout\ = ((\inst700|valor_interno\(1) $ (\inst14|valor_interno\(1) $ (!\inst33|Add0~3\)))) # (GND)
-- \inst33|Add0~5\ = CARRY((\inst700|valor_interno\(1) & ((\inst14|valor_interno\(1)) # (!\inst33|Add0~3\))) # (!\inst700|valor_interno\(1) & (\inst14|valor_interno\(1) & !\inst33|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(1),
	datab => \inst14|valor_interno\(1),
	datad => VCC,
	cin => \inst33|Add0~3\,
	combout => \inst33|Add0~4_combout\,
	cout => \inst33|Add0~5\);

-- Location: LCCOMB_X23_Y26_N20
\inst33|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~6_combout\ = (\inst14|valor_interno\(2) & ((\inst700|valor_interno\(2) & (\inst33|Add0~5\ & VCC)) # (!\inst700|valor_interno\(2) & (!\inst33|Add0~5\)))) # (!\inst14|valor_interno\(2) & ((\inst700|valor_interno\(2) & (!\inst33|Add0~5\)) # 
-- (!\inst700|valor_interno\(2) & ((\inst33|Add0~5\) # (GND)))))
-- \inst33|Add0~7\ = CARRY((\inst14|valor_interno\(2) & (!\inst700|valor_interno\(2) & !\inst33|Add0~5\)) # (!\inst14|valor_interno\(2) & ((!\inst33|Add0~5\) # (!\inst700|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(2),
	datab => \inst700|valor_interno\(2),
	datad => VCC,
	cin => \inst33|Add0~5\,
	combout => \inst33|Add0~6_combout\,
	cout => \inst33|Add0~7\);

-- Location: LCCOMB_X23_Y26_N22
\inst33|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~8_combout\ = ((\inst14|valor_interno\(3) $ (\inst700|valor_interno\(3) $ (!\inst33|Add0~7\)))) # (GND)
-- \inst33|Add0~9\ = CARRY((\inst14|valor_interno\(3) & ((\inst700|valor_interno\(3)) # (!\inst33|Add0~7\))) # (!\inst14|valor_interno\(3) & (\inst700|valor_interno\(3) & !\inst33|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(3),
	datab => \inst700|valor_interno\(3),
	datad => VCC,
	cin => \inst33|Add0~7\,
	combout => \inst33|Add0~8_combout\,
	cout => \inst33|Add0~9\);

-- Location: LCCOMB_X23_Y26_N24
\inst33|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~10_combout\ = (\inst700|valor_interno\(4) & ((\inst14|valor_interno\(4) & (\inst33|Add0~9\ & VCC)) # (!\inst14|valor_interno\(4) & (!\inst33|Add0~9\)))) # (!\inst700|valor_interno\(4) & ((\inst14|valor_interno\(4) & (!\inst33|Add0~9\)) # 
-- (!\inst14|valor_interno\(4) & ((\inst33|Add0~9\) # (GND)))))
-- \inst33|Add0~11\ = CARRY((\inst700|valor_interno\(4) & (!\inst14|valor_interno\(4) & !\inst33|Add0~9\)) # (!\inst700|valor_interno\(4) & ((!\inst33|Add0~9\) # (!\inst14|valor_interno\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(4),
	datab => \inst14|valor_interno\(4),
	datad => VCC,
	cin => \inst33|Add0~9\,
	combout => \inst33|Add0~10_combout\,
	cout => \inst33|Add0~11\);

-- Location: LCCOMB_X23_Y26_N26
\inst33|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~12_combout\ = ((\inst14|valor_interno\(5) $ (\inst700|valor_interno\(5) $ (!\inst33|Add0~11\)))) # (GND)
-- \inst33|Add0~13\ = CARRY((\inst14|valor_interno\(5) & ((\inst700|valor_interno\(5)) # (!\inst33|Add0~11\))) # (!\inst14|valor_interno\(5) & (\inst700|valor_interno\(5) & !\inst33|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(5),
	datab => \inst700|valor_interno\(5),
	datad => VCC,
	cin => \inst33|Add0~11\,
	combout => \inst33|Add0~12_combout\,
	cout => \inst33|Add0~13\);

-- Location: LCCOMB_X23_Y26_N28
\inst33|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~14_combout\ = (\inst14|valor_interno\(6) & ((\inst700|valor_interno\(6) & (\inst33|Add0~13\ & VCC)) # (!\inst700|valor_interno\(6) & (!\inst33|Add0~13\)))) # (!\inst14|valor_interno\(6) & ((\inst700|valor_interno\(6) & (!\inst33|Add0~13\)) # 
-- (!\inst700|valor_interno\(6) & ((\inst33|Add0~13\) # (GND)))))
-- \inst33|Add0~15\ = CARRY((\inst14|valor_interno\(6) & (!\inst700|valor_interno\(6) & !\inst33|Add0~13\)) # (!\inst14|valor_interno\(6) & ((!\inst33|Add0~13\) # (!\inst700|valor_interno\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(6),
	datab => \inst700|valor_interno\(6),
	datad => VCC,
	cin => \inst33|Add0~13\,
	combout => \inst33|Add0~14_combout\,
	cout => \inst33|Add0~15\);

-- Location: LCCOMB_X23_Y26_N30
\inst33|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~16_combout\ = ((\inst14|valor_interno\(7) $ (\inst700|valor_interno\(7) $ (!\inst33|Add0~15\)))) # (GND)
-- \inst33|Add0~17\ = CARRY((\inst14|valor_interno\(7) & ((\inst700|valor_interno\(7)) # (!\inst33|Add0~15\))) # (!\inst14|valor_interno\(7) & (\inst700|valor_interno\(7) & !\inst33|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(7),
	datab => \inst700|valor_interno\(7),
	datad => VCC,
	cin => \inst33|Add0~15\,
	combout => \inst33|Add0~16_combout\,
	cout => \inst33|Add0~17\);

-- Location: LCCOMB_X23_Y25_N0
\inst33|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~18_combout\ = (\inst700|valor_interno\(8) & ((\inst14|valor_interno\(8) & (\inst33|Add0~17\ & VCC)) # (!\inst14|valor_interno\(8) & (!\inst33|Add0~17\)))) # (!\inst700|valor_interno\(8) & ((\inst14|valor_interno\(8) & (!\inst33|Add0~17\)) # 
-- (!\inst14|valor_interno\(8) & ((\inst33|Add0~17\) # (GND)))))
-- \inst33|Add0~19\ = CARRY((\inst700|valor_interno\(8) & (!\inst14|valor_interno\(8) & !\inst33|Add0~17\)) # (!\inst700|valor_interno\(8) & ((!\inst33|Add0~17\) # (!\inst14|valor_interno\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(8),
	datab => \inst14|valor_interno\(8),
	datad => VCC,
	cin => \inst33|Add0~17\,
	combout => \inst33|Add0~18_combout\,
	cout => \inst33|Add0~19\);

-- Location: LCCOMB_X23_Y25_N2
\inst33|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~20_combout\ = ((\inst14|valor_interno\(9) $ (\inst700|valor_interno\(9) $ (!\inst33|Add0~19\)))) # (GND)
-- \inst33|Add0~21\ = CARRY((\inst14|valor_interno\(9) & ((\inst700|valor_interno\(9)) # (!\inst33|Add0~19\))) # (!\inst14|valor_interno\(9) & (\inst700|valor_interno\(9) & !\inst33|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(9),
	datab => \inst700|valor_interno\(9),
	datad => VCC,
	cin => \inst33|Add0~19\,
	combout => \inst33|Add0~20_combout\,
	cout => \inst33|Add0~21\);

-- Location: LCCOMB_X23_Y25_N4
\inst33|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~22_combout\ = (\inst14|valor_interno\(10) & ((\inst700|valor_interno\(10) & (\inst33|Add0~21\ & VCC)) # (!\inst700|valor_interno\(10) & (!\inst33|Add0~21\)))) # (!\inst14|valor_interno\(10) & ((\inst700|valor_interno\(10) & 
-- (!\inst33|Add0~21\)) # (!\inst700|valor_interno\(10) & ((\inst33|Add0~21\) # (GND)))))
-- \inst33|Add0~23\ = CARRY((\inst14|valor_interno\(10) & (!\inst700|valor_interno\(10) & !\inst33|Add0~21\)) # (!\inst14|valor_interno\(10) & ((!\inst33|Add0~21\) # (!\inst700|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(10),
	datab => \inst700|valor_interno\(10),
	datad => VCC,
	cin => \inst33|Add0~21\,
	combout => \inst33|Add0~22_combout\,
	cout => \inst33|Add0~23\);

-- Location: LCCOMB_X23_Y25_N6
\inst33|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~24_combout\ = ((\inst700|valor_interno\(11) $ (\inst14|valor_interno\(11) $ (!\inst33|Add0~23\)))) # (GND)
-- \inst33|Add0~25\ = CARRY((\inst700|valor_interno\(11) & ((\inst14|valor_interno\(11)) # (!\inst33|Add0~23\))) # (!\inst700|valor_interno\(11) & (\inst14|valor_interno\(11) & !\inst33|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(11),
	datab => \inst14|valor_interno\(11),
	datad => VCC,
	cin => \inst33|Add0~23\,
	combout => \inst33|Add0~24_combout\,
	cout => \inst33|Add0~25\);

-- Location: LCCOMB_X23_Y25_N8
\inst33|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~26_combout\ = (\inst14|valor_interno\(12) & ((\inst700|valor_interno\(12) & (\inst33|Add0~25\ & VCC)) # (!\inst700|valor_interno\(12) & (!\inst33|Add0~25\)))) # (!\inst14|valor_interno\(12) & ((\inst700|valor_interno\(12) & 
-- (!\inst33|Add0~25\)) # (!\inst700|valor_interno\(12) & ((\inst33|Add0~25\) # (GND)))))
-- \inst33|Add0~27\ = CARRY((\inst14|valor_interno\(12) & (!\inst700|valor_interno\(12) & !\inst33|Add0~25\)) # (!\inst14|valor_interno\(12) & ((!\inst33|Add0~25\) # (!\inst700|valor_interno\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(12),
	datab => \inst700|valor_interno\(12),
	datad => VCC,
	cin => \inst33|Add0~25\,
	combout => \inst33|Add0~26_combout\,
	cout => \inst33|Add0~27\);

-- Location: LCCOMB_X23_Y25_N10
\inst33|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~28_combout\ = ((\inst14|valor_interno\(13) $ (\inst700|valor_interno\(13) $ (!\inst33|Add0~27\)))) # (GND)
-- \inst33|Add0~29\ = CARRY((\inst14|valor_interno\(13) & ((\inst700|valor_interno\(13)) # (!\inst33|Add0~27\))) # (!\inst14|valor_interno\(13) & (\inst700|valor_interno\(13) & !\inst33|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(13),
	datab => \inst700|valor_interno\(13),
	datad => VCC,
	cin => \inst33|Add0~27\,
	combout => \inst33|Add0~28_combout\,
	cout => \inst33|Add0~29\);

-- Location: LCCOMB_X23_Y25_N28
\inst33|opres[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~29_combout\ = (\inst16|selop\(2) & ((\inst700|valor_interno\(14) & ((!\inst16|selop\(0)) # (!\inst14|valor_interno\(14)))) # (!\inst700|valor_interno\(14) & (\inst14|valor_interno\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(14),
	datab => \inst14|valor_interno\(14),
	datac => \inst16|selop\(0),
	datad => \inst16|selop\(2),
	combout => \inst33|opres[14]~29_combout\);

-- Location: LCCOMB_X23_Y25_N20
\inst33|opres[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~30_combout\ = (\inst33|opres[14]~29_combout\) # ((\inst33|Add0~30_combout\ & !\inst16|selop\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|Add0~30_combout\,
	datab => \inst16|selop\(2),
	datad => \inst33|opres[14]~29_combout\,
	combout => \inst33|opres[14]~30_combout\);

-- Location: LCCOMB_X23_Y25_N18
\inst33|opres[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(14) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres\(14)))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres[14]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~30_combout\,
	datac => \inst33|opres\(14),
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(14));

-- Location: LCCOMB_X23_Y25_N30
\inst20|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux17~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selresult\(0),
	datad => \inst33|opres\(14),
	combout => \inst20|Mux17~0_combout\);

-- Location: FF_X23_Y25_N31
\inst24|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux17~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(14));

-- Location: LCCOMB_X21_Y23_N26
\inst202|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux18~0_combout\ = (!\inst14|valor_interno[10]~0_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & (\inst41|mem_rtl_0|auto_generated|ram_block1a13\)) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- ((\inst700666|ACCB|valor_interno\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datab => \inst14|valor_interno[10]~0_combout\,
	datac => \inst41|mem_rtl_0|auto_generated|ram_block1a13\,
	datad => \inst700666|ACCB|valor_interno\(13),
	combout => \inst202|Mux18~0_combout\);

-- Location: FF_X21_Y23_N27
\inst14|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux18~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(13));

-- Location: LCCOMB_X24_Y27_N6
\inst33|opres[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~27_combout\ = (\inst16|selop\(2) & ((\inst14|valor_interno\(13) & ((!\inst700|valor_interno\(13)) # (!\inst16|selop\(0)))) # (!\inst14|valor_interno\(13) & ((\inst700|valor_interno\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(0),
	datab => \inst14|valor_interno\(13),
	datac => \inst700|valor_interno\(13),
	datad => \inst16|selop\(2),
	combout => \inst33|opres[13]~27_combout\);

-- Location: LCCOMB_X24_Y25_N30
\inst33|opres[13]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~28_combout\ = (\inst33|opres[13]~27_combout\) # ((!\inst16|selop\(2) & \inst33|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[13]~27_combout\,
	datab => \inst16|selop\(2),
	datad => \inst33|Add0~28_combout\,
	combout => \inst33|opres[13]~28_combout\);

-- Location: LCCOMB_X24_Y25_N24
\inst33|opres[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(13) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres\(13)))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres[13]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[13]~28_combout\,
	datac => \inst33|opres\(13),
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(13));

-- Location: LCCOMB_X24_Y25_N4
\inst20|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux18~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datad => \inst33|opres\(13),
	combout => \inst20|Mux18~0_combout\);

-- Location: FF_X24_Y25_N5
\inst24|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux18~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(13));

-- Location: LCCOMB_X21_Y23_N16
\inst202|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux19~0_combout\ = (!\inst14|valor_interno[10]~0_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & ((\inst41|mem_rtl_0|auto_generated|ram_block1a12\))) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- (\inst700666|ACCB|valor_interno\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno[10]~0_combout\,
	datab => \inst700666|ACCB|valor_interno\(12),
	datac => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datad => \inst41|mem_rtl_0|auto_generated|ram_block1a12\,
	combout => \inst202|Mux19~0_combout\);

-- Location: FF_X21_Y23_N17
\inst14|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux19~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(12));

-- Location: LCCOMB_X21_Y25_N16
\inst33|opres[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~25_combout\ = (\inst16|selop\(2) & ((\inst14|valor_interno\(12) & ((!\inst16|selop\(0)) # (!\inst700|valor_interno\(12)))) # (!\inst14|valor_interno\(12) & (\inst700|valor_interno\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datab => \inst14|valor_interno\(12),
	datac => \inst700|valor_interno\(12),
	datad => \inst16|selop\(0),
	combout => \inst33|opres[12]~25_combout\);

-- Location: LCCOMB_X21_Y25_N10
\inst33|opres[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~26_combout\ = (\inst33|opres[12]~25_combout\) # ((!\inst16|selop\(2) & \inst33|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[12]~25_combout\,
	datac => \inst16|selop\(2),
	datad => \inst33|Add0~26_combout\,
	combout => \inst33|opres[12]~26_combout\);

-- Location: LCCOMB_X21_Y25_N6
\inst33|opres[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(12) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres\(12))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres[12]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(12),
	datac => \inst33|opres[12]~26_combout\,
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(12));

-- Location: LCCOMB_X21_Y25_N24
\inst20|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux19~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datad => \inst33|opres\(12),
	combout => \inst20|Mux19~0_combout\);

-- Location: FF_X21_Y25_N25
\inst24|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux19~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(12));

-- Location: LCCOMB_X21_Y23_N10
\inst202|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux20~0_combout\ = (!\inst14|valor_interno[10]~0_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & ((\inst41|mem_rtl_0|auto_generated|ram_block1a11\))) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- (\inst700666|ACCB|valor_interno\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno[10]~0_combout\,
	datab => \inst700666|ACCB|valor_interno\(11),
	datac => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datad => \inst41|mem_rtl_0|auto_generated|ram_block1a11\,
	combout => \inst202|Mux20~0_combout\);

-- Location: FF_X21_Y23_N11
\inst14|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux20~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(11));

-- Location: LCCOMB_X21_Y25_N20
\inst33|opres[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~23_combout\ = (\inst16|selop\(2) & ((\inst14|valor_interno\(11) & ((!\inst16|selop\(0)) # (!\inst700|valor_interno\(11)))) # (!\inst14|valor_interno\(11) & (\inst700|valor_interno\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(11),
	datab => \inst700|valor_interno\(11),
	datac => \inst16|selop\(2),
	datad => \inst16|selop\(0),
	combout => \inst33|opres[11]~23_combout\);

-- Location: LCCOMB_X21_Y25_N14
\inst33|opres[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~24_combout\ = (\inst33|opres[11]~23_combout\) # ((\inst33|Add0~24_combout\ & !\inst16|selop\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[11]~23_combout\,
	datac => \inst33|Add0~24_combout\,
	datad => \inst16|selop\(2),
	combout => \inst33|opres[11]~24_combout\);

-- Location: LCCOMB_X21_Y25_N28
\inst33|opres[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(11) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres\(11))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres[11]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(11),
	datac => \inst33|opres[11]~24_combout\,
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(11));

-- Location: LCCOMB_X21_Y25_N30
\inst20|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux20~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datad => \inst33|opres\(11),
	combout => \inst20|Mux20~0_combout\);

-- Location: FF_X21_Y25_N31
\inst24|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux20~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(11));

-- Location: LCCOMB_X21_Y23_N12
\inst202|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux21~0_combout\ = (!\inst14|valor_interno[10]~0_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & ((\inst41|mem_rtl_0|auto_generated|ram_block1a10\))) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- (\inst700666|ACCB|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datab => \inst700666|ACCB|valor_interno\(10),
	datac => \inst41|mem_rtl_0|auto_generated|ram_block1a10\,
	datad => \inst14|valor_interno[10]~0_combout\,
	combout => \inst202|Mux21~0_combout\);

-- Location: FF_X21_Y23_N13
\inst14|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux21~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(10));

-- Location: LCCOMB_X21_Y25_N0
\inst33|opres[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~21_combout\ = (\inst16|selop\(2) & ((\inst14|valor_interno\(10) & ((!\inst16|selop\(0)) # (!\inst700|valor_interno\(10)))) # (!\inst14|valor_interno\(10) & (\inst700|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(10),
	datab => \inst700|valor_interno\(10),
	datac => \inst16|selop\(2),
	datad => \inst16|selop\(0),
	combout => \inst33|opres[10]~21_combout\);

-- Location: LCCOMB_X21_Y25_N26
\inst33|opres[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~22_combout\ = (\inst33|opres[10]~21_combout\) # ((\inst33|Add0~22_combout\ & !\inst16|selop\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[10]~21_combout\,
	datac => \inst33|Add0~22_combout\,
	datad => \inst16|selop\(2),
	combout => \inst33|opres[10]~22_combout\);

-- Location: LCCOMB_X21_Y25_N18
\inst33|opres[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(10) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres\(10)))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres[10]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[10]~22_combout\,
	datac => \inst33|opres\(10),
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(10));

-- Location: LCCOMB_X21_Y25_N8
\inst20|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux21~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datad => \inst33|opres\(10),
	combout => \inst20|Mux21~0_combout\);

-- Location: FF_X21_Y25_N9
\inst24|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux21~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(10));

-- Location: LCCOMB_X21_Y23_N22
\inst202|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux22~0_combout\ = (!\inst14|valor_interno[10]~0_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & (\inst41|mem_rtl_0|auto_generated|ram_block1a9\)) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- ((\inst700666|ACCB|valor_interno\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datab => \inst14|valor_interno[10]~0_combout\,
	datac => \inst41|mem_rtl_0|auto_generated|ram_block1a9\,
	datad => \inst700666|ACCB|valor_interno\(9),
	combout => \inst202|Mux22~0_combout\);

-- Location: FF_X21_Y23_N23
\inst14|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux22~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(9));

-- Location: LCCOMB_X24_Y27_N14
\inst33|opres[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~19_combout\ = (\inst16|selop\(2) & ((\inst700|valor_interno\(9) & ((!\inst14|valor_interno\(9)) # (!\inst16|selop\(0)))) # (!\inst700|valor_interno\(9) & ((\inst14|valor_interno\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(9),
	datab => \inst16|selop\(0),
	datac => \inst16|selop\(2),
	datad => \inst14|valor_interno\(9),
	combout => \inst33|opres[9]~19_combout\);

-- Location: LCCOMB_X21_Y25_N22
\inst33|opres[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~20_combout\ = (\inst33|opres[9]~19_combout\) # ((\inst33|Add0~20_combout\ & !\inst16|selop\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|Add0~20_combout\,
	datac => \inst16|selop\(2),
	datad => \inst33|opres[9]~19_combout\,
	combout => \inst33|opres[9]~20_combout\);

-- Location: LCCOMB_X21_Y25_N12
\inst33|opres[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(9) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres\(9))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres[9]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(9),
	datab => \inst33|opres[9]~20_combout\,
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(9));

-- Location: LCCOMB_X21_Y25_N2
\inst20|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux22~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datad => \inst33|opres\(9),
	combout => \inst20|Mux22~0_combout\);

-- Location: FF_X21_Y25_N3
\inst24|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux22~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(9));

-- Location: LCCOMB_X21_Y23_N24
\inst202|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux23~0_combout\ = (!\inst14|valor_interno[10]~0_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & ((\inst41|mem_rtl_0|auto_generated|ram_block1a8\))) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- (\inst700666|ACCB|valor_interno\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno[10]~0_combout\,
	datab => \inst700666|ACCB|valor_interno\(8),
	datac => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datad => \inst41|mem_rtl_0|auto_generated|ram_block1a8\,
	combout => \inst202|Mux23~0_combout\);

-- Location: FF_X21_Y23_N25
\inst14|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux23~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(8));

-- Location: LCCOMB_X24_Y25_N20
\inst33|opres[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~17_combout\ = (\inst16|selop\(2) & ((\inst700|valor_interno\(8) & ((!\inst14|valor_interno\(8)) # (!\inst16|selop\(0)))) # (!\inst700|valor_interno\(8) & ((\inst14|valor_interno\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(8),
	datab => \inst16|selop\(2),
	datac => \inst16|selop\(0),
	datad => \inst14|valor_interno\(8),
	combout => \inst33|opres[8]~17_combout\);

-- Location: LCCOMB_X23_Y25_N26
\inst33|opres[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~18_combout\ = (\inst33|opres[8]~17_combout\) # ((\inst33|Add0~18_combout\ & !\inst16|selop\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[8]~17_combout\,
	datab => \inst33|Add0~18_combout\,
	datad => \inst16|selop\(2),
	combout => \inst33|opres[8]~18_combout\);

-- Location: LCCOMB_X20_Y26_N16
\inst33|opres[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(8) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres\(8)))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres[8]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[8]~18_combout\,
	datab => \inst33|opres\(8),
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(8));

-- Location: LCCOMB_X20_Y26_N4
\inst20|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux23~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datad => \inst33|opres\(8),
	combout => \inst20|Mux23~0_combout\);

-- Location: FF_X20_Y26_N5
\inst24|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux23~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(8));

-- Location: LCCOMB_X23_Y23_N0
\inst202|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux24~0_combout\ = (!\inst14|valor_interno[10]~0_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & ((\inst41|mem_rtl_0|auto_generated|ram_block1a7\))) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- (\inst700666|ACCB|valor_interno\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno[10]~0_combout\,
	datab => \inst700666|ACCB|valor_interno\(7),
	datac => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datad => \inst41|mem_rtl_0|auto_generated|ram_block1a7\,
	combout => \inst202|Mux24~0_combout\);

-- Location: FF_X23_Y23_N1
\inst14|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux24~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(7));

-- Location: LCCOMB_X20_Y26_N6
\inst33|opres[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~15_combout\ = (\inst16|selop\(2) & ((\inst700|valor_interno\(7) & ((!\inst14|valor_interno\(7)) # (!\inst16|selop\(0)))) # (!\inst700|valor_interno\(7) & ((\inst14|valor_interno\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(7),
	datab => \inst16|selop\(0),
	datac => \inst16|selop\(2),
	datad => \inst14|valor_interno\(7),
	combout => \inst33|opres[7]~15_combout\);

-- Location: LCCOMB_X20_Y26_N24
\inst33|opres[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~16_combout\ = (\inst33|opres[7]~15_combout\) # ((!\inst16|selop\(2) & \inst33|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[7]~15_combout\,
	datab => \inst16|selop\(2),
	datad => \inst33|Add0~16_combout\,
	combout => \inst33|opres[7]~16_combout\);

-- Location: LCCOMB_X20_Y26_N18
\inst33|opres[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(7) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres\(7)))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres[7]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[7]~16_combout\,
	datac => \inst33|opres[16]~2clkctrl_outclk\,
	datad => \inst33|opres\(7),
	combout => \inst33|opres\(7));

-- Location: LCCOMB_X20_Y26_N2
\inst20|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux24~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datad => \inst33|opres\(7),
	combout => \inst20|Mux24~0_combout\);

-- Location: FF_X20_Y26_N3
\inst24|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux24~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(7));

-- Location: LCCOMB_X21_Y23_N6
\inst202|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux25~0_combout\ = (!\inst14|valor_interno[10]~0_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & ((\inst41|mem_rtl_0|auto_generated|ram_block1a6\))) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- (\inst700666|ACCB|valor_interno\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno[10]~0_combout\,
	datab => \inst700666|ACCB|valor_interno\(6),
	datac => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datad => \inst41|mem_rtl_0|auto_generated|ram_block1a6\,
	combout => \inst202|Mux25~0_combout\);

-- Location: FF_X21_Y23_N7
\inst14|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux25~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(6));

-- Location: LCCOMB_X23_Y26_N10
\inst33|opres[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~13_combout\ = (\inst16|selop\(2) & ((\inst700|valor_interno\(6) & ((!\inst14|valor_interno\(6)) # (!\inst16|selop\(0)))) # (!\inst700|valor_interno\(6) & ((\inst14|valor_interno\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(0),
	datab => \inst16|selop\(2),
	datac => \inst700|valor_interno\(6),
	datad => \inst14|valor_interno\(6),
	combout => \inst33|opres[6]~13_combout\);

-- Location: LCCOMB_X20_Y26_N10
\inst33|opres[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~14_combout\ = (\inst33|opres[6]~13_combout\) # ((\inst33|Add0~14_combout\ & !\inst16|selop\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|Add0~14_combout\,
	datac => \inst16|selop\(2),
	datad => \inst33|opres[6]~13_combout\,
	combout => \inst33|opres[6]~14_combout\);

-- Location: LCCOMB_X20_Y26_N0
\inst33|opres[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(6) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres\(6)))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres[6]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[6]~14_combout\,
	datab => \inst33|opres\(6),
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(6));

-- Location: LCCOMB_X20_Y26_N14
\inst20|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux25~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selresult\(0),
	datad => \inst33|opres\(6),
	combout => \inst20|Mux25~0_combout\);

-- Location: FF_X20_Y26_N15
\inst24|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux25~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(6));

-- Location: LCCOMB_X23_Y23_N12
\inst202|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux27~2_combout\ = (\inst4|selsrc\(0) & (!\inst4|selsrc\(1) & (\inst700666|inst|D2[4]~2_combout\))) # (!\inst4|selsrc\(0) & (\inst4|selsrc\(1) & ((\inst41|mem_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selsrc\(0),
	datab => \inst4|selsrc\(1),
	datac => \inst700666|inst|D2[4]~2_combout\,
	datad => \inst41|mem_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst202|Mux27~2_combout\);

-- Location: LCCOMB_X23_Y23_N4
\inst202|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux27~3_combout\ = (!\inst49|process_0~3_combout\ & (\inst49|process_0~1_combout\ & (!\inst49|PCWrite~0_combout\ & \inst202|Mux27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~3_combout\,
	datab => \inst49|process_0~1_combout\,
	datac => \inst49|PCWrite~0_combout\,
	datad => \inst202|Mux27~2_combout\,
	combout => \inst202|Mux27~3_combout\);

-- Location: FF_X23_Y23_N5
\inst14|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux27~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(4));

-- Location: LCCOMB_X24_Y26_N4
\inst33|opres[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~9_combout\ = (\inst16|selop\(2) & ((\inst700|valor_interno\(4) & ((!\inst16|selop\(0)) # (!\inst14|valor_interno\(4)))) # (!\inst700|valor_interno\(4) & (\inst14|valor_interno\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(4),
	datab => \inst16|selop\(2),
	datac => \inst14|valor_interno\(4),
	datad => \inst16|selop\(0),
	combout => \inst33|opres[4]~9_combout\);

-- Location: LCCOMB_X24_Y26_N10
\inst33|opres[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~10_combout\ = (\inst33|opres[4]~9_combout\) # ((!\inst16|selop\(2) & \inst33|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selop\(2),
	datac => \inst33|Add0~10_combout\,
	datad => \inst33|opres[4]~9_combout\,
	combout => \inst33|opres[4]~10_combout\);

-- Location: LCCOMB_X24_Y26_N28
\inst33|opres[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(4) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres\(4)))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres[4]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[4]~10_combout\,
	datab => \inst33|opres\(4),
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(4));

-- Location: LCCOMB_X24_Y26_N12
\inst20|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux27~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datad => \inst33|opres\(4),
	combout => \inst20|Mux27~0_combout\);

-- Location: FF_X24_Y26_N13
\inst24|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux27~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(4));

-- Location: FF_X24_Y23_N5
\inst700666|ACCB|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(4));

-- Location: LCCOMB_X24_Y23_N4
\inst700666|inst|D2[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[4]~2_combout\ = (!\inst49|process_0~2_combout\ & (\inst700666|inst|D2[0]~0_combout\ & (\inst700666|ACCB|valor_interno\(4) & !\inst700666|inst1000|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~2_combout\,
	datab => \inst700666|inst|D2[0]~0_combout\,
	datac => \inst700666|ACCB|valor_interno\(4),
	datad => \inst700666|inst1000|Equal1~1_combout\,
	combout => \inst700666|inst|D2[4]~2_combout\);

-- Location: LCCOMB_X23_Y23_N6
\inst202|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux28~2_combout\ = (\inst4|selsrc\(0) & (\inst700666|inst|D2[3]~3_combout\ & (!\inst4|selsrc\(1)))) # (!\inst4|selsrc\(0) & (((\inst4|selsrc\(1) & \inst41|mem_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selsrc\(0),
	datab => \inst700666|inst|D2[3]~3_combout\,
	datac => \inst4|selsrc\(1),
	datad => \inst41|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \inst202|Mux28~2_combout\);

-- Location: LCCOMB_X23_Y23_N10
\inst202|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux28~3_combout\ = (!\inst49|process_0~3_combout\ & (\inst49|process_0~1_combout\ & (!\inst49|PCWrite~0_combout\ & \inst202|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~3_combout\,
	datab => \inst49|process_0~1_combout\,
	datac => \inst49|PCWrite~0_combout\,
	datad => \inst202|Mux28~2_combout\,
	combout => \inst202|Mux28~3_combout\);

-- Location: FF_X23_Y23_N11
\inst14|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux28~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(3));

-- Location: LCCOMB_X24_Y26_N0
\inst33|opres[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~7_combout\ = (\inst16|selop\(2) & ((\inst14|valor_interno\(3) & ((!\inst16|selop\(0)) # (!\inst700|valor_interno\(3)))) # (!\inst14|valor_interno\(3) & (\inst700|valor_interno\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(3),
	datab => \inst16|selop\(2),
	datac => \inst700|valor_interno\(3),
	datad => \inst16|selop\(0),
	combout => \inst33|opres[3]~7_combout\);

-- Location: LCCOMB_X24_Y26_N18
\inst33|opres[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~8_combout\ = (\inst33|opres[3]~7_combout\) # ((\inst33|Add0~8_combout\ & !\inst16|selop\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|Add0~8_combout\,
	datab => \inst33|opres[3]~7_combout\,
	datad => \inst16|selop\(2),
	combout => \inst33|opres[3]~8_combout\);

-- Location: LCCOMB_X24_Y26_N30
\inst33|opres[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(3) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres\(3)))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[3]~8_combout\,
	datab => \inst33|opres\(3),
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(3));

-- Location: LCCOMB_X24_Y26_N22
\inst20|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux28~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datac => \inst33|opres\(3),
	combout => \inst20|Mux28~0_combout\);

-- Location: FF_X24_Y26_N23
\inst24|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux28~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(3));

-- Location: LCCOMB_X24_Y23_N22
\inst700666|ACCB|valor_interno[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[3]~feeder_combout\ = \inst24|valor_interno\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(3),
	combout => \inst700666|ACCB|valor_interno[3]~feeder_combout\);

-- Location: FF_X24_Y23_N23
\inst700666|ACCB|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(3));

-- Location: LCCOMB_X24_Y23_N18
\inst700666|inst|D2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[3]~3_combout\ = (!\inst49|process_0~2_combout\ & (\inst700666|inst|D2[0]~0_combout\ & (\inst700666|ACCB|valor_interno\(3) & !\inst700666|inst1000|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~2_combout\,
	datab => \inst700666|inst|D2[0]~0_combout\,
	datac => \inst700666|ACCB|valor_interno\(3),
	datad => \inst700666|inst1000|Equal1~1_combout\,
	combout => \inst700666|inst|D2[3]~3_combout\);

-- Location: LCCOMB_X23_Y23_N28
\inst202|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux29~2_combout\ = (\inst4|selsrc\(0) & (!\inst4|selsrc\(1) & ((\inst700666|inst|D2[2]~4_combout\)))) # (!\inst4|selsrc\(0) & (\inst4|selsrc\(1) & (\inst41|mem_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selsrc\(0),
	datab => \inst4|selsrc\(1),
	datac => \inst41|mem_rtl_0|auto_generated|ram_block1a2\,
	datad => \inst700666|inst|D2[2]~4_combout\,
	combout => \inst202|Mux29~2_combout\);

-- Location: LCCOMB_X23_Y23_N8
\inst202|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux29~3_combout\ = (!\inst49|process_0~3_combout\ & (\inst49|process_0~1_combout\ & (!\inst49|PCWrite~0_combout\ & \inst202|Mux29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~3_combout\,
	datab => \inst49|process_0~1_combout\,
	datac => \inst49|PCWrite~0_combout\,
	datad => \inst202|Mux29~2_combout\,
	combout => \inst202|Mux29~3_combout\);

-- Location: FF_X23_Y23_N9
\inst14|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux29~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(2));

-- Location: LCCOMB_X25_Y25_N30
\inst33|opres[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~5_combout\ = (\inst16|selop\(2) & ((\inst14|valor_interno\(2) & ((!\inst16|selop\(0)) # (!\inst700|valor_interno\(2)))) # (!\inst14|valor_interno\(2) & (\inst700|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(2),
	datab => \inst700|valor_interno\(2),
	datac => \inst16|selop\(0),
	datad => \inst16|selop\(2),
	combout => \inst33|opres[2]~5_combout\);

-- Location: LCCOMB_X25_Y25_N8
\inst33|opres[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~6_combout\ = (\inst33|opres[2]~5_combout\) # ((!\inst16|selop\(2) & \inst33|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selop\(2),
	datac => \inst33|Add0~6_combout\,
	datad => \inst33|opres[2]~5_combout\,
	combout => \inst33|opres[2]~6_combout\);

-- Location: LCCOMB_X25_Y25_N20
\inst33|opres[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(2) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres\(2))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(2),
	datab => \inst33|opres[2]~6_combout\,
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(2));

-- Location: LCCOMB_X25_Y25_N22
\inst20|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux29~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selresult\(0),
	datad => \inst33|opres\(2),
	combout => \inst20|Mux29~0_combout\);

-- Location: FF_X25_Y25_N23
\inst24|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux29~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(2));

-- Location: FF_X24_Y23_N29
\inst700666|ACCB|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(2));

-- Location: LCCOMB_X24_Y23_N28
\inst700666|inst|D2[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[2]~4_combout\ = (!\inst49|process_0~2_combout\ & (\inst700666|inst|D2[0]~0_combout\ & (\inst700666|ACCB|valor_interno\(2) & !\inst700666|inst1000|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~2_combout\,
	datab => \inst700666|inst|D2[0]~0_combout\,
	datac => \inst700666|ACCB|valor_interno\(2),
	datad => \inst700666|inst1000|Equal1~1_combout\,
	combout => \inst700666|inst|D2[2]~4_combout\);

-- Location: LCCOMB_X24_Y24_N30
\inst1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux30~0_combout\ = (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(3) & (!\inst34|valor_interno\(4) & !\inst34|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(5),
	datab => \inst34|valor_interno\(3),
	datac => \inst34|valor_interno\(4),
	datad => \inst34|valor_interno\(0),
	combout => \inst1|Mux30~0_combout\);

-- Location: LCCOMB_X24_Y24_N28
\inst1|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux30~1_combout\ = (\inst1|Mux30~0_combout\ & (\inst34|valor_interno\(1) & \inst34|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux30~0_combout\,
	datab => \inst34|valor_interno\(1),
	datac => \inst34|valor_interno\(2),
	combout => \inst1|Mux30~1_combout\);

-- Location: FF_X24_Y24_N29
\inst8|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst1|Mux30~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(1));

-- Location: LCCOMB_X23_Y24_N0
\inst202|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux30~0_combout\ = (\inst32|$00000|auto_generated|result_node[0]~1_combout\ & ((\inst32|$00000|auto_generated|result_node[1]~0_combout\ & ((\inst8|valor_interno\(1)))) # (!\inst32|$00000|auto_generated|result_node[1]~0_combout\ & 
-- (\inst700666|inst|D2[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datab => \inst32|$00000|auto_generated|result_node[0]~1_combout\,
	datac => \inst700666|inst|D2[1]~5_combout\,
	datad => \inst8|valor_interno\(1),
	combout => \inst202|Mux30~0_combout\);

-- Location: LCCOMB_X23_Y26_N2
\inst202|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux30~1_combout\ = (\inst202|Mux30~0_combout\) # ((!\inst32|$00000|auto_generated|result_node[0]~1_combout\ & (\inst32|$00000|auto_generated|result_node[1]~0_combout\ & \inst41|mem_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|$00000|auto_generated|result_node[0]~1_combout\,
	datab => \inst32|$00000|auto_generated|result_node[1]~0_combout\,
	datac => \inst41|mem_rtl_0|auto_generated|ram_block1a1\,
	datad => \inst202|Mux30~0_combout\,
	combout => \inst202|Mux30~1_combout\);

-- Location: FF_X23_Y26_N3
\inst14|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux30~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(1));

-- Location: LCCOMB_X24_Y26_N20
\inst33|opres[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~3_combout\ = (\inst16|selop\(2) & (!\inst700|valor_interno\(1))) # (!\inst16|selop\(2) & ((\inst33|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selop\(2),
	datac => \inst700|valor_interno\(1),
	datad => \inst33|Add0~4_combout\,
	combout => \inst33|opres[1]~3_combout\);

-- Location: LCCOMB_X25_Y26_N14
\inst33|opres[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~4_combout\ = (\inst16|selop\(2) & ((\inst14|valor_interno\(1) & ((\inst33|opres[1]~3_combout\) # (!\inst16|selop\(0)))) # (!\inst14|valor_interno\(1) & ((!\inst33|opres[1]~3_combout\))))) # (!\inst16|selop\(2) & 
-- (((\inst33|opres[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datab => \inst16|selop\(0),
	datac => \inst14|valor_interno\(1),
	datad => \inst33|opres[1]~3_combout\,
	combout => \inst33|opres[1]~4_combout\);

-- Location: LCCOMB_X24_Y25_N2
\inst33|opres[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(1) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres\(1))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(1),
	datac => \inst33|opres[1]~4_combout\,
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(1));

-- Location: LCCOMB_X24_Y25_N22
\inst20|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux30~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datad => \inst33|opres\(1),
	combout => \inst20|Mux30~0_combout\);

-- Location: FF_X24_Y25_N23
\inst24|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux30~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(1));

-- Location: LCCOMB_X24_Y23_N6
\inst700666|ACCB|valor_interno[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[1]~feeder_combout\ = \inst24|valor_interno\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(1),
	combout => \inst700666|ACCB|valor_interno[1]~feeder_combout\);

-- Location: FF_X24_Y23_N7
\inst700666|ACCB|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(1));

-- Location: LCCOMB_X24_Y23_N12
\inst700666|inst|D2[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[1]~5_combout\ = (!\inst49|process_0~2_combout\ & (!\inst700666|inst1000|Equal1~1_combout\ & (\inst700666|inst|D2[0]~0_combout\ & \inst700666|ACCB|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~2_combout\,
	datab => \inst700666|inst1000|Equal1~1_combout\,
	datac => \inst700666|inst|D2[0]~0_combout\,
	datad => \inst700666|ACCB|valor_interno\(1),
	combout => \inst700666|inst|D2[1]~5_combout\);

-- Location: LCCOMB_X23_Y23_N2
\inst202|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux26~2_combout\ = (\inst4|selsrc\(0) & (\inst700666|inst|D2[5]~1_combout\ & (!\inst4|selsrc\(1)))) # (!\inst4|selsrc\(0) & (((\inst4|selsrc\(1) & \inst41|mem_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selsrc\(0),
	datab => \inst700666|inst|D2[5]~1_combout\,
	datac => \inst4|selsrc\(1),
	datad => \inst41|mem_rtl_0|auto_generated|ram_block1a5\,
	combout => \inst202|Mux26~2_combout\);

-- Location: LCCOMB_X23_Y23_N26
\inst202|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux26~3_combout\ = (!\inst49|process_0~3_combout\ & (\inst49|process_0~1_combout\ & (!\inst49|PCWrite~0_combout\ & \inst202|Mux26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~3_combout\,
	datab => \inst49|process_0~1_combout\,
	datac => \inst49|PCWrite~0_combout\,
	datad => \inst202|Mux26~2_combout\,
	combout => \inst202|Mux26~3_combout\);

-- Location: FF_X23_Y23_N27
\inst14|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux26~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(5));

-- Location: LCCOMB_X20_Y26_N12
\inst33|opres[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~11_combout\ = (\inst16|selop\(2) & ((\inst700|valor_interno\(5) & ((!\inst14|valor_interno\(5)) # (!\inst16|selop\(0)))) # (!\inst700|valor_interno\(5) & ((\inst14|valor_interno\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datab => \inst700|valor_interno\(5),
	datac => \inst16|selop\(0),
	datad => \inst14|valor_interno\(5),
	combout => \inst33|opres[5]~11_combout\);

-- Location: LCCOMB_X20_Y26_N20
\inst33|opres[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~12_combout\ = (\inst33|opres[5]~11_combout\) # ((!\inst16|selop\(2) & \inst33|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datab => \inst33|opres[5]~11_combout\,
	datad => \inst33|Add0~12_combout\,
	combout => \inst33|opres[5]~12_combout\);

-- Location: LCCOMB_X20_Y26_N26
\inst33|opres[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(5) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres\(5)))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres[5]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[5]~12_combout\,
	datab => \inst33|opres\(5),
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(5));

-- Location: LCCOMB_X20_Y26_N8
\inst20|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux26~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datac => \inst33|opres\(5),
	combout => \inst20|Mux26~0_combout\);

-- Location: FF_X20_Y26_N9
\inst24|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux26~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(5));

-- Location: LCCOMB_X25_Y25_N2
\inst4|selregr[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selregr[3]~5_combout\ = (\inst4|Equal11~0_combout\) # ((\inst4|Equal7~0_combout\) # (!\inst4|selregr[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal11~0_combout\,
	datab => \inst4|selregr[2]~2_combout\,
	datad => \inst4|Equal7~0_combout\,
	combout => \inst4|selregr[3]~5_combout\);

-- Location: LCCOMB_X25_Y25_N6
\inst4|vf\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|vf~combout\ = (!\inst4|Equal9~1_combout\ & ((\inst4|selregr[3]~5_combout\) # (\inst4|vf~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|selregr[3]~5_combout\,
	datac => \inst4|Equal9~1_combout\,
	datad => \inst4|vf~combout\,
	combout => \inst4|vf~combout\);

-- Location: LCCOMB_X25_Y25_N12
\inst25|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|result_node\(0) = (!\inst49|process_0~3_combout\ & (\inst49|process_0~1_combout\ & (!\inst49|PCWrite~0_combout\ & !\inst4|vf~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~3_combout\,
	datab => \inst49|process_0~1_combout\,
	datac => \inst49|PCWrite~0_combout\,
	datad => \inst4|vf~combout\,
	combout => \inst25|$00000|auto_generated|result_node\(0));

-- Location: FF_X25_Y25_N13
\inst16|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst25|$00000|auto_generated|result_node\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|vf~q\);

-- Location: FF_X24_Y25_N31
\inst100|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst16|vf~q\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst100|valor_interno~q\);

-- Location: FF_X24_Y24_N21
\inst34|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[5]~13_combout\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(5));

-- Location: LCCOMB_X25_Y24_N16
\inst1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux15~1_combout\ = (!\inst34|valor_interno\(4) & (\inst1|Mux15~0_combout\ & !\inst34|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(4),
	datac => \inst1|Mux15~0_combout\,
	datad => \inst34|valor_interno\(5),
	combout => \inst1|Mux15~1_combout\);

-- Location: FF_X25_Y24_N17
\inst8|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst1|Mux15~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(16));

-- Location: LCCOMB_X26_Y24_N8
\inst4|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~0_combout\ = (!\inst8|valor_interno\(16) & (\inst8|valor_interno\(17) & (!\inst8|valor_interno\(23) & \inst8|valor_interno\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datab => \inst8|valor_interno\(17),
	datac => \inst8|valor_interno\(23),
	datad => \inst8|valor_interno\(18),
	combout => \inst4|Equal9~0_combout\);

-- Location: LCCOMB_X26_Y24_N2
\inst4|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~1_combout\ = (\inst8|valor_interno\(21) & (\inst8|valor_interno\(20) & (\inst4|Equal9~0_combout\ & \inst8|valor_interno\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(21),
	datab => \inst8|valor_interno\(20),
	datac => \inst4|Equal9~0_combout\,
	datad => \inst8|valor_interno\(22),
	combout => \inst4|Equal9~1_combout\);

-- Location: LCCOMB_X25_Y25_N16
\inst4|comb~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~15_combout\ = ((\inst4|Equal9~1_combout\) # (\inst4|Equal7~0_combout\)) # (!\inst4|selregr[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|selregr[2]~2_combout\,
	datac => \inst4|Equal9~1_combout\,
	datad => \inst4|Equal7~0_combout\,
	combout => \inst4|comb~15_combout\);

-- Location: LCCOMB_X25_Y25_N26
\inst4|comb~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~14_combout\ = (\inst4|Equal11~0_combout\ & (\inst4|selregr[2]~2_combout\ & (!\inst4|Equal9~1_combout\ & !\inst4|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal11~0_combout\,
	datab => \inst4|selregr[2]~2_combout\,
	datac => \inst4|Equal9~1_combout\,
	datad => \inst4|Equal7~0_combout\,
	combout => \inst4|comb~14_combout\);

-- Location: LCCOMB_X25_Y25_N28
\inst4|selresult[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selresult\(0) = (!\inst4|comb~14_combout\ & ((\inst4|comb~15_combout\) # (\inst4|selresult\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|comb~15_combout\,
	datac => \inst4|comb~14_combout\,
	datad => \inst4|selresult\(0),
	combout => \inst4|selresult\(0));

-- Location: LCCOMB_X25_Y25_N4
\inst30|$00000|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|$00000|auto_generated|result_node[0]~0_combout\ = (!\inst49|PCWrite~0_combout\ & (!\inst49|process_0~3_combout\ & (\inst49|process_0~1_combout\ & \inst4|selresult\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|PCWrite~0_combout\,
	datab => \inst49|process_0~3_combout\,
	datac => \inst49|process_0~1_combout\,
	datad => \inst4|selresult\(0),
	combout => \inst30|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X25_Y25_N5
\inst16|selresult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst30|$00000|auto_generated|result_node[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selresult\(0));

-- Location: LCCOMB_X24_Y27_N24
\inst33|opres[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~31_combout\ = (\inst16|selop\(2) & ((\inst14|valor_interno\(0) & ((!\inst700|valor_interno\(0)) # (!\inst16|selop\(0)))) # (!\inst14|valor_interno\(0) & ((\inst700|valor_interno\(0)))))) # (!\inst16|selop\(2) & (\inst16|selop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(0),
	datab => \inst16|selop\(2),
	datac => \inst14|valor_interno\(0),
	datad => \inst700|valor_interno\(0),
	combout => \inst33|opres[0]~31_combout\);

-- Location: LCCOMB_X24_Y27_N26
\inst33|opres[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~32_combout\ = (\inst16|selop\(2) & (\inst33|opres[0]~31_combout\)) # (!\inst16|selop\(2) & ((\inst33|opres[0]~31_combout\ & (\inst33|Add0~2_combout\)) # (!\inst33|opres[0]~31_combout\ & ((\inst700|valor_interno\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datab => \inst33|opres[0]~31_combout\,
	datac => \inst33|Add0~2_combout\,
	datad => \inst700|valor_interno\(1),
	combout => \inst33|opres[0]~32_combout\);

-- Location: LCCOMB_X24_Y25_N6
\inst33|opres[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(0) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres\(0))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(0),
	datac => \inst33|opres[0]~32_combout\,
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(0));

-- Location: LCCOMB_X24_Y25_N16
\inst20|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux31~0_combout\ = (\inst16|selresult\(0) & \inst33|opres\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selresult\(0),
	datad => \inst33|opres\(0),
	combout => \inst20|Mux31~0_combout\);

-- Location: FF_X24_Y25_N17
\inst24|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux31~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(0));

-- Location: LCCOMB_X24_Y24_N22
\inst9999|$00000|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9999|$00000|auto_generated|result_node[0]~0_combout\ = (\inst100|valor_interno~q\ & (\inst24|valor_interno\(0))) # (!\inst100|valor_interno~q\ & ((!\inst34|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(0),
	datab => \inst34|valor_interno\(0),
	datad => \inst100|valor_interno~q\,
	combout => \inst9999|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X24_Y24_N24
\inst34|valor_interno[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[0]~feeder_combout\ = \inst9999|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9999|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst34|valor_interno[0]~feeder_combout\);

-- Location: FF_X24_Y24_N25
\inst34|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(0));

-- Location: LCCOMB_X24_Y24_N12
\inst34|valor_interno[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[1]~5_combout\ = (\inst34|valor_interno\(1) & (\inst34|valor_interno\(0) $ (VCC))) # (!\inst34|valor_interno\(1) & (\inst34|valor_interno\(0) & VCC))
-- \inst34|valor_interno[1]~6\ = CARRY((\inst34|valor_interno\(1) & \inst34|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(0),
	datad => VCC,
	combout => \inst34|valor_interno[1]~5_combout\,
	cout => \inst34|valor_interno[1]~6\);

-- Location: FF_X24_Y24_N13
\inst34|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[1]~5_combout\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(1));

-- Location: LCCOMB_X24_Y24_N14
\inst34|valor_interno[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[2]~7_combout\ = (\inst34|valor_interno\(2) & (!\inst34|valor_interno[1]~6\)) # (!\inst34|valor_interno\(2) & ((\inst34|valor_interno[1]~6\) # (GND)))
-- \inst34|valor_interno[2]~8\ = CARRY((!\inst34|valor_interno[1]~6\) # (!\inst34|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(2),
	datad => VCC,
	cin => \inst34|valor_interno[1]~6\,
	combout => \inst34|valor_interno[2]~7_combout\,
	cout => \inst34|valor_interno[2]~8\);

-- Location: LCCOMB_X24_Y24_N16
\inst34|valor_interno[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[3]~9_combout\ = (\inst34|valor_interno\(3) & (\inst34|valor_interno[2]~8\ $ (GND))) # (!\inst34|valor_interno\(3) & (!\inst34|valor_interno[2]~8\ & VCC))
-- \inst34|valor_interno[3]~10\ = CARRY((\inst34|valor_interno\(3) & !\inst34|valor_interno[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(3),
	datad => VCC,
	cin => \inst34|valor_interno[2]~8\,
	combout => \inst34|valor_interno[3]~9_combout\,
	cout => \inst34|valor_interno[3]~10\);

-- Location: FF_X24_Y24_N17
\inst34|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[3]~9_combout\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(3));

-- Location: FF_X24_Y24_N19
\inst34|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[4]~11_combout\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(4));

-- Location: LCCOMB_X24_Y24_N26
\inst1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = (!\inst34|valor_interno\(3) & (\inst34|valor_interno\(2) & ((!\inst34|valor_interno\(0)) # (!\inst34|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(3),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(0),
	combout => \inst1|Mux11~0_combout\);

-- Location: LCCOMB_X25_Y24_N18
\inst1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux11~1_combout\ = (!\inst34|valor_interno\(4) & (\inst1|Mux11~0_combout\ & !\inst34|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(4),
	datac => \inst1|Mux11~0_combout\,
	datad => \inst34|valor_interno\(5),
	combout => \inst1|Mux11~1_combout\);

-- Location: FF_X25_Y24_N19
\inst8|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst1|Mux11~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(20));

-- Location: LCCOMB_X26_Y24_N30
\inst4|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = (!\inst8|valor_interno\(16) & (\inst8|valor_interno\(17) & (\inst8|valor_interno\(23) & \inst8|valor_interno\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datab => \inst8|valor_interno\(17),
	datac => \inst8|valor_interno\(23),
	datad => \inst8|valor_interno\(18),
	combout => \inst4|Equal2~0_combout\);

-- Location: LCCOMB_X26_Y24_N28
\inst4|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~1_combout\ = (!\inst8|valor_interno\(21) & (!\inst8|valor_interno\(20) & (\inst4|Equal2~0_combout\ & !\inst8|valor_interno\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(21),
	datab => \inst8|valor_interno\(20),
	datac => \inst4|Equal2~0_combout\,
	datad => \inst8|valor_interno\(22),
	combout => \inst4|Equal2~1_combout\);

-- Location: LCCOMB_X26_Y25_N8
\inst4|comb~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~20_combout\ = (\inst4|selregr[3]~3_combout\ & ((\inst4|comb~30_combout\) # ((!\inst4|Equal2~1_combout\ & !\inst4|selregr[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal2~1_combout\,
	datab => \inst4|selregr[0]~4_combout\,
	datac => \inst4|comb~30_combout\,
	datad => \inst4|selregr[3]~3_combout\,
	combout => \inst4|comb~20_combout\);

-- Location: LCCOMB_X26_Y25_N22
\inst4|comb~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~19_combout\ = (!\inst4|comb~30_combout\ & (\inst4|selregr[3]~3_combout\ & ((\inst4|Equal2~1_combout\) # (\inst4|selregr[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal2~1_combout\,
	datab => \inst4|selregr[0]~4_combout\,
	datac => \inst4|comb~30_combout\,
	datad => \inst4|selregr[3]~3_combout\,
	combout => \inst4|comb~19_combout\);

-- Location: LCCOMB_X26_Y25_N10
\inst4|selregw[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selregw\(2) = (!\inst4|comb~19_combout\ & ((\inst4|comb~20_combout\) # (\inst4|selregw\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|comb~20_combout\,
	datac => \inst4|comb~19_combout\,
	datad => \inst4|selregw\(2),
	combout => \inst4|selregw\(2));

-- Location: LCCOMB_X25_Y23_N28
\inst21|$00000|auto_generated|result_node[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|result_node[2]~1_combout\ = (!\inst49|process_0~3_combout\ & (!\inst49|PCWrite~0_combout\ & (\inst49|process_0~1_combout\ & \inst4|selregw\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~3_combout\,
	datab => \inst49|PCWrite~0_combout\,
	datac => \inst49|process_0~1_combout\,
	datad => \inst4|selregw\(2),
	combout => \inst21|$00000|auto_generated|result_node[2]~1_combout\);

-- Location: FF_X25_Y23_N29
\inst16|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst21|$00000|auto_generated|result_node[2]~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selregw\(2));

-- Location: LCCOMB_X25_Y23_N4
\inst107|selregw[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst107|selregw[2]~feeder_combout\ = \inst16|selregw\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|selregw\(2),
	combout => \inst107|selregw[2]~feeder_combout\);

-- Location: FF_X25_Y23_N5
\inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst107|selregw[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(2));

-- Location: LCCOMB_X25_Y23_N22
\inst700666|inst1000|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~1_combout\ = (\inst107|selregw\(2) & !\inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst700666|inst1000|Equal1~1_combout\);

-- Location: LCCOMB_X25_Y23_N16
\inst49|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|process_0~3_combout\ = (!\inst4|selregr\(2) & (\inst4|selregr\(0) & ((\inst700666|inst1000|Equal1~1_combout\) # (\inst49|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selregr\(2),
	datab => \inst4|selregr\(0),
	datac => \inst700666|inst1000|Equal1~1_combout\,
	datad => \inst49|process_0~2_combout\,
	combout => \inst49|process_0~3_combout\);

-- Location: LCCOMB_X25_Y23_N10
inst47 : cycloneive_lcell_comb
-- Equation(s):
-- \inst47~combout\ = LCELL((\inst49|process_0~1_combout\ & (!\inst49|PCWrite~0_combout\ & (!\RELOJ~input_o\ & !\inst49|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~1_combout\,
	datab => \inst49|PCWrite~0_combout\,
	datac => \RELOJ~input_o\,
	datad => \inst49|process_0~3_combout\,
	combout => \inst47~combout\);

-- Location: CLKCTRL_G13
\inst47~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst47~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst47~clkctrl_outclk\);

-- Location: FF_X24_Y24_N15
\inst34|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[2]~7_combout\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(2));

-- Location: LCCOMB_X25_Y24_N10
\inst1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = (!\inst34|valor_interno\(3) & ((\inst34|valor_interno\(2) & (!\inst34|valor_interno\(0) & \inst34|valor_interno\(1))) # (!\inst34|valor_interno\(2) & (\inst34|valor_interno\(0) & !\inst34|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(2),
	datab => \inst34|valor_interno\(0),
	datac => \inst34|valor_interno\(3),
	datad => \inst34|valor_interno\(1),
	combout => \inst1|Mux10~0_combout\);

-- Location: LCCOMB_X25_Y24_N14
\inst1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~1_combout\ = (\inst1|Mux10~0_combout\ & (!\inst34|valor_interno\(4) & !\inst34|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux10~0_combout\,
	datab => \inst34|valor_interno\(4),
	datad => \inst34|valor_interno\(5),
	combout => \inst1|Mux10~1_combout\);

-- Location: FF_X25_Y24_N15
\inst8|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst1|Mux10~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(21));

-- Location: LCCOMB_X26_Y24_N24
\inst4|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal3~0_combout\ = (\inst8|valor_interno\(16) & (!\inst8|valor_interno\(20) & (!\inst8|valor_interno\(17) & !\inst8|valor_interno\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datab => \inst8|valor_interno\(20),
	datac => \inst8|valor_interno\(17),
	datad => \inst8|valor_interno\(22),
	combout => \inst4|Equal3~0_combout\);

-- Location: LCCOMB_X26_Y24_N0
\inst4|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal3~1_combout\ = (\inst8|valor_interno\(21) & (\inst8|valor_interno\(23) & \inst4|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(21),
	datac => \inst8|valor_interno\(23),
	datad => \inst4|Equal3~0_combout\,
	combout => \inst4|Equal3~1_combout\);

-- Location: LCCOMB_X26_Y25_N24
\inst4|selregr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selregr[2]~2_combout\ = (\inst4|comb~4_combout\ & (!\inst4|Equal2~1_combout\ & ((!\inst4|Equal3~1_combout\) # (!\inst8|valor_interno\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(18),
	datab => \inst4|Equal3~1_combout\,
	datac => \inst4|comb~4_combout\,
	datad => \inst4|Equal2~1_combout\,
	combout => \inst4|selregr[2]~2_combout\);

-- Location: LCCOMB_X25_Y25_N14
\inst4|comb~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~10_combout\ = ((!\inst4|Equal7~0_combout\ & ((\inst4|Equal11~0_combout\) # (\inst4|Equal9~1_combout\)))) # (!\inst4|selregr[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal11~0_combout\,
	datab => \inst4|selregr[2]~2_combout\,
	datac => \inst4|Equal9~1_combout\,
	datad => \inst4|Equal7~0_combout\,
	combout => \inst4|comb~10_combout\);

-- Location: LCCOMB_X26_Y25_N0
\inst4|selregr[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selregr\(2) = (!\inst4|comb~10_combout\ & ((\inst4|comb~30_combout\) # (\inst4|selregr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~10_combout\,
	datac => \inst4|comb~30_combout\,
	datad => \inst4|selregr\(2),
	combout => \inst4|selregr\(2));

-- Location: LCCOMB_X25_Y23_N24
\inst49|PCWrite~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|PCWrite~0_combout\ = (\inst4|selregr\(2) & (!\inst4|selregr\(0) & ((\inst700666|inst1000|Equal1~0_combout\) # (\inst49|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selregr\(2),
	datab => \inst4|selregr\(0),
	datac => \inst700666|inst1000|Equal1~0_combout\,
	datad => \inst49|process_0~2_combout\,
	combout => \inst49|PCWrite~0_combout\);

-- Location: LCCOMB_X25_Y23_N18
inst3 : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~combout\ = LCELL((\RELOJ~input_o\ & (!\inst49|PCWrite~0_combout\ & (\inst49|process_0~1_combout\ & !\inst49|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOJ~input_o\,
	datab => \inst49|PCWrite~0_combout\,
	datac => \inst49|process_0~1_combout\,
	datad => \inst49|process_0~3_combout\,
	combout => \inst3~combout\);

-- Location: CLKCTRL_G14
\inst3~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y24_N4
\inst1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = (\inst34|valor_interno\(3)) # (\inst34|valor_interno\(1) $ (((\inst34|valor_interno\(2) & !\inst34|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(3),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(0),
	combout => \inst1|Mux13~0_combout\);

-- Location: LCCOMB_X25_Y24_N28
\inst1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux13~1_combout\ = (!\inst34|valor_interno\(4) & (!\inst1|Mux13~0_combout\ & !\inst34|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(4),
	datac => \inst1|Mux13~0_combout\,
	datad => \inst34|valor_interno\(5),
	combout => \inst1|Mux13~1_combout\);

-- Location: FF_X25_Y24_N29
\inst8|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst1|Mux13~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(18));

-- Location: LCCOMB_X25_Y24_N22
\inst4|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal11~0_combout\ = (!\inst8|valor_interno\(18) & (!\inst8|valor_interno\(21) & (!\inst8|valor_interno\(23) & \inst4|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(18),
	datab => \inst8|valor_interno\(21),
	datac => \inst8|valor_interno\(23),
	datad => \inst4|Equal3~0_combout\,
	combout => \inst4|Equal11~0_combout\);

-- Location: LCCOMB_X25_Y25_N0
\inst4|selregr[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selregr[3]~3_combout\ = (\inst4|Equal11~0_combout\) # (((\inst4|Equal9~1_combout\) # (\inst4|Equal7~0_combout\)) # (!\inst4|selregr[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal11~0_combout\,
	datab => \inst4|selregr[2]~2_combout\,
	datac => \inst4|Equal9~1_combout\,
	datad => \inst4|Equal7~0_combout\,
	combout => \inst4|selregr[3]~3_combout\);

-- Location: LCCOMB_X26_Y26_N2
\inst4|selresult[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selresult[0]~2_combout\ = (\inst4|selregr[2]~2_combout\ & (((!\inst8|valor_interno\(22)) # (!\inst4|Equal1~0_combout\)) # (!\inst4|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~2_combout\,
	datab => \inst4|Equal1~0_combout\,
	datac => \inst8|valor_interno\(22),
	datad => \inst4|selregr[2]~2_combout\,
	combout => \inst4|selresult[0]~2_combout\);

-- Location: LCCOMB_X26_Y26_N12
\inst4|comb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~9_combout\ = (\inst4|selregr[3]~3_combout\ & (!\inst4|comb~6_combout\ & !\inst4|selresult[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|selregr[3]~3_combout\,
	datac => \inst4|comb~6_combout\,
	datad => \inst4|selresult[0]~2_combout\,
	combout => \inst4|comb~9_combout\);

-- Location: LCCOMB_X26_Y26_N26
\inst4|comb~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~8_combout\ = (\inst4|selregr[3]~3_combout\ & ((\inst4|comb~6_combout\) # (\inst4|selresult[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|selregr[3]~3_combout\,
	datac => \inst4|comb~6_combout\,
	datad => \inst4|selresult[0]~2_combout\,
	combout => \inst4|comb~8_combout\);

-- Location: LCCOMB_X26_Y26_N16
\inst4|selregr[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selregr\(0) = (!\inst4|comb~8_combout\ & ((\inst4|comb~9_combout\) # (\inst4|selregr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~9_combout\,
	datac => \inst4|comb~8_combout\,
	datad => \inst4|selregr\(0),
	combout => \inst4|selregr\(0));

-- Location: LCCOMB_X25_Y23_N12
\inst49|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|process_0~0_combout\ = (\inst107|selregw\(0) & ((\inst16|selregw\(0)) # ((!\inst16|selregw\(2))))) # (!\inst107|selregw\(0) & (!\inst107|selregw\(2) & ((\inst16|selregw\(0)) # (!\inst16|selregw\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|selregw\(0),
	datab => \inst16|selregw\(0),
	datac => \inst107|selregw\(2),
	datad => \inst16|selregw\(2),
	combout => \inst49|process_0~0_combout\);

-- Location: LCCOMB_X25_Y23_N26
\inst49|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|process_0~1_combout\ = ((\inst49|process_0~0_combout\) # (!\inst4|selregr\(2))) # (!\inst4|selregr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|selregr\(0),
	datac => \inst4|selregr\(2),
	datad => \inst49|process_0~0_combout\,
	combout => \inst49|process_0~1_combout\);

-- Location: LCCOMB_X26_Y25_N12
\inst4|comb~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~26_combout\ = (\inst4|selregr[3]~3_combout\ & ((\inst4|comb~6_combout\) # ((\inst4|Equal9~1_combout\ & \inst4|selregr[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selregr[3]~3_combout\,
	datab => \inst4|comb~6_combout\,
	datac => \inst4|Equal9~1_combout\,
	datad => \inst4|selregr[2]~2_combout\,
	combout => \inst4|comb~26_combout\);

-- Location: LCCOMB_X26_Y25_N14
\inst4|comb~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|comb~25_combout\ = (\inst4|selregr[3]~3_combout\ & (!\inst4|comb~6_combout\ & ((!\inst4|selregr[2]~2_combout\) # (!\inst4|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selregr[3]~3_combout\,
	datab => \inst4|comb~6_combout\,
	datac => \inst4|Equal9~1_combout\,
	datad => \inst4|selregr[2]~2_combout\,
	combout => \inst4|comb~25_combout\);

-- Location: LCCOMB_X26_Y25_N16
\inst4|selop[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|selop\(2) = (!\inst4|comb~25_combout\ & ((\inst4|comb~26_combout\) # (\inst4|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~26_combout\,
	datac => \inst4|comb~25_combout\,
	datad => \inst4|selop\(2),
	combout => \inst4|selop\(2));

-- Location: LCCOMB_X24_Y27_N10
\inst31|$00000|auto_generated|result_node[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|result_node[2]~0_combout\ = (\inst49|process_0~1_combout\ & (\inst4|selop\(2) & (!\inst49|PCWrite~0_combout\ & !\inst49|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|process_0~1_combout\,
	datab => \inst4|selop\(2),
	datac => \inst49|PCWrite~0_combout\,
	datad => \inst49|process_0~3_combout\,
	combout => \inst31|$00000|auto_generated|result_node[2]~0_combout\);

-- Location: FF_X24_Y27_N11
\inst16|selop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst31|$00000|auto_generated|result_node[2]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(2));

-- Location: LCCOMB_X23_Y25_N24
\inst33|opres[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~0_combout\ = (\inst16|selop\(2) & (((\inst16|selop\(0))))) # (!\inst16|selop\(2) & ((\inst16|selop\(0) & ((\inst33|Add0~32_combout\))) # (!\inst16|selop\(0) & (\inst40|$00000|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datab => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst33|Add0~32_combout\,
	datad => \inst16|selop\(0),
	combout => \inst33|opres[15]~0_combout\);

-- Location: LCCOMB_X23_Y25_N22
\inst33|opres[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~1_combout\ = (\inst16|selop\(2) & ((\inst700|valor_interno\(15) & ((!\inst33|opres[15]~0_combout\) # (!\inst14|valor_interno\(15)))) # (!\inst700|valor_interno\(15) & (\inst14|valor_interno\(15))))) # (!\inst16|selop\(2) & 
-- (((\inst33|opres[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datab => \inst700|valor_interno\(15),
	datac => \inst14|valor_interno\(15),
	datad => \inst33|opres[15]~0_combout\,
	combout => \inst33|opres[15]~1_combout\);

-- Location: LCCOMB_X24_Y25_N12
\inst33|opres[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(15) = (GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & ((\inst33|opres\(15)))) # (!GLOBAL(\inst33|opres[16]~2clkctrl_outclk\) & (\inst33|opres[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[15]~1_combout\,
	datac => \inst33|opres\(15),
	datad => \inst33|opres[16]~2clkctrl_outclk\,
	combout => \inst33|opres\(15));

-- Location: LCCOMB_X23_Y27_N0
\inst|ni~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ni~15_combout\ = (\inst16|selfalgs\(1) & (!\inst16|selfalgs\(2) & ((\inst16|selfalgs\(0)) # (!\inst16|selfalgs\(3))))) # (!\inst16|selfalgs\(1) & ((\inst16|selfalgs\(3) & (!\inst16|selfalgs\(0) & \inst16|selfalgs\(2))) # (!\inst16|selfalgs\(3) & 
-- (\inst16|selfalgs\(0) & !\inst16|selfalgs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \inst16|selfalgs\(3),
	datac => \inst16|selfalgs\(0),
	datad => \inst16|selfalgs\(2),
	combout => \inst|ni~15_combout\);

-- Location: LCCOMB_X24_Y25_N8
\inst|ni\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ni~combout\ = (\inst|ni~15_combout\ & (\inst33|opres\(15))) # (!\inst|ni~15_combout\ & ((\inst|ni~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(15),
	datac => \inst|ni~combout\,
	datad => \inst|ni~15_combout\,
	combout => \inst|ni~combout\);

-- Location: FF_X25_Y25_N21
\inst101|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst|ni~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst101|valor_interno~q\);

-- Location: LCCOMB_X23_Y27_N6
\inst|zi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|zi~2_combout\ = (\inst16|selfalgs\(1) & (!\inst16|selfalgs\(2) & ((\inst16|selfalgs\(0)) # (!\inst16|selfalgs\(3))))) # (!\inst16|selfalgs\(1) & ((\inst16|selfalgs\(0) & (!\inst16|selfalgs\(3) & !\inst16|selfalgs\(2))) # (!\inst16|selfalgs\(0) & 
-- ((\inst16|selfalgs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \inst16|selfalgs\(3),
	datac => \inst16|selfalgs\(0),
	datad => \inst16|selfalgs\(2),
	combout => \inst|zi~2_combout\);

-- Location: LCCOMB_X24_Y25_N26
\inst33|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~0_combout\ = (\inst33|opres\(2)) # ((\inst33|opres\(1)) # ((\inst33|opres\(3)) # (\inst33|opres\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(2),
	datab => \inst33|opres\(1),
	datac => \inst33|opres\(3),
	datad => \inst33|opres\(4),
	combout => \inst33|WideOr0~0_combout\);

-- Location: LCCOMB_X24_Y25_N28
\inst33|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~3_combout\ = (\inst33|opres\(15)) # ((\inst33|opres\(0)) # ((\inst33|opres\(13)) # (\inst33|opres\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(15),
	datab => \inst33|opres\(0),
	datac => \inst33|opres\(13),
	datad => \inst33|opres\(14),
	combout => \inst33|WideOr0~3_combout\);

-- Location: LCCOMB_X20_Y26_N30
\inst33|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~1_combout\ = (\inst33|opres\(5)) # ((\inst33|opres\(6)) # ((\inst33|opres\(7)) # (\inst33|opres\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(5),
	datab => \inst33|opres\(6),
	datac => \inst33|opres\(7),
	datad => \inst33|opres\(8),
	combout => \inst33|WideOr0~1_combout\);

-- Location: LCCOMB_X21_Y25_N4
\inst33|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~2_combout\ = (\inst33|opres\(12)) # ((\inst33|opres\(10)) # ((\inst33|opres\(9)) # (\inst33|opres\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(12),
	datab => \inst33|opres\(10),
	datac => \inst33|opres\(9),
	datad => \inst33|opres\(11),
	combout => \inst33|WideOr0~2_combout\);

-- Location: LCCOMB_X24_Y25_N10
\inst33|WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~4_combout\ = (\inst33|WideOr0~0_combout\) # ((\inst33|WideOr0~3_combout\) # ((\inst33|WideOr0~1_combout\) # (\inst33|WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|WideOr0~0_combout\,
	datab => \inst33|WideOr0~3_combout\,
	datac => \inst33|WideOr0~1_combout\,
	datad => \inst33|WideOr0~2_combout\,
	combout => \inst33|WideOr0~4_combout\);

-- Location: LCCOMB_X24_Y25_N18
\inst|zi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|zi~combout\ = (\inst|zi~2_combout\ & ((!\inst33|WideOr0~4_combout\))) # (!\inst|zi~2_combout\ & (\inst|zi~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|zi~combout\,
	datac => \inst|zi~2_combout\,
	datad => \inst33|WideOr0~4_combout\,
	combout => \inst|zi~combout\);

-- Location: LCCOMB_X24_Y25_N0
\inst102|valor_interno~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst102|valor_interno~feeder_combout\ = \inst|zi~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|zi~combout\,
	combout => \inst102|valor_interno~feeder_combout\);

-- Location: FF_X24_Y25_N1
\inst102|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst102|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|valor_interno~q\);

-- Location: LCCOMB_X24_Y27_N20
\inst|vi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vi~2_combout\ = (\inst16|selfalgs\(2) & (!\inst16|selfalgs\(3) & !\inst16|selfalgs\(1))) # (!\inst16|selfalgs\(2) & ((\inst16|selfalgs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(2),
	datac => \inst16|selfalgs\(3),
	datad => \inst16|selfalgs\(1),
	combout => \inst|vi~2_combout\);

-- Location: LCCOMB_X24_Y27_N28
\inst|vi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vi~3_combout\ = (\inst33|opres\(16) & ((\inst16|selfalgs\(3) $ (\inst|vi~2_combout\)) # (!\inst16|selfalgs\(0)))) # (!\inst33|opres\(16) & (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(3) & \inst|vi~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(16),
	datab => \inst16|selfalgs\(0),
	datac => \inst16|selfalgs\(3),
	datad => \inst|vi~2_combout\,
	combout => \inst|vi~3_combout\);

-- Location: LCCOMB_X23_Y27_N26
\inst|vi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vi~4_combout\ = (\inst16|selfalgs\(2) & ((\inst16|selfalgs\(0) & (\inst16|selfalgs\(1) & !\inst16|selfalgs\(3))) # (!\inst16|selfalgs\(0) & (!\inst16|selfalgs\(1) & \inst16|selfalgs\(3))))) # (!\inst16|selfalgs\(2) & ((\inst16|selfalgs\(1)) # 
-- ((\inst16|selfalgs\(0) & !\inst16|selfalgs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(2),
	datab => \inst16|selfalgs\(0),
	datac => \inst16|selfalgs\(1),
	datad => \inst16|selfalgs\(3),
	combout => \inst|vi~4_combout\);

-- Location: LCCOMB_X24_Y27_N8
\inst|vi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vi~combout\ = (\inst|vi~4_combout\ & (\inst|vi~3_combout\)) # (!\inst|vi~4_combout\ & ((\inst|vi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vi~3_combout\,
	datab => \inst|vi~combout\,
	datac => \inst|vi~4_combout\,
	combout => \inst|vi~combout\);

-- Location: LCCOMB_X24_Y27_N12
\inst103|valor_interno~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst103|valor_interno~feeder_combout\ = \inst|vi~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vi~combout\,
	combout => \inst103|valor_interno~feeder_combout\);

-- Location: FF_X24_Y27_N13
\inst103|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst103|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst103|valor_interno~q\);

-- Location: FF_X23_Y27_N21
\inst104|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst|ci~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|valor_interno~q\);

-- Location: LCCOMB_X23_Y27_N2
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst16|selfalgs\(1) & (!\inst16|selfalgs\(3) & (!\inst16|selfalgs\(0) & !\inst16|selfalgs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \inst16|selfalgs\(3),
	datac => \inst16|selfalgs\(0),
	datad => \inst16|selfalgs\(2),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y26_N28
\inst|hi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|hi~combout\ = (\inst|Equal0~1_combout\ & ((\inst33|opres\(8)))) # (!\inst|Equal0~1_combout\ & (\inst|hi~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|hi~combout\,
	datab => \inst33|opres\(8),
	datad => \inst|Equal0~1_combout\,
	combout => \inst|hi~combout\);

-- Location: LCCOMB_X20_Y26_N22
\inst105|valor_interno~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst105|valor_interno~feeder_combout\ = \inst|hi~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|hi~combout\,
	combout => \inst105|valor_interno~feeder_combout\);

-- Location: FF_X20_Y26_N23
\inst105|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst105|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst105|valor_interno~q\);

-- Location: LCCOMB_X23_Y27_N24
\inst|ii~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ii~0_combout\ = (\inst16|selfalgs\(0) & (\inst16|selfalgs\(3) & (!\inst16|selfalgs\(1) & !\inst16|selfalgs\(2)))) # (!\inst16|selfalgs\(0) & (!\inst16|selfalgs\(3) & (\inst16|selfalgs\(1) & \inst16|selfalgs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(3),
	datac => \inst16|selfalgs\(1),
	datad => \inst16|selfalgs\(2),
	combout => \inst|ii~0_combout\);

-- Location: LCCOMB_X23_Y27_N4
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst16|selfalgs\(2) & (!\inst16|selfalgs\(3) & (!\inst16|selfalgs\(0) & \inst16|selfalgs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(2),
	datab => \inst16|selfalgs\(3),
	datac => \inst16|selfalgs\(0),
	datad => \inst16|selfalgs\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y27_N28
\inst|ii\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ii~combout\ = (\inst|ii~0_combout\ & ((!\inst|Equal0~0_combout\))) # (!\inst|ii~0_combout\ & (\inst|ii~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ii~combout\,
	datab => \inst|ii~0_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|ii~combout\);

-- Location: LCCOMB_X24_Y27_N16
\inst106|valor_interno~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst106|valor_interno~feeder_combout\ = \inst|ii~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ii~combout\,
	combout => \inst106|valor_interno~feeder_combout\);

-- Location: FF_X24_Y27_N17
\inst106|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst106|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst106|valor_interno~q\);

-- Location: LCCOMB_X19_Y23_N20
\inst700666|AUX|valor_interno[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[15]~feeder_combout\ = \inst24|valor_interno\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(15),
	combout => \inst700666|AUX|valor_interno[15]~feeder_combout\);

-- Location: LCCOMB_X25_Y23_N30
\inst700666|inst1000|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~2_combout\ = (\inst107|selregw\(2) & \inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst700666|inst1000|Equal1~2_combout\);

-- Location: FF_X19_Y23_N21
\inst700666|AUX|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(15));

-- Location: FF_X20_Y26_N21
\inst700666|AUX|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(14));

-- Location: FF_X20_Y26_N27
\inst700666|AUX|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(13));

-- Location: LCCOMB_X19_Y26_N24
\inst700666|AUX|valor_interno[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[12]~feeder_combout\ = \inst24|valor_interno\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(12),
	combout => \inst700666|AUX|valor_interno[12]~feeder_combout\);

-- Location: FF_X19_Y26_N25
\inst700666|AUX|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(12));

-- Location: LCCOMB_X19_Y26_N14
\inst700666|AUX|valor_interno[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[11]~feeder_combout\ = \inst24|valor_interno\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(11),
	combout => \inst700666|AUX|valor_interno[11]~feeder_combout\);

-- Location: FF_X19_Y26_N15
\inst700666|AUX|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(11));

-- Location: LCCOMB_X19_Y26_N12
\inst700666|AUX|valor_interno[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[10]~feeder_combout\ = \inst24|valor_interno\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(10),
	combout => \inst700666|AUX|valor_interno[10]~feeder_combout\);

-- Location: FF_X19_Y26_N13
\inst700666|AUX|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(10));

-- Location: LCCOMB_X21_Y27_N0
\inst700666|AUX|valor_interno[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[9]~feeder_combout\ = \inst24|valor_interno\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(9),
	combout => \inst700666|AUX|valor_interno[9]~feeder_combout\);

-- Location: FF_X21_Y27_N1
\inst700666|AUX|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(9));

-- Location: LCCOMB_X19_Y26_N26
\inst700666|AUX|valor_interno[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[8]~feeder_combout\ = \inst24|valor_interno\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(8),
	combout => \inst700666|AUX|valor_interno[8]~feeder_combout\);

-- Location: FF_X19_Y26_N27
\inst700666|AUX|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(8));

-- Location: LCCOMB_X19_Y26_N28
\inst700666|AUX|valor_interno[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[7]~feeder_combout\ = \inst24|valor_interno\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(7),
	combout => \inst700666|AUX|valor_interno[7]~feeder_combout\);

-- Location: FF_X19_Y26_N29
\inst700666|AUX|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(7));

-- Location: LCCOMB_X19_Y26_N6
\inst700666|AUX|valor_interno[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[6]~feeder_combout\ = \inst24|valor_interno\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(6),
	combout => \inst700666|AUX|valor_interno[6]~feeder_combout\);

-- Location: FF_X19_Y26_N7
\inst700666|AUX|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(6));

-- Location: FF_X20_Y26_N25
\inst700666|AUX|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(5));

-- Location: LCCOMB_X19_Y26_N0
\inst700666|AUX|valor_interno[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[4]~feeder_combout\ = \inst24|valor_interno\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(4),
	combout => \inst700666|AUX|valor_interno[4]~feeder_combout\);

-- Location: FF_X19_Y26_N1
\inst700666|AUX|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(4));

-- Location: FF_X20_Y26_N29
\inst700666|AUX|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(3));

-- Location: LCCOMB_X21_Y27_N14
\inst700666|AUX|valor_interno[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[2]~feeder_combout\ = \inst24|valor_interno\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(2),
	combout => \inst700666|AUX|valor_interno[2]~feeder_combout\);

-- Location: FF_X21_Y27_N15
\inst700666|AUX|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(2));

-- Location: LCCOMB_X21_Y27_N16
\inst700666|AUX|valor_interno[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[1]~feeder_combout\ = \inst24|valor_interno\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(1),
	combout => \inst700666|AUX|valor_interno[1]~feeder_combout\);

-- Location: FF_X21_Y27_N17
\inst700666|AUX|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(1));

-- Location: LCCOMB_X21_Y27_N26
\inst700666|AUX|valor_interno[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[0]~feeder_combout\ = \inst24|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(0),
	combout => \inst700666|AUX|valor_interno[0]~feeder_combout\);

-- Location: FF_X21_Y27_N27
\inst700666|AUX|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(0));

ww_n <= \n~output_o\;

ww_z <= \z~output_o\;

ww_v <= \v~output_o\;

ww_c <= \c~output_o\;

ww_h <= \h~output_o\;

ww_i <= \i~output_o\;

ww_ACCA_D(15) <= \ACCA_D[15]~output_o\;

ww_ACCA_D(14) <= \ACCA_D[14]~output_o\;

ww_ACCA_D(13) <= \ACCA_D[13]~output_o\;

ww_ACCA_D(12) <= \ACCA_D[12]~output_o\;

ww_ACCA_D(11) <= \ACCA_D[11]~output_o\;

ww_ACCA_D(10) <= \ACCA_D[10]~output_o\;

ww_ACCA_D(9) <= \ACCA_D[9]~output_o\;

ww_ACCA_D(8) <= \ACCA_D[8]~output_o\;

ww_ACCA_D(7) <= \ACCA_D[7]~output_o\;

ww_ACCA_D(6) <= \ACCA_D[6]~output_o\;

ww_ACCA_D(5) <= \ACCA_D[5]~output_o\;

ww_ACCA_D(4) <= \ACCA_D[4]~output_o\;

ww_ACCA_D(3) <= \ACCA_D[3]~output_o\;

ww_ACCA_D(2) <= \ACCA_D[2]~output_o\;

ww_ACCA_D(1) <= \ACCA_D[1]~output_o\;

ww_ACCA_D(0) <= \ACCA_D[0]~output_o\;

ww_ACCB_D(15) <= \ACCB_D[15]~output_o\;

ww_ACCB_D(14) <= \ACCB_D[14]~output_o\;

ww_ACCB_D(13) <= \ACCB_D[13]~output_o\;

ww_ACCB_D(12) <= \ACCB_D[12]~output_o\;

ww_ACCB_D(11) <= \ACCB_D[11]~output_o\;

ww_ACCB_D(10) <= \ACCB_D[10]~output_o\;

ww_ACCB_D(9) <= \ACCB_D[9]~output_o\;

ww_ACCB_D(8) <= \ACCB_D[8]~output_o\;

ww_ACCB_D(7) <= \ACCB_D[7]~output_o\;

ww_ACCB_D(6) <= \ACCB_D[6]~output_o\;

ww_ACCB_D(5) <= \ACCB_D[5]~output_o\;

ww_ACCB_D(4) <= \ACCB_D[4]~output_o\;

ww_ACCB_D(3) <= \ACCB_D[3]~output_o\;

ww_ACCB_D(2) <= \ACCB_D[2]~output_o\;

ww_ACCB_D(1) <= \ACCB_D[1]~output_o\;

ww_ACCB_D(0) <= \ACCB_D[0]~output_o\;

ww_AUX_D(15) <= \AUX_D[15]~output_o\;

ww_AUX_D(14) <= \AUX_D[14]~output_o\;

ww_AUX_D(13) <= \AUX_D[13]~output_o\;

ww_AUX_D(12) <= \AUX_D[12]~output_o\;

ww_AUX_D(11) <= \AUX_D[11]~output_o\;

ww_AUX_D(10) <= \AUX_D[10]~output_o\;

ww_AUX_D(9) <= \AUX_D[9]~output_o\;

ww_AUX_D(8) <= \AUX_D[8]~output_o\;

ww_AUX_D(7) <= \AUX_D[7]~output_o\;

ww_AUX_D(6) <= \AUX_D[6]~output_o\;

ww_AUX_D(5) <= \AUX_D[5]~output_o\;

ww_AUX_D(4) <= \AUX_D[4]~output_o\;

ww_AUX_D(3) <= \AUX_D[3]~output_o\;

ww_AUX_D(2) <= \AUX_D[2]~output_o\;

ww_AUX_D(1) <= \AUX_D[1]~output_o\;

ww_AUX_D(0) <= \AUX_D[0]~output_o\;

ww_IX_D(15) <= \IX_D[15]~output_o\;

ww_IX_D(14) <= \IX_D[14]~output_o\;

ww_IX_D(13) <= \IX_D[13]~output_o\;

ww_IX_D(12) <= \IX_D[12]~output_o\;

ww_IX_D(11) <= \IX_D[11]~output_o\;

ww_IX_D(10) <= \IX_D[10]~output_o\;

ww_IX_D(9) <= \IX_D[9]~output_o\;

ww_IX_D(8) <= \IX_D[8]~output_o\;

ww_IX_D(7) <= \IX_D[7]~output_o\;

ww_IX_D(6) <= \IX_D[6]~output_o\;

ww_IX_D(5) <= \IX_D[5]~output_o\;

ww_IX_D(4) <= \IX_D[4]~output_o\;

ww_IX_D(3) <= \IX_D[3]~output_o\;

ww_IX_D(2) <= \IX_D[2]~output_o\;

ww_IX_D(1) <= \IX_D[1]~output_o\;

ww_IX_D(0) <= \IX_D[0]~output_o\;

ww_IY_D(15) <= \IY_D[15]~output_o\;

ww_IY_D(14) <= \IY_D[14]~output_o\;

ww_IY_D(13) <= \IY_D[13]~output_o\;

ww_IY_D(12) <= \IY_D[12]~output_o\;

ww_IY_D(11) <= \IY_D[11]~output_o\;

ww_IY_D(10) <= \IY_D[10]~output_o\;

ww_IY_D(9) <= \IY_D[9]~output_o\;

ww_IY_D(8) <= \IY_D[8]~output_o\;

ww_IY_D(7) <= \IY_D[7]~output_o\;

ww_IY_D(6) <= \IY_D[6]~output_o\;

ww_IY_D(5) <= \IY_D[5]~output_o\;

ww_IY_D(4) <= \IY_D[4]~output_o\;

ww_IY_D(3) <= \IY_D[3]~output_o\;

ww_IY_D(2) <= \IY_D[2]~output_o\;

ww_IY_D(1) <= \IY_D[1]~output_o\;

ww_IY_D(0) <= \IY_D[0]~output_o\;

ww_SP_D(15) <= \SP_D[15]~output_o\;

ww_SP_D(14) <= \SP_D[14]~output_o\;

ww_SP_D(13) <= \SP_D[13]~output_o\;

ww_SP_D(12) <= \SP_D[12]~output_o\;

ww_SP_D(11) <= \SP_D[11]~output_o\;

ww_SP_D(10) <= \SP_D[10]~output_o\;

ww_SP_D(9) <= \SP_D[9]~output_o\;

ww_SP_D(8) <= \SP_D[8]~output_o\;

ww_SP_D(7) <= \SP_D[7]~output_o\;

ww_SP_D(6) <= \SP_D[6]~output_o\;

ww_SP_D(5) <= \SP_D[5]~output_o\;

ww_SP_D(4) <= \SP_D[4]~output_o\;

ww_SP_D(3) <= \SP_D[3]~output_o\;

ww_SP_D(2) <= \SP_D[2]~output_o\;

ww_SP_D(1) <= \SP_D[1]~output_o\;

ww_SP_D(0) <= \SP_D[0]~output_o\;
END structure;


