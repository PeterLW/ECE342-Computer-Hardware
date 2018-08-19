-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 11.1 Build 259 01/25/2012 Service Pack 2.11 SJ Full Version"

-- DATE "02/20/2016 22:52:03"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab5 IS
    PORT (
	waitrequest : OUT std_logic;
	readdata : OUT std_logic_vector(31 DOWNTO 0);
	VGA_R : OUT std_logic_vector(9 DOWNTO 0);
	VGA_G : OUT std_logic_vector(9 DOWNTO 0);
	VGA_B : OUT std_logic_vector(9 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_BLANK : OUT std_logic;
	VGA_SYNC : OUT std_logic;
	VGA_CLK : OUT std_logic;
	address : IN std_logic_vector(2 DOWNTO 0);
	chipselect : IN std_logic;
	read : IN std_logic;
	write : IN std_logic;
	writedata : IN std_logic_vector(31 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	Reset : IN std_logic
	);
END lab5;

-- Design Ports Information
-- waitrequest	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[1]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[3]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[5]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[6]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[7]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[8]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[9]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[10]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[11]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[12]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[13]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[14]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[15]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[16]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[17]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[18]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[19]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[20]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[21]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[22]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[23]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[24]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[25]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[26]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[27]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[28]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[29]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[30]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[31]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[0]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[2]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[4]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[6]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[7]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[8]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[9]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[4]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[5]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[6]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[7]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[8]	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[9]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[0]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[4]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[5]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[6]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[7]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[8]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[9]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HS	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_SYNC	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLK	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- chipselect	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[0]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[1]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- write	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- read	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[10]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_waitrequest : std_logic;
SIGNAL ww_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_VGA_SYNC : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_chipselect : std_logic;
SIGNAL ww_read : std_logic;
SIGNAL ww_write : std_logic;
SIGNAL ww_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \LDA_cir|VGA|mypll|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \LDA_cir|VGA|mypll|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_e_VGA_CLK_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LDA_cir|VGA|mypll|altpll_component|_clk1\ : std_logic;
SIGNAL \LDA_cir|VGA|mypll|altpll_component|_clk2\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~2_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~4_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~10_combout\ : std_logic;
SIGNAL \LDA_cir|Add2~0_combout\ : std_logic;
SIGNAL \LDA_cir|Add2~13\ : std_logic;
SIGNAL \LDA_cir|LessThan1~1_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan1~3_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan1~5_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan1~7_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan1~9_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan1~11_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan1~13_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan1~15_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan1~16_combout\ : std_logic;
SIGNAL \LDA_cir|Add1~14_combout\ : std_logic;
SIGNAL \LDA_cir|Add2~14_combout\ : std_logic;
SIGNAL \LDA_cir|LessThan6~1_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan6~3_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan6~5_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan6~7_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan6~9_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan6~11_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan6~13_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan6~14_combout\ : std_logic;
SIGNAL \LDA_cir|error[4]~21_combout\ : std_logic;
SIGNAL \LDA_cir|error[5]~23_combout\ : std_logic;
SIGNAL \LDA_cir|Add8~0_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~0_combout\ : std_logic;
SIGNAL \LDA_cir|Add6~0_combout\ : std_logic;
SIGNAL \LDA_cir|Add8~2_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~2_combout\ : std_logic;
SIGNAL \LDA_cir|Add6~4_combout\ : std_logic;
SIGNAL \LDA_cir|Add8~4_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~4_combout\ : std_logic;
SIGNAL \LDA_cir|Add6~6_combout\ : std_logic;
SIGNAL \LDA_cir|Add8~6_combout\ : std_logic;
SIGNAL \LDA_cir|Add6~8_combout\ : std_logic;
SIGNAL \LDA_cir|Add8~8_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~8_combout\ : std_logic;
SIGNAL \LDA_cir|Add6~10_combout\ : std_logic;
SIGNAL \LDA_cir|Add8~10_combout\ : std_logic;
SIGNAL \LDA_cir|Add6~12_combout\ : std_logic;
SIGNAL \LDA_cir|Add8~12_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~12_combout\ : std_logic;
SIGNAL \LDA_cir|Add8~14_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~14_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~1\ : std_logic;
SIGNAL \LDA_cir|Add0~0_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~3\ : std_logic;
SIGNAL \LDA_cir|Add0~2_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~5\ : std_logic;
SIGNAL \LDA_cir|Add0~4_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~7\ : std_logic;
SIGNAL \LDA_cir|Add0~6_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~9\ : std_logic;
SIGNAL \LDA_cir|Add0~8_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~11\ : std_logic;
SIGNAL \LDA_cir|Add0~10_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~13\ : std_logic;
SIGNAL \LDA_cir|Add0~12_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~15\ : std_logic;
SIGNAL \LDA_cir|Add0~14_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~16_combout\ : std_logic;
SIGNAL \LDA_cir|LessThan3~1_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan3~3_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan3~5_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan3~7_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan3~9_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan3~11_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan3~13_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan3~15_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan3~16_combout\ : std_logic;
SIGNAL \drawline_controller|waitrequest~2_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~87_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~88_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|LessThan3~0_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~3_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~8_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~20_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~25_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~27_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~34_combout\ : std_logic;
SIGNAL \drawline_controller|Equal1~3_combout\ : std_logic;
SIGNAL \drawline_controller|Equal1~5_combout\ : std_logic;
SIGNAL \LDA_cir|LessThan5~1_combout\ : std_logic;
SIGNAL \LDA_cir|y~8_combout\ : std_logic;
SIGNAL \LDA_cir|ystep~0_combout\ : std_logic;
SIGNAL \LDA_cir|ystep~1_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~2_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~3_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~5_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~6_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~9_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~11_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~13_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~14_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~16_combout\ : std_logic;
SIGNAL \LDA_cir|comp~regout\ : std_logic;
SIGNAL \LDA_cir|y0[3]~2_combout\ : std_logic;
SIGNAL \LDA_cir|y0~4_combout\ : std_logic;
SIGNAL \LDA_cir|x1~3_combout\ : std_logic;
SIGNAL \LDA_cir|x1~12_combout\ : std_logic;
SIGNAL \LDA_cir|x1~16_combout\ : std_logic;
SIGNAL \LDA_cir|y0~8_combout\ : std_logic;
SIGNAL \LDA_cir|y0~14_combout\ : std_logic;
SIGNAL \LDA_cir|y0~20_combout\ : std_logic;
SIGNAL \LDA_cir|y0~26_combout\ : std_logic;
SIGNAL \LDA_cir|y0~27_combout\ : std_logic;
SIGNAL \LDA_cir|x0~16_combout\ : std_logic;
SIGNAL \LDA_cir|x0~17_combout\ : std_logic;
SIGNAL \LDA_cir|x0~25_combout\ : std_logic;
SIGNAL \LDA_cir|y1~10_combout\ : std_logic;
SIGNAL \LDA_cir|y1~14_combout\ : std_logic;
SIGNAL \LDA_cir|deltay~0_combout\ : std_logic;
SIGNAL \LDA_cir|deltax~1_combout\ : std_logic;
SIGNAL \LDA_cir|deltay~1_combout\ : std_logic;
SIGNAL \LDA_cir|deltax~3_combout\ : std_logic;
SIGNAL \LDA_cir|deltay~2_combout\ : std_logic;
SIGNAL \LDA_cir|deltax~4_combout\ : std_logic;
SIGNAL \LDA_cir|deltay~4_combout\ : std_logic;
SIGNAL \LDA_cir|deltax~6_combout\ : std_logic;
SIGNAL \LDA_cir|deltax~7_combout\ : std_logic;
SIGNAL \LDA_cir|deltay~6_combout\ : std_logic;
SIGNAL \LDA_cir|deltay~7_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~18_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~18_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~19_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~19_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~20_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~20_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~21_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~21_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~22_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~22_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~23_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~23_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~24_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~24_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~25_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~25_combout\ : std_logic;
SIGNAL \LDA_cir|Add0~26_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~26_combout\ : std_logic;
SIGNAL \LDA_cir|comp~0_combout\ : std_logic;
SIGNAL \drawline_controller|Line_starting_point[23]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|Go_Register[28]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \drawline_controller|Decoder0~2_combout\ : std_logic;
SIGNAL \read~combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~11_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \drawline_controller|Mode_Register[1]~7_combout\ : std_logic;
SIGNAL \chipselect~combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register[1]~38_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~12_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~10_combout\ : std_logic;
SIGNAL \drawline_controller|Equal1~7_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~6_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register[1]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~9_combout\ : std_logic;
SIGNAL \drawline_controller|Equal1~8_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~32_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register[26]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~30_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~31_combout\ : std_logic;
SIGNAL \drawline_controller|Equal1~1_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~28_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register[22]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~29_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~26_combout\ : std_logic;
SIGNAL \drawline_controller|Equal1~2_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~35_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~36_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~37_combout\ : std_logic;
SIGNAL \drawline_controller|Equal1~0_combout\ : std_logic;
SIGNAL \drawline_controller|Equal1~4_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~15_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~17_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~16_combout\ : std_logic;
SIGNAL \drawline_controller|Equal1~6_combout\ : std_logic;
SIGNAL \drawline_controller|Equal1~9_combout\ : std_logic;
SIGNAL \drawline_controller|nstate.stall_mode~0_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register[0]~4_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register[0]~2_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register[0]~3_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register[0]~5_combout\ : std_logic;
SIGNAL \drawline_controller|always0~0_combout\ : std_logic;
SIGNAL \drawline_controller|Go~2_combout\ : std_logic;
SIGNAL \write~combout\ : std_logic;
SIGNAL \drawline_controller|waitrequest~4_combout\ : std_logic;
SIGNAL \drawline_controller|Go~3_combout\ : std_logic;
SIGNAL \drawline_controller|Go~4_combout\ : std_logic;
SIGNAL \drawline_controller|Go~regout\ : std_logic;
SIGNAL \LDA_cir|ns.s0~0_combout\ : std_logic;
SIGNAL \LDA_cir|ps.s0~regout\ : std_logic;
SIGNAL \LDA_cir|ps.s1~0_combout\ : std_logic;
SIGNAL \LDA_cir|ps.s1~regout\ : std_logic;
SIGNAL \LDA_cir|ps.s2~0_combout\ : std_logic;
SIGNAL \LDA_cir|ps.s2~regout\ : std_logic;
SIGNAL \LDA_cir|ps.s3~regout\ : std_logic;
SIGNAL \LDA_cir|ps.s4~regout\ : std_logic;
SIGNAL \LDA_cir|ps.s5~regout\ : std_logic;
SIGNAL \LDA_cir|ps.s6~regout\ : std_logic;
SIGNAL \LDA_cir|Selector0~0_combout\ : std_logic;
SIGNAL \LDA_cir|ps.s7~regout\ : std_logic;
SIGNAL \LDA_cir|ps.s8~regout\ : std_logic;
SIGNAL \LDA_cir|ps.s9~regout\ : std_logic;
SIGNAL \LDA_cir|ps.s10~regout\ : std_logic;
SIGNAL \LDA_cir|ps.s11~feeder_combout\ : std_logic;
SIGNAL \LDA_cir|ps.s11~regout\ : std_logic;
SIGNAL \LDA_cir|Selector1~0_combout\ : std_logic;
SIGNAL \LDA_cir|ps.s12~regout\ : std_logic;
SIGNAL \drawline_controller|nstate.poll_mode~0_combout\ : std_logic;
SIGNAL \drawline_controller|nstate.poll_mode_5768~combout\ : std_logic;
SIGNAL \drawline_controller|pstate.poll_mode~regout\ : std_logic;
SIGNAL \drawline_controller|waitrequest~0_combout\ : std_logic;
SIGNAL \drawline_controller|waitrequest~1_combout\ : std_logic;
SIGNAL \drawline_controller|waitrequest~3_combout\ : std_logic;
SIGNAL \drawline_controller|waitrequest~regout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \drawline_controller|Decoder0~3_combout\ : std_logic;
SIGNAL \drawline_controller|Decoder0~5_combout\ : std_logic;
SIGNAL \drawline_controller|Decoder0~4_combout\ : std_logic;
SIGNAL \drawline_controller|Mux31~0_combout\ : std_logic;
SIGNAL \drawline_controller|Mux31~2_combout\ : std_logic;
SIGNAL \drawline_controller|Decoder0~6_combout\ : std_logic;
SIGNAL \drawline_controller|Decoder0~7_combout\ : std_logic;
SIGNAL \drawline_controller|Mux31~1_combout\ : std_logic;
SIGNAL \drawline_controller|Mux31~3_combout\ : std_logic;
SIGNAL \drawline_controller|Mux31~4_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~108_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~109_combout\ : std_logic;
SIGNAL \drawline_controller|readdata[20]~12_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~105_combout\ : std_logic;
SIGNAL \drawline_controller|readdata[20]~9_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~10_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~11_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~13_combout\ : std_logic;
SIGNAL \drawline_controller|readdata[1]~14_combout\ : std_logic;
SIGNAL \drawline_controller|readdata[1]~107_combout\ : std_logic;
SIGNAL \drawline_controller|readdata[20]~8_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~15_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~16_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~17_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~18_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~19_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~20_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[4]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~21_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~22_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~23_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~24_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~25_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~106_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~26_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~27_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~28_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~29_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~13_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~30_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~31_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~32_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~14_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~33_combout\ : std_logic;
SIGNAL \drawline_controller|Line_starting_point[8]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~34_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~35_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~36_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~37_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~38_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[10]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|Line_ending_point[10]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~39_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~40_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~41_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~42_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~43_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~44_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~18_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~45_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~46_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~47_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~19_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~48_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~49_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[13]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~50_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~51_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~52_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~53_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[15]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~21_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~54_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~55_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~56_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~22_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~57_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~58_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[16]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~59_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~23_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~60_combout\ : std_logic;
SIGNAL \drawline_controller|Line_starting_point[17]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~61_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[17]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~62_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~24_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register[18]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~63_combout\ : std_logic;
SIGNAL \drawline_controller|Go_Register[18]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~64_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~65_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~66_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~67_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~68_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[20]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~69_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~70_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~71_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~72_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~73_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[21]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~74_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~75_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~76_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[22]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~77_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~78_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~79_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[23]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~80_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~81_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~82_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[24]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~83_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[25]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~84_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~85_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~86_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~89_combout\ : std_logic;
SIGNAL \drawline_controller|Mode_Register~33_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~90_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~91_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~92_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~93_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~94_combout\ : std_logic;
SIGNAL \drawline_controller|Line_color[28]~feeder_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~95_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~96_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~97_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~98_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~99_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~100_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~101_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~102_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~103_combout\ : std_logic;
SIGNAL \drawline_controller|readdata~104_combout\ : std_logic;
SIGNAL \LDA_cir|steep~0_combout\ : std_logic;
SIGNAL \LDA_cir|steep~regout\ : std_logic;
SIGNAL \LDA_cir|y0[3]~0_combout\ : std_logic;
SIGNAL \LDA_cir|y0[3]~1_combout\ : std_logic;
SIGNAL \LDA_cir|swap_1~combout\ : std_logic;
SIGNAL \LDA_cir|x1~1_combout\ : std_logic;
SIGNAL \LDA_cir|swaped_2~0_combout\ : std_logic;
SIGNAL \LDA_cir|swaped_2~regout\ : std_logic;
SIGNAL \LDA_cir|x0~0_combout\ : std_logic;
SIGNAL \LDA_cir|swaped~0_combout\ : std_logic;
SIGNAL \LDA_cir|swaped~regout\ : std_logic;
SIGNAL \LDA_cir|x1~0_combout\ : std_logic;
SIGNAL \LDA_cir|x1~2_combout\ : std_logic;
SIGNAL \LDA_cir|x1[8]~feeder_combout\ : std_logic;
SIGNAL \LDA_cir|x0~1_combout\ : std_logic;
SIGNAL \LDA_cir|x0~2_combout\ : std_logic;
SIGNAL \LDA_cir|x0~3_combout\ : std_logic;
SIGNAL \LDA_cir|x0[8]~feeder_combout\ : std_logic;
SIGNAL \LDA_cir|x1~4_combout\ : std_logic;
SIGNAL \LDA_cir|x1~5_combout\ : std_logic;
SIGNAL \LDA_cir|y1[6]~0_combout\ : std_logic;
SIGNAL \LDA_cir|y1[6]~1_combout\ : std_logic;
SIGNAL \LDA_cir|y0~5_combout\ : std_logic;
SIGNAL \LDA_cir|y0~6_combout\ : std_logic;
SIGNAL \LDA_cir|y0[3]~7_combout\ : std_logic;
SIGNAL \LDA_cir|y1~4_combout\ : std_logic;
SIGNAL \LDA_cir|y1~5_combout\ : std_logic;
SIGNAL \LDA_cir|x0~7_combout\ : std_logic;
SIGNAL \LDA_cir|x0~8_combout\ : std_logic;
SIGNAL \LDA_cir|x0~9_combout\ : std_logic;
SIGNAL \LDA_cir|x1~6_combout\ : std_logic;
SIGNAL \LDA_cir|x1~7_combout\ : std_logic;
SIGNAL \LDA_cir|y0~11_combout\ : std_logic;
SIGNAL \LDA_cir|y0~12_combout\ : std_logic;
SIGNAL \LDA_cir|y0~13_combout\ : std_logic;
SIGNAL \LDA_cir|y1~6_combout\ : std_logic;
SIGNAL \LDA_cir|y1~7_combout\ : std_logic;
SIGNAL \LDA_cir|x0~26_combout\ : std_logic;
SIGNAL \LDA_cir|x0~27_combout\ : std_logic;
SIGNAL \LDA_cir|x1~8_combout\ : std_logic;
SIGNAL \LDA_cir|x1~9_combout\ : std_logic;
SIGNAL \LDA_cir|y1~8_combout\ : std_logic;
SIGNAL \LDA_cir|y1~9_combout\ : std_logic;
SIGNAL \LDA_cir|x0~22_combout\ : std_logic;
SIGNAL \LDA_cir|x0~23_combout\ : std_logic;
SIGNAL \LDA_cir|x0~24_combout\ : std_logic;
SIGNAL \LDA_cir|x1~10_combout\ : std_logic;
SIGNAL \LDA_cir|x1~11_combout\ : std_logic;
SIGNAL \LDA_cir|x1~13_combout\ : std_logic;
SIGNAL \LDA_cir|x0~18_combout\ : std_logic;
SIGNAL \LDA_cir|x1~17_combout\ : std_logic;
SIGNAL \LDA_cir|x0~10_combout\ : std_logic;
SIGNAL \LDA_cir|x0~11_combout\ : std_logic;
SIGNAL \LDA_cir|x0~12_combout\ : std_logic;
SIGNAL \LDA_cir|y0~23_combout\ : std_logic;
SIGNAL \LDA_cir|y0~24_combout\ : std_logic;
SIGNAL \LDA_cir|y0~25_combout\ : std_logic;
SIGNAL \LDA_cir|y1~16_combout\ : std_logic;
SIGNAL \LDA_cir|y1~17_combout\ : std_logic;
SIGNAL \LDA_cir|x1~18_combout\ : std_logic;
SIGNAL \LDA_cir|x1~19_combout\ : std_logic;
SIGNAL \LDA_cir|LessThan7~1_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan7~3_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan7~5_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan7~7_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan7~9_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan7~11_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan7~13_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan7~15_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan7~16_combout\ : std_logic;
SIGNAL \LDA_cir|y0[3]~3_combout\ : std_logic;
SIGNAL \LDA_cir|y0~9_combout\ : std_logic;
SIGNAL \LDA_cir|y0~10_combout\ : std_logic;
SIGNAL \LDA_cir|y1~15_combout\ : std_logic;
SIGNAL \LDA_cir|y0~21_combout\ : std_logic;
SIGNAL \LDA_cir|y0~22_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~18_combout\ : std_logic;
SIGNAL \LDA_cir|y1~2_combout\ : std_logic;
SIGNAL \LDA_cir|y1~3_combout\ : std_logic;
SIGNAL \LDA_cir|y1~11_combout\ : std_logic;
SIGNAL \LDA_cir|y0~15_combout\ : std_logic;
SIGNAL \LDA_cir|y0~16_combout\ : std_logic;
SIGNAL \LDA_cir|y0~17_combout\ : std_logic;
SIGNAL \LDA_cir|x1~14_combout\ : std_logic;
SIGNAL \LDA_cir|x1~15_combout\ : std_logic;
SIGNAL \LDA_cir|y0~18_combout\ : std_logic;
SIGNAL \LDA_cir|y0~19_combout\ : std_logic;
SIGNAL \LDA_cir|y1~12_combout\ : std_logic;
SIGNAL \LDA_cir|y1~13_combout\ : std_logic;
SIGNAL \LDA_cir|Add8~1\ : std_logic;
SIGNAL \LDA_cir|Add8~3\ : std_logic;
SIGNAL \LDA_cir|Add8~5\ : std_logic;
SIGNAL \LDA_cir|Add8~7\ : std_logic;
SIGNAL \LDA_cir|Add8~9\ : std_logic;
SIGNAL \LDA_cir|Add8~11\ : std_logic;
SIGNAL \LDA_cir|Add8~13\ : std_logic;
SIGNAL \LDA_cir|Add8~15\ : std_logic;
SIGNAL \LDA_cir|Add8~16_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~1\ : std_logic;
SIGNAL \LDA_cir|Add7~3\ : std_logic;
SIGNAL \LDA_cir|Add7~5\ : std_logic;
SIGNAL \LDA_cir|Add7~7\ : std_logic;
SIGNAL \LDA_cir|Add7~9\ : std_logic;
SIGNAL \LDA_cir|Add7~11\ : std_logic;
SIGNAL \LDA_cir|Add7~13\ : std_logic;
SIGNAL \LDA_cir|Add7~15\ : std_logic;
SIGNAL \LDA_cir|Add7~16_combout\ : std_logic;
SIGNAL \LDA_cir|deltay~8_combout\ : std_logic;
SIGNAL \LDA_cir|deltax[2]~0_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~19_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~10_combout\ : std_logic;
SIGNAL \LDA_cir|y0~28_combout\ : std_logic;
SIGNAL \LDA_cir|LessThan4~1_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan4~3_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan4~5_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan4~7_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan4~9_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan4~11_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan4~13_cout\ : std_logic;
SIGNAL \LDA_cir|LessThan4~14_combout\ : std_logic;
SIGNAL \LDA_cir|deltay~5_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~12_combout\ : std_logic;
SIGNAL \LDA_cir|deltax~5_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~10_combout\ : std_logic;
SIGNAL \LDA_cir|Add7~6_combout\ : std_logic;
SIGNAL \LDA_cir|deltay~3_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~8_combout\ : std_logic;
SIGNAL \LDA_cir|Add6~1\ : std_logic;
SIGNAL \LDA_cir|Add6~2_combout\ : std_logic;
SIGNAL \LDA_cir|deltax~2_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~4_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~1_combout\ : std_logic;
SIGNAL \LDA_cir|error[0]~10_cout\ : std_logic;
SIGNAL \LDA_cir|error[0]~12\ : std_logic;
SIGNAL \LDA_cir|error[1]~16\ : std_logic;
SIGNAL \LDA_cir|error[2]~17_combout\ : std_logic;
SIGNAL \LDA_cir|error[4]~13_combout\ : std_logic;
SIGNAL \LDA_cir|error[4]~14_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~7_combout\ : std_logic;
SIGNAL \LDA_cir|error[2]~18\ : std_logic;
SIGNAL \LDA_cir|error[3]~20\ : std_logic;
SIGNAL \LDA_cir|error[4]~22\ : std_logic;
SIGNAL \LDA_cir|error[5]~24\ : std_logic;
SIGNAL \LDA_cir|error[6]~25_combout\ : std_logic;
SIGNAL \LDA_cir|x0~4_combout\ : std_logic;
SIGNAL \LDA_cir|x0~5_combout\ : std_logic;
SIGNAL \LDA_cir|x0~6_combout\ : std_logic;
SIGNAL \LDA_cir|Add6~3\ : std_logic;
SIGNAL \LDA_cir|Add6~5\ : std_logic;
SIGNAL \LDA_cir|Add6~7\ : std_logic;
SIGNAL \LDA_cir|Add6~9\ : std_logic;
SIGNAL \LDA_cir|Add6~11\ : std_logic;
SIGNAL \LDA_cir|Add6~13\ : std_logic;
SIGNAL \LDA_cir|Add6~14_combout\ : std_logic;
SIGNAL \LDA_cir|deltax~8_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~15_combout\ : std_logic;
SIGNAL \LDA_cir|error[6]~26\ : std_logic;
SIGNAL \LDA_cir|error[7]~27_combout\ : std_logic;
SIGNAL \LDA_cir|Add6~15\ : std_logic;
SIGNAL \LDA_cir|Add6~16_combout\ : std_logic;
SIGNAL \LDA_cir|deltax~9_combout\ : std_logic;
SIGNAL \LDA_cir|Add4~17_combout\ : std_logic;
SIGNAL \LDA_cir|error[7]~28\ : std_logic;
SIGNAL \LDA_cir|error[8]~29_combout\ : std_logic;
SIGNAL \LDA_cir|error[3]~19_combout\ : std_logic;
SIGNAL \LDA_cir|error[1]~15_combout\ : std_logic;
SIGNAL \LDA_cir|error[0]~11_combout\ : std_logic;
SIGNAL \LDA_cir|LessThan5~0_combout\ : std_logic;
SIGNAL \LDA_cir|always4~0_combout\ : std_logic;
SIGNAL \LDA_cir|y~7_combout\ : std_logic;
SIGNAL \LDA_cir|y[5]~1_combout\ : std_logic;
SIGNAL \LDA_cir|Add2~1\ : std_logic;
SIGNAL \LDA_cir|Add2~2_combout\ : std_logic;
SIGNAL \LDA_cir|y~6_combout\ : std_logic;
SIGNAL \LDA_cir|Add2~3\ : std_logic;
SIGNAL \LDA_cir|Add2~4_combout\ : std_logic;
SIGNAL \LDA_cir|y~5_combout\ : std_logic;
SIGNAL \LDA_cir|Add2~5\ : std_logic;
SIGNAL \LDA_cir|Add2~6_combout\ : std_logic;
SIGNAL \LDA_cir|y~4_combout\ : std_logic;
SIGNAL \LDA_cir|Add2~7\ : std_logic;
SIGNAL \LDA_cir|Add2~8_combout\ : std_logic;
SIGNAL \LDA_cir|y~2_combout\ : std_logic;
SIGNAL \LDA_cir|Add2~9\ : std_logic;
SIGNAL \LDA_cir|Add2~10_combout\ : std_logic;
SIGNAL \LDA_cir|y~3_combout\ : std_logic;
SIGNAL \LDA_cir|Add2~11\ : std_logic;
SIGNAL \LDA_cir|Add2~12_combout\ : std_logic;
SIGNAL \LDA_cir|y~0_combout\ : std_logic;
SIGNAL \LDA_cir|plot_y[1]~feeder_combout\ : std_logic;
SIGNAL \LDA_cir|plot_y[0]~feeder_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~1\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~3\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~5\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~7\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~9\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~11\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~13\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~15\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~16_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~14_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~12_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~8_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~6_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|Add0~0_combout\ : std_logic;
SIGNAL \LDA_cir|x~2_combout\ : std_logic;
SIGNAL \LDA_cir|x[3]~1_combout\ : std_logic;
SIGNAL \LDA_cir|x0~13_combout\ : std_logic;
SIGNAL \LDA_cir|x0~14_combout\ : std_logic;
SIGNAL \LDA_cir|x0~15_combout\ : std_logic;
SIGNAL \LDA_cir|Add1~0_combout\ : std_logic;
SIGNAL \LDA_cir|x~4_combout\ : std_logic;
SIGNAL \LDA_cir|Add1~1\ : std_logic;
SIGNAL \LDA_cir|Add1~2_combout\ : std_logic;
SIGNAL \LDA_cir|x~5_combout\ : std_logic;
SIGNAL \LDA_cir|Add1~3\ : std_logic;
SIGNAL \LDA_cir|Add1~4_combout\ : std_logic;
SIGNAL \LDA_cir|x~6_combout\ : std_logic;
SIGNAL \LDA_cir|Add1~5\ : std_logic;
SIGNAL \LDA_cir|Add1~7\ : std_logic;
SIGNAL \LDA_cir|Add1~8_combout\ : std_logic;
SIGNAL \LDA_cir|x~8_combout\ : std_logic;
SIGNAL \LDA_cir|Add1~9\ : std_logic;
SIGNAL \LDA_cir|Add1~10_combout\ : std_logic;
SIGNAL \LDA_cir|x~9_combout\ : std_logic;
SIGNAL \LDA_cir|Add1~11\ : std_logic;
SIGNAL \LDA_cir|Add1~12_combout\ : std_logic;
SIGNAL \LDA_cir|x~3_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[6]~1\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[7]~3\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[8]~5\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[9]~7\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[10]~9\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[11]~11\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[12]~13\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[13]~15\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[14]~17\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[15]~19\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[16]~20_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[12]~12_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[13]~14_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[14]~16_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~0_combout\ : std_logic;
SIGNAL \LDA_cir|Add1~13\ : std_logic;
SIGNAL \LDA_cir|Add1~15\ : std_logic;
SIGNAL \LDA_cir|Add1~16_combout\ : std_logic;
SIGNAL \LDA_cir|x~0_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~1_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~2_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|mypll|altpll_component|_clk0\ : std_logic;
SIGNAL \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[15]~18_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~4_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \LDA_cir|plot_x[1]~feeder_combout\ : std_logic;
SIGNAL \LDA_cir|x0~19_combout\ : std_logic;
SIGNAL \LDA_cir|x0~20_combout\ : std_logic;
SIGNAL \LDA_cir|x0~21_combout\ : std_logic;
SIGNAL \LDA_cir|Add1~6_combout\ : std_logic;
SIGNAL \LDA_cir|x~7_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[6]~0_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[7]~2_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[8]~4_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[9]~6_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[10]~8_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|user_input_translator|mem_address[11]~10_combout\ : std_logic;
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\ : std_logic;
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\ : std_logic;
SIGNAL \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\ : std_logic;
SIGNAL \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_e_VGA_CLK_outclk\ : std_logic;
SIGNAL \address~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \writedata~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LDA_cir|deltax\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LDA_cir|deltay\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LDA_cir|error\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LDA_cir|plot_x\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LDA_cir|plot_y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LDA_cir|x\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LDA_cir|x0\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LDA_cir|x1\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LDA_cir|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LDA_cir|y0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LDA_cir|y1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LDA_cir|ystep\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \drawline_controller|Go_Register\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \drawline_controller|Line_color\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \drawline_controller|Line_ending_point\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \drawline_controller|Line_starting_point\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \drawline_controller|Mode_Register\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \drawline_controller|Status_Register\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \drawline_controller|readdata\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \drawline_controller|ALT_INV_waitrequest~regout\ : std_logic;
SIGNAL \ALT_INV_Reset~clkctrl_outclk\ : std_logic;

BEGIN

waitrequest <= ww_waitrequest;
readdata <= ww_readdata;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_BLANK <= ww_VGA_BLANK;
VGA_SYNC <= ww_VGA_SYNC;
VGA_CLK <= ww_VGA_CLK;
ww_address <= address;
ww_chipselect <= chipselect;
ww_read <= read;
ww_write <= write;
ww_writedata <= writedata;
ww_CLOCK_50 <= CLOCK_50;
ww_Reset <= Reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\(0) <= vcc;

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\);

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\ <= (\LDA_cir|VGA|user_input_translator|mem_address[11]~10_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[10]~8_combout\ & 
\LDA_cir|VGA|user_input_translator|mem_address[9]~6_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[8]~4_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[7]~2_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[6]~0_combout\ & 
\LDA_cir|plot_x\(5) & \LDA_cir|plot_x\(4) & \LDA_cir|plot_x\(3) & \LDA_cir|plot_x\(2) & \LDA_cir|plot_x\(1) & \LDA_cir|plot_x\(0));

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\ <= \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\(0);

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\(0) <= vcc;

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\);

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ <= (\LDA_cir|VGA|user_input_translator|mem_address[11]~10_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[10]~8_combout\ & 
\LDA_cir|VGA|user_input_translator|mem_address[9]~6_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[8]~4_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[7]~2_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[6]~0_combout\ & 
\LDA_cir|plot_x\(5) & \LDA_cir|plot_x\(4) & \LDA_cir|plot_x\(3) & \LDA_cir|plot_x\(2) & \LDA_cir|plot_x\(1) & \LDA_cir|plot_x\(0));

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\ <= \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(0);

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\(0) <= vcc;

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\);

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\LDA_cir|VGA|user_input_translator|mem_address[11]~10_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[10]~8_combout\ & 
\LDA_cir|VGA|user_input_translator|mem_address[9]~6_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[8]~4_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[7]~2_combout\ & \LDA_cir|VGA|user_input_translator|mem_address[6]~0_combout\ & 
\LDA_cir|plot_x\(5) & \LDA_cir|plot_x\(4) & \LDA_cir|plot_x\(3) & \LDA_cir|plot_x\(2) & \LDA_cir|plot_x\(1) & \LDA_cir|plot_x\(0));

\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\ <= \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);

\LDA_cir|VGA|mypll|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~combout\);

\LDA_cir|VGA|mypll|altpll_component|_clk0\ <= \LDA_cir|VGA|mypll|altpll_component|pll_CLK_bus\(0);
\LDA_cir|VGA|mypll|altpll_component|_clk1\ <= \LDA_cir|VGA|mypll|altpll_component|pll_CLK_bus\(1);
\LDA_cir|VGA|mypll|altpll_component|_clk2\ <= \LDA_cir|VGA|mypll|altpll_component|pll_CLK_bus\(2);

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \LDA_cir|VGA|mypll|altpll_component|_clk0\);

\LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_e_VGA_CLK_INCLK_bus\ <= (gnd & gnd & gnd & \LDA_cir|VGA|mypll|altpll_component|_clk0\);
\drawline_controller|ALT_INV_waitrequest~regout\ <= NOT \drawline_controller|waitrequest~regout\;
\ALT_INV_Reset~clkctrl_outclk\ <= NOT \Reset~clkctrl_outclk\;

-- Location: LCCOMB_X21_Y27_N12
\LDA_cir|VGA|user_input_translator|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|Add0~2_combout\ = (\LDA_cir|plot_y\(3) & ((\LDA_cir|plot_y\(1) & (\LDA_cir|VGA|user_input_translator|Add0~1\ & VCC)) # (!\LDA_cir|plot_y\(1) & (!\LDA_cir|VGA|user_input_translator|Add0~1\)))) # (!\LDA_cir|plot_y\(3) & 
-- ((\LDA_cir|plot_y\(1) & (!\LDA_cir|VGA|user_input_translator|Add0~1\)) # (!\LDA_cir|plot_y\(1) & ((\LDA_cir|VGA|user_input_translator|Add0~1\) # (GND)))))
-- \LDA_cir|VGA|user_input_translator|Add0~3\ = CARRY((\LDA_cir|plot_y\(3) & (!\LDA_cir|plot_y\(1) & !\LDA_cir|VGA|user_input_translator|Add0~1\)) # (!\LDA_cir|plot_y\(3) & ((!\LDA_cir|VGA|user_input_translator|Add0~1\) # (!\LDA_cir|plot_y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|plot_y\(3),
	datab => \LDA_cir|plot_y\(1),
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|Add0~1\,
	combout => \LDA_cir|VGA|user_input_translator|Add0~2_combout\,
	cout => \LDA_cir|VGA|user_input_translator|Add0~3\);

-- Location: LCCOMB_X21_Y27_N14
\LDA_cir|VGA|user_input_translator|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|Add0~4_combout\ = ((\LDA_cir|plot_y\(2) $ (\LDA_cir|plot_y\(4) $ (!\LDA_cir|VGA|user_input_translator|Add0~3\)))) # (GND)
-- \LDA_cir|VGA|user_input_translator|Add0~5\ = CARRY((\LDA_cir|plot_y\(2) & ((\LDA_cir|plot_y\(4)) # (!\LDA_cir|VGA|user_input_translator|Add0~3\))) # (!\LDA_cir|plot_y\(2) & (\LDA_cir|plot_y\(4) & !\LDA_cir|VGA|user_input_translator|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|plot_y\(2),
	datab => \LDA_cir|plot_y\(4),
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|Add0~3\,
	combout => \LDA_cir|VGA|user_input_translator|Add0~4_combout\,
	cout => \LDA_cir|VGA|user_input_translator|Add0~5\);

-- Location: LCCOMB_X21_Y27_N20
\LDA_cir|VGA|user_input_translator|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|Add0~10_combout\ = (\LDA_cir|plot_y\(7) & ((\LDA_cir|plot_y\(5) & (\LDA_cir|VGA|user_input_translator|Add0~9\ & VCC)) # (!\LDA_cir|plot_y\(5) & (!\LDA_cir|VGA|user_input_translator|Add0~9\)))) # (!\LDA_cir|plot_y\(7) & 
-- ((\LDA_cir|plot_y\(5) & (!\LDA_cir|VGA|user_input_translator|Add0~9\)) # (!\LDA_cir|plot_y\(5) & ((\LDA_cir|VGA|user_input_translator|Add0~9\) # (GND)))))
-- \LDA_cir|VGA|user_input_translator|Add0~11\ = CARRY((\LDA_cir|plot_y\(7) & (!\LDA_cir|plot_y\(5) & !\LDA_cir|VGA|user_input_translator|Add0~9\)) # (!\LDA_cir|plot_y\(7) & ((!\LDA_cir|VGA|user_input_translator|Add0~9\) # (!\LDA_cir|plot_y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|plot_y\(7),
	datab => \LDA_cir|plot_y\(5),
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|Add0~9\,
	combout => \LDA_cir|VGA|user_input_translator|Add0~10_combout\,
	cout => \LDA_cir|VGA|user_input_translator|Add0~11\);

-- Location: LCCOMB_X20_Y27_N10
\LDA_cir|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add2~0_combout\ = (\LDA_cir|ystep\(0) & (\LDA_cir|y\(0) $ (VCC))) # (!\LDA_cir|ystep\(0) & (\LDA_cir|y\(0) & VCC))
-- \LDA_cir|Add2~1\ = CARRY((\LDA_cir|ystep\(0) & \LDA_cir|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ystep\(0),
	datab => \LDA_cir|y\(0),
	datad => VCC,
	combout => \LDA_cir|Add2~0_combout\,
	cout => \LDA_cir|Add2~1\);

-- Location: LCCOMB_X20_Y27_N22
\LDA_cir|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add2~12_combout\ = ((\LDA_cir|ystep\(1) $ (\LDA_cir|y\(6) $ (!\LDA_cir|Add2~11\)))) # (GND)
-- \LDA_cir|Add2~13\ = CARRY((\LDA_cir|ystep\(1) & ((\LDA_cir|y\(6)) # (!\LDA_cir|Add2~11\))) # (!\LDA_cir|ystep\(1) & (\LDA_cir|y\(6) & !\LDA_cir|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ystep\(1),
	datab => \LDA_cir|y\(6),
	datad => VCC,
	cin => \LDA_cir|Add2~11\,
	combout => \LDA_cir|Add2~12_combout\,
	cout => \LDA_cir|Add2~13\);

-- Location: LCFF_X16_Y29_N21
\LDA_cir|error[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|error[4]~21_combout\,
	sclr => \LDA_cir|error[4]~13_combout\,
	ena => \LDA_cir|error[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|error\(4));

-- Location: LCFF_X16_Y29_N23
\LDA_cir|error[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|error[5]~23_combout\,
	sclr => \LDA_cir|error[4]~13_combout\,
	ena => \LDA_cir|error[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|error\(5));

-- Location: LCCOMB_X17_Y25_N6
\LDA_cir|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan1~1_cout\ = CARRY((!\LDA_cir|x\(0) & \LDA_cir|x1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x\(0),
	datab => \LDA_cir|x1\(0),
	datad => VCC,
	cout => \LDA_cir|LessThan1~1_cout\);

-- Location: LCCOMB_X17_Y25_N8
\LDA_cir|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan1~3_cout\ = CARRY((\LDA_cir|x1\(1) & (\LDA_cir|x\(1) & !\LDA_cir|LessThan1~1_cout\)) # (!\LDA_cir|x1\(1) & ((\LDA_cir|x\(1)) # (!\LDA_cir|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(1),
	datab => \LDA_cir|x\(1),
	datad => VCC,
	cin => \LDA_cir|LessThan1~1_cout\,
	cout => \LDA_cir|LessThan1~3_cout\);

-- Location: LCCOMB_X17_Y25_N10
\LDA_cir|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan1~5_cout\ = CARRY((\LDA_cir|x1\(2) & ((!\LDA_cir|LessThan1~3_cout\) # (!\LDA_cir|x\(2)))) # (!\LDA_cir|x1\(2) & (!\LDA_cir|x\(2) & !\LDA_cir|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(2),
	datab => \LDA_cir|x\(2),
	datad => VCC,
	cin => \LDA_cir|LessThan1~3_cout\,
	cout => \LDA_cir|LessThan1~5_cout\);

-- Location: LCCOMB_X17_Y25_N12
\LDA_cir|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan1~7_cout\ = CARRY((\LDA_cir|x\(3) & ((!\LDA_cir|LessThan1~5_cout\) # (!\LDA_cir|x1\(3)))) # (!\LDA_cir|x\(3) & (!\LDA_cir|x1\(3) & !\LDA_cir|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x\(3),
	datab => \LDA_cir|x1\(3),
	datad => VCC,
	cin => \LDA_cir|LessThan1~5_cout\,
	cout => \LDA_cir|LessThan1~7_cout\);

-- Location: LCCOMB_X17_Y25_N14
\LDA_cir|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan1~9_cout\ = CARRY((\LDA_cir|x\(4) & (\LDA_cir|x1\(4) & !\LDA_cir|LessThan1~7_cout\)) # (!\LDA_cir|x\(4) & ((\LDA_cir|x1\(4)) # (!\LDA_cir|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x\(4),
	datab => \LDA_cir|x1\(4),
	datad => VCC,
	cin => \LDA_cir|LessThan1~7_cout\,
	cout => \LDA_cir|LessThan1~9_cout\);

-- Location: LCCOMB_X17_Y25_N16
\LDA_cir|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan1~11_cout\ = CARRY((\LDA_cir|x1\(5) & (\LDA_cir|x\(5) & !\LDA_cir|LessThan1~9_cout\)) # (!\LDA_cir|x1\(5) & ((\LDA_cir|x\(5)) # (!\LDA_cir|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(5),
	datab => \LDA_cir|x\(5),
	datad => VCC,
	cin => \LDA_cir|LessThan1~9_cout\,
	cout => \LDA_cir|LessThan1~11_cout\);

-- Location: LCCOMB_X17_Y25_N18
\LDA_cir|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan1~13_cout\ = CARRY((\LDA_cir|x1\(6) & ((!\LDA_cir|LessThan1~11_cout\) # (!\LDA_cir|x\(6)))) # (!\LDA_cir|x1\(6) & (!\LDA_cir|x\(6) & !\LDA_cir|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(6),
	datab => \LDA_cir|x\(6),
	datad => VCC,
	cin => \LDA_cir|LessThan1~11_cout\,
	cout => \LDA_cir|LessThan1~13_cout\);

-- Location: LCCOMB_X17_Y25_N20
\LDA_cir|LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan1~15_cout\ = CARRY((\LDA_cir|x1\(7) & (\LDA_cir|x\(7) & !\LDA_cir|LessThan1~13_cout\)) # (!\LDA_cir|x1\(7) & ((\LDA_cir|x\(7)) # (!\LDA_cir|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(7),
	datab => \LDA_cir|x\(7),
	datad => VCC,
	cin => \LDA_cir|LessThan1~13_cout\,
	cout => \LDA_cir|LessThan1~15_cout\);

-- Location: LCCOMB_X17_Y25_N22
\LDA_cir|LessThan1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan1~16_combout\ = (\LDA_cir|x1\(8) & ((!\LDA_cir|x\(8)) # (!\LDA_cir|LessThan1~15_cout\))) # (!\LDA_cir|x1\(8) & (!\LDA_cir|LessThan1~15_cout\ & !\LDA_cir|x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(8),
	datad => \LDA_cir|x\(8),
	cin => \LDA_cir|LessThan1~15_cout\,
	combout => \LDA_cir|LessThan1~16_combout\);

-- Location: LCCOMB_X19_Y25_N20
\LDA_cir|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add1~14_combout\ = (\LDA_cir|x\(7) & (!\LDA_cir|Add1~13\)) # (!\LDA_cir|x\(7) & ((\LDA_cir|Add1~13\) # (GND)))
-- \LDA_cir|Add1~15\ = CARRY((!\LDA_cir|Add1~13\) # (!\LDA_cir|x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|x\(7),
	datad => VCC,
	cin => \LDA_cir|Add1~13\,
	combout => \LDA_cir|Add1~14_combout\,
	cout => \LDA_cir|Add1~15\);

-- Location: LCCOMB_X20_Y27_N24
\LDA_cir|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add2~14_combout\ = \LDA_cir|ystep\(1) $ (\LDA_cir|y\(7) $ (\LDA_cir|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ystep\(1),
	datab => \LDA_cir|y\(7),
	cin => \LDA_cir|Add2~13\,
	combout => \LDA_cir|Add2~14_combout\);

-- Location: LCCOMB_X17_Y28_N0
\LDA_cir|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan6~1_cout\ = CARRY((\LDA_cir|y1\(0) & !\LDA_cir|y0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(0),
	datab => \LDA_cir|y0\(0),
	datad => VCC,
	cout => \LDA_cir|LessThan6~1_cout\);

-- Location: LCCOMB_X17_Y28_N2
\LDA_cir|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan6~3_cout\ = CARRY((\LDA_cir|y1\(1) & (\LDA_cir|y0\(1) & !\LDA_cir|LessThan6~1_cout\)) # (!\LDA_cir|y1\(1) & ((\LDA_cir|y0\(1)) # (!\LDA_cir|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(1),
	datab => \LDA_cir|y0\(1),
	datad => VCC,
	cin => \LDA_cir|LessThan6~1_cout\,
	cout => \LDA_cir|LessThan6~3_cout\);

-- Location: LCCOMB_X17_Y28_N4
\LDA_cir|LessThan6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan6~5_cout\ = CARRY((\LDA_cir|y0\(2) & (\LDA_cir|y1\(2) & !\LDA_cir|LessThan6~3_cout\)) # (!\LDA_cir|y0\(2) & ((\LDA_cir|y1\(2)) # (!\LDA_cir|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(2),
	datab => \LDA_cir|y1\(2),
	datad => VCC,
	cin => \LDA_cir|LessThan6~3_cout\,
	cout => \LDA_cir|LessThan6~5_cout\);

-- Location: LCCOMB_X17_Y28_N6
\LDA_cir|LessThan6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan6~7_cout\ = CARRY((\LDA_cir|y1\(3) & (\LDA_cir|y0\(3) & !\LDA_cir|LessThan6~5_cout\)) # (!\LDA_cir|y1\(3) & ((\LDA_cir|y0\(3)) # (!\LDA_cir|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(3),
	datab => \LDA_cir|y0\(3),
	datad => VCC,
	cin => \LDA_cir|LessThan6~5_cout\,
	cout => \LDA_cir|LessThan6~7_cout\);

-- Location: LCCOMB_X17_Y28_N8
\LDA_cir|LessThan6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan6~9_cout\ = CARRY((\LDA_cir|y0\(4) & (\LDA_cir|y1\(4) & !\LDA_cir|LessThan6~7_cout\)) # (!\LDA_cir|y0\(4) & ((\LDA_cir|y1\(4)) # (!\LDA_cir|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(4),
	datab => \LDA_cir|y1\(4),
	datad => VCC,
	cin => \LDA_cir|LessThan6~7_cout\,
	cout => \LDA_cir|LessThan6~9_cout\);

-- Location: LCCOMB_X17_Y28_N10
\LDA_cir|LessThan6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan6~11_cout\ = CARRY((\LDA_cir|y1\(5) & (\LDA_cir|y0\(5) & !\LDA_cir|LessThan6~9_cout\)) # (!\LDA_cir|y1\(5) & ((\LDA_cir|y0\(5)) # (!\LDA_cir|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(5),
	datab => \LDA_cir|y0\(5),
	datad => VCC,
	cin => \LDA_cir|LessThan6~9_cout\,
	cout => \LDA_cir|LessThan6~11_cout\);

-- Location: LCCOMB_X17_Y28_N12
\LDA_cir|LessThan6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan6~13_cout\ = CARRY((\LDA_cir|y1\(6) & ((!\LDA_cir|LessThan6~11_cout\) # (!\LDA_cir|y0\(6)))) # (!\LDA_cir|y1\(6) & (!\LDA_cir|y0\(6) & !\LDA_cir|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(6),
	datab => \LDA_cir|y0\(6),
	datad => VCC,
	cin => \LDA_cir|LessThan6~11_cout\,
	cout => \LDA_cir|LessThan6~13_cout\);

-- Location: LCCOMB_X17_Y28_N14
\LDA_cir|LessThan6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan6~14_combout\ = (\LDA_cir|y1\(7) & ((\LDA_cir|LessThan6~13_cout\) # (!\LDA_cir|y0\(7)))) # (!\LDA_cir|y1\(7) & (\LDA_cir|LessThan6~13_cout\ & !\LDA_cir|y0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|y1\(7),
	datad => \LDA_cir|y0\(7),
	cin => \LDA_cir|LessThan6~13_cout\,
	combout => \LDA_cir|LessThan6~14_combout\);

-- Location: LCCOMB_X16_Y29_N20
\LDA_cir|error[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[4]~21_combout\ = (\LDA_cir|Add4~11_combout\ & ((\LDA_cir|Add4~10_combout\ & (\LDA_cir|error[3]~20\ & VCC)) # (!\LDA_cir|Add4~10_combout\ & (!\LDA_cir|error[3]~20\)))) # (!\LDA_cir|Add4~11_combout\ & ((\LDA_cir|Add4~10_combout\ & 
-- (!\LDA_cir|error[3]~20\)) # (!\LDA_cir|Add4~10_combout\ & ((\LDA_cir|error[3]~20\) # (GND)))))
-- \LDA_cir|error[4]~22\ = CARRY((\LDA_cir|Add4~11_combout\ & (!\LDA_cir|Add4~10_combout\ & !\LDA_cir|error[3]~20\)) # (!\LDA_cir|Add4~11_combout\ & ((!\LDA_cir|error[3]~20\) # (!\LDA_cir|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add4~11_combout\,
	datab => \LDA_cir|Add4~10_combout\,
	datad => VCC,
	cin => \LDA_cir|error[3]~20\,
	combout => \LDA_cir|error[4]~21_combout\,
	cout => \LDA_cir|error[4]~22\);

-- Location: LCCOMB_X16_Y29_N22
\LDA_cir|error[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[5]~23_combout\ = ((\LDA_cir|Add4~13_combout\ $ (\LDA_cir|Add4~12_combout\ $ (!\LDA_cir|error[4]~22\)))) # (GND)
-- \LDA_cir|error[5]~24\ = CARRY((\LDA_cir|Add4~13_combout\ & ((\LDA_cir|Add4~12_combout\) # (!\LDA_cir|error[4]~22\))) # (!\LDA_cir|Add4~13_combout\ & (\LDA_cir|Add4~12_combout\ & !\LDA_cir|error[4]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add4~13_combout\,
	datab => \LDA_cir|Add4~12_combout\,
	datad => VCC,
	cin => \LDA_cir|error[4]~22\,
	combout => \LDA_cir|error[5]~23_combout\,
	cout => \LDA_cir|error[5]~24\);

-- Location: LCCOMB_X18_Y28_N6
\LDA_cir|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add8~0_combout\ = (\LDA_cir|y0\(0) & ((GND) # (!\LDA_cir|y1\(0)))) # (!\LDA_cir|y0\(0) & (\LDA_cir|y1\(0) $ (GND)))
-- \LDA_cir|Add8~1\ = CARRY((\LDA_cir|y0\(0)) # (!\LDA_cir|y1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(0),
	datab => \LDA_cir|y1\(0),
	datad => VCC,
	combout => \LDA_cir|Add8~0_combout\,
	cout => \LDA_cir|Add8~1\);

-- Location: LCCOMB_X19_Y28_N6
\LDA_cir|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~0_combout\ = (\LDA_cir|y0\(0) & (\LDA_cir|y1\(0) $ (VCC))) # (!\LDA_cir|y0\(0) & ((\LDA_cir|y1\(0)) # (GND)))
-- \LDA_cir|Add7~1\ = CARRY((\LDA_cir|y1\(0)) # (!\LDA_cir|y0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(0),
	datab => \LDA_cir|y1\(0),
	datad => VCC,
	combout => \LDA_cir|Add7~0_combout\,
	cout => \LDA_cir|Add7~1\);

-- Location: LCCOMB_X18_Y29_N14
\LDA_cir|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add6~0_combout\ = (\LDA_cir|x0\(0) & (\LDA_cir|x1\(0) $ (VCC))) # (!\LDA_cir|x0\(0) & ((\LDA_cir|x1\(0)) # (GND)))
-- \LDA_cir|Add6~1\ = CARRY((\LDA_cir|x1\(0)) # (!\LDA_cir|x0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(0),
	datab => \LDA_cir|x1\(0),
	datad => VCC,
	combout => \LDA_cir|Add6~0_combout\,
	cout => \LDA_cir|Add6~1\);

-- Location: LCCOMB_X18_Y28_N8
\LDA_cir|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add8~2_combout\ = (\LDA_cir|y0\(1) & ((\LDA_cir|y1\(1) & (!\LDA_cir|Add8~1\)) # (!\LDA_cir|y1\(1) & (\LDA_cir|Add8~1\ & VCC)))) # (!\LDA_cir|y0\(1) & ((\LDA_cir|y1\(1) & ((\LDA_cir|Add8~1\) # (GND))) # (!\LDA_cir|y1\(1) & (!\LDA_cir|Add8~1\))))
-- \LDA_cir|Add8~3\ = CARRY((\LDA_cir|y0\(1) & (\LDA_cir|y1\(1) & !\LDA_cir|Add8~1\)) # (!\LDA_cir|y0\(1) & ((\LDA_cir|y1\(1)) # (!\LDA_cir|Add8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(1),
	datab => \LDA_cir|y1\(1),
	datad => VCC,
	cin => \LDA_cir|Add8~1\,
	combout => \LDA_cir|Add8~2_combout\,
	cout => \LDA_cir|Add8~3\);

-- Location: LCCOMB_X19_Y28_N8
\LDA_cir|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~2_combout\ = (\LDA_cir|y0\(1) & ((\LDA_cir|y1\(1) & (!\LDA_cir|Add7~1\)) # (!\LDA_cir|y1\(1) & ((\LDA_cir|Add7~1\) # (GND))))) # (!\LDA_cir|y0\(1) & ((\LDA_cir|y1\(1) & (\LDA_cir|Add7~1\ & VCC)) # (!\LDA_cir|y1\(1) & (!\LDA_cir|Add7~1\))))
-- \LDA_cir|Add7~3\ = CARRY((\LDA_cir|y0\(1) & ((!\LDA_cir|Add7~1\) # (!\LDA_cir|y1\(1)))) # (!\LDA_cir|y0\(1) & (!\LDA_cir|y1\(1) & !\LDA_cir|Add7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(1),
	datab => \LDA_cir|y1\(1),
	datad => VCC,
	cin => \LDA_cir|Add7~1\,
	combout => \LDA_cir|Add7~2_combout\,
	cout => \LDA_cir|Add7~3\);

-- Location: LCCOMB_X18_Y29_N18
\LDA_cir|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add6~4_combout\ = ((\LDA_cir|x1\(2) $ (\LDA_cir|x0\(2) $ (\LDA_cir|Add6~3\)))) # (GND)
-- \LDA_cir|Add6~5\ = CARRY((\LDA_cir|x1\(2) & ((!\LDA_cir|Add6~3\) # (!\LDA_cir|x0\(2)))) # (!\LDA_cir|x1\(2) & (!\LDA_cir|x0\(2) & !\LDA_cir|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(2),
	datab => \LDA_cir|x0\(2),
	datad => VCC,
	cin => \LDA_cir|Add6~3\,
	combout => \LDA_cir|Add6~4_combout\,
	cout => \LDA_cir|Add6~5\);

-- Location: LCCOMB_X18_Y28_N10
\LDA_cir|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add8~4_combout\ = ((\LDA_cir|y0\(2) $ (\LDA_cir|y1\(2) $ (\LDA_cir|Add8~3\)))) # (GND)
-- \LDA_cir|Add8~5\ = CARRY((\LDA_cir|y0\(2) & ((!\LDA_cir|Add8~3\) # (!\LDA_cir|y1\(2)))) # (!\LDA_cir|y0\(2) & (!\LDA_cir|y1\(2) & !\LDA_cir|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(2),
	datab => \LDA_cir|y1\(2),
	datad => VCC,
	cin => \LDA_cir|Add8~3\,
	combout => \LDA_cir|Add8~4_combout\,
	cout => \LDA_cir|Add8~5\);

-- Location: LCCOMB_X19_Y28_N10
\LDA_cir|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~4_combout\ = ((\LDA_cir|y0\(2) $ (\LDA_cir|y1\(2) $ (\LDA_cir|Add7~3\)))) # (GND)
-- \LDA_cir|Add7~5\ = CARRY((\LDA_cir|y0\(2) & (\LDA_cir|y1\(2) & !\LDA_cir|Add7~3\)) # (!\LDA_cir|y0\(2) & ((\LDA_cir|y1\(2)) # (!\LDA_cir|Add7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(2),
	datab => \LDA_cir|y1\(2),
	datad => VCC,
	cin => \LDA_cir|Add7~3\,
	combout => \LDA_cir|Add7~4_combout\,
	cout => \LDA_cir|Add7~5\);

-- Location: LCCOMB_X18_Y29_N20
\LDA_cir|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add6~6_combout\ = (\LDA_cir|x0\(3) & ((\LDA_cir|x1\(3) & (!\LDA_cir|Add6~5\)) # (!\LDA_cir|x1\(3) & ((\LDA_cir|Add6~5\) # (GND))))) # (!\LDA_cir|x0\(3) & ((\LDA_cir|x1\(3) & (\LDA_cir|Add6~5\ & VCC)) # (!\LDA_cir|x1\(3) & (!\LDA_cir|Add6~5\))))
-- \LDA_cir|Add6~7\ = CARRY((\LDA_cir|x0\(3) & ((!\LDA_cir|Add6~5\) # (!\LDA_cir|x1\(3)))) # (!\LDA_cir|x0\(3) & (!\LDA_cir|x1\(3) & !\LDA_cir|Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(3),
	datab => \LDA_cir|x1\(3),
	datad => VCC,
	cin => \LDA_cir|Add6~5\,
	combout => \LDA_cir|Add6~6_combout\,
	cout => \LDA_cir|Add6~7\);

-- Location: LCCOMB_X18_Y28_N12
\LDA_cir|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add8~6_combout\ = (\LDA_cir|y1\(3) & ((\LDA_cir|y0\(3) & (!\LDA_cir|Add8~5\)) # (!\LDA_cir|y0\(3) & ((\LDA_cir|Add8~5\) # (GND))))) # (!\LDA_cir|y1\(3) & ((\LDA_cir|y0\(3) & (\LDA_cir|Add8~5\ & VCC)) # (!\LDA_cir|y0\(3) & (!\LDA_cir|Add8~5\))))
-- \LDA_cir|Add8~7\ = CARRY((\LDA_cir|y1\(3) & ((!\LDA_cir|Add8~5\) # (!\LDA_cir|y0\(3)))) # (!\LDA_cir|y1\(3) & (!\LDA_cir|y0\(3) & !\LDA_cir|Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(3),
	datab => \LDA_cir|y0\(3),
	datad => VCC,
	cin => \LDA_cir|Add8~5\,
	combout => \LDA_cir|Add8~6_combout\,
	cout => \LDA_cir|Add8~7\);

-- Location: LCCOMB_X18_Y29_N22
\LDA_cir|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add6~8_combout\ = ((\LDA_cir|x0\(4) $ (\LDA_cir|x1\(4) $ (\LDA_cir|Add6~7\)))) # (GND)
-- \LDA_cir|Add6~9\ = CARRY((\LDA_cir|x0\(4) & (\LDA_cir|x1\(4) & !\LDA_cir|Add6~7\)) # (!\LDA_cir|x0\(4) & ((\LDA_cir|x1\(4)) # (!\LDA_cir|Add6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(4),
	datab => \LDA_cir|x1\(4),
	datad => VCC,
	cin => \LDA_cir|Add6~7\,
	combout => \LDA_cir|Add6~8_combout\,
	cout => \LDA_cir|Add6~9\);

-- Location: LCCOMB_X18_Y28_N14
\LDA_cir|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add8~8_combout\ = ((\LDA_cir|y1\(4) $ (\LDA_cir|y0\(4) $ (\LDA_cir|Add8~7\)))) # (GND)
-- \LDA_cir|Add8~9\ = CARRY((\LDA_cir|y1\(4) & (\LDA_cir|y0\(4) & !\LDA_cir|Add8~7\)) # (!\LDA_cir|y1\(4) & ((\LDA_cir|y0\(4)) # (!\LDA_cir|Add8~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(4),
	datab => \LDA_cir|y0\(4),
	datad => VCC,
	cin => \LDA_cir|Add8~7\,
	combout => \LDA_cir|Add8~8_combout\,
	cout => \LDA_cir|Add8~9\);

-- Location: LCCOMB_X19_Y28_N14
\LDA_cir|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~8_combout\ = ((\LDA_cir|y0\(4) $ (\LDA_cir|y1\(4) $ (\LDA_cir|Add7~7\)))) # (GND)
-- \LDA_cir|Add7~9\ = CARRY((\LDA_cir|y0\(4) & (\LDA_cir|y1\(4) & !\LDA_cir|Add7~7\)) # (!\LDA_cir|y0\(4) & ((\LDA_cir|y1\(4)) # (!\LDA_cir|Add7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(4),
	datab => \LDA_cir|y1\(4),
	datad => VCC,
	cin => \LDA_cir|Add7~7\,
	combout => \LDA_cir|Add7~8_combout\,
	cout => \LDA_cir|Add7~9\);

-- Location: LCCOMB_X18_Y29_N24
\LDA_cir|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add6~10_combout\ = (\LDA_cir|x1\(5) & ((\LDA_cir|x0\(5) & (!\LDA_cir|Add6~9\)) # (!\LDA_cir|x0\(5) & (\LDA_cir|Add6~9\ & VCC)))) # (!\LDA_cir|x1\(5) & ((\LDA_cir|x0\(5) & ((\LDA_cir|Add6~9\) # (GND))) # (!\LDA_cir|x0\(5) & (!\LDA_cir|Add6~9\))))
-- \LDA_cir|Add6~11\ = CARRY((\LDA_cir|x1\(5) & (\LDA_cir|x0\(5) & !\LDA_cir|Add6~9\)) # (!\LDA_cir|x1\(5) & ((\LDA_cir|x0\(5)) # (!\LDA_cir|Add6~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(5),
	datab => \LDA_cir|x0\(5),
	datad => VCC,
	cin => \LDA_cir|Add6~9\,
	combout => \LDA_cir|Add6~10_combout\,
	cout => \LDA_cir|Add6~11\);

-- Location: LCCOMB_X18_Y28_N16
\LDA_cir|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add8~10_combout\ = (\LDA_cir|y0\(5) & ((\LDA_cir|y1\(5) & (!\LDA_cir|Add8~9\)) # (!\LDA_cir|y1\(5) & (\LDA_cir|Add8~9\ & VCC)))) # (!\LDA_cir|y0\(5) & ((\LDA_cir|y1\(5) & ((\LDA_cir|Add8~9\) # (GND))) # (!\LDA_cir|y1\(5) & (!\LDA_cir|Add8~9\))))
-- \LDA_cir|Add8~11\ = CARRY((\LDA_cir|y0\(5) & (\LDA_cir|y1\(5) & !\LDA_cir|Add8~9\)) # (!\LDA_cir|y0\(5) & ((\LDA_cir|y1\(5)) # (!\LDA_cir|Add8~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(5),
	datab => \LDA_cir|y1\(5),
	datad => VCC,
	cin => \LDA_cir|Add8~9\,
	combout => \LDA_cir|Add8~10_combout\,
	cout => \LDA_cir|Add8~11\);

-- Location: LCCOMB_X18_Y29_N26
\LDA_cir|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add6~12_combout\ = ((\LDA_cir|x0\(6) $ (\LDA_cir|x1\(6) $ (\LDA_cir|Add6~11\)))) # (GND)
-- \LDA_cir|Add6~13\ = CARRY((\LDA_cir|x0\(6) & (\LDA_cir|x1\(6) & !\LDA_cir|Add6~11\)) # (!\LDA_cir|x0\(6) & ((\LDA_cir|x1\(6)) # (!\LDA_cir|Add6~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(6),
	datab => \LDA_cir|x1\(6),
	datad => VCC,
	cin => \LDA_cir|Add6~11\,
	combout => \LDA_cir|Add6~12_combout\,
	cout => \LDA_cir|Add6~13\);

-- Location: LCCOMB_X18_Y28_N18
\LDA_cir|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add8~12_combout\ = ((\LDA_cir|y1\(6) $ (\LDA_cir|y0\(6) $ (\LDA_cir|Add8~11\)))) # (GND)
-- \LDA_cir|Add8~13\ = CARRY((\LDA_cir|y1\(6) & (\LDA_cir|y0\(6) & !\LDA_cir|Add8~11\)) # (!\LDA_cir|y1\(6) & ((\LDA_cir|y0\(6)) # (!\LDA_cir|Add8~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(6),
	datab => \LDA_cir|y0\(6),
	datad => VCC,
	cin => \LDA_cir|Add8~11\,
	combout => \LDA_cir|Add8~12_combout\,
	cout => \LDA_cir|Add8~13\);

-- Location: LCCOMB_X19_Y28_N18
\LDA_cir|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~12_combout\ = ((\LDA_cir|y0\(6) $ (\LDA_cir|y1\(6) $ (\LDA_cir|Add7~11\)))) # (GND)
-- \LDA_cir|Add7~13\ = CARRY((\LDA_cir|y0\(6) & (\LDA_cir|y1\(6) & !\LDA_cir|Add7~11\)) # (!\LDA_cir|y0\(6) & ((\LDA_cir|y1\(6)) # (!\LDA_cir|Add7~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(6),
	datab => \LDA_cir|y1\(6),
	datad => VCC,
	cin => \LDA_cir|Add7~11\,
	combout => \LDA_cir|Add7~12_combout\,
	cout => \LDA_cir|Add7~13\);

-- Location: LCCOMB_X18_Y28_N20
\LDA_cir|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add8~14_combout\ = (\LDA_cir|y0\(7) & ((\LDA_cir|y1\(7) & (!\LDA_cir|Add8~13\)) # (!\LDA_cir|y1\(7) & (\LDA_cir|Add8~13\ & VCC)))) # (!\LDA_cir|y0\(7) & ((\LDA_cir|y1\(7) & ((\LDA_cir|Add8~13\) # (GND))) # (!\LDA_cir|y1\(7) & 
-- (!\LDA_cir|Add8~13\))))
-- \LDA_cir|Add8~15\ = CARRY((\LDA_cir|y0\(7) & (\LDA_cir|y1\(7) & !\LDA_cir|Add8~13\)) # (!\LDA_cir|y0\(7) & ((\LDA_cir|y1\(7)) # (!\LDA_cir|Add8~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(7),
	datab => \LDA_cir|y1\(7),
	datad => VCC,
	cin => \LDA_cir|Add8~13\,
	combout => \LDA_cir|Add8~14_combout\,
	cout => \LDA_cir|Add8~15\);

-- Location: LCCOMB_X19_Y28_N20
\LDA_cir|Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~14_combout\ = (\LDA_cir|y0\(7) & ((\LDA_cir|y1\(7) & (!\LDA_cir|Add7~13\)) # (!\LDA_cir|y1\(7) & ((\LDA_cir|Add7~13\) # (GND))))) # (!\LDA_cir|y0\(7) & ((\LDA_cir|y1\(7) & (\LDA_cir|Add7~13\ & VCC)) # (!\LDA_cir|y1\(7) & 
-- (!\LDA_cir|Add7~13\))))
-- \LDA_cir|Add7~15\ = CARRY((\LDA_cir|y0\(7) & ((!\LDA_cir|Add7~13\) # (!\LDA_cir|y1\(7)))) # (!\LDA_cir|y0\(7) & (!\LDA_cir|y1\(7) & !\LDA_cir|Add7~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(7),
	datab => \LDA_cir|y1\(7),
	datad => VCC,
	cin => \LDA_cir|Add7~13\,
	combout => \LDA_cir|Add7~14_combout\,
	cout => \LDA_cir|Add7~15\);

-- Location: LCCOMB_X19_Y29_N10
\LDA_cir|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~0_combout\ = (\LDA_cir|x1\(0) & (\LDA_cir|x0\(0) $ (VCC))) # (!\LDA_cir|x1\(0) & ((\LDA_cir|x0\(0)) # (GND)))
-- \LDA_cir|Add0~1\ = CARRY((\LDA_cir|x0\(0)) # (!\LDA_cir|x1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(0),
	datab => \LDA_cir|x0\(0),
	datad => VCC,
	combout => \LDA_cir|Add0~0_combout\,
	cout => \LDA_cir|Add0~1\);

-- Location: LCCOMB_X19_Y29_N12
\LDA_cir|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~2_combout\ = (\LDA_cir|x1\(1) & ((\LDA_cir|x0\(1) & (!\LDA_cir|Add0~1\)) # (!\LDA_cir|x0\(1) & ((\LDA_cir|Add0~1\) # (GND))))) # (!\LDA_cir|x1\(1) & ((\LDA_cir|x0\(1) & (\LDA_cir|Add0~1\ & VCC)) # (!\LDA_cir|x0\(1) & (!\LDA_cir|Add0~1\))))
-- \LDA_cir|Add0~3\ = CARRY((\LDA_cir|x1\(1) & ((!\LDA_cir|Add0~1\) # (!\LDA_cir|x0\(1)))) # (!\LDA_cir|x1\(1) & (!\LDA_cir|x0\(1) & !\LDA_cir|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(1),
	datab => \LDA_cir|x0\(1),
	datad => VCC,
	cin => \LDA_cir|Add0~1\,
	combout => \LDA_cir|Add0~2_combout\,
	cout => \LDA_cir|Add0~3\);

-- Location: LCCOMB_X19_Y29_N14
\LDA_cir|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~4_combout\ = ((\LDA_cir|x0\(2) $ (\LDA_cir|x1\(2) $ (\LDA_cir|Add0~3\)))) # (GND)
-- \LDA_cir|Add0~5\ = CARRY((\LDA_cir|x0\(2) & ((!\LDA_cir|Add0~3\) # (!\LDA_cir|x1\(2)))) # (!\LDA_cir|x0\(2) & (!\LDA_cir|x1\(2) & !\LDA_cir|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(2),
	datab => \LDA_cir|x1\(2),
	datad => VCC,
	cin => \LDA_cir|Add0~3\,
	combout => \LDA_cir|Add0~4_combout\,
	cout => \LDA_cir|Add0~5\);

-- Location: LCCOMB_X19_Y29_N16
\LDA_cir|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~6_combout\ = (\LDA_cir|x1\(3) & ((\LDA_cir|x0\(3) & (!\LDA_cir|Add0~5\)) # (!\LDA_cir|x0\(3) & ((\LDA_cir|Add0~5\) # (GND))))) # (!\LDA_cir|x1\(3) & ((\LDA_cir|x0\(3) & (\LDA_cir|Add0~5\ & VCC)) # (!\LDA_cir|x0\(3) & (!\LDA_cir|Add0~5\))))
-- \LDA_cir|Add0~7\ = CARRY((\LDA_cir|x1\(3) & ((!\LDA_cir|Add0~5\) # (!\LDA_cir|x0\(3)))) # (!\LDA_cir|x1\(3) & (!\LDA_cir|x0\(3) & !\LDA_cir|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(3),
	datab => \LDA_cir|x0\(3),
	datad => VCC,
	cin => \LDA_cir|Add0~5\,
	combout => \LDA_cir|Add0~6_combout\,
	cout => \LDA_cir|Add0~7\);

-- Location: LCCOMB_X19_Y29_N18
\LDA_cir|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~8_combout\ = ((\LDA_cir|x1\(4) $ (\LDA_cir|x0\(4) $ (\LDA_cir|Add0~7\)))) # (GND)
-- \LDA_cir|Add0~9\ = CARRY((\LDA_cir|x1\(4) & (\LDA_cir|x0\(4) & !\LDA_cir|Add0~7\)) # (!\LDA_cir|x1\(4) & ((\LDA_cir|x0\(4)) # (!\LDA_cir|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(4),
	datab => \LDA_cir|x0\(4),
	datad => VCC,
	cin => \LDA_cir|Add0~7\,
	combout => \LDA_cir|Add0~8_combout\,
	cout => \LDA_cir|Add0~9\);

-- Location: LCCOMB_X19_Y29_N20
\LDA_cir|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~10_combout\ = (\LDA_cir|x0\(5) & ((\LDA_cir|x1\(5) & (!\LDA_cir|Add0~9\)) # (!\LDA_cir|x1\(5) & (\LDA_cir|Add0~9\ & VCC)))) # (!\LDA_cir|x0\(5) & ((\LDA_cir|x1\(5) & ((\LDA_cir|Add0~9\) # (GND))) # (!\LDA_cir|x1\(5) & (!\LDA_cir|Add0~9\))))
-- \LDA_cir|Add0~11\ = CARRY((\LDA_cir|x0\(5) & (\LDA_cir|x1\(5) & !\LDA_cir|Add0~9\)) # (!\LDA_cir|x0\(5) & ((\LDA_cir|x1\(5)) # (!\LDA_cir|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(5),
	datab => \LDA_cir|x1\(5),
	datad => VCC,
	cin => \LDA_cir|Add0~9\,
	combout => \LDA_cir|Add0~10_combout\,
	cout => \LDA_cir|Add0~11\);

-- Location: LCCOMB_X19_Y29_N22
\LDA_cir|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~12_combout\ = ((\LDA_cir|x1\(6) $ (\LDA_cir|x0\(6) $ (\LDA_cir|Add0~11\)))) # (GND)
-- \LDA_cir|Add0~13\ = CARRY((\LDA_cir|x1\(6) & (\LDA_cir|x0\(6) & !\LDA_cir|Add0~11\)) # (!\LDA_cir|x1\(6) & ((\LDA_cir|x0\(6)) # (!\LDA_cir|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(6),
	datab => \LDA_cir|x0\(6),
	datad => VCC,
	cin => \LDA_cir|Add0~11\,
	combout => \LDA_cir|Add0~12_combout\,
	cout => \LDA_cir|Add0~13\);

-- Location: LCCOMB_X19_Y29_N24
\LDA_cir|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~14_combout\ = (\LDA_cir|x1\(7) & ((\LDA_cir|x0\(7) & (!\LDA_cir|Add0~13\)) # (!\LDA_cir|x0\(7) & ((\LDA_cir|Add0~13\) # (GND))))) # (!\LDA_cir|x1\(7) & ((\LDA_cir|x0\(7) & (\LDA_cir|Add0~13\ & VCC)) # (!\LDA_cir|x0\(7) & 
-- (!\LDA_cir|Add0~13\))))
-- \LDA_cir|Add0~15\ = CARRY((\LDA_cir|x1\(7) & ((!\LDA_cir|Add0~13\) # (!\LDA_cir|x0\(7)))) # (!\LDA_cir|x1\(7) & (!\LDA_cir|x0\(7) & !\LDA_cir|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(7),
	datab => \LDA_cir|x0\(7),
	datad => VCC,
	cin => \LDA_cir|Add0~13\,
	combout => \LDA_cir|Add0~14_combout\,
	cout => \LDA_cir|Add0~15\);

-- Location: LCCOMB_X19_Y29_N26
\LDA_cir|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~16_combout\ = \LDA_cir|x1\(8) $ (\LDA_cir|x0\(8) $ (\LDA_cir|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(8),
	datab => \LDA_cir|x0\(8),
	cin => \LDA_cir|Add0~15\,
	combout => \LDA_cir|Add0~16_combout\);

-- Location: LCCOMB_X20_Y29_N8
\LDA_cir|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan3~1_cout\ = CARRY((!\LDA_cir|Add0~26_combout\ & \LDA_cir|Add7~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add0~26_combout\,
	datab => \LDA_cir|Add7~26_combout\,
	datad => VCC,
	cout => \LDA_cir|LessThan3~1_cout\);

-- Location: LCCOMB_X20_Y29_N10
\LDA_cir|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan3~3_cout\ = CARRY((\LDA_cir|Add0~25_combout\ & ((!\LDA_cir|LessThan3~1_cout\) # (!\LDA_cir|Add7~25_combout\))) # (!\LDA_cir|Add0~25_combout\ & (!\LDA_cir|Add7~25_combout\ & !\LDA_cir|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add0~25_combout\,
	datab => \LDA_cir|Add7~25_combout\,
	datad => VCC,
	cin => \LDA_cir|LessThan3~1_cout\,
	cout => \LDA_cir|LessThan3~3_cout\);

-- Location: LCCOMB_X20_Y29_N12
\LDA_cir|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan3~5_cout\ = CARRY((\LDA_cir|Add7~24_combout\ & ((!\LDA_cir|LessThan3~3_cout\) # (!\LDA_cir|Add0~24_combout\))) # (!\LDA_cir|Add7~24_combout\ & (!\LDA_cir|Add0~24_combout\ & !\LDA_cir|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add7~24_combout\,
	datab => \LDA_cir|Add0~24_combout\,
	datad => VCC,
	cin => \LDA_cir|LessThan3~3_cout\,
	cout => \LDA_cir|LessThan3~5_cout\);

-- Location: LCCOMB_X20_Y29_N14
\LDA_cir|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan3~7_cout\ = CARRY((\LDA_cir|Add7~23_combout\ & (\LDA_cir|Add0~23_combout\ & !\LDA_cir|LessThan3~5_cout\)) # (!\LDA_cir|Add7~23_combout\ & ((\LDA_cir|Add0~23_combout\) # (!\LDA_cir|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add7~23_combout\,
	datab => \LDA_cir|Add0~23_combout\,
	datad => VCC,
	cin => \LDA_cir|LessThan3~5_cout\,
	cout => \LDA_cir|LessThan3~7_cout\);

-- Location: LCCOMB_X20_Y29_N16
\LDA_cir|LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan3~9_cout\ = CARRY((\LDA_cir|Add0~22_combout\ & (\LDA_cir|Add7~22_combout\ & !\LDA_cir|LessThan3~7_cout\)) # (!\LDA_cir|Add0~22_combout\ & ((\LDA_cir|Add7~22_combout\) # (!\LDA_cir|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add0~22_combout\,
	datab => \LDA_cir|Add7~22_combout\,
	datad => VCC,
	cin => \LDA_cir|LessThan3~7_cout\,
	cout => \LDA_cir|LessThan3~9_cout\);

-- Location: LCCOMB_X20_Y29_N18
\LDA_cir|LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan3~11_cout\ = CARRY((\LDA_cir|Add7~21_combout\ & (\LDA_cir|Add0~21_combout\ & !\LDA_cir|LessThan3~9_cout\)) # (!\LDA_cir|Add7~21_combout\ & ((\LDA_cir|Add0~21_combout\) # (!\LDA_cir|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add7~21_combout\,
	datab => \LDA_cir|Add0~21_combout\,
	datad => VCC,
	cin => \LDA_cir|LessThan3~9_cout\,
	cout => \LDA_cir|LessThan3~11_cout\);

-- Location: LCCOMB_X20_Y29_N20
\LDA_cir|LessThan3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan3~13_cout\ = CARRY((\LDA_cir|Add0~20_combout\ & (\LDA_cir|Add7~20_combout\ & !\LDA_cir|LessThan3~11_cout\)) # (!\LDA_cir|Add0~20_combout\ & ((\LDA_cir|Add7~20_combout\) # (!\LDA_cir|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add0~20_combout\,
	datab => \LDA_cir|Add7~20_combout\,
	datad => VCC,
	cin => \LDA_cir|LessThan3~11_cout\,
	cout => \LDA_cir|LessThan3~13_cout\);

-- Location: LCCOMB_X20_Y29_N22
\LDA_cir|LessThan3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan3~15_cout\ = CARRY((\LDA_cir|Add0~19_combout\ & ((!\LDA_cir|LessThan3~13_cout\) # (!\LDA_cir|Add7~19_combout\))) # (!\LDA_cir|Add0~19_combout\ & (!\LDA_cir|Add7~19_combout\ & !\LDA_cir|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add0~19_combout\,
	datab => \LDA_cir|Add7~19_combout\,
	datad => VCC,
	cin => \LDA_cir|LessThan3~13_cout\,
	cout => \LDA_cir|LessThan3~15_cout\);

-- Location: LCCOMB_X20_Y29_N24
\LDA_cir|LessThan3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan3~16_combout\ = (\LDA_cir|Add7~18_combout\ & ((!\LDA_cir|Add0~18_combout\) # (!\LDA_cir|LessThan3~15_cout\))) # (!\LDA_cir|Add7~18_combout\ & (!\LDA_cir|LessThan3~15_cout\ & !\LDA_cir|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|Add7~18_combout\,
	datad => \LDA_cir|Add0~18_combout\,
	cin => \LDA_cir|LessThan3~15_cout\,
	combout => \LDA_cir|LessThan3~16_combout\);

-- Location: LCCOMB_X11_Y21_N18
\drawline_controller|waitrequest~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|waitrequest~2_combout\ = (!\read~combout\ & (!\chipselect~combout\ & (\address~combout\(1) & \write~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \chipselect~combout\,
	datac => \address~combout\(1),
	datad => \write~combout\,
	combout => \drawline_controller|waitrequest~2_combout\);

-- Location: LCFF_X12_Y19_N25
\drawline_controller|Mode_Register[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~8_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(2));

-- Location: LCFF_X14_Y23_N19
\drawline_controller|Line_color[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(5),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(5));

-- Location: LCFF_X12_Y19_N17
\drawline_controller|Mode_Register[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~20_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(14));

-- Location: LCFF_X10_Y19_N5
\drawline_controller|Mode_Register[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~25_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(19));

-- Location: LCFF_X10_Y19_N21
\drawline_controller|Mode_Register[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~27_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(21));

-- Location: LCFF_X10_Y22_N11
\drawline_controller|Line_starting_point[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(21),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(21));

-- Location: LCFF_X11_Y23_N7
\drawline_controller|Line_starting_point[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(22),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(22));

-- Location: LCFF_X10_Y22_N7
\drawline_controller|Line_starting_point[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_starting_point[23]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(23));

-- Location: LCFF_X11_Y22_N25
\drawline_controller|Go_Register[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(26),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(26));

-- Location: LCFF_X11_Y23_N5
\drawline_controller|Line_ending_point[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(26),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(26));

-- Location: LCCOMB_X11_Y23_N4
\drawline_controller|readdata~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~87_combout\ = (\drawline_controller|readdata[20]~9_combout\ & (((\drawline_controller|readdata[20]~8_combout\)))) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\ & 
-- ((\drawline_controller|Line_ending_point\(26)))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|Mode_Register\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|Mode_Register\(26),
	datac => \drawline_controller|Line_ending_point\(26),
	datad => \drawline_controller|readdata[20]~8_combout\,
	combout => \drawline_controller|readdata~87_combout\);

-- Location: LCFF_X11_Y23_N15
\drawline_controller|Line_starting_point[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(26),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(26));

-- Location: LCCOMB_X11_Y22_N24
\drawline_controller|readdata~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~88_combout\ = (\drawline_controller|readdata~87_combout\ & ((\drawline_controller|Line_starting_point\(26)) # ((!\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata~87_combout\ & 
-- (((\drawline_controller|Go_Register\(26) & \drawline_controller|readdata[20]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Line_starting_point\(26),
	datab => \drawline_controller|readdata~87_combout\,
	datac => \drawline_controller|Go_Register\(26),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~88_combout\);

-- Location: LCFF_X12_Y22_N25
\drawline_controller|Go_Register[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Go_Register[28]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(28));

-- Location: LCFF_X11_Y21_N21
\drawline_controller|Mode_Register[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~34_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(28));

-- Location: LCFF_X12_Y22_N17
\drawline_controller|Go_Register[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(30),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(30));

-- Location: LCFF_X10_Y22_N21
\drawline_controller|Line_ending_point[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(31),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(31));

-- Location: LCFF_X21_Y27_N13
\LDA_cir|plot_y[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|y\(3),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_y\(3));

-- Location: LCFF_X21_Y27_N11
\LDA_cir|plot_y[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|y\(2),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_y\(2));

-- Location: LCFF_X21_Y27_N21
\LDA_cir|plot_y[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|y\(7),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_y\(7));

-- Location: LCCOMB_X21_Y27_N28
\LDA_cir|VGA|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|LessThan3~0_combout\ = (((!\LDA_cir|plot_y\(6)) # (!\LDA_cir|plot_y\(7))) # (!\LDA_cir|plot_y\(4))) # (!\LDA_cir|plot_y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|plot_y\(5),
	datab => \LDA_cir|plot_y\(4),
	datac => \LDA_cir|plot_y\(7),
	datad => \LDA_cir|plot_y\(6),
	combout => \LDA_cir|VGA|LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y27_N26
\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~3_combout\ = (!\LDA_cir|VGA|user_input_translator|mem_address[13]~14_combout\ & !\LDA_cir|VGA|user_input_translator|mem_address[12]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|VGA|user_input_translator|mem_address[13]~14_combout\,
	datac => \LDA_cir|VGA|user_input_translator|mem_address[12]~12_combout\,
	combout => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~3_combout\);

-- Location: LCCOMB_X12_Y19_N24
\drawline_controller|Mode_Register~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~8_combout\ = (\writedata~combout\(2) & (!\address~combout\(2) & (!\read~combout\ & !\address~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata~combout\(2),
	datab => \address~combout\(2),
	datac => \read~combout\,
	datad => \address~combout\(1),
	combout => \drawline_controller|Mode_Register~8_combout\);

-- Location: LCCOMB_X12_Y19_N16
\drawline_controller|Mode_Register~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~20_combout\ = (!\address~combout\(1) & (!\read~combout\ & (\writedata~combout\(14) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \read~combout\,
	datac => \writedata~combout\(14),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~20_combout\);

-- Location: LCCOMB_X10_Y19_N4
\drawline_controller|Mode_Register~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~25_combout\ = (!\read~combout\ & (!\address~combout\(1) & (\writedata~combout\(19) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \address~combout\(1),
	datac => \writedata~combout\(19),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~25_combout\);

-- Location: LCCOMB_X10_Y19_N20
\drawline_controller|Mode_Register~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~27_combout\ = (!\read~combout\ & (!\address~combout\(1) & (\writedata~combout\(21) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \address~combout\(1),
	datac => \writedata~combout\(21),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~27_combout\);

-- Location: LCCOMB_X11_Y21_N20
\drawline_controller|Mode_Register~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~34_combout\ = (\writedata~combout\(28) & (!\address~combout\(2) & (!\address~combout\(1) & !\read~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata~combout\(28),
	datab => \address~combout\(2),
	datac => \address~combout\(1),
	datad => \read~combout\,
	combout => \drawline_controller|Mode_Register~34_combout\);

-- Location: LCFF_X20_Y27_N5
\LDA_cir|y[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y~8_combout\,
	ena => \LDA_cir|y[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y\(7));

-- Location: LCCOMB_X11_Y19_N20
\drawline_controller|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Equal1~3_combout\ = (!\drawline_controller|Mode_Register\(18) & (!\drawline_controller|Mode_Register\(17) & (!\drawline_controller|Mode_Register\(19) & !\drawline_controller|Mode_Register\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(18),
	datab => \drawline_controller|Mode_Register\(17),
	datac => \drawline_controller|Mode_Register\(19),
	datad => \drawline_controller|Mode_Register\(16),
	combout => \drawline_controller|Equal1~3_combout\);

-- Location: LCCOMB_X12_Y19_N2
\drawline_controller|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Equal1~5_combout\ = (!\drawline_controller|Mode_Register\(14) & (!\drawline_controller|Mode_Register\(15) & (!\drawline_controller|Mode_Register\(13) & !\drawline_controller|Mode_Register\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(14),
	datab => \drawline_controller|Mode_Register\(15),
	datac => \drawline_controller|Mode_Register\(13),
	datad => \drawline_controller|Mode_Register\(12),
	combout => \drawline_controller|Equal1~5_combout\);

-- Location: LCFF_X20_Y27_N7
\LDA_cir|ystep[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|ystep~0_combout\,
	ena => \LDA_cir|ystep~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ystep\(1));

-- Location: LCFF_X20_Y27_N11
\LDA_cir|ystep[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|ps.s6~regout\,
	sload => VCC,
	ena => \LDA_cir|ystep~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ystep\(0));

-- Location: LCCOMB_X16_Y29_N2
\LDA_cir|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan5~1_combout\ = (\LDA_cir|error\(6)) # ((\LDA_cir|error\(7)) # ((\LDA_cir|error\(4)) # (\LDA_cir|error\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|error\(6),
	datab => \LDA_cir|error\(7),
	datac => \LDA_cir|error\(4),
	datad => \LDA_cir|error\(5),
	combout => \LDA_cir|LessThan5~1_combout\);

-- Location: LCCOMB_X20_Y27_N4
\LDA_cir|y~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y~8_combout\ = (\LDA_cir|Add2~14_combout\ & ((\LDA_cir|always4~0_combout\) # ((\LDA_cir|ps.s5~regout\ & \LDA_cir|y0\(7))))) # (!\LDA_cir|Add2~14_combout\ & (\LDA_cir|ps.s5~regout\ & (\LDA_cir|y0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add2~14_combout\,
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|y0\(7),
	datad => \LDA_cir|always4~0_combout\,
	combout => \LDA_cir|y~8_combout\);

-- Location: LCCOMB_X20_Y27_N6
\LDA_cir|ystep~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|ystep~0_combout\ = (!\LDA_cir|LessThan6~14_combout\ & \LDA_cir|ps.s6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|LessThan6~14_combout\,
	datac => \LDA_cir|ps.s6~regout\,
	combout => \LDA_cir|ystep~0_combout\);

-- Location: LCCOMB_X16_Y27_N4
\LDA_cir|ystep~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|ystep~1_combout\ = (\LDA_cir|ps.s6~regout\) # (\LDA_cir|ps.s12~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LDA_cir|ps.s6~regout\,
	datad => \LDA_cir|ps.s12~regout\,
	combout => \LDA_cir|ystep~1_combout\);

-- Location: LCFF_X18_Y29_N11
\LDA_cir|deltay[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltay~0_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltay\(0));

-- Location: LCFF_X18_Y29_N5
\LDA_cir|deltax[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltax~1_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltax\(0));

-- Location: LCCOMB_X18_Y29_N8
\LDA_cir|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~2_combout\ = (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|ps.s8~regout\ & ((\LDA_cir|deltay\(0)))) # (!\LDA_cir|ps.s8~regout\ & (!\LDA_cir|deltax\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s8~regout\,
	datab => \LDA_cir|deltax\(0),
	datac => \LDA_cir|ps.s5~regout\,
	datad => \LDA_cir|deltay\(0),
	combout => \LDA_cir|Add4~2_combout\);

-- Location: LCCOMB_X17_Y29_N28
\LDA_cir|Add4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~3_combout\ = (\LDA_cir|Add4~2_combout\) # ((!\LDA_cir|deltax\(1) & \LDA_cir|ps.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|deltax\(1),
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|Add4~2_combout\,
	combout => \LDA_cir|Add4~3_combout\);

-- Location: LCFF_X18_Y29_N1
\LDA_cir|deltay[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltay~1_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltay\(1));

-- Location: LCFF_X17_Y29_N23
\LDA_cir|deltax[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltax~3_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltax\(2));

-- Location: LCCOMB_X17_Y29_N24
\LDA_cir|Add4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~5_combout\ = (\LDA_cir|ps.s5~regout\ & ((!\LDA_cir|deltax\(2)))) # (!\LDA_cir|ps.s5~regout\ & (\LDA_cir|error\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|error\(1),
	datab => \LDA_cir|deltax\(2),
	datac => \LDA_cir|ps.s5~regout\,
	combout => \LDA_cir|Add4~5_combout\);

-- Location: LCFF_X19_Y28_N25
\LDA_cir|deltay[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltay~2_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltay\(2));

-- Location: LCCOMB_X17_Y27_N0
\LDA_cir|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~6_combout\ = (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|ps.s8~regout\ & ((\LDA_cir|deltay\(2)))) # (!\LDA_cir|ps.s8~regout\ & (!\LDA_cir|deltax\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|deltax\(2),
	datab => \LDA_cir|deltay\(2),
	datac => \LDA_cir|ps.s8~regout\,
	datad => \LDA_cir|ps.s5~regout\,
	combout => \LDA_cir|Add4~6_combout\);

-- Location: LCFF_X17_Y29_N11
\LDA_cir|deltax[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltax~4_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltax\(3));

-- Location: LCCOMB_X17_Y29_N26
\LDA_cir|Add4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~9_combout\ = (\LDA_cir|ps.s5~regout\ & (!\LDA_cir|deltax\(4))) # (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|error\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|deltax\(4),
	datac => \LDA_cir|ps.s5~regout\,
	datad => \LDA_cir|error\(3),
	combout => \LDA_cir|Add4~9_combout\);

-- Location: LCFF_X19_Y28_N5
\LDA_cir|deltay[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltay~4_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltay\(4));

-- Location: LCFF_X17_Y29_N7
\LDA_cir|deltax[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltax~6_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltax\(5));

-- Location: LCCOMB_X17_Y29_N16
\LDA_cir|Add4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~11_combout\ = (\LDA_cir|ps.s5~regout\ & (!\LDA_cir|deltax\(5))) # (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|error\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|deltax\(5),
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|error\(4),
	combout => \LDA_cir|Add4~11_combout\);

-- Location: LCFF_X21_Y29_N17
\LDA_cir|deltax[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltax~7_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltax\(6));

-- Location: LCCOMB_X17_Y29_N4
\LDA_cir|Add4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~13_combout\ = (\LDA_cir|ps.s5~regout\ & ((!\LDA_cir|deltax\(6)))) # (!\LDA_cir|ps.s5~regout\ & (\LDA_cir|error\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|error\(5),
	datac => \LDA_cir|ps.s5~regout\,
	datad => \LDA_cir|deltax\(6),
	combout => \LDA_cir|Add4~13_combout\);

-- Location: LCFF_X20_Y29_N1
\LDA_cir|deltay[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltay~6_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltay\(6));

-- Location: LCCOMB_X17_Y29_N14
\LDA_cir|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~14_combout\ = (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|ps.s8~regout\ & (\LDA_cir|deltay\(6))) # (!\LDA_cir|ps.s8~regout\ & ((!\LDA_cir|deltax\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|deltay\(6),
	datab => \LDA_cir|ps.s8~regout\,
	datac => \LDA_cir|ps.s5~regout\,
	datad => \LDA_cir|deltax\(6),
	combout => \LDA_cir|Add4~14_combout\);

-- Location: LCFF_X20_Y29_N27
\LDA_cir|deltay[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltay~7_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltay\(7));

-- Location: LCCOMB_X16_Y29_N6
\LDA_cir|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~16_combout\ = (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|ps.s8~regout\ & (\LDA_cir|deltay\(7))) # (!\LDA_cir|ps.s8~regout\ & ((!\LDA_cir|deltax\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s5~regout\,
	datab => \LDA_cir|deltay\(7),
	datac => \LDA_cir|ps.s8~regout\,
	datad => \LDA_cir|deltax\(7),
	combout => \LDA_cir|Add4~16_combout\);

-- Location: LCFF_X19_Y27_N21
\LDA_cir|comp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|comp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|comp~regout\);

-- Location: LCCOMB_X18_Y26_N24
\LDA_cir|y0[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0[3]~2_combout\ = (\LDA_cir|comp~regout\) # (!\LDA_cir|swaped~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|swaped~regout\,
	datad => \LDA_cir|comp~regout\,
	combout => \LDA_cir|y0[3]~2_combout\);

-- Location: LCCOMB_X18_Y26_N20
\LDA_cir|y0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~4_combout\ = (\LDA_cir|y0[3]~1_combout\ & (((\LDA_cir|y0[3]~3_combout\)))) # (!\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|x1\(6)))) # (!\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|x0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(6),
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \LDA_cir|y0[3]~3_combout\,
	datad => \LDA_cir|x1\(6),
	combout => \LDA_cir|y0~4_combout\);

-- Location: LCCOMB_X19_Y26_N12
\LDA_cir|x1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~3_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & ((\LDA_cir|y1\(7)))) # (!\LDA_cir|steep~regout\ & (\LDA_cir|x0\(7))))) # (!\LDA_cir|ps.s2~regout\ & (\LDA_cir|x0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s2~regout\,
	datab => \LDA_cir|x0\(7),
	datac => \LDA_cir|steep~regout\,
	datad => \LDA_cir|y1\(7),
	combout => \LDA_cir|x1~3_combout\);

-- Location: LCCOMB_X18_Y27_N14
\LDA_cir|x1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~12_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & (\LDA_cir|y1\(3))) # (!\LDA_cir|steep~regout\ & ((\LDA_cir|x0\(3)))))) # (!\LDA_cir|ps.s2~regout\ & (((\LDA_cir|x0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(3),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|x0\(3),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|x1~12_combout\);

-- Location: LCCOMB_X18_Y27_N0
\LDA_cir|x1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~16_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & (\LDA_cir|y1\(1))) # (!\LDA_cir|steep~regout\ & ((\LDA_cir|x0\(1)))))) # (!\LDA_cir|ps.s2~regout\ & (((\LDA_cir|x0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(1),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|x0\(1),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|x1~16_combout\);

-- Location: LCCOMB_X17_Y26_N6
\LDA_cir|y0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~8_combout\ = (\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|y0[3]~1_combout\)) # (!\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y0[3]~1_combout\ & (\drawline_controller|Line_starting_point\(13))) # (!\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|x0\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \drawline_controller|Line_starting_point\(13),
	datad => \LDA_cir|x0\(4),
	combout => \LDA_cir|y0~8_combout\);

-- Location: LCCOMB_X17_Y26_N20
\LDA_cir|y0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~14_combout\ = (\LDA_cir|y0[3]~1_combout\ & (((\LDA_cir|y0[3]~3_combout\)))) # (!\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|x1\(3)))) # (!\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|x0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(3),
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \LDA_cir|y0[3]~3_combout\,
	datad => \LDA_cir|x1\(3),
	combout => \LDA_cir|y0~14_combout\);

-- Location: LCCOMB_X18_Y27_N10
\LDA_cir|y0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~20_combout\ = (\LDA_cir|y0[3]~1_combout\ & (((\LDA_cir|y0[3]~3_combout\)))) # (!\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|x1\(1))) # (!\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|x0\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(1),
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \LDA_cir|y0[3]~3_combout\,
	datad => \LDA_cir|x0\(1),
	combout => \LDA_cir|y0~20_combout\);

-- Location: LCCOMB_X18_Y25_N20
\LDA_cir|y0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~26_combout\ = (\LDA_cir|y0[3]~3_combout\ & (((\LDA_cir|y0[3]~1_combout\) # (\LDA_cir|x1\(7))))) # (!\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|x0\(7) & (!\LDA_cir|y0[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|x0\(7),
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|x1\(7),
	combout => \LDA_cir|y0~26_combout\);

-- Location: LCCOMB_X18_Y25_N6
\LDA_cir|y0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~27_combout\ = (\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|y0~26_combout\ & ((\LDA_cir|y1\(7)))) # (!\LDA_cir|y0~26_combout\ & (\drawline_controller|Line_starting_point\(16))))) # (!\LDA_cir|y0[3]~1_combout\ & (\LDA_cir|y0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~1_combout\,
	datab => \LDA_cir|y0~26_combout\,
	datac => \drawline_controller|Line_starting_point\(16),
	datad => \LDA_cir|y1\(7),
	combout => \LDA_cir|y0~27_combout\);

-- Location: LCCOMB_X18_Y28_N0
\LDA_cir|x0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~16_combout\ = (\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y1\(2)) # ((\LDA_cir|y0[3]~1_combout\)))) # (!\LDA_cir|y0[3]~3_combout\ & (((!\LDA_cir|y0[3]~1_combout\ & \LDA_cir|y0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y1\(2),
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|y0\(2),
	combout => \LDA_cir|x0~16_combout\);

-- Location: LCCOMB_X17_Y25_N26
\LDA_cir|x0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~17_combout\ = (\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|x0~16_combout\ & (\LDA_cir|x1\(2))) # (!\LDA_cir|x0~16_combout\ & ((\drawline_controller|Line_starting_point\(2)))))) # (!\LDA_cir|y0[3]~1_combout\ & (((\LDA_cir|x0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(2),
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \drawline_controller|Line_starting_point\(2),
	datad => \LDA_cir|x0~16_combout\,
	combout => \LDA_cir|x0~17_combout\);

-- Location: LCCOMB_X18_Y27_N20
\LDA_cir|x0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~25_combout\ = (\LDA_cir|y0[3]~3_combout\ & (((\LDA_cir|y0[3]~1_combout\)))) # (!\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y0[3]~1_combout\ & ((\drawline_controller|Line_starting_point\(5)))) # (!\LDA_cir|y0[3]~1_combout\ & (\LDA_cir|y0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0\(5),
	datac => \drawline_controller|Line_starting_point\(5),
	datad => \LDA_cir|y0[3]~1_combout\,
	combout => \LDA_cir|x0~25_combout\);

-- Location: LCCOMB_X18_Y27_N4
\LDA_cir|y1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~10_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & (\LDA_cir|x1\(3))) # (!\LDA_cir|steep~regout\ & ((\LDA_cir|y0\(3)))))) # (!\LDA_cir|ps.s2~regout\ & (((\LDA_cir|y0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(3),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|y0\(3),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|y1~10_combout\);

-- Location: LCCOMB_X18_Y27_N6
\LDA_cir|y1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~14_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & ((\LDA_cir|x1\(1)))) # (!\LDA_cir|steep~regout\ & (\LDA_cir|y0\(1))))) # (!\LDA_cir|ps.s2~regout\ & (\LDA_cir|y0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(1),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|x1\(1),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|y1~14_combout\);

-- Location: LCCOMB_X18_Y29_N10
\LDA_cir|deltay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltay~0_combout\ = (\LDA_cir|ps.s4~regout\ & ((\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~0_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s4~regout\,
	datab => \LDA_cir|LessThan4~14_combout\,
	datac => \LDA_cir|Add8~0_combout\,
	datad => \LDA_cir|Add7~0_combout\,
	combout => \LDA_cir|deltay~0_combout\);

-- Location: LCCOMB_X18_Y29_N4
\LDA_cir|deltax~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltax~1_combout\ = (\LDA_cir|Add6~0_combout\ & \LDA_cir|ps.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LDA_cir|Add6~0_combout\,
	datad => \LDA_cir|ps.s4~regout\,
	combout => \LDA_cir|deltax~1_combout\);

-- Location: LCCOMB_X18_Y29_N0
\LDA_cir|deltay~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltay~1_combout\ = (\LDA_cir|ps.s4~regout\ & ((\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~2_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add8~2_combout\,
	datab => \LDA_cir|LessThan4~14_combout\,
	datac => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|Add7~2_combout\,
	combout => \LDA_cir|deltay~1_combout\);

-- Location: LCCOMB_X17_Y29_N22
\LDA_cir|deltax~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltax~3_combout\ = (\LDA_cir|ps.s4~regout\ & \LDA_cir|Add6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|Add6~4_combout\,
	combout => \LDA_cir|deltax~3_combout\);

-- Location: LCCOMB_X19_Y28_N24
\LDA_cir|deltay~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltay~2_combout\ = (\LDA_cir|ps.s4~regout\ & ((\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~4_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan4~14_combout\,
	datab => \LDA_cir|Add8~4_combout\,
	datac => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|Add7~4_combout\,
	combout => \LDA_cir|deltay~2_combout\);

-- Location: LCCOMB_X17_Y29_N10
\LDA_cir|deltax~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltax~4_combout\ = (\LDA_cir|Add6~6_combout\ & \LDA_cir|ps.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add6~6_combout\,
	datac => \LDA_cir|ps.s4~regout\,
	combout => \LDA_cir|deltax~4_combout\);

-- Location: LCCOMB_X19_Y28_N4
\LDA_cir|deltay~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltay~4_combout\ = (\LDA_cir|ps.s4~regout\ & ((\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add8~8_combout\))) # (!\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan4~14_combout\,
	datab => \LDA_cir|Add7~8_combout\,
	datac => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|Add8~8_combout\,
	combout => \LDA_cir|deltay~4_combout\);

-- Location: LCCOMB_X17_Y29_N6
\LDA_cir|deltax~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltax~6_combout\ = (\LDA_cir|ps.s4~regout\ & \LDA_cir|Add6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|Add6~10_combout\,
	combout => \LDA_cir|deltax~6_combout\);

-- Location: LCCOMB_X21_Y29_N16
\LDA_cir|deltax~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltax~7_combout\ = (\LDA_cir|ps.s4~regout\ & \LDA_cir|Add6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|Add6~12_combout\,
	combout => \LDA_cir|deltax~7_combout\);

-- Location: LCCOMB_X20_Y29_N0
\LDA_cir|deltay~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltay~6_combout\ = (\LDA_cir|ps.s4~regout\ & ((\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~12_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add8~12_combout\,
	datab => \LDA_cir|LessThan4~14_combout\,
	datac => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|Add7~12_combout\,
	combout => \LDA_cir|deltay~6_combout\);

-- Location: LCCOMB_X20_Y29_N26
\LDA_cir|deltay~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltay~7_combout\ = (\LDA_cir|ps.s4~regout\ & ((\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~14_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s4~regout\,
	datab => \LDA_cir|Add8~14_combout\,
	datac => \LDA_cir|Add7~14_combout\,
	datad => \LDA_cir|LessThan4~14_combout\,
	combout => \LDA_cir|deltay~7_combout\);

-- Location: LCCOMB_X19_Y29_N8
\LDA_cir|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~18_combout\ = (\LDA_cir|LessThan7~16_combout\ & ((\LDA_cir|Add0~16_combout\))) # (!\LDA_cir|LessThan7~16_combout\ & (\LDA_cir|Add6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|LessThan7~16_combout\,
	datac => \LDA_cir|Add6~16_combout\,
	datad => \LDA_cir|Add0~16_combout\,
	combout => \LDA_cir|Add0~18_combout\);

-- Location: LCCOMB_X19_Y27_N22
\LDA_cir|Add7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~18_combout\ = (\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~16_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan4~14_combout\,
	datac => \LDA_cir|Add8~16_combout\,
	datad => \LDA_cir|Add7~16_combout\,
	combout => \LDA_cir|Add7~18_combout\);

-- Location: LCCOMB_X20_Y29_N6
\LDA_cir|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~19_combout\ = (\LDA_cir|LessThan7~16_combout\ & ((\LDA_cir|Add0~14_combout\))) # (!\LDA_cir|LessThan7~16_combout\ & (\LDA_cir|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|Add6~14_combout\,
	datac => \LDA_cir|LessThan7~16_combout\,
	datad => \LDA_cir|Add0~14_combout\,
	combout => \LDA_cir|Add0~19_combout\);

-- Location: LCCOMB_X20_Y29_N2
\LDA_cir|Add7~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~19_combout\ = (\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~14_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|Add8~14_combout\,
	datac => \LDA_cir|Add7~14_combout\,
	datad => \LDA_cir|LessThan4~14_combout\,
	combout => \LDA_cir|Add7~19_combout\);

-- Location: LCCOMB_X19_Y29_N2
\LDA_cir|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~20_combout\ = (\LDA_cir|LessThan7~16_combout\ & ((\LDA_cir|Add0~12_combout\))) # (!\LDA_cir|LessThan7~16_combout\ & (\LDA_cir|Add6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|Add6~12_combout\,
	datac => \LDA_cir|LessThan7~16_combout\,
	datad => \LDA_cir|Add0~12_combout\,
	combout => \LDA_cir|Add0~20_combout\);

-- Location: LCCOMB_X20_Y29_N4
\LDA_cir|Add7~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~20_combout\ = (\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~12_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add8~12_combout\,
	datac => \LDA_cir|LessThan4~14_combout\,
	datad => \LDA_cir|Add7~12_combout\,
	combout => \LDA_cir|Add7~20_combout\);

-- Location: LCCOMB_X19_Y29_N4
\LDA_cir|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~21_combout\ = (\LDA_cir|LessThan7~16_combout\ & (\LDA_cir|Add0~10_combout\)) # (!\LDA_cir|LessThan7~16_combout\ & ((\LDA_cir|Add6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|LessThan7~16_combout\,
	datac => \LDA_cir|Add0~10_combout\,
	datad => \LDA_cir|Add6~10_combout\,
	combout => \LDA_cir|Add0~21_combout\);

-- Location: LCCOMB_X18_Y28_N28
\LDA_cir|Add7~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~21_combout\ = (\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~10_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add8~10_combout\,
	datac => \LDA_cir|LessThan4~14_combout\,
	datad => \LDA_cir|Add7~10_combout\,
	combout => \LDA_cir|Add7~21_combout\);

-- Location: LCCOMB_X19_Y29_N6
\LDA_cir|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~22_combout\ = (\LDA_cir|LessThan7~16_combout\ & ((\LDA_cir|Add0~8_combout\))) # (!\LDA_cir|LessThan7~16_combout\ & (\LDA_cir|Add6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|Add6~8_combout\,
	datac => \LDA_cir|LessThan7~16_combout\,
	datad => \LDA_cir|Add0~8_combout\,
	combout => \LDA_cir|Add0~22_combout\);

-- Location: LCCOMB_X19_Y28_N2
\LDA_cir|Add7~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~22_combout\ = (\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add8~8_combout\))) # (!\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan4~14_combout\,
	datac => \LDA_cir|Add7~8_combout\,
	datad => \LDA_cir|Add8~8_combout\,
	combout => \LDA_cir|Add7~22_combout\);

-- Location: LCCOMB_X19_Y29_N0
\LDA_cir|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~23_combout\ = (\LDA_cir|LessThan7~16_combout\ & ((\LDA_cir|Add0~6_combout\))) # (!\LDA_cir|LessThan7~16_combout\ & (\LDA_cir|Add6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add6~6_combout\,
	datab => \LDA_cir|LessThan7~16_combout\,
	datac => \LDA_cir|Add0~6_combout\,
	combout => \LDA_cir|Add0~23_combout\);

-- Location: LCCOMB_X19_Y28_N28
\LDA_cir|Add7~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~23_combout\ = (\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~6_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add8~6_combout\,
	datac => \LDA_cir|LessThan4~14_combout\,
	datad => \LDA_cir|Add7~6_combout\,
	combout => \LDA_cir|Add7~23_combout\);

-- Location: LCCOMB_X19_Y29_N28
\LDA_cir|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~24_combout\ = (\LDA_cir|LessThan7~16_combout\ & (\LDA_cir|Add0~4_combout\)) # (!\LDA_cir|LessThan7~16_combout\ & ((\LDA_cir|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|LessThan7~16_combout\,
	datac => \LDA_cir|Add0~4_combout\,
	datad => \LDA_cir|Add6~4_combout\,
	combout => \LDA_cir|Add0~24_combout\);

-- Location: LCCOMB_X19_Y28_N30
\LDA_cir|Add7~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~24_combout\ = (\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~4_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|Add8~4_combout\,
	datac => \LDA_cir|LessThan4~14_combout\,
	datad => \LDA_cir|Add7~4_combout\,
	combout => \LDA_cir|Add7~24_combout\);

-- Location: LCCOMB_X19_Y29_N30
\LDA_cir|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~25_combout\ = (\LDA_cir|LessThan7~16_combout\ & ((\LDA_cir|Add0~2_combout\))) # (!\LDA_cir|LessThan7~16_combout\ & (\LDA_cir|Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|Add6~2_combout\,
	datac => \LDA_cir|LessThan7~16_combout\,
	datad => \LDA_cir|Add0~2_combout\,
	combout => \LDA_cir|Add0~25_combout\);

-- Location: LCCOMB_X18_Y28_N30
\LDA_cir|Add7~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~25_combout\ = (\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~2_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan4~14_combout\,
	datab => \LDA_cir|Add8~2_combout\,
	datac => \LDA_cir|Add7~2_combout\,
	combout => \LDA_cir|Add7~25_combout\);

-- Location: LCCOMB_X18_Y29_N2
\LDA_cir|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add0~26_combout\ = (\LDA_cir|LessThan7~16_combout\ & ((\LDA_cir|Add0~0_combout\))) # (!\LDA_cir|LessThan7~16_combout\ & (\LDA_cir|Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|Add6~0_combout\,
	datac => \LDA_cir|LessThan7~16_combout\,
	datad => \LDA_cir|Add0~0_combout\,
	combout => \LDA_cir|Add0~26_combout\);

-- Location: LCCOMB_X18_Y29_N12
\LDA_cir|Add7~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~26_combout\ = (\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~0_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|LessThan4~14_combout\,
	datac => \LDA_cir|Add8~0_combout\,
	datad => \LDA_cir|Add7~0_combout\,
	combout => \LDA_cir|Add7~26_combout\);

-- Location: LCCOMB_X19_Y27_N20
\LDA_cir|comp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|comp~0_combout\ = (\LDA_cir|ps.s1~regout\ & ((\LDA_cir|comp~regout\))) # (!\LDA_cir|ps.s1~regout\ & (!\LDA_cir|LessThan4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan4~14_combout\,
	datac => \LDA_cir|comp~regout\,
	datad => \LDA_cir|ps.s1~regout\,
	combout => \LDA_cir|comp~0_combout\);

-- Location: LCCOMB_X10_Y22_N6
\drawline_controller|Line_starting_point[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_starting_point[23]~feeder_combout\ = \writedata~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(23),
	combout => \drawline_controller|Line_starting_point[23]~feeder_combout\);

-- Location: LCCOMB_X12_Y22_N24
\drawline_controller|Go_Register[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Go_Register[28]~feeder_combout\ = \writedata~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(28),
	combout => \drawline_controller|Go_Register[28]~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_address(0),
	combout => \address~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_address(2),
	combout => \address~combout\(2));

-- Location: LCCOMB_X11_Y21_N16
\drawline_controller|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Decoder0~2_combout\ = (!\address~combout\(0) & !\address~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address~combout\(0),
	datad => \address~combout\(2),
	combout => \drawline_controller|Decoder0~2_combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\read~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_read,
	combout => \read~combout\);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(5),
	combout => \writedata~combout\(5));

-- Location: LCCOMB_X12_Y19_N14
\drawline_controller|Mode_Register~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~11_combout\ = (!\address~combout\(1) & (!\read~combout\ & (\writedata~combout\(5) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \read~combout\,
	datac => \writedata~combout\(5),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~11_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: CLKCTRL_G3
\Reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~clkctrl_outclk\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_address(1),
	combout => \address~combout\(1));

-- Location: LCCOMB_X11_Y21_N10
\drawline_controller|Mode_Register[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register[1]~7_combout\ = (\write~combout\ & ((\address~combout\(1) & ((!\address~combout\(2)))) # (!\address~combout\(1) & ((\address~combout\(2)) # (!\address~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write~combout\,
	datab => \address~combout\(0),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register[1]~7_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\chipselect~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_chipselect,
	combout => \chipselect~combout\);

-- Location: LCCOMB_X10_Y21_N20
\drawline_controller|Mode_Register[1]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register[1]~38_combout\ = (\drawline_controller|pstate.poll_mode~regout\ & (!\chipselect~combout\ & ((\drawline_controller|Mode_Register[1]~7_combout\) # (\read~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|pstate.poll_mode~regout\,
	datab => \drawline_controller|Mode_Register[1]~7_combout\,
	datac => \read~combout\,
	datad => \chipselect~combout\,
	combout => \drawline_controller|Mode_Register[1]~38_combout\);

-- Location: LCFF_X12_Y19_N15
\drawline_controller|Mode_Register[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~11_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(5));

-- Location: LCCOMB_X10_Y19_N30
\drawline_controller|Mode_Register~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~12_combout\ = (\writedata~combout\(6) & (!\address~combout\(1) & (!\read~combout\ & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata~combout\(6),
	datab => \address~combout\(1),
	datac => \read~combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~12_combout\);

-- Location: LCFF_X11_Y19_N23
\drawline_controller|Mode_Register[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	sdata => \drawline_controller|Mode_Register~12_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(6));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(4),
	combout => \writedata~combout\(4));

-- Location: LCCOMB_X12_Y19_N18
\drawline_controller|Mode_Register~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~10_combout\ = (!\address~combout\(1) & (!\read~combout\ & (\writedata~combout\(4) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \read~combout\,
	datac => \writedata~combout\(4),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~10_combout\);

-- Location: LCFF_X12_Y19_N19
\drawline_controller|Mode_Register[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~10_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(4));

-- Location: LCCOMB_X11_Y19_N22
\drawline_controller|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Equal1~7_combout\ = (!\drawline_controller|Mode_Register\(7) & (!\drawline_controller|Mode_Register\(5) & (!\drawline_controller|Mode_Register\(6) & !\drawline_controller|Mode_Register\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(7),
	datab => \drawline_controller|Mode_Register\(5),
	datac => \drawline_controller|Mode_Register\(6),
	datad => \drawline_controller|Mode_Register\(4),
	combout => \drawline_controller|Equal1~7_combout\);

-- Location: LCCOMB_X10_Y19_N28
\drawline_controller|Mode_Register~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~6_combout\ = (\writedata~combout\(1) & (!\address~combout\(1) & (!\read~combout\ & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata~combout\(1),
	datab => \address~combout\(1),
	datac => \read~combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~6_combout\);

-- Location: LCCOMB_X11_Y19_N12
\drawline_controller|Mode_Register[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register[1]~feeder_combout\ = \drawline_controller|Mode_Register~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \drawline_controller|Mode_Register~6_combout\,
	combout => \drawline_controller|Mode_Register[1]~feeder_combout\);

-- Location: LCFF_X11_Y19_N13
\drawline_controller|Mode_Register[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register[1]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(1));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(3),
	combout => \writedata~combout\(3));

-- Location: LCCOMB_X12_Y19_N12
\drawline_controller|Mode_Register~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~9_combout\ = (!\address~combout\(1) & (\writedata~combout\(3) & (!\read~combout\ & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \writedata~combout\(3),
	datac => \read~combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~9_combout\);

-- Location: LCFF_X12_Y19_N13
\drawline_controller|Mode_Register[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~9_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(3));

-- Location: LCCOMB_X11_Y19_N4
\drawline_controller|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Equal1~8_combout\ = (!\drawline_controller|Mode_Register\(2) & (\drawline_controller|Equal1~7_combout\ & (!\drawline_controller|Mode_Register\(1) & !\drawline_controller|Mode_Register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(2),
	datab => \drawline_controller|Equal1~7_combout\,
	datac => \drawline_controller|Mode_Register\(1),
	datad => \drawline_controller|Mode_Register\(3),
	combout => \drawline_controller|Equal1~8_combout\);

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(26),
	combout => \writedata~combout\(26));

-- Location: LCCOMB_X11_Y20_N20
\drawline_controller|Mode_Register~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~32_combout\ = (!\read~combout\ & (\writedata~combout\(26) & (!\address~combout\(1) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \writedata~combout\(26),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~32_combout\);

-- Location: LCCOMB_X11_Y19_N2
\drawline_controller|Mode_Register[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register[26]~feeder_combout\ = \drawline_controller|Mode_Register~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \drawline_controller|Mode_Register~32_combout\,
	combout => \drawline_controller|Mode_Register[26]~feeder_combout\);

-- Location: LCFF_X11_Y19_N3
\drawline_controller|Mode_Register[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register[26]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(26));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(24),
	combout => \writedata~combout\(24));

-- Location: LCCOMB_X10_Y19_N22
\drawline_controller|Mode_Register~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~30_combout\ = (!\read~combout\ & (\writedata~combout\(24) & (!\address~combout\(1) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \writedata~combout\(24),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~30_combout\);

-- Location: LCFF_X10_Y19_N23
\drawline_controller|Mode_Register[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~30_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(24));

-- Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(25),
	combout => \writedata~combout\(25));

-- Location: LCCOMB_X11_Y20_N12
\drawline_controller|Mode_Register~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~31_combout\ = (!\read~combout\ & (\writedata~combout\(25) & (!\address~combout\(1) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \writedata~combout\(25),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~31_combout\);

-- Location: LCFF_X11_Y20_N13
\drawline_controller|Mode_Register[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~31_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(25));

-- Location: LCCOMB_X11_Y19_N18
\drawline_controller|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Equal1~1_combout\ = (!\drawline_controller|Mode_Register\(27) & (!\drawline_controller|Mode_Register\(26) & (!\drawline_controller|Mode_Register\(24) & !\drawline_controller|Mode_Register\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(27),
	datab => \drawline_controller|Mode_Register\(26),
	datac => \drawline_controller|Mode_Register\(24),
	datad => \drawline_controller|Mode_Register\(25),
	combout => \drawline_controller|Equal1~1_combout\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(22),
	combout => \writedata~combout\(22));

-- Location: LCCOMB_X10_Y19_N14
\drawline_controller|Mode_Register~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~28_combout\ = (!\read~combout\ & (\writedata~combout\(22) & (!\address~combout\(1) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \writedata~combout\(22),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~28_combout\);

-- Location: LCCOMB_X11_Y19_N26
\drawline_controller|Mode_Register[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register[22]~feeder_combout\ = \drawline_controller|Mode_Register~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \drawline_controller|Mode_Register~28_combout\,
	combout => \drawline_controller|Mode_Register[22]~feeder_combout\);

-- Location: LCFF_X11_Y19_N27
\drawline_controller|Mode_Register[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register[22]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(22));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(23),
	combout => \writedata~combout\(23));

-- Location: LCCOMB_X10_Y19_N6
\drawline_controller|Mode_Register~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~29_combout\ = (!\read~combout\ & (!\address~combout\(1) & (\writedata~combout\(23) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \address~combout\(1),
	datac => \writedata~combout\(23),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~29_combout\);

-- Location: LCFF_X10_Y19_N7
\drawline_controller|Mode_Register[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~29_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(23));

-- Location: LCCOMB_X10_Y19_N0
\drawline_controller|Mode_Register~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~26_combout\ = (\writedata~combout\(20) & (!\address~combout\(1) & (!\read~combout\ & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata~combout\(20),
	datab => \address~combout\(1),
	datac => \read~combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~26_combout\);

-- Location: LCFF_X10_Y19_N1
\drawline_controller|Mode_Register[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~26_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(20));

-- Location: LCCOMB_X11_Y19_N8
\drawline_controller|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Equal1~2_combout\ = (!\drawline_controller|Mode_Register\(21) & (!\drawline_controller|Mode_Register\(22) & (!\drawline_controller|Mode_Register\(23) & !\drawline_controller|Mode_Register\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(21),
	datab => \drawline_controller|Mode_Register\(22),
	datac => \drawline_controller|Mode_Register\(23),
	datad => \drawline_controller|Mode_Register\(20),
	combout => \drawline_controller|Equal1~2_combout\);

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(29),
	combout => \writedata~combout\(29));

-- Location: LCCOMB_X11_Y21_N8
\drawline_controller|Mode_Register~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~35_combout\ = (!\read~combout\ & (\writedata~combout\(29) & (!\address~combout\(1) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \writedata~combout\(29),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~35_combout\);

-- Location: LCFF_X11_Y21_N9
\drawline_controller|Mode_Register[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~35_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(29));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(30),
	combout => \writedata~combout\(30));

-- Location: LCCOMB_X11_Y21_N24
\drawline_controller|Mode_Register~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~36_combout\ = (!\read~combout\ & (\writedata~combout\(30) & (!\address~combout\(1) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \writedata~combout\(30),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~36_combout\);

-- Location: LCFF_X11_Y21_N25
\drawline_controller|Mode_Register[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~36_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(30));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(31),
	combout => \writedata~combout\(31));

-- Location: LCCOMB_X11_Y21_N12
\drawline_controller|Mode_Register~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~37_combout\ = (!\read~combout\ & (\writedata~combout\(31) & (!\address~combout\(1) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \writedata~combout\(31),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~37_combout\);

-- Location: LCFF_X11_Y21_N13
\drawline_controller|Mode_Register[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~37_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(31));

-- Location: LCCOMB_X11_Y21_N4
\drawline_controller|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Equal1~0_combout\ = (!\drawline_controller|Mode_Register\(28) & (!\drawline_controller|Mode_Register\(29) & (!\drawline_controller|Mode_Register\(30) & !\drawline_controller|Mode_Register\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(28),
	datab => \drawline_controller|Mode_Register\(29),
	datac => \drawline_controller|Mode_Register\(30),
	datad => \drawline_controller|Mode_Register\(31),
	combout => \drawline_controller|Equal1~0_combout\);

-- Location: LCCOMB_X11_Y19_N24
\drawline_controller|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Equal1~4_combout\ = (\drawline_controller|Equal1~3_combout\ & (\drawline_controller|Equal1~1_combout\ & (\drawline_controller|Equal1~2_combout\ & \drawline_controller|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Equal1~3_combout\,
	datab => \drawline_controller|Equal1~1_combout\,
	datac => \drawline_controller|Equal1~2_combout\,
	datad => \drawline_controller|Equal1~0_combout\,
	combout => \drawline_controller|Equal1~4_combout\);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(9),
	combout => \writedata~combout\(9));

-- Location: LCCOMB_X12_Y19_N20
\drawline_controller|Mode_Register~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~15_combout\ = (!\address~combout\(1) & (!\read~combout\ & (\writedata~combout\(9) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \read~combout\,
	datac => \writedata~combout\(9),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~15_combout\);

-- Location: LCFF_X12_Y19_N21
\drawline_controller|Mode_Register[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~15_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(9));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(11),
	combout => \writedata~combout\(11));

-- Location: LCCOMB_X12_Y19_N28
\drawline_controller|Mode_Register~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~17_combout\ = (!\address~combout\(1) & (!\read~combout\ & (\writedata~combout\(11) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \read~combout\,
	datac => \writedata~combout\(11),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~17_combout\);

-- Location: LCFF_X12_Y19_N29
\drawline_controller|Mode_Register[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~17_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(11));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(10),
	combout => \writedata~combout\(10));

-- Location: LCCOMB_X12_Y19_N10
\drawline_controller|Mode_Register~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~16_combout\ = (!\address~combout\(1) & (!\read~combout\ & (\writedata~combout\(10) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \read~combout\,
	datac => \writedata~combout\(10),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~16_combout\);

-- Location: LCFF_X12_Y19_N11
\drawline_controller|Mode_Register[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Mode_Register~16_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(10));

-- Location: LCCOMB_X12_Y19_N30
\drawline_controller|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Equal1~6_combout\ = (!\drawline_controller|Mode_Register\(8) & (!\drawline_controller|Mode_Register\(9) & (!\drawline_controller|Mode_Register\(11) & !\drawline_controller|Mode_Register\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(8),
	datab => \drawline_controller|Mode_Register\(9),
	datac => \drawline_controller|Mode_Register\(11),
	datad => \drawline_controller|Mode_Register\(10),
	combout => \drawline_controller|Equal1~6_combout\);

-- Location: LCCOMB_X11_Y19_N28
\drawline_controller|Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Equal1~9_combout\ = (\drawline_controller|Equal1~5_combout\ & (\drawline_controller|Equal1~8_combout\ & (\drawline_controller|Equal1~4_combout\ & \drawline_controller|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Equal1~5_combout\,
	datab => \drawline_controller|Equal1~8_combout\,
	datac => \drawline_controller|Equal1~4_combout\,
	datad => \drawline_controller|Equal1~6_combout\,
	combout => \drawline_controller|Equal1~9_combout\);

-- Location: LCCOMB_X11_Y19_N16
\drawline_controller|nstate.stall_mode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|nstate.stall_mode~0_combout\ = ((\drawline_controller|Equal1~9_combout\) # (!\drawline_controller|pstate.poll_mode~regout\)) # (!\drawline_controller|waitrequest~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|waitrequest~regout\,
	datab => \drawline_controller|pstate.poll_mode~regout\,
	datad => \drawline_controller|Equal1~9_combout\,
	combout => \drawline_controller|nstate.stall_mode~0_combout\);

-- Location: LCCOMB_X11_Y21_N22
\drawline_controller|Mode_Register[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register[0]~4_combout\ = ((\address~combout\(1) & ((\address~combout\(2)))) # (!\address~combout\(1) & (\address~combout\(0) & !\address~combout\(2)))) # (!\write~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write~combout\,
	datab => \address~combout\(0),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register[0]~4_combout\);

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(0),
	combout => \writedata~combout\(0));

-- Location: LCCOMB_X11_Y21_N6
\drawline_controller|Mode_Register[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register[0]~2_combout\ = (\write~combout\ & (!\address~combout\(0) & (!\address~combout\(1) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write~combout\,
	datab => \address~combout\(0),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register[0]~2_combout\);

-- Location: LCCOMB_X11_Y21_N2
\drawline_controller|Mode_Register[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register[0]~3_combout\ = (\drawline_controller|waitrequest~4_combout\ & ((\read~combout\) # ((\writedata~combout\(0) & \drawline_controller|Mode_Register[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|waitrequest~4_combout\,
	datab => \read~combout\,
	datac => \writedata~combout\(0),
	datad => \drawline_controller|Mode_Register[0]~2_combout\,
	combout => \drawline_controller|Mode_Register[0]~3_combout\);

-- Location: LCCOMB_X10_Y21_N14
\drawline_controller|Mode_Register[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register[0]~5_combout\ = (\drawline_controller|Mode_Register[0]~3_combout\) # ((\drawline_controller|Mode_Register\(0) & ((\drawline_controller|Mode_Register[0]~4_combout\) # (!\drawline_controller|waitrequest~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|waitrequest~4_combout\,
	datab => \drawline_controller|Mode_Register[0]~4_combout\,
	datac => \drawline_controller|Mode_Register\(0),
	datad => \drawline_controller|Mode_Register[0]~3_combout\,
	combout => \drawline_controller|Mode_Register[0]~5_combout\);

-- Location: LCFF_X10_Y21_N15
\drawline_controller|Mode_Register[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Mode_Register[0]~5_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(0));

-- Location: LCCOMB_X11_Y19_N0
\drawline_controller|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|always0~0_combout\ = (\drawline_controller|Mode_Register\(0) & \drawline_controller|waitrequest~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \drawline_controller|Mode_Register\(0),
	datad => \drawline_controller|waitrequest~regout\,
	combout => \drawline_controller|always0~0_combout\);

-- Location: LCCOMB_X10_Y21_N18
\drawline_controller|Go~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Go~2_combout\ = (\address~combout\(1) & ((\address~combout\(2) & ((\drawline_controller|Go~regout\))) # (!\address~combout\(2) & (!\address~combout\(0))))) # (!\address~combout\(1) & (\address~combout\(0) & 
-- (\drawline_controller|Go~regout\ & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \address~combout\(0),
	datac => \drawline_controller|Go~regout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Go~2_combout\);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\write~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_write,
	combout => \write~combout\);

-- Location: LCCOMB_X10_Y21_N10
\drawline_controller|waitrequest~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|waitrequest~4_combout\ = (\drawline_controller|pstate.poll_mode~regout\ & !\chipselect~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|pstate.poll_mode~regout\,
	datad => \chipselect~combout\,
	combout => \drawline_controller|waitrequest~4_combout\);

-- Location: LCCOMB_X10_Y21_N12
\drawline_controller|Go~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Go~3_combout\ = (\write~combout\ & ((\drawline_controller|waitrequest~4_combout\ & ((\drawline_controller|Go~2_combout\))) # (!\drawline_controller|waitrequest~4_combout\ & (\drawline_controller|Go~regout\)))) # (!\write~combout\ & 
-- (\drawline_controller|Go~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Go~regout\,
	datab => \drawline_controller|Go~2_combout\,
	datac => \write~combout\,
	datad => \drawline_controller|waitrequest~4_combout\,
	combout => \drawline_controller|Go~3_combout\);

-- Location: LCCOMB_X10_Y21_N16
\drawline_controller|Go~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Go~4_combout\ = (\drawline_controller|pstate.poll_mode~regout\ & (\drawline_controller|Go~3_combout\ & ((\chipselect~combout\) # (!\read~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|pstate.poll_mode~regout\,
	datab => \chipselect~combout\,
	datac => \read~combout\,
	datad => \drawline_controller|Go~3_combout\,
	combout => \drawline_controller|Go~4_combout\);

-- Location: LCFF_X10_Y21_N17
\drawline_controller|Go\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Go~4_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go~regout\);

-- Location: LCCOMB_X17_Y27_N26
\LDA_cir|ns.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|ns.s0~0_combout\ = (\LDA_cir|ps.s12~regout\ & \drawline_controller|Go~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|ps.s12~regout\,
	datad => \drawline_controller|Go~regout\,
	combout => \LDA_cir|ns.s0~0_combout\);

-- Location: LCFF_X17_Y27_N27
\LDA_cir|ps.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|ns.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s0~regout\);

-- Location: LCCOMB_X20_Y29_N30
\LDA_cir|ps.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|ps.s1~0_combout\ = !\LDA_cir|ps.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LDA_cir|ps.s0~regout\,
	combout => \LDA_cir|ps.s1~0_combout\);

-- Location: LCFF_X20_Y29_N31
\LDA_cir|ps.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|ps.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s1~regout\);

-- Location: LCCOMB_X19_Y27_N18
\LDA_cir|ps.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|ps.s2~0_combout\ = !\LDA_cir|ps.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LDA_cir|ps.s1~regout\,
	combout => \LDA_cir|ps.s2~0_combout\);

-- Location: LCFF_X19_Y27_N19
\LDA_cir|ps.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|ps.s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s2~regout\);

-- Location: LCFF_X18_Y26_N31
\LDA_cir|ps.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|ps.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s3~regout\);

-- Location: LCFF_X16_Y27_N25
\LDA_cir|ps.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|ps.s3~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s4~regout\);

-- Location: LCFF_X18_Y29_N9
\LDA_cir|ps.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|ps.s4~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s5~regout\);

-- Location: LCFF_X16_Y27_N5
\LDA_cir|ps.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|ps.s5~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s6~regout\);

-- Location: LCCOMB_X17_Y27_N10
\LDA_cir|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Selector0~0_combout\ = (\LDA_cir|ps.s6~regout\) # ((\LDA_cir|LessThan1~16_combout\ & \LDA_cir|ps.s11~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan1~16_combout\,
	datab => \LDA_cir|ps.s6~regout\,
	datac => \LDA_cir|ps.s11~regout\,
	combout => \LDA_cir|Selector0~0_combout\);

-- Location: LCFF_X17_Y27_N11
\LDA_cir|ps.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s7~regout\);

-- Location: LCFF_X17_Y29_N1
\LDA_cir|ps.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|ps.s7~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s8~regout\);

-- Location: LCFF_X16_Y27_N3
\LDA_cir|ps.s9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|ps.s8~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s9~regout\);

-- Location: LCFF_X16_Y27_N23
\LDA_cir|ps.s10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|ps.s9~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s10~regout\);

-- Location: LCCOMB_X17_Y27_N8
\LDA_cir|ps.s11~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|ps.s11~feeder_combout\ = \LDA_cir|ps.s10~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LDA_cir|ps.s10~regout\,
	combout => \LDA_cir|ps.s11~feeder_combout\);

-- Location: LCFF_X17_Y27_N9
\LDA_cir|ps.s11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|ps.s11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s11~regout\);

-- Location: LCCOMB_X17_Y27_N28
\LDA_cir|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Selector1~0_combout\ = (\LDA_cir|LessThan1~16_combout\ & (((\LDA_cir|ps.s12~regout\ & !\drawline_controller|Go~regout\)))) # (!\LDA_cir|LessThan1~16_combout\ & ((\LDA_cir|ps.s11~regout\) # ((\LDA_cir|ps.s12~regout\ & 
-- !\drawline_controller|Go~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan1~16_combout\,
	datab => \LDA_cir|ps.s11~regout\,
	datac => \LDA_cir|ps.s12~regout\,
	datad => \drawline_controller|Go~regout\,
	combout => \LDA_cir|Selector1~0_combout\);

-- Location: LCFF_X17_Y27_N29
\LDA_cir|ps.s12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|ps.s12~regout\);

-- Location: LCCOMB_X11_Y19_N10
\drawline_controller|nstate.poll_mode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|nstate.poll_mode~0_combout\ = (\drawline_controller|pstate.poll_mode~regout\ & (\drawline_controller|always0~0_combout\ & ((\drawline_controller|Equal1~9_combout\)))) # (!\drawline_controller|pstate.poll_mode~regout\ & 
-- (((\LDA_cir|ps.s12~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|pstate.poll_mode~regout\,
	datab => \drawline_controller|always0~0_combout\,
	datac => \LDA_cir|ps.s12~regout\,
	datad => \drawline_controller|Equal1~9_combout\,
	combout => \drawline_controller|nstate.poll_mode~0_combout\);

-- Location: LCCOMB_X11_Y19_N14
\drawline_controller|nstate.poll_mode_5768\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|nstate.poll_mode_5768~combout\ = (\drawline_controller|nstate.stall_mode~0_combout\ & ((\drawline_controller|nstate.poll_mode~0_combout\))) # (!\drawline_controller|nstate.stall_mode~0_combout\ & 
-- (\drawline_controller|nstate.poll_mode_5768~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawline_controller|nstate.poll_mode_5768~combout\,
	datac => \drawline_controller|nstate.stall_mode~0_combout\,
	datad => \drawline_controller|nstate.poll_mode~0_combout\,
	combout => \drawline_controller|nstate.poll_mode_5768~combout\);

-- Location: LCFF_X11_Y19_N15
\drawline_controller|pstate.poll_mode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|nstate.poll_mode_5768~combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|pstate.poll_mode~regout\);

-- Location: LCCOMB_X11_Y21_N30
\drawline_controller|waitrequest~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|waitrequest~0_combout\ = ((\address~combout\(1) & ((\address~combout\(2)))) # (!\address~combout\(1) & (\address~combout\(0)))) # (!\write~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write~combout\,
	datab => \address~combout\(0),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|waitrequest~0_combout\);

-- Location: LCCOMB_X11_Y21_N26
\drawline_controller|waitrequest~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|waitrequest~1_combout\ = (!\drawline_controller|waitrequest~regout\ & ((\chipselect~combout\) # ((!\read~combout\ & \drawline_controller|waitrequest~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \drawline_controller|waitrequest~0_combout\,
	datac => \drawline_controller|waitrequest~regout\,
	datad => \chipselect~combout\,
	combout => \drawline_controller|waitrequest~1_combout\);

-- Location: LCCOMB_X11_Y19_N30
\drawline_controller|waitrequest~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|waitrequest~3_combout\ = (\drawline_controller|pstate.poll_mode~regout\ & (!\drawline_controller|waitrequest~1_combout\ & ((!\drawline_controller|Decoder0~2_combout\) # (!\drawline_controller|waitrequest~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|waitrequest~2_combout\,
	datab => \drawline_controller|Decoder0~2_combout\,
	datac => \drawline_controller|pstate.poll_mode~regout\,
	datad => \drawline_controller|waitrequest~1_combout\,
	combout => \drawline_controller|waitrequest~3_combout\);

-- Location: LCFF_X11_Y19_N31
\drawline_controller|waitrequest\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|waitrequest~3_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|waitrequest~regout\);

-- Location: CLKCTRL_G0
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y21_N6
\drawline_controller|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Decoder0~3_combout\ = (\drawline_controller|pstate.poll_mode~regout\ & (!\read~combout\ & (\write~combout\ & !\chipselect~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|pstate.poll_mode~regout\,
	datab => \read~combout\,
	datac => \write~combout\,
	datad => \chipselect~combout\,
	combout => \drawline_controller|Decoder0~3_combout\);

-- Location: LCCOMB_X11_Y20_N2
\drawline_controller|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Decoder0~5_combout\ = (!\address~combout\(0) & (\drawline_controller|Decoder0~3_combout\ & (!\address~combout\(1) & \address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datab => \drawline_controller|Decoder0~3_combout\,
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Decoder0~5_combout\);

-- Location: LCFF_X11_Y23_N9
\drawline_controller|Line_ending_point[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(0),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(0));

-- Location: LCCOMB_X11_Y20_N4
\drawline_controller|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Decoder0~4_combout\ = (\address~combout\(0) & (\drawline_controller|Decoder0~3_combout\ & (!\address~combout\(1) & \address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datab => \drawline_controller|Decoder0~3_combout\,
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Decoder0~4_combout\);

-- Location: LCFF_X10_Y23_N9
\drawline_controller|Line_color[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(0),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(0));

-- Location: LCCOMB_X10_Y23_N8
\drawline_controller|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mux31~0_combout\ = (\address~combout\(0) & ((\drawline_controller|Line_color\(0)))) # (!\address~combout\(0) & (\drawline_controller|Line_ending_point\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datab => \drawline_controller|Line_ending_point\(0),
	datac => \drawline_controller|Line_color\(0),
	combout => \drawline_controller|Mux31~0_combout\);

-- Location: LCFF_X10_Y21_N29
\drawline_controller|Status_Register[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \drawline_controller|pstate.poll_mode~regout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Status_Register\(0));

-- Location: LCCOMB_X10_Y21_N28
\drawline_controller|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mux31~2_combout\ = (\address~combout\(0) & ((\drawline_controller|Status_Register\(0)))) # (!\address~combout\(0) & (\drawline_controller|Mode_Register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawline_controller|Mode_Register\(0),
	datac => \drawline_controller|Status_Register\(0),
	datad => \address~combout\(0),
	combout => \drawline_controller|Mux31~2_combout\);

-- Location: LCCOMB_X11_Y20_N18
\drawline_controller|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Decoder0~6_combout\ = (\address~combout\(0) & (\drawline_controller|Decoder0~3_combout\ & (\address~combout\(1) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datab => \drawline_controller|Decoder0~3_combout\,
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Decoder0~6_combout\);

-- Location: LCFF_X18_Y25_N17
\drawline_controller|Line_starting_point[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(0),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(0));

-- Location: LCCOMB_X11_Y20_N22
\drawline_controller|Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Decoder0~7_combout\ = (!\address~combout\(0) & (\drawline_controller|Decoder0~3_combout\ & (\address~combout\(1) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datab => \drawline_controller|Decoder0~3_combout\,
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|Decoder0~7_combout\);

-- Location: LCFF_X10_Y23_N27
\drawline_controller|Go_Register[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(0),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(0));

-- Location: LCCOMB_X10_Y23_N26
\drawline_controller|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mux31~1_combout\ = (\address~combout\(0) & (\drawline_controller|Line_starting_point\(0))) # (!\address~combout\(0) & ((\drawline_controller|Go_Register\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datab => \drawline_controller|Line_starting_point\(0),
	datac => \drawline_controller|Go_Register\(0),
	combout => \drawline_controller|Mux31~1_combout\);

-- Location: LCCOMB_X10_Y21_N24
\drawline_controller|Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mux31~3_combout\ = (\address~combout\(1) & (((\drawline_controller|Mux31~1_combout\) # (\address~combout\(2))))) # (!\address~combout\(1) & (\drawline_controller|Mux31~2_combout\ & ((!\address~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \drawline_controller|Mux31~2_combout\,
	datac => \drawline_controller|Mux31~1_combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Mux31~3_combout\);

-- Location: LCCOMB_X10_Y21_N26
\drawline_controller|Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mux31~4_combout\ = (\drawline_controller|Mux31~3_combout\ & ((\drawline_controller|readdata\(0)) # ((!\address~combout\(2))))) # (!\drawline_controller|Mux31~3_combout\ & (((\drawline_controller|Mux31~0_combout\ & 
-- \address~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata\(0),
	datab => \drawline_controller|Mux31~0_combout\,
	datac => \drawline_controller|Mux31~3_combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Mux31~4_combout\);

-- Location: LCCOMB_X10_Y21_N30
\drawline_controller|readdata~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~108_combout\ = (\read~combout\ & (\drawline_controller|Mux31~4_combout\)) # (!\read~combout\ & (((!\write~combout\ & \drawline_controller|readdata\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \drawline_controller|Mux31~4_combout\,
	datac => \write~combout\,
	datad => \drawline_controller|readdata\(0),
	combout => \drawline_controller|readdata~108_combout\);

-- Location: LCCOMB_X10_Y21_N0
\drawline_controller|readdata~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~109_combout\ = (\drawline_controller|pstate.poll_mode~regout\ & ((\chipselect~combout\ & ((\drawline_controller|readdata\(0)))) # (!\chipselect~combout\ & (\drawline_controller|readdata~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|pstate.poll_mode~regout\,
	datab => \drawline_controller|readdata~108_combout\,
	datac => \drawline_controller|readdata\(0),
	datad => \chipselect~combout\,
	combout => \drawline_controller|readdata~109_combout\);

-- Location: LCFF_X10_Y21_N1
\drawline_controller|readdata[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~109_combout\,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(0));

-- Location: LCCOMB_X10_Y21_N4
\drawline_controller|readdata[20]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata[20]~12_combout\ = (!\drawline_controller|pstate.poll_mode~regout\) # (!\read~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \read~combout\,
	datad => \drawline_controller|pstate.poll_mode~regout\,
	combout => \drawline_controller|readdata[20]~12_combout\);

-- Location: LCCOMB_X10_Y21_N22
\drawline_controller|readdata~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~105_combout\ = (!\drawline_controller|readdata[20]~12_combout\ & (((\address~combout\(1) & !\address~combout\(2))) # (!\address~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \address~combout\(0),
	datac => \drawline_controller|readdata[20]~12_combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|readdata~105_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(1),
	combout => \writedata~combout\(1));

-- Location: LCFF_X14_Y23_N1
\drawline_controller|Line_color[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(1),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(1));

-- Location: LCFF_X11_Y20_N7
\drawline_controller|Go_Register[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(1),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(1));

-- Location: LCCOMB_X12_Y19_N22
\drawline_controller|readdata[20]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata[20]~9_combout\ = (\address~combout\(1) & !\address~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|readdata[20]~9_combout\);

-- Location: LCCOMB_X11_Y20_N6
\drawline_controller|readdata~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~10_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- ((\drawline_controller|Go_Register\(1)))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|Mode_Register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|Mode_Register\(1),
	datac => \drawline_controller|Go_Register\(1),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~10_combout\);

-- Location: LCFF_X14_Y23_N11
\drawline_controller|Line_ending_point[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(1),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(1));

-- Location: LCFF_X18_Y27_N9
\drawline_controller|Line_starting_point[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(1),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(1));

-- Location: LCCOMB_X14_Y23_N10
\drawline_controller|readdata~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~11_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~10_combout\ & ((\drawline_controller|Line_starting_point\(1)))) # (!\drawline_controller|readdata~10_combout\ & 
-- (\drawline_controller|Line_ending_point\(1))))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|readdata~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|readdata~10_combout\,
	datac => \drawline_controller|Line_ending_point\(1),
	datad => \drawline_controller|Line_starting_point\(1),
	combout => \drawline_controller|readdata~11_combout\);

-- Location: LCCOMB_X12_Y23_N8
\drawline_controller|readdata~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~13_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(1)) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~11_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~105_combout\ & ((\drawline_controller|readdata~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~105_combout\,
	datac => \drawline_controller|Line_color\(1),
	datad => \drawline_controller|readdata~11_combout\,
	combout => \drawline_controller|readdata~13_combout\);

-- Location: LCCOMB_X11_Y21_N14
\drawline_controller|readdata[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata[1]~14_combout\ = (\read~combout\ & (((!\address~combout\(1))) # (!\address~combout\(2)))) # (!\read~combout\ & (((\write~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \address~combout\(2),
	datac => \address~combout\(1),
	datad => \write~combout\,
	combout => \drawline_controller|readdata[1]~14_combout\);

-- Location: LCCOMB_X10_Y21_N2
\drawline_controller|readdata[1]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata[1]~107_combout\ = (\Reset~combout\ & (((\drawline_controller|readdata[1]~14_combout\ & !\chipselect~combout\)) # (!\drawline_controller|pstate.poll_mode~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|pstate.poll_mode~regout\,
	datab => \Reset~combout\,
	datac => \drawline_controller|readdata[1]~14_combout\,
	datad => \chipselect~combout\,
	combout => \drawline_controller|readdata[1]~107_combout\);

-- Location: LCFF_X12_Y23_N9
\drawline_controller|readdata[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~13_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(1));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(2),
	combout => \writedata~combout\(2));

-- Location: LCFF_X17_Y25_N27
\drawline_controller|Line_starting_point[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(2),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(2));

-- Location: LCFF_X12_Y23_N17
\drawline_controller|Go_Register[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(2),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(2));

-- Location: LCCOMB_X11_Y20_N24
\drawline_controller|readdata[20]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata[20]~8_combout\ = (\address~combout\(2)) # ((\address~combout\(0) & \address~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address~combout\(0),
	datac => \address~combout\(1),
	datad => \address~combout\(2),
	combout => \drawline_controller|readdata[20]~8_combout\);

-- Location: LCFF_X17_Y25_N25
\drawline_controller|Line_ending_point[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(2),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(2));

-- Location: LCCOMB_X17_Y25_N24
\drawline_controller|readdata~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~15_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|Line_ending_point\(2)) # (\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Mode_Register\(2) & ((!\drawline_controller|readdata[20]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(2),
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(2),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~15_combout\);

-- Location: LCCOMB_X12_Y23_N16
\drawline_controller|readdata~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~16_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~15_combout\ & (\drawline_controller|Line_starting_point\(2))) # (!\drawline_controller|readdata~15_combout\ & 
-- ((\drawline_controller|Go_Register\(2)))))) # (!\drawline_controller|readdata[20]~9_combout\ & (((\drawline_controller|readdata~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|Line_starting_point\(2),
	datac => \drawline_controller|Go_Register\(2),
	datad => \drawline_controller|readdata~15_combout\,
	combout => \drawline_controller|readdata~16_combout\);

-- Location: LCFF_X12_Y22_N1
\drawline_controller|Line_color[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(2),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(2));

-- Location: LCCOMB_X12_Y23_N2
\drawline_controller|readdata~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~17_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(2)) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~16_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~105_combout\ & (\drawline_controller|readdata~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~105_combout\,
	datac => \drawline_controller|readdata~16_combout\,
	datad => \drawline_controller|Line_color\(2),
	combout => \drawline_controller|readdata~17_combout\);

-- Location: LCFF_X12_Y23_N3
\drawline_controller|readdata[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~17_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(2));

-- Location: LCFF_X11_Y20_N29
\drawline_controller|Go_Register[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(3),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(3));

-- Location: LCCOMB_X11_Y20_N28
\drawline_controller|readdata~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~18_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|readdata[20]~9_combout\)) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- (\drawline_controller|Go_Register\(3))) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|Mode_Register\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|readdata[20]~9_combout\,
	datac => \drawline_controller|Go_Register\(3),
	datad => \drawline_controller|Mode_Register\(3),
	combout => \drawline_controller|readdata~18_combout\);

-- Location: LCFF_X14_Y23_N29
\drawline_controller|Line_ending_point[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(3),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(3));

-- Location: LCFF_X18_Y27_N3
\drawline_controller|Line_starting_point[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(3),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(3));

-- Location: LCCOMB_X14_Y23_N28
\drawline_controller|readdata~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~19_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~18_combout\ & ((\drawline_controller|Line_starting_point\(3)))) # (!\drawline_controller|readdata~18_combout\ & 
-- (\drawline_controller|Line_ending_point\(3))))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|readdata~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|readdata~18_combout\,
	datac => \drawline_controller|Line_ending_point\(3),
	datad => \drawline_controller|Line_starting_point\(3),
	combout => \drawline_controller|readdata~19_combout\);

-- Location: LCFF_X14_Y23_N15
\drawline_controller|Line_color[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(3),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(3));

-- Location: LCCOMB_X12_Y23_N28
\drawline_controller|readdata~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~20_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(3)) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~19_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~105_combout\ & (\drawline_controller|readdata~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~105_combout\,
	datac => \drawline_controller|readdata~19_combout\,
	datad => \drawline_controller|Line_color\(3),
	combout => \drawline_controller|readdata~20_combout\);

-- Location: LCFF_X12_Y23_N29
\drawline_controller|readdata[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~20_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(3));

-- Location: LCCOMB_X12_Y22_N10
\drawline_controller|Line_color[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[4]~feeder_combout\ = \writedata~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(4),
	combout => \drawline_controller|Line_color[4]~feeder_combout\);

-- Location: LCFF_X12_Y22_N11
\drawline_controller|Line_color[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[4]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(4));

-- Location: LCFF_X17_Y25_N1
\drawline_controller|Line_starting_point[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(4),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(4));

-- Location: LCFF_X12_Y23_N19
\drawline_controller|Go_Register[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(4),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(4));

-- Location: LCFF_X17_Y25_N29
\drawline_controller|Line_ending_point[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(4),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(4));

-- Location: LCCOMB_X17_Y25_N28
\drawline_controller|readdata~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~21_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|Line_ending_point\(4)) # (\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Mode_Register\(4) & ((!\drawline_controller|readdata[20]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(4),
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(4),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~21_combout\);

-- Location: LCCOMB_X12_Y23_N18
\drawline_controller|readdata~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~22_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~21_combout\ & (\drawline_controller|Line_starting_point\(4))) # (!\drawline_controller|readdata~21_combout\ & 
-- ((\drawline_controller|Go_Register\(4)))))) # (!\drawline_controller|readdata[20]~9_combout\ & (((\drawline_controller|readdata~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|Line_starting_point\(4),
	datac => \drawline_controller|Go_Register\(4),
	datad => \drawline_controller|readdata~21_combout\,
	combout => \drawline_controller|readdata~22_combout\);

-- Location: LCCOMB_X12_Y23_N6
\drawline_controller|readdata~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~23_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(4)) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~22_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~105_combout\ & ((\drawline_controller|readdata~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~105_combout\,
	datac => \drawline_controller|Line_color\(4),
	datad => \drawline_controller|readdata~22_combout\,
	combout => \drawline_controller|readdata~23_combout\);

-- Location: LCFF_X12_Y23_N7
\drawline_controller|readdata[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~23_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(4));

-- Location: LCFF_X11_Y20_N9
\drawline_controller|Go_Register[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(5),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(5));

-- Location: LCCOMB_X11_Y20_N8
\drawline_controller|readdata~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~24_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- ((\drawline_controller|Go_Register\(5)))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|Mode_Register\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|Mode_Register\(5),
	datac => \drawline_controller|Go_Register\(5),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~24_combout\);

-- Location: LCFF_X14_Y23_N25
\drawline_controller|Line_ending_point[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(5),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(5));

-- Location: LCFF_X18_Y27_N21
\drawline_controller|Line_starting_point[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(5),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(5));

-- Location: LCCOMB_X14_Y23_N24
\drawline_controller|readdata~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~25_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~24_combout\ & ((\drawline_controller|Line_starting_point\(5)))) # (!\drawline_controller|readdata~24_combout\ & 
-- (\drawline_controller|Line_ending_point\(5))))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|readdata~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|readdata~24_combout\,
	datac => \drawline_controller|Line_ending_point\(5),
	datad => \drawline_controller|Line_starting_point\(5),
	combout => \drawline_controller|readdata~25_combout\);

-- Location: LCCOMB_X10_Y21_N8
\drawline_controller|readdata~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~106_combout\ = (\drawline_controller|pstate.poll_mode~regout\ & (\address~combout\(0) & (\read~combout\ & \address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|pstate.poll_mode~regout\,
	datab => \address~combout\(0),
	datac => \read~combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|readdata~106_combout\);

-- Location: LCCOMB_X12_Y23_N0
\drawline_controller|readdata~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~26_combout\ = (\drawline_controller|Line_color\(5) & ((\drawline_controller|readdata~106_combout\) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~25_combout\)))) # 
-- (!\drawline_controller|Line_color\(5) & (\drawline_controller|readdata~105_combout\ & (\drawline_controller|readdata~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Line_color\(5),
	datab => \drawline_controller|readdata~105_combout\,
	datac => \drawline_controller|readdata~25_combout\,
	datad => \drawline_controller|readdata~106_combout\,
	combout => \drawline_controller|readdata~26_combout\);

-- Location: LCFF_X12_Y23_N1
\drawline_controller|readdata[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~26_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(5));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(6),
	combout => \writedata~combout\(6));

-- Location: LCFF_X12_Y22_N21
\drawline_controller|Line_color[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(6),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(6));

-- Location: LCFF_X17_Y26_N17
\drawline_controller|Line_starting_point[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(6),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(6));

-- Location: LCFF_X12_Y23_N13
\drawline_controller|Go_Register[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(6),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(6));

-- Location: LCFF_X11_Y23_N11
\drawline_controller|Line_ending_point[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(6),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(6));

-- Location: LCCOMB_X11_Y23_N10
\drawline_controller|readdata~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~27_combout\ = (\drawline_controller|readdata[20]~9_combout\ & (((\drawline_controller|readdata[20]~8_combout\)))) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\ & 
-- ((\drawline_controller|Line_ending_point\(6)))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|Mode_Register\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|Mode_Register\(6),
	datac => \drawline_controller|Line_ending_point\(6),
	datad => \drawline_controller|readdata[20]~8_combout\,
	combout => \drawline_controller|readdata~27_combout\);

-- Location: LCCOMB_X12_Y23_N12
\drawline_controller|readdata~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~28_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~27_combout\ & (\drawline_controller|Line_starting_point\(6))) # (!\drawline_controller|readdata~27_combout\ & 
-- ((\drawline_controller|Go_Register\(6)))))) # (!\drawline_controller|readdata[20]~9_combout\ & (((\drawline_controller|readdata~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|Line_starting_point\(6),
	datac => \drawline_controller|Go_Register\(6),
	datad => \drawline_controller|readdata~27_combout\,
	combout => \drawline_controller|readdata~28_combout\);

-- Location: LCCOMB_X12_Y23_N26
\drawline_controller|readdata~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~29_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(6)) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~28_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~105_combout\ & ((\drawline_controller|readdata~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~105_combout\,
	datac => \drawline_controller|Line_color\(6),
	datad => \drawline_controller|readdata~28_combout\,
	combout => \drawline_controller|readdata~29_combout\);

-- Location: LCFF_X12_Y23_N27
\drawline_controller|readdata[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~29_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(6));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(7),
	combout => \writedata~combout\(7));

-- Location: LCFF_X14_Y23_N7
\drawline_controller|Line_color[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(7),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(7));

-- Location: LCFF_X18_Y25_N11
\drawline_controller|Line_starting_point[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(7),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(7));

-- Location: LCFF_X14_Y23_N21
\drawline_controller|Line_ending_point[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(7),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(7));

-- Location: LCCOMB_X12_Y19_N6
\drawline_controller|Mode_Register~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~13_combout\ = (!\address~combout\(1) & (\writedata~combout\(7) & (!\read~combout\ & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \writedata~combout\(7),
	datac => \read~combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~13_combout\);

-- Location: LCFF_X12_Y19_N7
\drawline_controller|Mode_Register[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~13_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(7));

-- Location: LCFF_X11_Y20_N1
\drawline_controller|Go_Register[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(7),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(7));

-- Location: LCCOMB_X11_Y20_N0
\drawline_controller|readdata~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~30_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- ((\drawline_controller|Go_Register\(7)))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|Mode_Register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|Mode_Register\(7),
	datac => \drawline_controller|Go_Register\(7),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~30_combout\);

-- Location: LCCOMB_X14_Y23_N20
\drawline_controller|readdata~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~31_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~30_combout\ & (\drawline_controller|Line_starting_point\(7))) # (!\drawline_controller|readdata~30_combout\ & 
-- ((\drawline_controller|Line_ending_point\(7)))))) # (!\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|Line_starting_point\(7),
	datac => \drawline_controller|Line_ending_point\(7),
	datad => \drawline_controller|readdata~30_combout\,
	combout => \drawline_controller|readdata~31_combout\);

-- Location: LCCOMB_X12_Y23_N4
\drawline_controller|readdata~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~32_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(7)) # ((\drawline_controller|readdata~31_combout\ & \drawline_controller|readdata~105_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (((\drawline_controller|readdata~31_combout\ & \drawline_controller|readdata~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|Line_color\(7),
	datac => \drawline_controller|readdata~31_combout\,
	datad => \drawline_controller|readdata~105_combout\,
	combout => \drawline_controller|readdata~32_combout\);

-- Location: LCFF_X12_Y23_N5
\drawline_controller|readdata[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~32_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(8),
	combout => \writedata~combout\(8));

-- Location: LCFF_X11_Y23_N13
\drawline_controller|Line_ending_point[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(8),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(8));

-- Location: LCCOMB_X12_Y19_N26
\drawline_controller|Mode_Register~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~14_combout\ = (!\address~combout\(1) & (!\read~combout\ & (\writedata~combout\(8) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \read~combout\,
	datac => \writedata~combout\(8),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~14_combout\);

-- Location: LCFF_X12_Y19_N27
\drawline_controller|Mode_Register[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~14_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(8));

-- Location: LCCOMB_X11_Y23_N12
\drawline_controller|readdata~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~33_combout\ = (\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata[20]~8_combout\)) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Line_ending_point\(8))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(8),
	datad => \drawline_controller|Mode_Register\(8),
	combout => \drawline_controller|readdata~33_combout\);

-- Location: LCFF_X10_Y23_N29
\drawline_controller|Go_Register[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(8),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(8));

-- Location: LCCOMB_X17_Y25_N2
\drawline_controller|Line_starting_point[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_starting_point[8]~feeder_combout\ = \writedata~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(8),
	combout => \drawline_controller|Line_starting_point[8]~feeder_combout\);

-- Location: LCFF_X17_Y25_N3
\drawline_controller|Line_starting_point[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_starting_point[8]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(8));

-- Location: LCCOMB_X10_Y23_N28
\drawline_controller|readdata~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~34_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~33_combout\ & ((\drawline_controller|Line_starting_point\(8)))) # (!\drawline_controller|readdata~33_combout\ & 
-- (\drawline_controller|Go_Register\(8))))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata~33_combout\,
	datac => \drawline_controller|Go_Register\(8),
	datad => \drawline_controller|Line_starting_point\(8),
	combout => \drawline_controller|readdata~34_combout\);

-- Location: LCFF_X10_Y23_N31
\drawline_controller|Line_color[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(8),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(8));

-- Location: LCCOMB_X9_Y23_N24
\drawline_controller|readdata~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~35_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(8)) # ((\drawline_controller|readdata~34_combout\ & \drawline_controller|readdata~105_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~34_combout\ & (\drawline_controller|readdata~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~34_combout\,
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|Line_color\(8),
	combout => \drawline_controller|readdata~35_combout\);

-- Location: LCFF_X9_Y23_N25
\drawline_controller|readdata[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~35_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(8));

-- Location: LCFF_X14_Y23_N27
\drawline_controller|Line_color[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(9),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(9));

-- Location: LCFF_X11_Y20_N11
\drawline_controller|Go_Register[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(9),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(9));

-- Location: LCCOMB_X11_Y20_N10
\drawline_controller|readdata~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~36_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- ((\drawline_controller|Go_Register\(9)))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|Mode_Register\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|Mode_Register\(9),
	datac => \drawline_controller|Go_Register\(9),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~36_combout\);

-- Location: LCFF_X14_Y23_N9
\drawline_controller|Line_ending_point[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(9),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(9));

-- Location: LCFF_X18_Y25_N29
\drawline_controller|Line_starting_point[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(9),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(9));

-- Location: LCCOMB_X14_Y23_N8
\drawline_controller|readdata~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~37_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~36_combout\ & ((\drawline_controller|Line_starting_point\(9)))) # (!\drawline_controller|readdata~36_combout\ & 
-- (\drawline_controller|Line_ending_point\(9))))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|readdata~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|readdata~36_combout\,
	datac => \drawline_controller|Line_ending_point\(9),
	datad => \drawline_controller|Line_starting_point\(9),
	combout => \drawline_controller|readdata~37_combout\);

-- Location: LCCOMB_X9_Y23_N18
\drawline_controller|readdata~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~38_combout\ = (\drawline_controller|readdata~105_combout\ & ((\drawline_controller|readdata~37_combout\) # ((\drawline_controller|Line_color\(9) & \drawline_controller|readdata~106_combout\)))) # 
-- (!\drawline_controller|readdata~105_combout\ & (\drawline_controller|Line_color\(9) & ((\drawline_controller|readdata~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~105_combout\,
	datab => \drawline_controller|Line_color\(9),
	datac => \drawline_controller|readdata~37_combout\,
	datad => \drawline_controller|readdata~106_combout\,
	combout => \drawline_controller|readdata~38_combout\);

-- Location: LCFF_X9_Y23_N19
\drawline_controller|readdata[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~38_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(9));

-- Location: LCCOMB_X14_Y23_N30
\drawline_controller|Line_color[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[10]~feeder_combout\ = \writedata~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(10),
	combout => \drawline_controller|Line_color[10]~feeder_combout\);

-- Location: LCFF_X14_Y23_N31
\drawline_controller|Line_color[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[10]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(10));

-- Location: LCFF_X18_Y27_N23
\drawline_controller|Line_starting_point[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(10),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(10));

-- Location: LCFF_X12_Y23_N15
\drawline_controller|Go_Register[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(10),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(10));

-- Location: LCCOMB_X14_Y23_N12
\drawline_controller|Line_ending_point[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_ending_point[10]~feeder_combout\ = \writedata~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(10),
	combout => \drawline_controller|Line_ending_point[10]~feeder_combout\);

-- Location: LCFF_X14_Y23_N13
\drawline_controller|Line_ending_point[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_ending_point[10]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(10));

-- Location: LCCOMB_X12_Y19_N4
\drawline_controller|readdata~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~39_combout\ = (\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata[20]~8_combout\)) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Line_ending_point\(10))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(10),
	datad => \drawline_controller|Mode_Register\(10),
	combout => \drawline_controller|readdata~39_combout\);

-- Location: LCCOMB_X12_Y23_N14
\drawline_controller|readdata~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~40_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~39_combout\ & (\drawline_controller|Line_starting_point\(10))) # (!\drawline_controller|readdata~39_combout\ & 
-- ((\drawline_controller|Go_Register\(10)))))) # (!\drawline_controller|readdata[20]~9_combout\ & (((\drawline_controller|readdata~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|Line_starting_point\(10),
	datac => \drawline_controller|Go_Register\(10),
	datad => \drawline_controller|readdata~39_combout\,
	combout => \drawline_controller|readdata~40_combout\);

-- Location: LCCOMB_X12_Y23_N22
\drawline_controller|readdata~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~41_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(10)) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~40_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~105_combout\ & ((\drawline_controller|readdata~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~105_combout\,
	datac => \drawline_controller|Line_color\(10),
	datad => \drawline_controller|readdata~40_combout\,
	combout => \drawline_controller|readdata~41_combout\);

-- Location: LCFF_X12_Y23_N23
\drawline_controller|readdata[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~41_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(10));

-- Location: LCFF_X9_Y23_N27
\drawline_controller|Line_color[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(11),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(11));

-- Location: LCFF_X11_Y20_N31
\drawline_controller|Go_Register[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(11),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(11));

-- Location: LCCOMB_X11_Y20_N30
\drawline_controller|readdata~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~42_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- ((\drawline_controller|Go_Register\(11)))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|Mode_Register\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|Mode_Register\(11),
	datac => \drawline_controller|Go_Register\(11),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~42_combout\);

-- Location: LCFF_X14_Y23_N17
\drawline_controller|Line_ending_point[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(11),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(11));

-- Location: LCFF_X17_Y26_N19
\drawline_controller|Line_starting_point[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(11),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(11));

-- Location: LCCOMB_X14_Y23_N16
\drawline_controller|readdata~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~43_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~42_combout\ & ((\drawline_controller|Line_starting_point\(11)))) # (!\drawline_controller|readdata~42_combout\ & 
-- (\drawline_controller|Line_ending_point\(11))))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|readdata~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|readdata~42_combout\,
	datac => \drawline_controller|Line_ending_point\(11),
	datad => \drawline_controller|Line_starting_point\(11),
	combout => \drawline_controller|readdata~43_combout\);

-- Location: LCCOMB_X9_Y23_N4
\drawline_controller|readdata~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~44_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(11)) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~43_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|Line_color\(11),
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|readdata~43_combout\,
	combout => \drawline_controller|readdata~44_combout\);

-- Location: LCFF_X9_Y23_N5
\drawline_controller|readdata[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~44_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(11));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(12),
	combout => \writedata~combout\(12));

-- Location: LCFF_X10_Y23_N19
\drawline_controller|Line_color[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(12),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(12));

-- Location: LCFF_X11_Y23_N31
\drawline_controller|Line_ending_point[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(12),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(12));

-- Location: LCCOMB_X12_Y19_N8
\drawline_controller|Mode_Register~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~18_combout\ = (!\address~combout\(1) & (\writedata~combout\(12) & (!\read~combout\ & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \writedata~combout\(12),
	datac => \read~combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~18_combout\);

-- Location: LCFF_X12_Y19_N9
\drawline_controller|Mode_Register[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~18_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(12));

-- Location: LCCOMB_X11_Y23_N30
\drawline_controller|readdata~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~45_combout\ = (\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata[20]~8_combout\)) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Line_ending_point\(12))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(12),
	datad => \drawline_controller|Mode_Register\(12),
	combout => \drawline_controller|readdata~45_combout\);

-- Location: LCFF_X10_Y23_N1
\drawline_controller|Go_Register[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(12),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(12));

-- Location: LCFF_X17_Y26_N5
\drawline_controller|Line_starting_point[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(12),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(12));

-- Location: LCCOMB_X10_Y23_N0
\drawline_controller|readdata~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~46_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~45_combout\ & ((\drawline_controller|Line_starting_point\(12)))) # (!\drawline_controller|readdata~45_combout\ & 
-- (\drawline_controller|Go_Register\(12))))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata~45_combout\,
	datac => \drawline_controller|Go_Register\(12),
	datad => \drawline_controller|Line_starting_point\(12),
	combout => \drawline_controller|readdata~46_combout\);

-- Location: LCCOMB_X9_Y23_N22
\drawline_controller|readdata~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~47_combout\ = (\drawline_controller|readdata~105_combout\ & ((\drawline_controller|readdata~46_combout\) # ((\drawline_controller|Line_color\(12) & \drawline_controller|readdata~106_combout\)))) # 
-- (!\drawline_controller|readdata~105_combout\ & (\drawline_controller|Line_color\(12) & ((\drawline_controller|readdata~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~105_combout\,
	datab => \drawline_controller|Line_color\(12),
	datac => \drawline_controller|readdata~46_combout\,
	datad => \drawline_controller|readdata~106_combout\,
	combout => \drawline_controller|readdata~47_combout\);

-- Location: LCFF_X9_Y23_N23
\drawline_controller|readdata[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~47_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(12));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(13),
	combout => \writedata~combout\(13));

-- Location: LCFF_X17_Y26_N7
\drawline_controller|Line_starting_point[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(13),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(13));

-- Location: LCFF_X14_Y23_N3
\drawline_controller|Line_ending_point[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(13),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(13));

-- Location: LCFF_X10_Y23_N13
\drawline_controller|Go_Register[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(13),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(13));

-- Location: LCCOMB_X12_Y19_N0
\drawline_controller|Mode_Register~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~19_combout\ = (!\address~combout\(1) & (!\read~combout\ & (\writedata~combout\(13) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \read~combout\,
	datac => \writedata~combout\(13),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~19_combout\);

-- Location: LCFF_X12_Y19_N1
\drawline_controller|Mode_Register[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~19_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(13));

-- Location: LCCOMB_X10_Y23_N12
\drawline_controller|readdata~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~48_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\) # ((\drawline_controller|Go_Register\(13))))) # (!\drawline_controller|readdata[20]~9_combout\ & 
-- (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Go_Register\(13),
	datad => \drawline_controller|Mode_Register\(13),
	combout => \drawline_controller|readdata~48_combout\);

-- Location: LCCOMB_X14_Y23_N2
\drawline_controller|readdata~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~49_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~48_combout\ & (\drawline_controller|Line_starting_point\(13))) # (!\drawline_controller|readdata~48_combout\ & 
-- ((\drawline_controller|Line_ending_point\(13)))))) # (!\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|Line_starting_point\(13),
	datac => \drawline_controller|Line_ending_point\(13),
	datad => \drawline_controller|readdata~48_combout\,
	combout => \drawline_controller|readdata~49_combout\);

-- Location: LCCOMB_X10_Y23_N6
\drawline_controller|Line_color[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[13]~feeder_combout\ = \writedata~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(13),
	combout => \drawline_controller|Line_color[13]~feeder_combout\);

-- Location: LCFF_X10_Y23_N7
\drawline_controller|Line_color[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[13]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(13));

-- Location: LCCOMB_X9_Y23_N0
\drawline_controller|readdata~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~50_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(13)) # ((\drawline_controller|readdata~49_combout\ & \drawline_controller|readdata~105_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~49_combout\ & (\drawline_controller|readdata~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~49_combout\,
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|Line_color\(13),
	combout => \drawline_controller|readdata~50_combout\);

-- Location: LCFF_X9_Y23_N1
\drawline_controller|readdata[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~50_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(13));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(14),
	combout => \writedata~combout\(14));

-- Location: LCFF_X10_Y23_N11
\drawline_controller|Line_color[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(14),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(14));

-- Location: LCFF_X11_Y23_N25
\drawline_controller|Line_ending_point[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(14),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(14));

-- Location: LCCOMB_X11_Y23_N24
\drawline_controller|readdata~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~51_combout\ = (\drawline_controller|readdata[20]~9_combout\ & (((\drawline_controller|readdata[20]~8_combout\)))) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\ & 
-- ((\drawline_controller|Line_ending_point\(14)))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|Mode_Register\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(14),
	datab => \drawline_controller|readdata[20]~9_combout\,
	datac => \drawline_controller|Line_ending_point\(14),
	datad => \drawline_controller|readdata[20]~8_combout\,
	combout => \drawline_controller|readdata~51_combout\);

-- Location: LCFF_X10_Y23_N17
\drawline_controller|Go_Register[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(14),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(14));

-- Location: LCFF_X17_Y26_N9
\drawline_controller|Line_starting_point[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(14),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(14));

-- Location: LCCOMB_X10_Y23_N16
\drawline_controller|readdata~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~52_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~51_combout\ & ((\drawline_controller|Line_starting_point\(14)))) # (!\drawline_controller|readdata~51_combout\ & 
-- (\drawline_controller|Go_Register\(14))))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata~51_combout\,
	datac => \drawline_controller|Go_Register\(14),
	datad => \drawline_controller|Line_starting_point\(14),
	combout => \drawline_controller|readdata~52_combout\);

-- Location: LCCOMB_X9_Y23_N10
\drawline_controller|readdata~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~53_combout\ = (\drawline_controller|readdata~105_combout\ & ((\drawline_controller|readdata~52_combout\) # ((\drawline_controller|Line_color\(14) & \drawline_controller|readdata~106_combout\)))) # 
-- (!\drawline_controller|readdata~105_combout\ & (\drawline_controller|Line_color\(14) & ((\drawline_controller|readdata~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~105_combout\,
	datab => \drawline_controller|Line_color\(14),
	datac => \drawline_controller|readdata~52_combout\,
	datad => \drawline_controller|readdata~106_combout\,
	combout => \drawline_controller|readdata~53_combout\);

-- Location: LCFF_X9_Y23_N11
\drawline_controller|readdata[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~53_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(14));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(15),
	combout => \writedata~combout\(15));

-- Location: LCCOMB_X10_Y23_N22
\drawline_controller|Line_color[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[15]~feeder_combout\ = \writedata~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(15),
	combout => \drawline_controller|Line_color[15]~feeder_combout\);

-- Location: LCFF_X10_Y23_N23
\drawline_controller|Line_color[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[15]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(15));

-- Location: LCFF_X10_Y23_N21
\drawline_controller|Go_Register[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(15),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(15));

-- Location: LCCOMB_X10_Y19_N12
\drawline_controller|Mode_Register~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~21_combout\ = (\writedata~combout\(15) & (!\address~combout\(1) & (!\read~combout\ & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata~combout\(15),
	datab => \address~combout\(1),
	datac => \read~combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~21_combout\);

-- Location: LCFF_X12_Y19_N23
\drawline_controller|Mode_Register[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	sdata => \drawline_controller|Mode_Register~21_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(15));

-- Location: LCCOMB_X10_Y23_N20
\drawline_controller|readdata~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~54_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\) # ((\drawline_controller|Go_Register\(15))))) # (!\drawline_controller|readdata[20]~9_combout\ & 
-- (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Go_Register\(15),
	datad => \drawline_controller|Mode_Register\(15),
	combout => \drawline_controller|readdata~54_combout\);

-- Location: LCFF_X14_Y23_N5
\drawline_controller|Line_ending_point[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(15),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(15));

-- Location: LCFF_X18_Y26_N1
\drawline_controller|Line_starting_point[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(15),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(15));

-- Location: LCCOMB_X14_Y23_N4
\drawline_controller|readdata~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~55_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~54_combout\ & ((\drawline_controller|Line_starting_point\(15)))) # (!\drawline_controller|readdata~54_combout\ & 
-- (\drawline_controller|Line_ending_point\(15))))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|readdata~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|readdata~54_combout\,
	datac => \drawline_controller|Line_ending_point\(15),
	datad => \drawline_controller|Line_starting_point\(15),
	combout => \drawline_controller|readdata~55_combout\);

-- Location: LCCOMB_X9_Y23_N12
\drawline_controller|readdata~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~56_combout\ = (\drawline_controller|readdata~105_combout\ & ((\drawline_controller|readdata~55_combout\) # ((\drawline_controller|Line_color\(15) & \drawline_controller|readdata~106_combout\)))) # 
-- (!\drawline_controller|readdata~105_combout\ & (\drawline_controller|Line_color\(15) & ((\drawline_controller|readdata~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~105_combout\,
	datab => \drawline_controller|Line_color\(15),
	datac => \drawline_controller|readdata~55_combout\,
	datad => \drawline_controller|readdata~106_combout\,
	combout => \drawline_controller|readdata~56_combout\);

-- Location: LCFF_X9_Y23_N13
\drawline_controller|readdata[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~56_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(15));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(16),
	combout => \writedata~combout\(16));

-- Location: LCFF_X18_Y25_N7
\drawline_controller|Line_starting_point[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(16),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(16));

-- Location: LCFF_X10_Y23_N25
\drawline_controller|Go_Register[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(16),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(16));

-- Location: LCFF_X11_Y23_N3
\drawline_controller|Line_ending_point[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(16),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(16));

-- Location: LCCOMB_X10_Y19_N2
\drawline_controller|Mode_Register~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~22_combout\ = (\writedata~combout\(16) & (!\address~combout\(1) & (!\read~combout\ & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata~combout\(16),
	datab => \address~combout\(1),
	datac => \read~combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~22_combout\);

-- Location: LCFF_X10_Y19_N3
\drawline_controller|Mode_Register[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~22_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(16));

-- Location: LCCOMB_X11_Y23_N2
\drawline_controller|readdata~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~57_combout\ = (\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata[20]~8_combout\)) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Line_ending_point\(16))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(16),
	datad => \drawline_controller|Mode_Register\(16),
	combout => \drawline_controller|readdata~57_combout\);

-- Location: LCCOMB_X10_Y23_N24
\drawline_controller|readdata~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~58_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~57_combout\ & (\drawline_controller|Line_starting_point\(16))) # (!\drawline_controller|readdata~57_combout\ & 
-- ((\drawline_controller|Go_Register\(16)))))) # (!\drawline_controller|readdata[20]~9_combout\ & (((\drawline_controller|readdata~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|Line_starting_point\(16),
	datac => \drawline_controller|Go_Register\(16),
	datad => \drawline_controller|readdata~57_combout\,
	combout => \drawline_controller|readdata~58_combout\);

-- Location: LCCOMB_X10_Y23_N2
\drawline_controller|Line_color[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[16]~feeder_combout\ = \writedata~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(16),
	combout => \drawline_controller|Line_color[16]~feeder_combout\);

-- Location: LCFF_X10_Y23_N3
\drawline_controller|Line_color[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[16]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(16));

-- Location: LCCOMB_X9_Y23_N30
\drawline_controller|readdata~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~59_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(16)) # ((\drawline_controller|readdata~58_combout\ & \drawline_controller|readdata~105_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~58_combout\ & (\drawline_controller|readdata~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~58_combout\,
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|Line_color\(16),
	combout => \drawline_controller|readdata~59_combout\);

-- Location: LCFF_X9_Y23_N31
\drawline_controller|readdata[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~59_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(16));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(17),
	combout => \writedata~combout\(17));

-- Location: LCFF_X10_Y19_N17
\drawline_controller|Go_Register[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(17),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(17));

-- Location: LCCOMB_X10_Y19_N18
\drawline_controller|Mode_Register~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~23_combout\ = (!\read~combout\ & (!\address~combout\(1) & (\writedata~combout\(17) & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read~combout\,
	datab => \address~combout\(1),
	datac => \writedata~combout\(17),
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~23_combout\);

-- Location: LCFF_X10_Y19_N19
\drawline_controller|Mode_Register[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~23_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(17));

-- Location: LCCOMB_X10_Y19_N16
\drawline_controller|readdata~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~60_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\) # ((\drawline_controller|Go_Register\(17))))) # (!\drawline_controller|readdata[20]~9_combout\ & 
-- (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Go_Register\(17),
	datad => \drawline_controller|Mode_Register\(17),
	combout => \drawline_controller|readdata~60_combout\);

-- Location: LCFF_X10_Y22_N1
\drawline_controller|Line_ending_point[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(17),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(17));

-- Location: LCCOMB_X10_Y22_N26
\drawline_controller|Line_starting_point[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_starting_point[17]~feeder_combout\ = \writedata~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(17),
	combout => \drawline_controller|Line_starting_point[17]~feeder_combout\);

-- Location: LCFF_X10_Y22_N27
\drawline_controller|Line_starting_point[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_starting_point[17]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(17));

-- Location: LCCOMB_X10_Y22_N0
\drawline_controller|readdata~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~61_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~60_combout\ & ((\drawline_controller|Line_starting_point\(17)))) # (!\drawline_controller|readdata~60_combout\ & 
-- (\drawline_controller|Line_ending_point\(17))))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|readdata~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|readdata~60_combout\,
	datac => \drawline_controller|Line_ending_point\(17),
	datad => \drawline_controller|Line_starting_point\(17),
	combout => \drawline_controller|readdata~61_combout\);

-- Location: LCCOMB_X12_Y22_N22
\drawline_controller|Line_color[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[17]~feeder_combout\ = \writedata~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(17),
	combout => \drawline_controller|Line_color[17]~feeder_combout\);

-- Location: LCFF_X12_Y22_N23
\drawline_controller|Line_color[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[17]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(17));

-- Location: LCCOMB_X9_Y23_N8
\drawline_controller|readdata~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~62_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(17)) # ((\drawline_controller|readdata~61_combout\ & \drawline_controller|readdata~105_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~61_combout\ & (\drawline_controller|readdata~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~61_combout\,
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|Line_color\(17),
	combout => \drawline_controller|readdata~62_combout\);

-- Location: LCFF_X9_Y23_N9
\drawline_controller|readdata[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~62_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(17));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(18),
	combout => \writedata~combout\(18));

-- Location: LCFF_X11_Y23_N29
\drawline_controller|Line_ending_point[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(18),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(18));

-- Location: LCCOMB_X10_Y19_N8
\drawline_controller|Mode_Register~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~24_combout\ = (\writedata~combout\(18) & (!\address~combout\(1) & (!\read~combout\ & !\address~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata~combout\(18),
	datab => \address~combout\(1),
	datac => \read~combout\,
	datad => \address~combout\(2),
	combout => \drawline_controller|Mode_Register~24_combout\);

-- Location: LCCOMB_X11_Y19_N6
\drawline_controller|Mode_Register[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register[18]~feeder_combout\ = \drawline_controller|Mode_Register~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \drawline_controller|Mode_Register~24_combout\,
	combout => \drawline_controller|Mode_Register[18]~feeder_combout\);

-- Location: LCFF_X11_Y19_N7
\drawline_controller|Mode_Register[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register[18]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(18));

-- Location: LCCOMB_X11_Y23_N28
\drawline_controller|readdata~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~63_combout\ = (\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata[20]~8_combout\)) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Line_ending_point\(18))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(18),
	datad => \drawline_controller|Mode_Register\(18),
	combout => \drawline_controller|readdata~63_combout\);

-- Location: LCFF_X11_Y23_N23
\drawline_controller|Line_starting_point[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(18),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(18));

-- Location: LCCOMB_X12_Y23_N24
\drawline_controller|Go_Register[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Go_Register[18]~feeder_combout\ = \writedata~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(18),
	combout => \drawline_controller|Go_Register[18]~feeder_combout\);

-- Location: LCFF_X12_Y23_N25
\drawline_controller|Go_Register[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Go_Register[18]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(18));

-- Location: LCCOMB_X11_Y23_N22
\drawline_controller|readdata~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~64_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~63_combout\ & (\drawline_controller|Line_starting_point\(18))) # (!\drawline_controller|readdata~63_combout\ & 
-- ((\drawline_controller|Go_Register\(18)))))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata~63_combout\,
	datac => \drawline_controller|Line_starting_point\(18),
	datad => \drawline_controller|Go_Register\(18),
	combout => \drawline_controller|readdata~64_combout\);

-- Location: LCFF_X12_Y22_N9
\drawline_controller|Line_color[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(18),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(18));

-- Location: LCCOMB_X9_Y23_N2
\drawline_controller|readdata~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~65_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(18)) # ((\drawline_controller|readdata~64_combout\ & \drawline_controller|readdata~105_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~64_combout\ & (\drawline_controller|readdata~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~64_combout\,
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|Line_color\(18),
	combout => \drawline_controller|readdata~65_combout\);

-- Location: LCFF_X9_Y23_N3
\drawline_controller|readdata[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~65_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(18));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(19),
	combout => \writedata~combout\(19));

-- Location: LCFF_X9_Y23_N29
\drawline_controller|Line_color[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(19),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(19));

-- Location: LCFF_X10_Y19_N27
\drawline_controller|Go_Register[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(19),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(19));

-- Location: LCCOMB_X10_Y19_N26
\drawline_controller|readdata~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~66_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- ((\drawline_controller|Go_Register\(19)))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|Mode_Register\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(19),
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Go_Register\(19),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~66_combout\);

-- Location: LCFF_X10_Y22_N5
\drawline_controller|Line_ending_point[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(19),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(19));

-- Location: LCFF_X10_Y22_N23
\drawline_controller|Line_starting_point[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(19),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(19));

-- Location: LCCOMB_X10_Y22_N4
\drawline_controller|readdata~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~67_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~66_combout\ & ((\drawline_controller|Line_starting_point\(19)))) # (!\drawline_controller|readdata~66_combout\ & 
-- (\drawline_controller|Line_ending_point\(19))))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|readdata~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|readdata~66_combout\,
	datac => \drawline_controller|Line_ending_point\(19),
	datad => \drawline_controller|Line_starting_point\(19),
	combout => \drawline_controller|readdata~67_combout\);

-- Location: LCCOMB_X9_Y23_N20
\drawline_controller|readdata~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~68_combout\ = (\drawline_controller|readdata~105_combout\ & ((\drawline_controller|readdata~67_combout\) # ((\drawline_controller|Line_color\(19) & \drawline_controller|readdata~106_combout\)))) # 
-- (!\drawline_controller|readdata~105_combout\ & (\drawline_controller|Line_color\(19) & ((\drawline_controller|readdata~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~105_combout\,
	datab => \drawline_controller|Line_color\(19),
	datac => \drawline_controller|readdata~67_combout\,
	datad => \drawline_controller|readdata~106_combout\,
	combout => \drawline_controller|readdata~68_combout\);

-- Location: LCFF_X9_Y23_N21
\drawline_controller|readdata[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~68_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(19));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(20),
	combout => \writedata~combout\(20));

-- Location: LCCOMB_X10_Y23_N14
\drawline_controller|Line_color[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[20]~feeder_combout\ = \writedata~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(20),
	combout => \drawline_controller|Line_color[20]~feeder_combout\);

-- Location: LCFF_X10_Y23_N15
\drawline_controller|Line_color[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[20]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(20));

-- Location: LCFF_X11_Y23_N1
\drawline_controller|Line_ending_point[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(20),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(20));

-- Location: LCCOMB_X11_Y23_N0
\drawline_controller|readdata~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~69_combout\ = (\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata[20]~8_combout\)) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Line_ending_point\(20))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(20),
	datad => \drawline_controller|Mode_Register\(20),
	combout => \drawline_controller|readdata~69_combout\);

-- Location: LCFF_X10_Y23_N5
\drawline_controller|Go_Register[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(20),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(20));

-- Location: LCFF_X11_Y23_N19
\drawline_controller|Line_starting_point[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(20),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(20));

-- Location: LCCOMB_X10_Y23_N4
\drawline_controller|readdata~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~70_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~69_combout\ & ((\drawline_controller|Line_starting_point\(20)))) # (!\drawline_controller|readdata~69_combout\ & 
-- (\drawline_controller|Go_Register\(20))))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata~69_combout\,
	datac => \drawline_controller|Go_Register\(20),
	datad => \drawline_controller|Line_starting_point\(20),
	combout => \drawline_controller|readdata~70_combout\);

-- Location: LCCOMB_X9_Y23_N14
\drawline_controller|readdata~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~71_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(20)) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~70_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|Line_color\(20),
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|readdata~70_combout\,
	combout => \drawline_controller|readdata~71_combout\);

-- Location: LCFF_X9_Y23_N15
\drawline_controller|readdata[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~71_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(20));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(21),
	combout => \writedata~combout\(21));

-- Location: LCFF_X10_Y19_N11
\drawline_controller|Go_Register[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(21),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(21));

-- Location: LCCOMB_X10_Y19_N10
\drawline_controller|readdata~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~72_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- ((\drawline_controller|Go_Register\(21)))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|Mode_Register\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(21),
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Go_Register\(21),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~72_combout\);

-- Location: LCFF_X10_Y22_N9
\drawline_controller|Line_ending_point[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(21),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(21));

-- Location: LCCOMB_X10_Y22_N8
\drawline_controller|readdata~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~73_combout\ = (\drawline_controller|readdata~72_combout\ & ((\drawline_controller|Line_starting_point\(21)) # ((!\drawline_controller|readdata[20]~8_combout\)))) # (!\drawline_controller|readdata~72_combout\ & 
-- (((\drawline_controller|Line_ending_point\(21) & \drawline_controller|readdata[20]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Line_starting_point\(21),
	datab => \drawline_controller|readdata~72_combout\,
	datac => \drawline_controller|Line_ending_point\(21),
	datad => \drawline_controller|readdata[20]~8_combout\,
	combout => \drawline_controller|readdata~73_combout\);

-- Location: LCCOMB_X9_Y23_N6
\drawline_controller|Line_color[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[21]~feeder_combout\ = \writedata~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(21),
	combout => \drawline_controller|Line_color[21]~feeder_combout\);

-- Location: LCFF_X9_Y23_N7
\drawline_controller|Line_color[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[21]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(21));

-- Location: LCCOMB_X9_Y23_N16
\drawline_controller|readdata~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~74_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(21)) # ((\drawline_controller|readdata~73_combout\ & \drawline_controller|readdata~105_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~73_combout\ & (\drawline_controller|readdata~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~73_combout\,
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|Line_color\(21),
	combout => \drawline_controller|readdata~74_combout\);

-- Location: LCFF_X9_Y23_N17
\drawline_controller|readdata[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~74_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(21));

-- Location: LCFF_X11_Y23_N21
\drawline_controller|Line_ending_point[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(22),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(22));

-- Location: LCCOMB_X11_Y23_N20
\drawline_controller|readdata~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~75_combout\ = (\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata[20]~8_combout\)) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Line_ending_point\(22))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(22),
	datad => \drawline_controller|Mode_Register\(22),
	combout => \drawline_controller|readdata~75_combout\);

-- Location: LCFF_X11_Y22_N29
\drawline_controller|Go_Register[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(22),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(22));

-- Location: LCCOMB_X11_Y22_N28
\drawline_controller|readdata~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~76_combout\ = (\drawline_controller|readdata~75_combout\ & ((\drawline_controller|Line_starting_point\(22)) # ((!\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata~75_combout\ & 
-- (((\drawline_controller|Go_Register\(22) & \drawline_controller|readdata[20]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Line_starting_point\(22),
	datab => \drawline_controller|readdata~75_combout\,
	datac => \drawline_controller|Go_Register\(22),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~76_combout\);

-- Location: LCCOMB_X12_Y22_N2
\drawline_controller|Line_color[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[22]~feeder_combout\ = \writedata~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(22),
	combout => \drawline_controller|Line_color[22]~feeder_combout\);

-- Location: LCFF_X12_Y22_N3
\drawline_controller|Line_color[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[22]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(22));

-- Location: LCCOMB_X11_Y22_N0
\drawline_controller|readdata~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~77_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(22)) # ((\drawline_controller|readdata~76_combout\ & \drawline_controller|readdata~105_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~76_combout\ & (\drawline_controller|readdata~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~76_combout\,
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|Line_color\(22),
	combout => \drawline_controller|readdata~77_combout\);

-- Location: LCFF_X11_Y22_N1
\drawline_controller|readdata[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~77_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(22));

-- Location: LCFF_X10_Y19_N25
\drawline_controller|Go_Register[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(23),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(23));

-- Location: LCCOMB_X10_Y19_N24
\drawline_controller|readdata~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~78_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- ((\drawline_controller|Go_Register\(23)))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|Mode_Register\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(23),
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Go_Register\(23),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~78_combout\);

-- Location: LCFF_X10_Y22_N29
\drawline_controller|Line_ending_point[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(23),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(23));

-- Location: LCCOMB_X10_Y22_N28
\drawline_controller|readdata~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~79_combout\ = (\drawline_controller|readdata~78_combout\ & ((\drawline_controller|Line_starting_point\(23)) # ((!\drawline_controller|readdata[20]~8_combout\)))) # (!\drawline_controller|readdata~78_combout\ & 
-- (((\drawline_controller|Line_ending_point\(23) & \drawline_controller|readdata[20]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Line_starting_point\(23),
	datab => \drawline_controller|readdata~78_combout\,
	datac => \drawline_controller|Line_ending_point\(23),
	datad => \drawline_controller|readdata[20]~8_combout\,
	combout => \drawline_controller|readdata~79_combout\);

-- Location: LCCOMB_X12_Y22_N4
\drawline_controller|Line_color[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[23]~feeder_combout\ = \writedata~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(23),
	combout => \drawline_controller|Line_color[23]~feeder_combout\);

-- Location: LCFF_X12_Y22_N5
\drawline_controller|Line_color[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[23]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(23));

-- Location: LCCOMB_X11_Y22_N26
\drawline_controller|readdata~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~80_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(23)) # ((\drawline_controller|readdata~79_combout\ & \drawline_controller|readdata~105_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~79_combout\ & (\drawline_controller|readdata~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~79_combout\,
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|Line_color\(23),
	combout => \drawline_controller|readdata~80_combout\);

-- Location: LCFF_X11_Y22_N27
\drawline_controller|readdata[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~80_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(23));

-- Location: LCFF_X11_Y22_N31
\drawline_controller|Go_Register[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(24),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(24));

-- Location: LCFF_X11_Y23_N27
\drawline_controller|Line_starting_point[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(24),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(24));

-- Location: LCFF_X11_Y23_N17
\drawline_controller|Line_ending_point[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(24),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(24));

-- Location: LCCOMB_X11_Y23_N16
\drawline_controller|readdata~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~81_combout\ = (\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|readdata[20]~8_combout\)) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Line_ending_point\(24))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(24),
	datad => \drawline_controller|Mode_Register\(24),
	combout => \drawline_controller|readdata~81_combout\);

-- Location: LCCOMB_X11_Y23_N26
\drawline_controller|readdata~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~82_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~81_combout\ & ((\drawline_controller|Line_starting_point\(24)))) # (!\drawline_controller|readdata~81_combout\ & 
-- (\drawline_controller|Go_Register\(24))))) # (!\drawline_controller|readdata[20]~9_combout\ & (((\drawline_controller|readdata~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|Go_Register\(24),
	datac => \drawline_controller|Line_starting_point\(24),
	datad => \drawline_controller|readdata~81_combout\,
	combout => \drawline_controller|readdata~82_combout\);

-- Location: LCCOMB_X12_Y22_N6
\drawline_controller|Line_color[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[24]~feeder_combout\ = \writedata~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(24),
	combout => \drawline_controller|Line_color[24]~feeder_combout\);

-- Location: LCFF_X12_Y22_N7
\drawline_controller|Line_color[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[24]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(24));

-- Location: LCCOMB_X11_Y22_N12
\drawline_controller|readdata~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~83_combout\ = (\drawline_controller|readdata~105_combout\ & ((\drawline_controller|readdata~82_combout\) # ((\drawline_controller|readdata~106_combout\ & \drawline_controller|Line_color\(24))))) # 
-- (!\drawline_controller|readdata~105_combout\ & (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~105_combout\,
	datab => \drawline_controller|readdata~106_combout\,
	datac => \drawline_controller|readdata~82_combout\,
	datad => \drawline_controller|Line_color\(24),
	combout => \drawline_controller|readdata~83_combout\);

-- Location: LCFF_X11_Y22_N13
\drawline_controller|readdata[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~83_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(24));

-- Location: LCCOMB_X10_Y20_N8
\drawline_controller|Line_color[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[25]~feeder_combout\ = \writedata~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(25),
	combout => \drawline_controller|Line_color[25]~feeder_combout\);

-- Location: LCFF_X10_Y20_N9
\drawline_controller|Line_color[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[25]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(25));

-- Location: LCFF_X10_Y22_N3
\drawline_controller|Line_starting_point[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(25),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(25));

-- Location: LCFF_X10_Y22_N17
\drawline_controller|Line_ending_point[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(25),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(25));

-- Location: LCFF_X11_Y20_N15
\drawline_controller|Go_Register[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(25),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(25));

-- Location: LCCOMB_X11_Y20_N14
\drawline_controller|readdata~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~84_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|readdata[20]~9_combout\)) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- (\drawline_controller|Go_Register\(25))) # (!\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|Mode_Register\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|readdata[20]~9_combout\,
	datac => \drawline_controller|Go_Register\(25),
	datad => \drawline_controller|Mode_Register\(25),
	combout => \drawline_controller|readdata~84_combout\);

-- Location: LCCOMB_X10_Y22_N16
\drawline_controller|readdata~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~85_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~84_combout\ & (\drawline_controller|Line_starting_point\(25))) # (!\drawline_controller|readdata~84_combout\ & 
-- ((\drawline_controller|Line_ending_point\(25)))))) # (!\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|Line_starting_point\(25),
	datac => \drawline_controller|Line_ending_point\(25),
	datad => \drawline_controller|readdata~84_combout\,
	combout => \drawline_controller|readdata~85_combout\);

-- Location: LCCOMB_X11_Y22_N6
\drawline_controller|readdata~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~86_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(25)) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~85_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|Line_color\(25),
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|readdata~85_combout\,
	combout => \drawline_controller|readdata~86_combout\);

-- Location: LCFF_X11_Y22_N7
\drawline_controller|readdata[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~86_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(25));

-- Location: LCFF_X10_Y20_N11
\drawline_controller|Line_color[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(26),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(26));

-- Location: LCCOMB_X11_Y22_N8
\drawline_controller|readdata~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~89_combout\ = (\drawline_controller|readdata~88_combout\ & ((\drawline_controller|readdata~105_combout\) # ((\drawline_controller|Line_color\(26) & \drawline_controller|readdata~106_combout\)))) # 
-- (!\drawline_controller|readdata~88_combout\ & (\drawline_controller|Line_color\(26) & ((\drawline_controller|readdata~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~88_combout\,
	datab => \drawline_controller|Line_color\(26),
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|readdata~106_combout\,
	combout => \drawline_controller|readdata~89_combout\);

-- Location: LCFF_X11_Y22_N9
\drawline_controller|readdata[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~89_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(26));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(27),
	combout => \writedata~combout\(27));

-- Location: LCFF_X10_Y20_N29
\drawline_controller|Line_color[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(27),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(27));

-- Location: LCFF_X10_Y22_N31
\drawline_controller|Line_starting_point[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(27),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(27));

-- Location: LCFF_X10_Y22_N13
\drawline_controller|Line_ending_point[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(27),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(27));

-- Location: LCCOMB_X11_Y20_N16
\drawline_controller|Mode_Register~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Mode_Register~33_combout\ = (\writedata~combout\(27) & (!\address~combout\(2) & (!\address~combout\(1) & !\read~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata~combout\(27),
	datab => \address~combout\(2),
	datac => \address~combout\(1),
	datad => \read~combout\,
	combout => \drawline_controller|Mode_Register~33_combout\);

-- Location: LCFF_X11_Y20_N17
\drawline_controller|Mode_Register[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \drawline_controller|Mode_Register~33_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Mode_Register[1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Mode_Register\(27));

-- Location: LCFF_X11_Y20_N27
\drawline_controller|Go_Register[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(27),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(27));

-- Location: LCCOMB_X11_Y20_N26
\drawline_controller|readdata~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~90_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- ((\drawline_controller|Go_Register\(27)))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|Mode_Register\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|Mode_Register\(27),
	datac => \drawline_controller|Go_Register\(27),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~90_combout\);

-- Location: LCCOMB_X10_Y22_N12
\drawline_controller|readdata~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~91_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~90_combout\ & (\drawline_controller|Line_starting_point\(27))) # (!\drawline_controller|readdata~90_combout\ & 
-- ((\drawline_controller|Line_ending_point\(27)))))) # (!\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|Line_starting_point\(27),
	datac => \drawline_controller|Line_ending_point\(27),
	datad => \drawline_controller|readdata~90_combout\,
	combout => \drawline_controller|readdata~91_combout\);

-- Location: LCCOMB_X11_Y22_N10
\drawline_controller|readdata~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~92_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(27)) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~91_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|Line_color\(27),
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|readdata~91_combout\,
	combout => \drawline_controller|readdata~92_combout\);

-- Location: LCFF_X11_Y22_N11
\drawline_controller|readdata[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~92_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(27));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(28),
	combout => \writedata~combout\(28));

-- Location: LCFF_X10_Y22_N25
\drawline_controller|Line_starting_point[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(28),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(28));

-- Location: LCFF_X11_Y21_N1
\drawline_controller|Line_ending_point[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(28),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(28));

-- Location: LCCOMB_X11_Y21_N0
\drawline_controller|readdata~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~93_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|Line_ending_point\(28)) # (\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Mode_Register\(28) & ((!\drawline_controller|readdata[20]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(28),
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(28),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~93_combout\);

-- Location: LCCOMB_X10_Y22_N24
\drawline_controller|readdata~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~94_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata~93_combout\ & ((\drawline_controller|Line_starting_point\(28)))) # (!\drawline_controller|readdata~93_combout\ & 
-- (\drawline_controller|Go_Register\(28))))) # (!\drawline_controller|readdata[20]~9_combout\ & (((\drawline_controller|readdata~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Go_Register\(28),
	datab => \drawline_controller|readdata[20]~9_combout\,
	datac => \drawline_controller|Line_starting_point\(28),
	datad => \drawline_controller|readdata~93_combout\,
	combout => \drawline_controller|readdata~94_combout\);

-- Location: LCCOMB_X12_Y22_N18
\drawline_controller|Line_color[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|Line_color[28]~feeder_combout\ = \writedata~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(28),
	combout => \drawline_controller|Line_color[28]~feeder_combout\);

-- Location: LCFF_X12_Y22_N19
\drawline_controller|Line_color[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|Line_color[28]~feeder_combout\,
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(28));

-- Location: LCCOMB_X11_Y22_N4
\drawline_controller|readdata~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~95_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(28)) # ((\drawline_controller|readdata~94_combout\ & \drawline_controller|readdata~105_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~94_combout\ & (\drawline_controller|readdata~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~94_combout\,
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|Line_color\(28),
	combout => \drawline_controller|readdata~95_combout\);

-- Location: LCFF_X11_Y22_N5
\drawline_controller|readdata[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~95_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(28));

-- Location: LCFF_X12_Y22_N13
\drawline_controller|Go_Register[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(29),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(29));

-- Location: LCCOMB_X12_Y22_N12
\drawline_controller|readdata~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~96_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata[20]~9_combout\ & 
-- ((\drawline_controller|Go_Register\(29)))) # (!\drawline_controller|readdata[20]~9_combout\ & (\drawline_controller|Mode_Register\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(29),
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Go_Register\(29),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~96_combout\);

-- Location: LCFF_X10_Y22_N19
\drawline_controller|Line_starting_point[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(29),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(29));

-- Location: LCFF_X14_Y23_N23
\drawline_controller|Line_ending_point[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(29),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(29));

-- Location: LCCOMB_X10_Y22_N18
\drawline_controller|readdata~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~97_combout\ = (\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|readdata~96_combout\ & (\drawline_controller|Line_starting_point\(29))) # (!\drawline_controller|readdata~96_combout\ & 
-- ((\drawline_controller|Line_ending_point\(29)))))) # (!\drawline_controller|readdata[20]~8_combout\ & (\drawline_controller|readdata~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~8_combout\,
	datab => \drawline_controller|readdata~96_combout\,
	datac => \drawline_controller|Line_starting_point\(29),
	datad => \drawline_controller|Line_ending_point\(29),
	combout => \drawline_controller|readdata~97_combout\);

-- Location: LCFF_X12_Y22_N31
\drawline_controller|Line_color[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(29),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(29));

-- Location: LCCOMB_X11_Y22_N22
\drawline_controller|readdata~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~98_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(29)) # ((\drawline_controller|readdata~97_combout\ & \drawline_controller|readdata~105_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (\drawline_controller|readdata~97_combout\ & (\drawline_controller|readdata~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|readdata~97_combout\,
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|Line_color\(29),
	combout => \drawline_controller|readdata~98_combout\);

-- Location: LCFF_X11_Y22_N23
\drawline_controller|readdata[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~98_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(29));

-- Location: LCFF_X11_Y21_N29
\drawline_controller|Line_ending_point[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(30),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_ending_point\(30));

-- Location: LCCOMB_X11_Y21_N28
\drawline_controller|readdata~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~99_combout\ = (\drawline_controller|readdata[20]~8_combout\ & (((\drawline_controller|Line_ending_point\(30)) # (\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata[20]~8_combout\ & 
-- (\drawline_controller|Mode_Register\(30) & ((!\drawline_controller|readdata[20]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Mode_Register\(30),
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Line_ending_point\(30),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~99_combout\);

-- Location: LCFF_X12_Y21_N1
\drawline_controller|Line_starting_point[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(30),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(30));

-- Location: LCCOMB_X12_Y21_N0
\drawline_controller|readdata~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~100_combout\ = (\drawline_controller|readdata~99_combout\ & (((\drawline_controller|Line_starting_point\(30)) # (!\drawline_controller|readdata[20]~9_combout\)))) # (!\drawline_controller|readdata~99_combout\ & 
-- (\drawline_controller|Go_Register\(30) & ((\drawline_controller|readdata[20]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Go_Register\(30),
	datab => \drawline_controller|readdata~99_combout\,
	datac => \drawline_controller|Line_starting_point\(30),
	datad => \drawline_controller|readdata[20]~9_combout\,
	combout => \drawline_controller|readdata~100_combout\);

-- Location: LCFF_X12_Y22_N27
\drawline_controller|Line_color[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(30),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(30));

-- Location: LCCOMB_X11_Y22_N16
\drawline_controller|readdata~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~101_combout\ = (\drawline_controller|readdata~105_combout\ & ((\drawline_controller|readdata~100_combout\) # ((\drawline_controller|Line_color\(30) & \drawline_controller|readdata~106_combout\)))) # 
-- (!\drawline_controller|readdata~105_combout\ & (((\drawline_controller|Line_color\(30) & \drawline_controller|readdata~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~105_combout\,
	datab => \drawline_controller|readdata~100_combout\,
	datac => \drawline_controller|Line_color\(30),
	datad => \drawline_controller|readdata~106_combout\,
	combout => \drawline_controller|readdata~101_combout\);

-- Location: LCFF_X11_Y22_N17
\drawline_controller|readdata[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~101_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(30));

-- Location: LCFF_X12_Y22_N15
\drawline_controller|Line_color[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(31),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_color\(31));

-- Location: LCFF_X12_Y22_N29
\drawline_controller|Go_Register[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(31),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Go_Register\(31));

-- Location: LCCOMB_X12_Y22_N28
\drawline_controller|readdata~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~102_combout\ = (\drawline_controller|readdata[20]~9_combout\ & ((\drawline_controller|readdata[20]~8_combout\) # ((\drawline_controller|Go_Register\(31))))) # (!\drawline_controller|readdata[20]~9_combout\ & 
-- (!\drawline_controller|readdata[20]~8_combout\ & ((\drawline_controller|Mode_Register\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata[20]~9_combout\,
	datab => \drawline_controller|readdata[20]~8_combout\,
	datac => \drawline_controller|Go_Register\(31),
	datad => \drawline_controller|Mode_Register\(31),
	combout => \drawline_controller|readdata~102_combout\);

-- Location: LCFF_X10_Y22_N15
\drawline_controller|Line_starting_point[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \writedata~combout\(31),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \drawline_controller|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|Line_starting_point\(31));

-- Location: LCCOMB_X10_Y22_N14
\drawline_controller|readdata~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~103_combout\ = (\drawline_controller|readdata~102_combout\ & (((\drawline_controller|Line_starting_point\(31)) # (!\drawline_controller|readdata[20]~8_combout\)))) # (!\drawline_controller|readdata~102_combout\ & 
-- (\drawline_controller|Line_ending_point\(31) & ((\drawline_controller|readdata[20]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Line_ending_point\(31),
	datab => \drawline_controller|readdata~102_combout\,
	datac => \drawline_controller|Line_starting_point\(31),
	datad => \drawline_controller|readdata[20]~8_combout\,
	combout => \drawline_controller|readdata~103_combout\);

-- Location: LCCOMB_X11_Y22_N18
\drawline_controller|readdata~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawline_controller|readdata~104_combout\ = (\drawline_controller|readdata~106_combout\ & ((\drawline_controller|Line_color\(31)) # ((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~103_combout\)))) # 
-- (!\drawline_controller|readdata~106_combout\ & (((\drawline_controller|readdata~105_combout\ & \drawline_controller|readdata~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|readdata~106_combout\,
	datab => \drawline_controller|Line_color\(31),
	datac => \drawline_controller|readdata~105_combout\,
	datad => \drawline_controller|readdata~103_combout\,
	combout => \drawline_controller|readdata~104_combout\);

-- Location: LCFF_X11_Y22_N19
\drawline_controller|readdata[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \drawline_controller|readdata~104_combout\,
	ena => \drawline_controller|readdata[1]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \drawline_controller|readdata\(31));

-- Location: LCCOMB_X20_Y29_N28
\LDA_cir|steep~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|steep~0_combout\ = (\LDA_cir|ps.s1~regout\ & (((!\LDA_cir|ps.s12~regout\ & \LDA_cir|steep~regout\)))) # (!\LDA_cir|ps.s1~regout\ & (\LDA_cir|LessThan3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan3~16_combout\,
	datab => \LDA_cir|ps.s12~regout\,
	datac => \LDA_cir|steep~regout\,
	datad => \LDA_cir|ps.s1~regout\,
	combout => \LDA_cir|steep~0_combout\);

-- Location: LCFF_X20_Y29_N29
\LDA_cir|steep\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|steep~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|steep~regout\);

-- Location: LCCOMB_X18_Y26_N28
\LDA_cir|y0[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0[3]~0_combout\ = (!\LDA_cir|ps.s0~regout\ & ((!\LDA_cir|ps.s2~regout\) # (!\LDA_cir|steep~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|ps.s0~regout\,
	datac => \LDA_cir|steep~regout\,
	datad => \LDA_cir|ps.s2~regout\,
	combout => \LDA_cir|y0[3]~0_combout\);

-- Location: LCCOMB_X18_Y26_N30
\LDA_cir|y0[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0[3]~1_combout\ = (\LDA_cir|ps.s0~regout\) # ((\LDA_cir|LessThan7~16_combout\ & (\LDA_cir|ps.s3~regout\ & \LDA_cir|y0[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan7~16_combout\,
	datab => \LDA_cir|ps.s0~regout\,
	datac => \LDA_cir|ps.s3~regout\,
	datad => \LDA_cir|y0[3]~0_combout\,
	combout => \LDA_cir|y0[3]~1_combout\);

-- Location: LCCOMB_X19_Y26_N14
\LDA_cir|swap_1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|swap_1~combout\ = (\LDA_cir|steep~regout\ & \LDA_cir|ps.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|steep~regout\,
	datac => \LDA_cir|ps.s2~regout\,
	combout => \LDA_cir|swap_1~combout\);

-- Location: LCCOMB_X19_Y26_N4
\LDA_cir|x1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~1_combout\ = (\LDA_cir|LessThan7~16_combout\ & \LDA_cir|ps.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|LessThan7~16_combout\,
	datac => \LDA_cir|ps.s3~regout\,
	combout => \LDA_cir|x1~1_combout\);

-- Location: LCCOMB_X19_Y26_N16
\LDA_cir|swaped_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|swaped_2~0_combout\ = (\LDA_cir|swaped_2~regout\) # ((\LDA_cir|ps.s3~regout\ & \LDA_cir|LessThan7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s3~regout\,
	datab => \LDA_cir|LessThan7~16_combout\,
	datac => \LDA_cir|swaped_2~regout\,
	combout => \LDA_cir|swaped_2~0_combout\);

-- Location: LCFF_X19_Y26_N17
\LDA_cir|swaped_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|swaped_2~0_combout\,
	sclr => \LDA_cir|ps.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|swaped_2~regout\);

-- Location: LCCOMB_X19_Y26_N24
\LDA_cir|x0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~0_combout\ = (\LDA_cir|ps.s12~regout\ & ((!\LDA_cir|LessThan7~16_combout\) # (!\LDA_cir|ps.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s3~regout\,
	datab => \LDA_cir|LessThan7~16_combout\,
	datac => \LDA_cir|ps.s12~regout\,
	combout => \LDA_cir|x0~0_combout\);

-- Location: LCCOMB_X17_Y27_N16
\LDA_cir|swaped~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|swaped~0_combout\ = (\LDA_cir|swaped~regout\) # ((\LDA_cir|ps.s2~regout\ & \LDA_cir|steep~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|swaped~regout\,
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|swaped~0_combout\);

-- Location: LCFF_X17_Y27_N17
\LDA_cir|swaped\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|swaped~0_combout\,
	sclr => \LDA_cir|ps.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|swaped~regout\);

-- Location: LCCOMB_X19_Y26_N10
\LDA_cir|x1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~0_combout\ = (\LDA_cir|x1\(8) & (\LDA_cir|x0~0_combout\ & ((\LDA_cir|swaped_2~regout\) # (\LDA_cir|swaped~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(8),
	datab => \LDA_cir|swaped_2~regout\,
	datac => \LDA_cir|x0~0_combout\,
	datad => \LDA_cir|swaped~regout\,
	combout => \LDA_cir|x1~0_combout\);

-- Location: LCCOMB_X19_Y26_N8
\LDA_cir|x1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~2_combout\ = (!\LDA_cir|swap_1~combout\ & ((\LDA_cir|x1~0_combout\) # ((\LDA_cir|x0\(8) & \LDA_cir|x1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(8),
	datab => \LDA_cir|swap_1~combout\,
	datac => \LDA_cir|x1~1_combout\,
	datad => \LDA_cir|x1~0_combout\,
	combout => \LDA_cir|x1~2_combout\);

-- Location: LCCOMB_X19_Y25_N24
\LDA_cir|x1[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1[8]~feeder_combout\ = \LDA_cir|x1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LDA_cir|x1~2_combout\,
	combout => \LDA_cir|x1[8]~feeder_combout\);

-- Location: LCCOMB_X19_Y26_N26
\LDA_cir|x0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~1_combout\ = (\LDA_cir|ps.s12~regout\) # (((\LDA_cir|ps.s3~regout\ & \LDA_cir|LessThan7~16_combout\)) # (!\LDA_cir|y0[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s3~regout\,
	datab => \LDA_cir|LessThan7~16_combout\,
	datac => \LDA_cir|ps.s12~regout\,
	datad => \LDA_cir|y0[3]~0_combout\,
	combout => \LDA_cir|x0~1_combout\);

-- Location: LCFF_X19_Y25_N25
\LDA_cir|x1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x1[8]~feeder_combout\,
	sdata => \drawline_controller|Line_ending_point\(8),
	sload => \LDA_cir|ps.s0~regout\,
	ena => \LDA_cir|x0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x1\(8));

-- Location: LCCOMB_X19_Y26_N28
\LDA_cir|x0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~2_combout\ = (\LDA_cir|x0\(8) & (\LDA_cir|swaped_2~regout\ & (\LDA_cir|x0~0_combout\ & !\LDA_cir|swaped~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(8),
	datab => \LDA_cir|swaped_2~regout\,
	datac => \LDA_cir|x0~0_combout\,
	datad => \LDA_cir|swaped~regout\,
	combout => \LDA_cir|x0~2_combout\);

-- Location: LCCOMB_X19_Y26_N22
\LDA_cir|x0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~3_combout\ = (!\LDA_cir|swap_1~combout\ & ((\LDA_cir|x0~2_combout\) # ((\LDA_cir|x1\(8) & \LDA_cir|x1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(8),
	datab => \LDA_cir|x1~1_combout\,
	datac => \LDA_cir|swap_1~combout\,
	datad => \LDA_cir|x0~2_combout\,
	combout => \LDA_cir|x0~3_combout\);

-- Location: LCCOMB_X19_Y25_N2
\LDA_cir|x0[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0[8]~feeder_combout\ = \LDA_cir|x0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LDA_cir|x0~3_combout\,
	combout => \LDA_cir|x0[8]~feeder_combout\);

-- Location: LCFF_X19_Y25_N3
\LDA_cir|x0[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x0[8]~feeder_combout\,
	sdata => \drawline_controller|Line_starting_point\(8),
	sload => \LDA_cir|ps.s0~regout\,
	ena => \LDA_cir|x0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x0\(8));

-- Location: LCCOMB_X19_Y26_N6
\LDA_cir|x1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~4_combout\ = (\LDA_cir|ps.s0~regout\) # ((!\LDA_cir|swap_1~combout\ & ((!\LDA_cir|LessThan7~16_combout\) # (!\LDA_cir|ps.s3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s3~regout\,
	datab => \LDA_cir|LessThan7~16_combout\,
	datac => \LDA_cir|swap_1~combout\,
	datad => \LDA_cir|ps.s0~regout\,
	combout => \LDA_cir|x1~4_combout\);

-- Location: LCCOMB_X19_Y26_N18
\LDA_cir|x1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~5_combout\ = (\LDA_cir|x1~3_combout\ & (((\LDA_cir|ps.s0~regout\ & \drawline_controller|Line_ending_point\(7))) # (!\LDA_cir|x1~4_combout\))) # (!\LDA_cir|x1~3_combout\ & (\LDA_cir|ps.s0~regout\ & (\drawline_controller|Line_ending_point\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1~3_combout\,
	datab => \LDA_cir|ps.s0~regout\,
	datac => \drawline_controller|Line_ending_point\(7),
	datad => \LDA_cir|x1~4_combout\,
	combout => \LDA_cir|x1~5_combout\);

-- Location: LCCOMB_X19_Y26_N30
\LDA_cir|y1[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1[6]~0_combout\ = (\LDA_cir|y0[3]~0_combout\ & ((!\LDA_cir|ps.s3~regout\) # (!\LDA_cir|LessThan7~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|LessThan7~16_combout\,
	datac => \LDA_cir|ps.s3~regout\,
	datad => \LDA_cir|y0[3]~0_combout\,
	combout => \LDA_cir|y1[6]~0_combout\);

-- Location: LCCOMB_X19_Y26_N0
\LDA_cir|y1[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1[6]~1_combout\ = ((!\LDA_cir|swaped~regout\ & (!\LDA_cir|swaped_2~regout\ & \LDA_cir|ps.s12~regout\))) # (!\LDA_cir|y1[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|swaped~regout\,
	datab => \LDA_cir|swaped_2~regout\,
	datac => \LDA_cir|ps.s12~regout\,
	datad => \LDA_cir|y1[6]~0_combout\,
	combout => \LDA_cir|y1[6]~1_combout\);

-- Location: LCFF_X19_Y26_N19
\LDA_cir|x1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x1~5_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x1\(7));

-- Location: LCCOMB_X18_Y26_N0
\LDA_cir|y0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~5_combout\ = (\LDA_cir|y0~4_combout\ & ((\LDA_cir|y1\(6)) # ((!\LDA_cir|y0[3]~1_combout\)))) # (!\LDA_cir|y0~4_combout\ & (((\drawline_controller|Line_starting_point\(15) & \LDA_cir|y0[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0~4_combout\,
	datab => \LDA_cir|y1\(6),
	datac => \drawline_controller|Line_starting_point\(15),
	datad => \LDA_cir|y0[3]~1_combout\,
	combout => \LDA_cir|y0~5_combout\);

-- Location: LCCOMB_X17_Y26_N10
\LDA_cir|y0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~6_combout\ = (\LDA_cir|y0~5_combout\ & ((\LDA_cir|swaped~regout\) # ((\LDA_cir|y0[3]~1_combout\) # (!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|swaped~regout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \LDA_cir|y0~5_combout\,
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|y0~6_combout\);

-- Location: LCCOMB_X18_Y25_N14
\LDA_cir|y0[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0[3]~7_combout\ = ((\LDA_cir|ps.s12~regout\ & ((\LDA_cir|swaped~regout\) # (!\LDA_cir|swaped_2~regout\)))) # (!\LDA_cir|y1[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|swaped_2~regout\,
	datab => \LDA_cir|swaped~regout\,
	datac => \LDA_cir|ps.s12~regout\,
	datad => \LDA_cir|y1[6]~0_combout\,
	combout => \LDA_cir|y0[3]~7_combout\);

-- Location: LCFF_X17_Y26_N11
\LDA_cir|y0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y0~6_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y0\(6));

-- Location: LCCOMB_X17_Y27_N22
\LDA_cir|y1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~4_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & (\LDA_cir|x1\(6))) # (!\LDA_cir|steep~regout\ & ((\LDA_cir|y0\(6)))))) # (!\LDA_cir|ps.s2~regout\ & (((\LDA_cir|y0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(6),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|y0\(6),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|y1~4_combout\);

-- Location: LCCOMB_X17_Y27_N12
\LDA_cir|y1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~5_combout\ = (\drawline_controller|Line_ending_point\(15) & ((\LDA_cir|ps.s0~regout\) # ((\LDA_cir|y1~4_combout\ & !\LDA_cir|x1~4_combout\)))) # (!\drawline_controller|Line_ending_point\(15) & (\LDA_cir|y1~4_combout\ & 
-- (!\LDA_cir|x1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Line_ending_point\(15),
	datab => \LDA_cir|y1~4_combout\,
	datac => \LDA_cir|x1~4_combout\,
	datad => \LDA_cir|ps.s0~regout\,
	combout => \LDA_cir|y1~5_combout\);

-- Location: LCFF_X17_Y27_N13
\LDA_cir|y1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y1~5_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y1\(6));

-- Location: LCCOMB_X17_Y26_N16
\LDA_cir|x0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~7_combout\ = (\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|y0[3]~1_combout\)) # (!\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y0[3]~1_combout\ & (\drawline_controller|Line_starting_point\(6))) # (!\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|y0\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \drawline_controller|Line_starting_point\(6),
	datad => \LDA_cir|y0\(6),
	combout => \LDA_cir|x0~7_combout\);

-- Location: LCCOMB_X18_Y26_N22
\LDA_cir|x0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~8_combout\ = (\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|x0~7_combout\ & (\LDA_cir|x1\(6))) # (!\LDA_cir|x0~7_combout\ & ((\LDA_cir|y1\(6)))))) # (!\LDA_cir|y0[3]~3_combout\ & (((\LDA_cir|x0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(6),
	datab => \LDA_cir|y1\(6),
	datac => \LDA_cir|y0[3]~3_combout\,
	datad => \LDA_cir|x0~7_combout\,
	combout => \LDA_cir|x0~8_combout\);

-- Location: LCCOMB_X18_Y25_N4
\LDA_cir|x0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~9_combout\ = (\LDA_cir|x0~8_combout\ & ((\LDA_cir|y0[3]~1_combout\) # ((\LDA_cir|swaped~regout\) # (!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~1_combout\,
	datab => \LDA_cir|swaped~regout\,
	datac => \LDA_cir|x0~8_combout\,
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|x0~9_combout\);

-- Location: LCFF_X18_Y25_N5
\LDA_cir|x0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x0~9_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x0\(6));

-- Location: LCCOMB_X19_Y26_N2
\LDA_cir|x1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~6_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & (\LDA_cir|y1\(6))) # (!\LDA_cir|steep~regout\ & ((\LDA_cir|x0\(6)))))) # (!\LDA_cir|ps.s2~regout\ & (((\LDA_cir|x0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s2~regout\,
	datab => \LDA_cir|y1\(6),
	datac => \LDA_cir|steep~regout\,
	datad => \LDA_cir|x0\(6),
	combout => \LDA_cir|x1~6_combout\);

-- Location: LCCOMB_X19_Y26_N20
\LDA_cir|x1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~7_combout\ = (\LDA_cir|x1~4_combout\ & (((\drawline_controller|Line_ending_point\(6) & \LDA_cir|ps.s0~regout\)))) # (!\LDA_cir|x1~4_combout\ & ((\LDA_cir|x1~6_combout\) # ((\drawline_controller|Line_ending_point\(6) & 
-- \LDA_cir|ps.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1~4_combout\,
	datab => \LDA_cir|x1~6_combout\,
	datac => \drawline_controller|Line_ending_point\(6),
	datad => \LDA_cir|ps.s0~regout\,
	combout => \LDA_cir|x1~7_combout\);

-- Location: LCFF_X19_Y26_N21
\LDA_cir|x1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x1~7_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x1\(6));

-- Location: LCCOMB_X17_Y26_N8
\LDA_cir|y0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~11_combout\ = (\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|y0[3]~1_combout\)) # (!\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y0[3]~1_combout\ & (\drawline_controller|Line_starting_point\(14))) # (!\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|x0\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \drawline_controller|Line_starting_point\(14),
	datad => \LDA_cir|x0\(5),
	combout => \LDA_cir|y0~11_combout\);

-- Location: LCCOMB_X17_Y26_N26
\LDA_cir|y0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~12_combout\ = (\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y0~11_combout\ & ((\LDA_cir|y1\(5)))) # (!\LDA_cir|y0~11_combout\ & (\LDA_cir|x1\(5))))) # (!\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|y0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0~11_combout\,
	datac => \LDA_cir|x1\(5),
	datad => \LDA_cir|y1\(5),
	combout => \LDA_cir|y0~12_combout\);

-- Location: LCCOMB_X17_Y26_N22
\LDA_cir|y0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~13_combout\ = (\LDA_cir|y0~12_combout\ & ((\LDA_cir|swaped~regout\) # ((\LDA_cir|y0[3]~1_combout\) # (!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|swaped~regout\,
	datab => \LDA_cir|y0~12_combout\,
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|y0~13_combout\);

-- Location: LCFF_X17_Y26_N23
\LDA_cir|y0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y0~13_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y0\(5));

-- Location: LCCOMB_X18_Y27_N26
\LDA_cir|y1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~6_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & (\LDA_cir|x1\(5))) # (!\LDA_cir|steep~regout\ & ((\LDA_cir|y0\(5)))))) # (!\LDA_cir|ps.s2~regout\ & (((\LDA_cir|y0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(5),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|y0\(5),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|y1~6_combout\);

-- Location: LCCOMB_X19_Y27_N4
\LDA_cir|y1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~7_combout\ = (\LDA_cir|ps.s0~regout\ & ((\drawline_controller|Line_ending_point\(14)) # ((\LDA_cir|y1~6_combout\ & !\LDA_cir|x1~4_combout\)))) # (!\LDA_cir|ps.s0~regout\ & (\LDA_cir|y1~6_combout\ & ((!\LDA_cir|x1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s0~regout\,
	datab => \LDA_cir|y1~6_combout\,
	datac => \drawline_controller|Line_ending_point\(14),
	datad => \LDA_cir|x1~4_combout\,
	combout => \LDA_cir|y1~7_combout\);

-- Location: LCFF_X19_Y27_N5
\LDA_cir|y1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y1~7_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y1\(5));

-- Location: LCCOMB_X18_Y27_N24
\LDA_cir|x0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~26_combout\ = (\LDA_cir|x0~25_combout\ & ((\LDA_cir|x1\(5)) # ((!\LDA_cir|y0[3]~3_combout\)))) # (!\LDA_cir|x0~25_combout\ & (((\LDA_cir|y0[3]~3_combout\ & \LDA_cir|y1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0~25_combout\,
	datab => \LDA_cir|x1\(5),
	datac => \LDA_cir|y0[3]~3_combout\,
	datad => \LDA_cir|y1\(5),
	combout => \LDA_cir|x0~26_combout\);

-- Location: LCCOMB_X18_Y27_N18
\LDA_cir|x0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~27_combout\ = (\LDA_cir|x0~26_combout\ & (((\LDA_cir|y0[3]~1_combout\) # (\LDA_cir|swaped~regout\)) # (!\LDA_cir|y0[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \LDA_cir|x0~26_combout\,
	datad => \LDA_cir|swaped~regout\,
	combout => \LDA_cir|x0~27_combout\);

-- Location: LCFF_X18_Y27_N19
\LDA_cir|x0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x0~27_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x0\(5));

-- Location: LCCOMB_X18_Y27_N28
\LDA_cir|x1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~8_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & (\LDA_cir|y1\(5))) # (!\LDA_cir|steep~regout\ & ((\LDA_cir|x0\(5)))))) # (!\LDA_cir|ps.s2~regout\ & (((\LDA_cir|x0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(5),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|x0\(5),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|x1~8_combout\);

-- Location: LCCOMB_X19_Y27_N24
\LDA_cir|x1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~9_combout\ = (\drawline_controller|Line_ending_point\(5) & ((\LDA_cir|ps.s0~regout\) # ((\LDA_cir|x1~8_combout\ & !\LDA_cir|x1~4_combout\)))) # (!\drawline_controller|Line_ending_point\(5) & (\LDA_cir|x1~8_combout\ & 
-- ((!\LDA_cir|x1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Line_ending_point\(5),
	datab => \LDA_cir|x1~8_combout\,
	datac => \LDA_cir|ps.s0~regout\,
	datad => \LDA_cir|x1~4_combout\,
	combout => \LDA_cir|x1~9_combout\);

-- Location: LCFF_X19_Y27_N25
\LDA_cir|x1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x1~9_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x1\(5));

-- Location: LCCOMB_X19_Y27_N2
\LDA_cir|y1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~8_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & (\LDA_cir|x1\(4))) # (!\LDA_cir|steep~regout\ & ((\LDA_cir|y0\(4)))))) # (!\LDA_cir|ps.s2~regout\ & (((\LDA_cir|y0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(4),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|y0\(4),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|y1~8_combout\);

-- Location: LCCOMB_X19_Y27_N30
\LDA_cir|y1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~9_combout\ = (\LDA_cir|ps.s0~regout\ & ((\drawline_controller|Line_ending_point\(13)) # ((\LDA_cir|y1~8_combout\ & !\LDA_cir|x1~4_combout\)))) # (!\LDA_cir|ps.s0~regout\ & (\LDA_cir|y1~8_combout\ & ((!\LDA_cir|x1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s0~regout\,
	datab => \LDA_cir|y1~8_combout\,
	datac => \drawline_controller|Line_ending_point\(13),
	datad => \LDA_cir|x1~4_combout\,
	combout => \LDA_cir|y1~9_combout\);

-- Location: LCFF_X19_Y27_N31
\LDA_cir|y1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y1~9_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y1\(4));

-- Location: LCCOMB_X18_Y28_N26
\LDA_cir|x0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~22_combout\ = (\LDA_cir|y0[3]~3_combout\ & (((\LDA_cir|y0[3]~1_combout\) # (\LDA_cir|y1\(4))))) # (!\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|y0\(4) & (!\LDA_cir|y0[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0\(4),
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|y1\(4),
	combout => \LDA_cir|x0~22_combout\);

-- Location: LCCOMB_X17_Y25_N0
\LDA_cir|x0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~23_combout\ = (\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|x0~22_combout\ & (\LDA_cir|x1\(4))) # (!\LDA_cir|x0~22_combout\ & ((\drawline_controller|Line_starting_point\(4)))))) # (!\LDA_cir|y0[3]~1_combout\ & (((\LDA_cir|x0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(4),
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \drawline_controller|Line_starting_point\(4),
	datad => \LDA_cir|x0~22_combout\,
	combout => \LDA_cir|x0~23_combout\);

-- Location: LCCOMB_X17_Y26_N14
\LDA_cir|x0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~24_combout\ = (\LDA_cir|x0~23_combout\ & ((\LDA_cir|swaped~regout\) # ((\LDA_cir|y0[3]~1_combout\) # (!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|swaped~regout\,
	datab => \LDA_cir|x0~23_combout\,
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|x0~24_combout\);

-- Location: LCFF_X17_Y26_N15
\LDA_cir|x0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x0~24_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x0\(4));

-- Location: LCCOMB_X19_Y27_N14
\LDA_cir|x1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~10_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & (\LDA_cir|y1\(4))) # (!\LDA_cir|steep~regout\ & ((\LDA_cir|x0\(4)))))) # (!\LDA_cir|ps.s2~regout\ & (((\LDA_cir|x0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(4),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|x0\(4),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|x1~10_combout\);

-- Location: LCCOMB_X19_Y27_N26
\LDA_cir|x1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~11_combout\ = (\LDA_cir|ps.s0~regout\ & ((\drawline_controller|Line_ending_point\(4)) # ((\LDA_cir|x1~10_combout\ & !\LDA_cir|x1~4_combout\)))) # (!\LDA_cir|ps.s0~regout\ & (((\LDA_cir|x1~10_combout\ & !\LDA_cir|x1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s0~regout\,
	datab => \drawline_controller|Line_ending_point\(4),
	datac => \LDA_cir|x1~10_combout\,
	datad => \LDA_cir|x1~4_combout\,
	combout => \LDA_cir|x1~11_combout\);

-- Location: LCFF_X19_Y27_N27
\LDA_cir|x1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x1~11_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x1\(4));

-- Location: LCCOMB_X19_Y27_N12
\LDA_cir|x1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~13_combout\ = (\LDA_cir|x1~12_combout\ & (((\drawline_controller|Line_ending_point\(3) & \LDA_cir|ps.s0~regout\)) # (!\LDA_cir|x1~4_combout\))) # (!\LDA_cir|x1~12_combout\ & (\drawline_controller|Line_ending_point\(3) & 
-- (\LDA_cir|ps.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1~12_combout\,
	datab => \drawline_controller|Line_ending_point\(3),
	datac => \LDA_cir|ps.s0~regout\,
	datad => \LDA_cir|x1~4_combout\,
	combout => \LDA_cir|x1~13_combout\);

-- Location: LCFF_X19_Y27_N13
\LDA_cir|x1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x1~13_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x1\(3));

-- Location: LCCOMB_X18_Y25_N12
\LDA_cir|x0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~18_combout\ = (\LDA_cir|x0~17_combout\ & ((\LDA_cir|swaped~regout\) # ((\LDA_cir|y0[3]~1_combout\) # (!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0~17_combout\,
	datab => \LDA_cir|swaped~regout\,
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|x0~18_combout\);

-- Location: LCFF_X18_Y25_N13
\LDA_cir|x0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x0~18_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x0\(2));

-- Location: LCCOMB_X19_Y27_N16
\LDA_cir|x1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~17_combout\ = (\LDA_cir|x1~16_combout\ & (((\drawline_controller|Line_ending_point\(1) & \LDA_cir|ps.s0~regout\)) # (!\LDA_cir|x1~4_combout\))) # (!\LDA_cir|x1~16_combout\ & (\drawline_controller|Line_ending_point\(1) & 
-- (\LDA_cir|ps.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1~16_combout\,
	datab => \drawline_controller|Line_ending_point\(1),
	datac => \LDA_cir|ps.s0~regout\,
	datad => \LDA_cir|x1~4_combout\,
	combout => \LDA_cir|x1~17_combout\);

-- Location: LCFF_X19_Y27_N17
\LDA_cir|x1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x1~17_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x1\(1));

-- Location: LCCOMB_X18_Y28_N4
\LDA_cir|x0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~10_combout\ = (\LDA_cir|y0[3]~1_combout\ & (((\LDA_cir|y0[3]~3_combout\)))) # (!\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y1\(0)))) # (!\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|y0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(0),
	datab => \LDA_cir|y1\(0),
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|x0~10_combout\);

-- Location: LCCOMB_X18_Y25_N16
\LDA_cir|x0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~11_combout\ = (\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|x0~10_combout\ & ((\LDA_cir|x1\(0)))) # (!\LDA_cir|x0~10_combout\ & (\drawline_controller|Line_starting_point\(0))))) # (!\LDA_cir|y0[3]~1_combout\ & (\LDA_cir|x0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~1_combout\,
	datab => \LDA_cir|x0~10_combout\,
	datac => \drawline_controller|Line_starting_point\(0),
	datad => \LDA_cir|x1\(0),
	combout => \LDA_cir|x0~11_combout\);

-- Location: LCCOMB_X18_Y25_N8
\LDA_cir|x0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~12_combout\ = (\LDA_cir|x0~11_combout\ & ((\LDA_cir|y0[3]~1_combout\) # ((\LDA_cir|swaped~regout\) # (!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~1_combout\,
	datab => \LDA_cir|swaped~regout\,
	datac => \LDA_cir|x0~11_combout\,
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|x0~12_combout\);

-- Location: LCFF_X18_Y25_N9
\LDA_cir|x0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x0~12_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x0\(0));

-- Location: LCCOMB_X18_Y25_N28
\LDA_cir|y0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~23_combout\ = (\LDA_cir|y0[3]~1_combout\ & (((\drawline_controller|Line_starting_point\(9)) # (\LDA_cir|y0[3]~3_combout\)))) # (!\LDA_cir|y0[3]~1_combout\ & (\LDA_cir|x0\(0) & ((!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~1_combout\,
	datab => \LDA_cir|x0\(0),
	datac => \drawline_controller|Line_starting_point\(9),
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|y0~23_combout\);

-- Location: LCCOMB_X18_Y25_N2
\LDA_cir|y0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~24_combout\ = (\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y0~23_combout\ & (\LDA_cir|y1\(0))) # (!\LDA_cir|y0~23_combout\ & ((\LDA_cir|x1\(0)))))) # (!\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|y0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0~23_combout\,
	datac => \LDA_cir|y1\(0),
	datad => \LDA_cir|x1\(0),
	combout => \LDA_cir|y0~24_combout\);

-- Location: LCCOMB_X18_Y25_N0
\LDA_cir|y0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~25_combout\ = (\LDA_cir|y0~24_combout\ & (((\LDA_cir|y0[3]~1_combout\) # (\LDA_cir|swaped~regout\)) # (!\LDA_cir|y0[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0~24_combout\,
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|swaped~regout\,
	combout => \LDA_cir|y0~25_combout\);

-- Location: LCFF_X18_Y25_N1
\LDA_cir|y0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y0~25_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y0\(0));

-- Location: LCCOMB_X18_Y25_N22
\LDA_cir|y1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~16_combout\ = (\LDA_cir|steep~regout\ & ((\LDA_cir|ps.s2~regout\ & (\LDA_cir|x1\(0))) # (!\LDA_cir|ps.s2~regout\ & ((\LDA_cir|y0\(0)))))) # (!\LDA_cir|steep~regout\ & (((\LDA_cir|y0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|steep~regout\,
	datab => \LDA_cir|x1\(0),
	datac => \LDA_cir|ps.s2~regout\,
	datad => \LDA_cir|y0\(0),
	combout => \LDA_cir|y1~16_combout\);

-- Location: LCCOMB_X17_Y27_N18
\LDA_cir|y1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~17_combout\ = (\LDA_cir|x1~4_combout\ & (\LDA_cir|ps.s0~regout\ & (\drawline_controller|Line_ending_point\(9)))) # (!\LDA_cir|x1~4_combout\ & ((\LDA_cir|y1~16_combout\) # ((\LDA_cir|ps.s0~regout\ & 
-- \drawline_controller|Line_ending_point\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1~4_combout\,
	datab => \LDA_cir|ps.s0~regout\,
	datac => \drawline_controller|Line_ending_point\(9),
	datad => \LDA_cir|y1~16_combout\,
	combout => \LDA_cir|y1~17_combout\);

-- Location: LCFF_X17_Y27_N19
\LDA_cir|y1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y1~17_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y1\(0));

-- Location: LCCOMB_X18_Y25_N24
\LDA_cir|x1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~18_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & ((\LDA_cir|y1\(0)))) # (!\LDA_cir|steep~regout\ & (\LDA_cir|x0\(0))))) # (!\LDA_cir|ps.s2~regout\ & (\LDA_cir|x0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(0),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|y1\(0),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|x1~18_combout\);

-- Location: LCCOMB_X19_Y27_N10
\LDA_cir|x1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~19_combout\ = (\LDA_cir|ps.s0~regout\ & ((\drawline_controller|Line_ending_point\(0)) # ((\LDA_cir|x1~18_combout\ & !\LDA_cir|x1~4_combout\)))) # (!\LDA_cir|ps.s0~regout\ & (\LDA_cir|x1~18_combout\ & ((!\LDA_cir|x1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s0~regout\,
	datab => \LDA_cir|x1~18_combout\,
	datac => \drawline_controller|Line_ending_point\(0),
	datad => \LDA_cir|x1~4_combout\,
	combout => \LDA_cir|x1~19_combout\);

-- Location: LCFF_X19_Y27_N11
\LDA_cir|x1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x1~19_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x1\(0));

-- Location: LCCOMB_X18_Y26_N2
\LDA_cir|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan7~1_cout\ = CARRY((\LDA_cir|x0\(0) & !\LDA_cir|x1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(0),
	datab => \LDA_cir|x1\(0),
	datad => VCC,
	cout => \LDA_cir|LessThan7~1_cout\);

-- Location: LCCOMB_X18_Y26_N4
\LDA_cir|LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan7~3_cout\ = CARRY((\LDA_cir|x0\(1) & (\LDA_cir|x1\(1) & !\LDA_cir|LessThan7~1_cout\)) # (!\LDA_cir|x0\(1) & ((\LDA_cir|x1\(1)) # (!\LDA_cir|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(1),
	datab => \LDA_cir|x1\(1),
	datad => VCC,
	cin => \LDA_cir|LessThan7~1_cout\,
	cout => \LDA_cir|LessThan7~3_cout\);

-- Location: LCCOMB_X18_Y26_N6
\LDA_cir|LessThan7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan7~5_cout\ = CARRY((\LDA_cir|x1\(2) & (\LDA_cir|x0\(2) & !\LDA_cir|LessThan7~3_cout\)) # (!\LDA_cir|x1\(2) & ((\LDA_cir|x0\(2)) # (!\LDA_cir|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(2),
	datab => \LDA_cir|x0\(2),
	datad => VCC,
	cin => \LDA_cir|LessThan7~3_cout\,
	cout => \LDA_cir|LessThan7~5_cout\);

-- Location: LCCOMB_X18_Y26_N8
\LDA_cir|LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan7~7_cout\ = CARRY((\LDA_cir|x0\(3) & (\LDA_cir|x1\(3) & !\LDA_cir|LessThan7~5_cout\)) # (!\LDA_cir|x0\(3) & ((\LDA_cir|x1\(3)) # (!\LDA_cir|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(3),
	datab => \LDA_cir|x1\(3),
	datad => VCC,
	cin => \LDA_cir|LessThan7~5_cout\,
	cout => \LDA_cir|LessThan7~7_cout\);

-- Location: LCCOMB_X18_Y26_N10
\LDA_cir|LessThan7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan7~9_cout\ = CARRY((\LDA_cir|x0\(4) & ((!\LDA_cir|LessThan7~7_cout\) # (!\LDA_cir|x1\(4)))) # (!\LDA_cir|x0\(4) & (!\LDA_cir|x1\(4) & !\LDA_cir|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(4),
	datab => \LDA_cir|x1\(4),
	datad => VCC,
	cin => \LDA_cir|LessThan7~7_cout\,
	cout => \LDA_cir|LessThan7~9_cout\);

-- Location: LCCOMB_X18_Y26_N12
\LDA_cir|LessThan7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan7~11_cout\ = CARRY((\LDA_cir|x0\(5) & (\LDA_cir|x1\(5) & !\LDA_cir|LessThan7~9_cout\)) # (!\LDA_cir|x0\(5) & ((\LDA_cir|x1\(5)) # (!\LDA_cir|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(5),
	datab => \LDA_cir|x1\(5),
	datad => VCC,
	cin => \LDA_cir|LessThan7~9_cout\,
	cout => \LDA_cir|LessThan7~11_cout\);

-- Location: LCCOMB_X18_Y26_N14
\LDA_cir|LessThan7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan7~13_cout\ = CARRY((\LDA_cir|x0\(6) & ((!\LDA_cir|LessThan7~11_cout\) # (!\LDA_cir|x1\(6)))) # (!\LDA_cir|x0\(6) & (!\LDA_cir|x1\(6) & !\LDA_cir|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(6),
	datab => \LDA_cir|x1\(6),
	datad => VCC,
	cin => \LDA_cir|LessThan7~11_cout\,
	cout => \LDA_cir|LessThan7~13_cout\);

-- Location: LCCOMB_X18_Y26_N16
\LDA_cir|LessThan7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan7~15_cout\ = CARRY((\LDA_cir|x0\(7) & (\LDA_cir|x1\(7) & !\LDA_cir|LessThan7~13_cout\)) # (!\LDA_cir|x0\(7) & ((\LDA_cir|x1\(7)) # (!\LDA_cir|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(7),
	datab => \LDA_cir|x1\(7),
	datad => VCC,
	cin => \LDA_cir|LessThan7~13_cout\,
	cout => \LDA_cir|LessThan7~15_cout\);

-- Location: LCCOMB_X18_Y26_N18
\LDA_cir|LessThan7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan7~16_combout\ = (\LDA_cir|x1\(8) & (!\LDA_cir|LessThan7~15_cout\ & \LDA_cir|x0\(8))) # (!\LDA_cir|x1\(8) & ((\LDA_cir|x0\(8)) # (!\LDA_cir|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|x1\(8),
	datad => \LDA_cir|x0\(8),
	cin => \LDA_cir|LessThan7~15_cout\,
	combout => \LDA_cir|LessThan7~16_combout\);

-- Location: LCCOMB_X18_Y26_N26
\LDA_cir|y0[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0[3]~3_combout\ = (\LDA_cir|y0[3]~0_combout\ & ((\LDA_cir|y0[3]~2_combout\) # ((\LDA_cir|ps.s3~regout\ & \LDA_cir|LessThan7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~2_combout\,
	datab => \LDA_cir|ps.s3~regout\,
	datac => \LDA_cir|LessThan7~16_combout\,
	datad => \LDA_cir|y0[3]~0_combout\,
	combout => \LDA_cir|y0[3]~3_combout\);

-- Location: LCCOMB_X17_Y26_N0
\LDA_cir|y0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~9_combout\ = (\LDA_cir|y0~8_combout\ & ((\LDA_cir|y1\(4)) # ((!\LDA_cir|y0[3]~3_combout\)))) # (!\LDA_cir|y0~8_combout\ & (((\LDA_cir|y0[3]~3_combout\ & \LDA_cir|x1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0~8_combout\,
	datab => \LDA_cir|y1\(4),
	datac => \LDA_cir|y0[3]~3_combout\,
	datad => \LDA_cir|x1\(4),
	combout => \LDA_cir|y0~9_combout\);

-- Location: LCCOMB_X17_Y26_N12
\LDA_cir|y0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~10_combout\ = (\LDA_cir|y0~9_combout\ & ((\LDA_cir|swaped~regout\) # ((\LDA_cir|y0[3]~1_combout\) # (!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|swaped~regout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \LDA_cir|y0[3]~3_combout\,
	datad => \LDA_cir|y0~9_combout\,
	combout => \LDA_cir|y0~10_combout\);

-- Location: LCFF_X17_Y26_N13
\LDA_cir|y0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y0~10_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y0\(4));

-- Location: LCCOMB_X17_Y27_N24
\LDA_cir|y1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~15_combout\ = (\LDA_cir|y1~14_combout\ & (((\LDA_cir|ps.s0~regout\ & \drawline_controller|Line_ending_point\(10))) # (!\LDA_cir|x1~4_combout\))) # (!\LDA_cir|y1~14_combout\ & (\LDA_cir|ps.s0~regout\ & 
-- ((\drawline_controller|Line_ending_point\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1~14_combout\,
	datab => \LDA_cir|ps.s0~regout\,
	datac => \LDA_cir|x1~4_combout\,
	datad => \drawline_controller|Line_ending_point\(10),
	combout => \LDA_cir|y1~15_combout\);

-- Location: LCFF_X17_Y27_N25
\LDA_cir|y1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y1~15_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y1\(1));

-- Location: LCCOMB_X18_Y27_N22
\LDA_cir|y0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~21_combout\ = (\LDA_cir|y0~20_combout\ & (((\LDA_cir|y1\(1))) # (!\LDA_cir|y0[3]~1_combout\))) # (!\LDA_cir|y0~20_combout\ & (\LDA_cir|y0[3]~1_combout\ & (\drawline_controller|Line_starting_point\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0~20_combout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \drawline_controller|Line_starting_point\(10),
	datad => \LDA_cir|y1\(1),
	combout => \LDA_cir|y0~21_combout\);

-- Location: LCCOMB_X17_Y26_N28
\LDA_cir|y0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~22_combout\ = (\LDA_cir|y0~21_combout\ & (((\LDA_cir|y0[3]~1_combout\) # (\LDA_cir|swaped~regout\)) # (!\LDA_cir|y0[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \LDA_cir|swaped~regout\,
	datad => \LDA_cir|y0~21_combout\,
	combout => \LDA_cir|y0~22_combout\);

-- Location: LCFF_X17_Y26_N29
\LDA_cir|y0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y0~22_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y0\(1));

-- Location: LCCOMB_X16_Y27_N26
\LDA_cir|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~18_combout\ = (\LDA_cir|error\(8)) # (\LDA_cir|ps.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LDA_cir|error\(8),
	datad => \LDA_cir|ps.s5~regout\,
	combout => \LDA_cir|Add4~18_combout\);

-- Location: LCCOMB_X17_Y27_N4
\LDA_cir|y1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~2_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & ((\LDA_cir|x1\(7)))) # (!\LDA_cir|steep~regout\ & (\LDA_cir|y0\(7))))) # (!\LDA_cir|ps.s2~regout\ & (\LDA_cir|y0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(7),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|x1\(7),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|y1~2_combout\);

-- Location: LCCOMB_X17_Y27_N2
\LDA_cir|y1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~3_combout\ = (\LDA_cir|x1~4_combout\ & (((\drawline_controller|Line_ending_point\(16) & \LDA_cir|ps.s0~regout\)))) # (!\LDA_cir|x1~4_combout\ & ((\LDA_cir|y1~2_combout\) # ((\drawline_controller|Line_ending_point\(16) & 
-- \LDA_cir|ps.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1~4_combout\,
	datab => \LDA_cir|y1~2_combout\,
	datac => \drawline_controller|Line_ending_point\(16),
	datad => \LDA_cir|ps.s0~regout\,
	combout => \LDA_cir|y1~3_combout\);

-- Location: LCFF_X17_Y27_N3
\LDA_cir|y1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y1~3_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y1\(7));

-- Location: LCCOMB_X17_Y27_N14
\LDA_cir|y1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~11_combout\ = (\LDA_cir|y1~10_combout\ & (((\LDA_cir|ps.s0~regout\ & \drawline_controller|Line_ending_point\(12))) # (!\LDA_cir|x1~4_combout\))) # (!\LDA_cir|y1~10_combout\ & (\LDA_cir|ps.s0~regout\ & 
-- ((\drawline_controller|Line_ending_point\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1~10_combout\,
	datab => \LDA_cir|ps.s0~regout\,
	datac => \LDA_cir|x1~4_combout\,
	datad => \drawline_controller|Line_ending_point\(12),
	combout => \LDA_cir|y1~11_combout\);

-- Location: LCFF_X17_Y27_N15
\LDA_cir|y1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y1~11_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y1\(3));

-- Location: LCCOMB_X17_Y26_N4
\LDA_cir|y0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~15_combout\ = (\LDA_cir|y0~14_combout\ & (((\LDA_cir|y1\(3))) # (!\LDA_cir|y0[3]~1_combout\))) # (!\LDA_cir|y0~14_combout\ & (\LDA_cir|y0[3]~1_combout\ & (\drawline_controller|Line_starting_point\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0~14_combout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \drawline_controller|Line_starting_point\(12),
	datad => \LDA_cir|y1\(3),
	combout => \LDA_cir|y0~15_combout\);

-- Location: LCCOMB_X17_Y26_N24
\LDA_cir|y0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~16_combout\ = (\LDA_cir|y0~15_combout\ & ((\LDA_cir|swaped~regout\) # ((\LDA_cir|y0[3]~1_combout\) # (!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|swaped~regout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \LDA_cir|y0~15_combout\,
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|y0~16_combout\);

-- Location: LCFF_X17_Y26_N25
\LDA_cir|y0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y0~16_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y0\(3));

-- Location: LCCOMB_X17_Y26_N18
\LDA_cir|y0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~17_combout\ = (\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|y0[3]~1_combout\)) # (!\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y0[3]~1_combout\ & (\drawline_controller|Line_starting_point\(11))) # (!\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|x0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \drawline_controller|Line_starting_point\(11),
	datad => \LDA_cir|x0\(2),
	combout => \LDA_cir|y0~17_combout\);

-- Location: LCCOMB_X19_Y27_N8
\LDA_cir|x1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~14_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & (\LDA_cir|y1\(2))) # (!\LDA_cir|steep~regout\ & ((\LDA_cir|x0\(2)))))) # (!\LDA_cir|ps.s2~regout\ & (((\LDA_cir|x0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(2),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|x0\(2),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|x1~14_combout\);

-- Location: LCCOMB_X19_Y27_N6
\LDA_cir|x1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x1~15_combout\ = (\drawline_controller|Line_ending_point\(2) & ((\LDA_cir|ps.s0~regout\) # ((\LDA_cir|x1~14_combout\ & !\LDA_cir|x1~4_combout\)))) # (!\drawline_controller|Line_ending_point\(2) & (\LDA_cir|x1~14_combout\ & 
-- ((!\LDA_cir|x1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawline_controller|Line_ending_point\(2),
	datab => \LDA_cir|x1~14_combout\,
	datac => \LDA_cir|ps.s0~regout\,
	datad => \LDA_cir|x1~4_combout\,
	combout => \LDA_cir|x1~15_combout\);

-- Location: LCFF_X19_Y27_N7
\LDA_cir|x1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x1~15_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x1\(2));

-- Location: LCCOMB_X17_Y26_N30
\LDA_cir|y0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~18_combout\ = (\LDA_cir|y0~17_combout\ & ((\LDA_cir|y1\(2)) # ((!\LDA_cir|y0[3]~3_combout\)))) # (!\LDA_cir|y0~17_combout\ & (((\LDA_cir|x1\(2) & \LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(2),
	datab => \LDA_cir|y0~17_combout\,
	datac => \LDA_cir|x1\(2),
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|y0~18_combout\);

-- Location: LCCOMB_X17_Y26_N2
\LDA_cir|y0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~19_combout\ = (\LDA_cir|y0~18_combout\ & ((\LDA_cir|swaped~regout\) # ((\LDA_cir|y0[3]~1_combout\) # (!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|swaped~regout\,
	datab => \LDA_cir|y0~18_combout\,
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|y0~19_combout\);

-- Location: LCFF_X17_Y26_N3
\LDA_cir|y0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y0~19_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y0\(2));

-- Location: LCCOMB_X19_Y27_N28
\LDA_cir|y1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~12_combout\ = (\LDA_cir|ps.s2~regout\ & ((\LDA_cir|steep~regout\ & (\LDA_cir|x1\(2))) # (!\LDA_cir|steep~regout\ & ((\LDA_cir|y0\(2)))))) # (!\LDA_cir|ps.s2~regout\ & (((\LDA_cir|y0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(2),
	datab => \LDA_cir|ps.s2~regout\,
	datac => \LDA_cir|y0\(2),
	datad => \LDA_cir|steep~regout\,
	combout => \LDA_cir|y1~12_combout\);

-- Location: LCCOMB_X19_Y27_N0
\LDA_cir|y1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y1~13_combout\ = (\LDA_cir|ps.s0~regout\ & ((\drawline_controller|Line_ending_point\(11)) # ((\LDA_cir|y1~12_combout\ & !\LDA_cir|x1~4_combout\)))) # (!\LDA_cir|ps.s0~regout\ & (\LDA_cir|y1~12_combout\ & ((!\LDA_cir|x1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s0~regout\,
	datab => \LDA_cir|y1~12_combout\,
	datac => \drawline_controller|Line_ending_point\(11),
	datad => \LDA_cir|x1~4_combout\,
	combout => \LDA_cir|y1~13_combout\);

-- Location: LCFF_X19_Y27_N1
\LDA_cir|y1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y1~13_combout\,
	ena => \LDA_cir|y1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y1\(2));

-- Location: LCCOMB_X18_Y28_N22
\LDA_cir|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add8~16_combout\ = \LDA_cir|Add8~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \LDA_cir|Add8~15\,
	combout => \LDA_cir|Add8~16_combout\);

-- Location: LCCOMB_X19_Y28_N12
\LDA_cir|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~6_combout\ = (\LDA_cir|y0\(3) & ((\LDA_cir|y1\(3) & (!\LDA_cir|Add7~5\)) # (!\LDA_cir|y1\(3) & ((\LDA_cir|Add7~5\) # (GND))))) # (!\LDA_cir|y0\(3) & ((\LDA_cir|y1\(3) & (\LDA_cir|Add7~5\ & VCC)) # (!\LDA_cir|y1\(3) & (!\LDA_cir|Add7~5\))))
-- \LDA_cir|Add7~7\ = CARRY((\LDA_cir|y0\(3) & ((!\LDA_cir|Add7~5\) # (!\LDA_cir|y1\(3)))) # (!\LDA_cir|y0\(3) & (!\LDA_cir|y1\(3) & !\LDA_cir|Add7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(3),
	datab => \LDA_cir|y1\(3),
	datad => VCC,
	cin => \LDA_cir|Add7~5\,
	combout => \LDA_cir|Add7~6_combout\,
	cout => \LDA_cir|Add7~7\);

-- Location: LCCOMB_X19_Y28_N16
\LDA_cir|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~10_combout\ = (\LDA_cir|y0\(5) & ((\LDA_cir|y1\(5) & (!\LDA_cir|Add7~9\)) # (!\LDA_cir|y1\(5) & ((\LDA_cir|Add7~9\) # (GND))))) # (!\LDA_cir|y0\(5) & ((\LDA_cir|y1\(5) & (\LDA_cir|Add7~9\ & VCC)) # (!\LDA_cir|y1\(5) & (!\LDA_cir|Add7~9\))))
-- \LDA_cir|Add7~11\ = CARRY((\LDA_cir|y0\(5) & ((!\LDA_cir|Add7~9\) # (!\LDA_cir|y1\(5)))) # (!\LDA_cir|y0\(5) & (!\LDA_cir|y1\(5) & !\LDA_cir|Add7~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(5),
	datab => \LDA_cir|y1\(5),
	datad => VCC,
	cin => \LDA_cir|Add7~9\,
	combout => \LDA_cir|Add7~10_combout\,
	cout => \LDA_cir|Add7~11\);

-- Location: LCCOMB_X19_Y28_N22
\LDA_cir|Add7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add7~16_combout\ = \LDA_cir|Add7~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \LDA_cir|Add7~15\,
	combout => \LDA_cir|Add7~16_combout\);

-- Location: LCCOMB_X19_Y28_N0
\LDA_cir|deltay~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltay~8_combout\ = (\LDA_cir|ps.s4~regout\ & ((\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~16_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan4~14_combout\,
	datab => \LDA_cir|Add8~16_combout\,
	datac => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|Add7~16_combout\,
	combout => \LDA_cir|deltay~8_combout\);

-- Location: LCCOMB_X16_Y27_N24
\LDA_cir|deltax[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltax[2]~0_combout\ = (\LDA_cir|ps.s4~regout\) # (\LDA_cir|ps.s12~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|ps.s12~regout\,
	combout => \LDA_cir|deltax[2]~0_combout\);

-- Location: LCFF_X19_Y28_N1
\LDA_cir|deltay[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltay~8_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltay\(8));

-- Location: LCCOMB_X16_Y29_N30
\LDA_cir|Add4~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~19_combout\ = (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|ps.s8~regout\ & ((\LDA_cir|deltay\(8)))) # (!\LDA_cir|ps.s8~regout\ & (!\LDA_cir|deltax\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|deltax\(8),
	datab => \LDA_cir|ps.s8~regout\,
	datac => \LDA_cir|deltay\(8),
	datad => \LDA_cir|ps.s5~regout\,
	combout => \LDA_cir|Add4~19_combout\);

-- Location: LCCOMB_X18_Y25_N30
\LDA_cir|y0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y0~28_combout\ = (\LDA_cir|y0~27_combout\ & ((\LDA_cir|swaped~regout\) # ((\LDA_cir|y0[3]~1_combout\) # (!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0~27_combout\,
	datab => \LDA_cir|swaped~regout\,
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|y0~28_combout\);

-- Location: LCFF_X18_Y25_N31
\LDA_cir|y0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y0~28_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y0\(7));

-- Location: LCCOMB_X17_Y28_N16
\LDA_cir|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan4~1_cout\ = CARRY((!\LDA_cir|y1\(0) & \LDA_cir|y0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(0),
	datab => \LDA_cir|y0\(0),
	datad => VCC,
	cout => \LDA_cir|LessThan4~1_cout\);

-- Location: LCCOMB_X17_Y28_N18
\LDA_cir|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan4~3_cout\ = CARRY((\LDA_cir|y1\(1) & ((!\LDA_cir|LessThan4~1_cout\) # (!\LDA_cir|y0\(1)))) # (!\LDA_cir|y1\(1) & (!\LDA_cir|y0\(1) & !\LDA_cir|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(1),
	datab => \LDA_cir|y0\(1),
	datad => VCC,
	cin => \LDA_cir|LessThan4~1_cout\,
	cout => \LDA_cir|LessThan4~3_cout\);

-- Location: LCCOMB_X17_Y28_N20
\LDA_cir|LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan4~5_cout\ = CARRY((\LDA_cir|y0\(2) & ((!\LDA_cir|LessThan4~3_cout\) # (!\LDA_cir|y1\(2)))) # (!\LDA_cir|y0\(2) & (!\LDA_cir|y1\(2) & !\LDA_cir|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(2),
	datab => \LDA_cir|y1\(2),
	datad => VCC,
	cin => \LDA_cir|LessThan4~3_cout\,
	cout => \LDA_cir|LessThan4~5_cout\);

-- Location: LCCOMB_X17_Y28_N22
\LDA_cir|LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan4~7_cout\ = CARRY((\LDA_cir|y1\(3) & ((!\LDA_cir|LessThan4~5_cout\) # (!\LDA_cir|y0\(3)))) # (!\LDA_cir|y1\(3) & (!\LDA_cir|y0\(3) & !\LDA_cir|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(3),
	datab => \LDA_cir|y0\(3),
	datad => VCC,
	cin => \LDA_cir|LessThan4~5_cout\,
	cout => \LDA_cir|LessThan4~7_cout\);

-- Location: LCCOMB_X17_Y28_N24
\LDA_cir|LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan4~9_cout\ = CARRY((\LDA_cir|y0\(4) & ((!\LDA_cir|LessThan4~7_cout\) # (!\LDA_cir|y1\(4)))) # (!\LDA_cir|y0\(4) & (!\LDA_cir|y1\(4) & !\LDA_cir|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(4),
	datab => \LDA_cir|y1\(4),
	datad => VCC,
	cin => \LDA_cir|LessThan4~7_cout\,
	cout => \LDA_cir|LessThan4~9_cout\);

-- Location: LCCOMB_X17_Y28_N26
\LDA_cir|LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan4~11_cout\ = CARRY((\LDA_cir|y1\(5) & ((!\LDA_cir|LessThan4~9_cout\) # (!\LDA_cir|y0\(5)))) # (!\LDA_cir|y1\(5) & (!\LDA_cir|y0\(5) & !\LDA_cir|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(5),
	datab => \LDA_cir|y0\(5),
	datad => VCC,
	cin => \LDA_cir|LessThan4~9_cout\,
	cout => \LDA_cir|LessThan4~11_cout\);

-- Location: LCCOMB_X17_Y28_N28
\LDA_cir|LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan4~13_cout\ = CARRY((\LDA_cir|y1\(6) & (\LDA_cir|y0\(6) & !\LDA_cir|LessThan4~11_cout\)) # (!\LDA_cir|y1\(6) & ((\LDA_cir|y0\(6)) # (!\LDA_cir|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(6),
	datab => \LDA_cir|y0\(6),
	datad => VCC,
	cin => \LDA_cir|LessThan4~11_cout\,
	cout => \LDA_cir|LessThan4~13_cout\);

-- Location: LCCOMB_X17_Y28_N30
\LDA_cir|LessThan4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan4~14_combout\ = (\LDA_cir|y1\(7) & (\LDA_cir|LessThan4~13_cout\ & \LDA_cir|y0\(7))) # (!\LDA_cir|y1\(7) & ((\LDA_cir|LessThan4~13_cout\) # (\LDA_cir|y0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|y1\(7),
	datad => \LDA_cir|y0\(7),
	cin => \LDA_cir|LessThan4~13_cout\,
	combout => \LDA_cir|LessThan4~14_combout\);

-- Location: LCCOMB_X18_Y28_N24
\LDA_cir|deltay~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltay~5_combout\ = (\LDA_cir|ps.s4~regout\ & ((\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~10_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add8~10_combout\,
	datab => \LDA_cir|Add7~10_combout\,
	datac => \LDA_cir|LessThan4~14_combout\,
	datad => \LDA_cir|ps.s4~regout\,
	combout => \LDA_cir|deltay~5_combout\);

-- Location: LCFF_X18_Y28_N25
\LDA_cir|deltay[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltay~5_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltay\(5));

-- Location: LCCOMB_X17_Y29_N2
\LDA_cir|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~12_combout\ = (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|ps.s8~regout\ & ((\LDA_cir|deltay\(5)))) # (!\LDA_cir|ps.s8~regout\ & (!\LDA_cir|deltax\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|deltax\(5),
	datab => \LDA_cir|ps.s8~regout\,
	datac => \LDA_cir|ps.s5~regout\,
	datad => \LDA_cir|deltay\(5),
	combout => \LDA_cir|Add4~12_combout\);

-- Location: LCCOMB_X17_Y29_N8
\LDA_cir|deltax~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltax~5_combout\ = (\LDA_cir|Add6~8_combout\ & \LDA_cir|ps.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add6~8_combout\,
	datac => \LDA_cir|ps.s4~regout\,
	combout => \LDA_cir|deltax~5_combout\);

-- Location: LCFF_X17_Y29_N9
\LDA_cir|deltax[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltax~5_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltax\(4));

-- Location: LCCOMB_X17_Y29_N20
\LDA_cir|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~10_combout\ = (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|ps.s8~regout\ & (\LDA_cir|deltay\(4))) # (!\LDA_cir|ps.s8~regout\ & ((!\LDA_cir|deltax\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|deltay\(4),
	datab => \LDA_cir|deltax\(4),
	datac => \LDA_cir|ps.s5~regout\,
	datad => \LDA_cir|ps.s8~regout\,
	combout => \LDA_cir|Add4~10_combout\);

-- Location: LCCOMB_X19_Y28_N26
\LDA_cir|deltay~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltay~3_combout\ = (\LDA_cir|ps.s4~regout\ & ((\LDA_cir|LessThan4~14_combout\ & (\LDA_cir|Add8~6_combout\)) # (!\LDA_cir|LessThan4~14_combout\ & ((\LDA_cir|Add7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add8~6_combout\,
	datab => \LDA_cir|LessThan4~14_combout\,
	datac => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|Add7~6_combout\,
	combout => \LDA_cir|deltay~3_combout\);

-- Location: LCFF_X19_Y28_N27
\LDA_cir|deltay[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltay~3_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltay\(3));

-- Location: LCCOMB_X17_Y29_N30
\LDA_cir|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~8_combout\ = (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|ps.s8~regout\ & ((\LDA_cir|deltay\(3)))) # (!\LDA_cir|ps.s8~regout\ & (!\LDA_cir|deltax\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|deltax\(3),
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|deltay\(3),
	datad => \LDA_cir|ps.s8~regout\,
	combout => \LDA_cir|Add4~8_combout\);

-- Location: LCCOMB_X18_Y29_N16
\LDA_cir|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add6~2_combout\ = (\LDA_cir|x0\(1) & ((\LDA_cir|x1\(1) & (!\LDA_cir|Add6~1\)) # (!\LDA_cir|x1\(1) & ((\LDA_cir|Add6~1\) # (GND))))) # (!\LDA_cir|x0\(1) & ((\LDA_cir|x1\(1) & (\LDA_cir|Add6~1\ & VCC)) # (!\LDA_cir|x1\(1) & (!\LDA_cir|Add6~1\))))
-- \LDA_cir|Add6~3\ = CARRY((\LDA_cir|x0\(1) & ((!\LDA_cir|Add6~1\) # (!\LDA_cir|x1\(1)))) # (!\LDA_cir|x0\(1) & (!\LDA_cir|x1\(1) & !\LDA_cir|Add6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(1),
	datab => \LDA_cir|x1\(1),
	datad => VCC,
	cin => \LDA_cir|Add6~1\,
	combout => \LDA_cir|Add6~2_combout\,
	cout => \LDA_cir|Add6~3\);

-- Location: LCCOMB_X18_Y29_N6
\LDA_cir|deltax~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltax~2_combout\ = (\LDA_cir|Add6~2_combout\ & \LDA_cir|ps.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LDA_cir|Add6~2_combout\,
	datad => \LDA_cir|ps.s4~regout\,
	combout => \LDA_cir|deltax~2_combout\);

-- Location: LCFF_X18_Y29_N7
\LDA_cir|deltax[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltax~2_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltax\(1));

-- Location: LCCOMB_X17_Y29_N0
\LDA_cir|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~4_combout\ = (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|ps.s8~regout\ & (\LDA_cir|deltay\(1))) # (!\LDA_cir|ps.s8~regout\ & ((!\LDA_cir|deltax\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|deltay\(1),
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|ps.s8~regout\,
	datad => \LDA_cir|deltax\(1),
	combout => \LDA_cir|Add4~4_combout\);

-- Location: LCCOMB_X17_Y29_N18
\LDA_cir|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~1_combout\ = (\LDA_cir|error\(0)) # (\LDA_cir|ps.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|error\(0),
	datac => \LDA_cir|ps.s5~regout\,
	combout => \LDA_cir|Add4~1_combout\);

-- Location: LCCOMB_X16_Y29_N10
\LDA_cir|error[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[0]~10_cout\ = CARRY((!\LDA_cir|ps.s5~regout\ & !\LDA_cir|ps.s8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s5~regout\,
	datab => \LDA_cir|ps.s8~regout\,
	datad => VCC,
	cout => \LDA_cir|error[0]~10_cout\);

-- Location: LCCOMB_X16_Y29_N12
\LDA_cir|error[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[0]~11_combout\ = (\LDA_cir|Add4~3_combout\ & ((\LDA_cir|Add4~1_combout\ & (\LDA_cir|error[0]~10_cout\ & VCC)) # (!\LDA_cir|Add4~1_combout\ & (!\LDA_cir|error[0]~10_cout\)))) # (!\LDA_cir|Add4~3_combout\ & ((\LDA_cir|Add4~1_combout\ & 
-- (!\LDA_cir|error[0]~10_cout\)) # (!\LDA_cir|Add4~1_combout\ & ((\LDA_cir|error[0]~10_cout\) # (GND)))))
-- \LDA_cir|error[0]~12\ = CARRY((\LDA_cir|Add4~3_combout\ & (!\LDA_cir|Add4~1_combout\ & !\LDA_cir|error[0]~10_cout\)) # (!\LDA_cir|Add4~3_combout\ & ((!\LDA_cir|error[0]~10_cout\) # (!\LDA_cir|Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add4~3_combout\,
	datab => \LDA_cir|Add4~1_combout\,
	datad => VCC,
	cin => \LDA_cir|error[0]~10_cout\,
	combout => \LDA_cir|error[0]~11_combout\,
	cout => \LDA_cir|error[0]~12\);

-- Location: LCCOMB_X16_Y29_N14
\LDA_cir|error[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[1]~15_combout\ = ((\LDA_cir|Add4~5_combout\ $ (\LDA_cir|Add4~4_combout\ $ (!\LDA_cir|error[0]~12\)))) # (GND)
-- \LDA_cir|error[1]~16\ = CARRY((\LDA_cir|Add4~5_combout\ & ((\LDA_cir|Add4~4_combout\) # (!\LDA_cir|error[0]~12\))) # (!\LDA_cir|Add4~5_combout\ & (\LDA_cir|Add4~4_combout\ & !\LDA_cir|error[0]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add4~5_combout\,
	datab => \LDA_cir|Add4~4_combout\,
	datad => VCC,
	cin => \LDA_cir|error[0]~12\,
	combout => \LDA_cir|error[1]~15_combout\,
	cout => \LDA_cir|error[1]~16\);

-- Location: LCCOMB_X16_Y29_N16
\LDA_cir|error[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[2]~17_combout\ = (\LDA_cir|Add4~6_combout\ & ((\LDA_cir|Add4~7_combout\ & (\LDA_cir|error[1]~16\ & VCC)) # (!\LDA_cir|Add4~7_combout\ & (!\LDA_cir|error[1]~16\)))) # (!\LDA_cir|Add4~6_combout\ & ((\LDA_cir|Add4~7_combout\ & 
-- (!\LDA_cir|error[1]~16\)) # (!\LDA_cir|Add4~7_combout\ & ((\LDA_cir|error[1]~16\) # (GND)))))
-- \LDA_cir|error[2]~18\ = CARRY((\LDA_cir|Add4~6_combout\ & (!\LDA_cir|Add4~7_combout\ & !\LDA_cir|error[1]~16\)) # (!\LDA_cir|Add4~6_combout\ & ((!\LDA_cir|error[1]~16\) # (!\LDA_cir|Add4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add4~6_combout\,
	datab => \LDA_cir|Add4~7_combout\,
	datad => VCC,
	cin => \LDA_cir|error[1]~16\,
	combout => \LDA_cir|error[2]~17_combout\,
	cout => \LDA_cir|error[2]~18\);

-- Location: LCCOMB_X17_Y27_N20
\LDA_cir|error[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[4]~13_combout\ = (!\LDA_cir|always4~0_combout\ & (!\LDA_cir|ps.s8~regout\ & !\LDA_cir|ps.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|always4~0_combout\,
	datac => \LDA_cir|ps.s8~regout\,
	datad => \LDA_cir|ps.s5~regout\,
	combout => \LDA_cir|error[4]~13_combout\);

-- Location: LCCOMB_X17_Y27_N6
\LDA_cir|error[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[4]~14_combout\ = (\LDA_cir|always4~0_combout\) # ((\LDA_cir|ps.s12~regout\) # ((\LDA_cir|ps.s8~regout\) # (\LDA_cir|ps.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|always4~0_combout\,
	datab => \LDA_cir|ps.s12~regout\,
	datac => \LDA_cir|ps.s8~regout\,
	datad => \LDA_cir|ps.s5~regout\,
	combout => \LDA_cir|error[4]~14_combout\);

-- Location: LCFF_X16_Y29_N17
\LDA_cir|error[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|error[2]~17_combout\,
	sclr => \LDA_cir|error[4]~13_combout\,
	ena => \LDA_cir|error[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|error\(2));

-- Location: LCCOMB_X17_Y29_N12
\LDA_cir|Add4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~7_combout\ = (\LDA_cir|ps.s5~regout\ & (!\LDA_cir|deltax\(3))) # (!\LDA_cir|ps.s5~regout\ & ((\LDA_cir|error\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|deltax\(3),
	datac => \LDA_cir|ps.s5~regout\,
	datad => \LDA_cir|error\(2),
	combout => \LDA_cir|Add4~7_combout\);

-- Location: LCCOMB_X16_Y29_N18
\LDA_cir|error[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[3]~19_combout\ = ((\LDA_cir|Add4~9_combout\ $ (\LDA_cir|Add4~8_combout\ $ (!\LDA_cir|error[2]~18\)))) # (GND)
-- \LDA_cir|error[3]~20\ = CARRY((\LDA_cir|Add4~9_combout\ & ((\LDA_cir|Add4~8_combout\) # (!\LDA_cir|error[2]~18\))) # (!\LDA_cir|Add4~9_combout\ & (\LDA_cir|Add4~8_combout\ & !\LDA_cir|error[2]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add4~9_combout\,
	datab => \LDA_cir|Add4~8_combout\,
	datad => VCC,
	cin => \LDA_cir|error[2]~18\,
	combout => \LDA_cir|error[3]~19_combout\,
	cout => \LDA_cir|error[3]~20\);

-- Location: LCCOMB_X16_Y29_N24
\LDA_cir|error[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[6]~25_combout\ = (\LDA_cir|Add4~14_combout\ & ((\LDA_cir|Add4~15_combout\ & (\LDA_cir|error[5]~24\ & VCC)) # (!\LDA_cir|Add4~15_combout\ & (!\LDA_cir|error[5]~24\)))) # (!\LDA_cir|Add4~14_combout\ & ((\LDA_cir|Add4~15_combout\ & 
-- (!\LDA_cir|error[5]~24\)) # (!\LDA_cir|Add4~15_combout\ & ((\LDA_cir|error[5]~24\) # (GND)))))
-- \LDA_cir|error[6]~26\ = CARRY((\LDA_cir|Add4~14_combout\ & (!\LDA_cir|Add4~15_combout\ & !\LDA_cir|error[5]~24\)) # (!\LDA_cir|Add4~14_combout\ & ((!\LDA_cir|error[5]~24\) # (!\LDA_cir|Add4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add4~14_combout\,
	datab => \LDA_cir|Add4~15_combout\,
	datad => VCC,
	cin => \LDA_cir|error[5]~24\,
	combout => \LDA_cir|error[6]~25_combout\,
	cout => \LDA_cir|error[6]~26\);

-- Location: LCFF_X16_Y29_N25
\LDA_cir|error[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|error[6]~25_combout\,
	sclr => \LDA_cir|error[4]~13_combout\,
	ena => \LDA_cir|error[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|error\(6));

-- Location: LCCOMB_X18_Y28_N2
\LDA_cir|x0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~4_combout\ = (\LDA_cir|y0[3]~1_combout\ & (((\LDA_cir|y0[3]~3_combout\)))) # (!\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y1\(7)))) # (!\LDA_cir|y0[3]~3_combout\ & (\LDA_cir|y0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(7),
	datab => \LDA_cir|y1\(7),
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|y0[3]~3_combout\,
	combout => \LDA_cir|x0~4_combout\);

-- Location: LCCOMB_X18_Y25_N10
\LDA_cir|x0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~5_combout\ = (\LDA_cir|y0[3]~1_combout\ & ((\LDA_cir|x0~4_combout\ & ((\LDA_cir|x1\(7)))) # (!\LDA_cir|x0~4_combout\ & (\drawline_controller|Line_starting_point\(7))))) # (!\LDA_cir|y0[3]~1_combout\ & (\LDA_cir|x0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~1_combout\,
	datab => \LDA_cir|x0~4_combout\,
	datac => \drawline_controller|Line_starting_point\(7),
	datad => \LDA_cir|x1\(7),
	combout => \LDA_cir|x0~5_combout\);

-- Location: LCCOMB_X18_Y25_N26
\LDA_cir|x0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~6_combout\ = (\LDA_cir|x0~5_combout\ & (((\LDA_cir|swaped~regout\) # (\LDA_cir|y0[3]~1_combout\)) # (!\LDA_cir|y0[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|swaped~regout\,
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|x0~5_combout\,
	combout => \LDA_cir|x0~6_combout\);

-- Location: LCFF_X18_Y25_N27
\LDA_cir|x0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x0~6_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x0\(7));

-- Location: LCCOMB_X18_Y29_N28
\LDA_cir|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add6~14_combout\ = (\LDA_cir|x1\(7) & ((\LDA_cir|x0\(7) & (!\LDA_cir|Add6~13\)) # (!\LDA_cir|x0\(7) & (\LDA_cir|Add6~13\ & VCC)))) # (!\LDA_cir|x1\(7) & ((\LDA_cir|x0\(7) & ((\LDA_cir|Add6~13\) # (GND))) # (!\LDA_cir|x0\(7) & 
-- (!\LDA_cir|Add6~13\))))
-- \LDA_cir|Add6~15\ = CARRY((\LDA_cir|x1\(7) & (\LDA_cir|x0\(7) & !\LDA_cir|Add6~13\)) # (!\LDA_cir|x1\(7) & ((\LDA_cir|x0\(7)) # (!\LDA_cir|Add6~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x1\(7),
	datab => \LDA_cir|x0\(7),
	datad => VCC,
	cin => \LDA_cir|Add6~13\,
	combout => \LDA_cir|Add6~14_combout\,
	cout => \LDA_cir|Add6~15\);

-- Location: LCCOMB_X21_Y29_N18
\LDA_cir|deltax~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltax~8_combout\ = (\LDA_cir|ps.s4~regout\ & \LDA_cir|Add6~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|Add6~14_combout\,
	combout => \LDA_cir|deltax~8_combout\);

-- Location: LCFF_X21_Y29_N19
\LDA_cir|deltax[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltax~8_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltax\(7));

-- Location: LCCOMB_X16_Y29_N4
\LDA_cir|Add4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~15_combout\ = (\LDA_cir|ps.s5~regout\ & ((!\LDA_cir|deltax\(7)))) # (!\LDA_cir|ps.s5~regout\ & (\LDA_cir|error\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|error\(6),
	datad => \LDA_cir|deltax\(7),
	combout => \LDA_cir|Add4~15_combout\);

-- Location: LCCOMB_X16_Y29_N26
\LDA_cir|error[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[7]~27_combout\ = ((\LDA_cir|Add4~16_combout\ $ (\LDA_cir|Add4~17_combout\ $ (!\LDA_cir|error[6]~26\)))) # (GND)
-- \LDA_cir|error[7]~28\ = CARRY((\LDA_cir|Add4~16_combout\ & ((\LDA_cir|Add4~17_combout\) # (!\LDA_cir|error[6]~26\))) # (!\LDA_cir|Add4~16_combout\ & (\LDA_cir|Add4~17_combout\ & !\LDA_cir|error[6]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add4~16_combout\,
	datab => \LDA_cir|Add4~17_combout\,
	datad => VCC,
	cin => \LDA_cir|error[6]~26\,
	combout => \LDA_cir|error[7]~27_combout\,
	cout => \LDA_cir|error[7]~28\);

-- Location: LCFF_X16_Y29_N27
\LDA_cir|error[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|error[7]~27_combout\,
	sclr => \LDA_cir|error[4]~13_combout\,
	ena => \LDA_cir|error[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|error\(7));

-- Location: LCCOMB_X18_Y29_N30
\LDA_cir|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add6~16_combout\ = \LDA_cir|x1\(8) $ (\LDA_cir|Add6~15\ $ (\LDA_cir|x0\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|x1\(8),
	datad => \LDA_cir|x0\(8),
	cin => \LDA_cir|Add6~15\,
	combout => \LDA_cir|Add6~16_combout\);

-- Location: LCCOMB_X21_Y29_N20
\LDA_cir|deltax~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|deltax~9_combout\ = (\LDA_cir|ps.s4~regout\ & \LDA_cir|Add6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s4~regout\,
	datad => \LDA_cir|Add6~16_combout\,
	combout => \LDA_cir|deltax~9_combout\);

-- Location: LCFF_X21_Y29_N21
\LDA_cir|deltax[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|deltax~9_combout\,
	ena => \LDA_cir|deltax[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|deltax\(8));

-- Location: LCCOMB_X16_Y29_N0
\LDA_cir|Add4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add4~17_combout\ = (\LDA_cir|ps.s5~regout\ & ((!\LDA_cir|deltax\(8)))) # (!\LDA_cir|ps.s5~regout\ & (\LDA_cir|error\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s5~regout\,
	datab => \LDA_cir|error\(7),
	datac => \LDA_cir|deltax\(8),
	combout => \LDA_cir|Add4~17_combout\);

-- Location: LCCOMB_X16_Y29_N28
\LDA_cir|error[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|error[8]~29_combout\ = \LDA_cir|Add4~18_combout\ $ (\LDA_cir|error[7]~28\ $ (\LDA_cir|Add4~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|Add4~18_combout\,
	datad => \LDA_cir|Add4~19_combout\,
	cin => \LDA_cir|error[7]~28\,
	combout => \LDA_cir|error[8]~29_combout\);

-- Location: LCFF_X16_Y29_N29
\LDA_cir|error[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|error[8]~29_combout\,
	sclr => \LDA_cir|error[4]~13_combout\,
	ena => \LDA_cir|error[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|error\(8));

-- Location: LCFF_X16_Y29_N19
\LDA_cir|error[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|error[3]~19_combout\,
	sclr => \LDA_cir|error[4]~13_combout\,
	ena => \LDA_cir|error[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|error\(3));

-- Location: LCFF_X16_Y29_N15
\LDA_cir|error[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|error[1]~15_combout\,
	sclr => \LDA_cir|error[4]~13_combout\,
	ena => \LDA_cir|error[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|error\(1));

-- Location: LCFF_X16_Y29_N13
\LDA_cir|error[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|error[0]~11_combout\,
	sclr => \LDA_cir|error[4]~13_combout\,
	ena => \LDA_cir|error[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|error\(0));

-- Location: LCCOMB_X16_Y29_N8
\LDA_cir|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|LessThan5~0_combout\ = (\LDA_cir|error\(2)) # ((\LDA_cir|error\(3)) # ((\LDA_cir|error\(1)) # (\LDA_cir|error\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|error\(2),
	datab => \LDA_cir|error\(3),
	datac => \LDA_cir|error\(1),
	datad => \LDA_cir|error\(0),
	combout => \LDA_cir|LessThan5~0_combout\);

-- Location: LCCOMB_X16_Y27_N2
\LDA_cir|always4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|always4~0_combout\ = (!\LDA_cir|error\(8) & (\LDA_cir|ps.s9~regout\ & ((\LDA_cir|LessThan5~1_combout\) # (\LDA_cir|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|LessThan5~1_combout\,
	datab => \LDA_cir|error\(8),
	datac => \LDA_cir|ps.s9~regout\,
	datad => \LDA_cir|LessThan5~0_combout\,
	combout => \LDA_cir|always4~0_combout\);

-- Location: LCCOMB_X20_Y27_N26
\LDA_cir|y~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y~7_combout\ = (\LDA_cir|Add2~0_combout\ & ((\LDA_cir|always4~0_combout\) # ((\LDA_cir|y0\(0) & \LDA_cir|ps.s5~regout\)))) # (!\LDA_cir|Add2~0_combout\ & (\LDA_cir|y0\(0) & (\LDA_cir|ps.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add2~0_combout\,
	datab => \LDA_cir|y0\(0),
	datac => \LDA_cir|ps.s5~regout\,
	datad => \LDA_cir|always4~0_combout\,
	combout => \LDA_cir|y~7_combout\);

-- Location: LCCOMB_X17_Y27_N30
\LDA_cir|y[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y[5]~1_combout\ = (\LDA_cir|always4~0_combout\) # ((\LDA_cir|ps.s12~regout\) # (\LDA_cir|ps.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|always4~0_combout\,
	datab => \LDA_cir|ps.s12~regout\,
	datad => \LDA_cir|ps.s5~regout\,
	combout => \LDA_cir|y[5]~1_combout\);

-- Location: LCFF_X20_Y27_N27
\LDA_cir|y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y~7_combout\,
	ena => \LDA_cir|y[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y\(0));

-- Location: LCCOMB_X20_Y27_N12
\LDA_cir|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add2~2_combout\ = (\LDA_cir|ystep\(1) & ((\LDA_cir|y\(1) & (\LDA_cir|Add2~1\ & VCC)) # (!\LDA_cir|y\(1) & (!\LDA_cir|Add2~1\)))) # (!\LDA_cir|ystep\(1) & ((\LDA_cir|y\(1) & (!\LDA_cir|Add2~1\)) # (!\LDA_cir|y\(1) & ((\LDA_cir|Add2~1\) # (GND)))))
-- \LDA_cir|Add2~3\ = CARRY((\LDA_cir|ystep\(1) & (!\LDA_cir|y\(1) & !\LDA_cir|Add2~1\)) # (!\LDA_cir|ystep\(1) & ((!\LDA_cir|Add2~1\) # (!\LDA_cir|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ystep\(1),
	datab => \LDA_cir|y\(1),
	datad => VCC,
	cin => \LDA_cir|Add2~1\,
	combout => \LDA_cir|Add2~2_combout\,
	cout => \LDA_cir|Add2~3\);

-- Location: LCCOMB_X16_Y27_N0
\LDA_cir|y~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y~6_combout\ = (\LDA_cir|ps.s5~regout\ & ((\LDA_cir|y0\(1)) # ((\LDA_cir|always4~0_combout\ & \LDA_cir|Add2~2_combout\)))) # (!\LDA_cir|ps.s5~regout\ & (((\LDA_cir|always4~0_combout\ & \LDA_cir|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s5~regout\,
	datab => \LDA_cir|y0\(1),
	datac => \LDA_cir|always4~0_combout\,
	datad => \LDA_cir|Add2~2_combout\,
	combout => \LDA_cir|y~6_combout\);

-- Location: LCFF_X16_Y27_N1
\LDA_cir|y[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y~6_combout\,
	ena => \LDA_cir|y[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y\(1));

-- Location: LCCOMB_X20_Y27_N14
\LDA_cir|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add2~4_combout\ = ((\LDA_cir|ystep\(1) $ (\LDA_cir|y\(2) $ (!\LDA_cir|Add2~3\)))) # (GND)
-- \LDA_cir|Add2~5\ = CARRY((\LDA_cir|ystep\(1) & ((\LDA_cir|y\(2)) # (!\LDA_cir|Add2~3\))) # (!\LDA_cir|ystep\(1) & (\LDA_cir|y\(2) & !\LDA_cir|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ystep\(1),
	datab => \LDA_cir|y\(2),
	datad => VCC,
	cin => \LDA_cir|Add2~3\,
	combout => \LDA_cir|Add2~4_combout\,
	cout => \LDA_cir|Add2~5\);

-- Location: LCCOMB_X20_Y27_N8
\LDA_cir|y~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y~5_combout\ = (\LDA_cir|y0\(2) & ((\LDA_cir|ps.s5~regout\) # ((\LDA_cir|Add2~4_combout\ & \LDA_cir|always4~0_combout\)))) # (!\LDA_cir|y0\(2) & (((\LDA_cir|Add2~4_combout\ & \LDA_cir|always4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(2),
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|Add2~4_combout\,
	datad => \LDA_cir|always4~0_combout\,
	combout => \LDA_cir|y~5_combout\);

-- Location: LCFF_X20_Y27_N9
\LDA_cir|y[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y~5_combout\,
	ena => \LDA_cir|y[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y\(2));

-- Location: LCCOMB_X20_Y27_N16
\LDA_cir|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add2~6_combout\ = (\LDA_cir|ystep\(1) & ((\LDA_cir|y\(3) & (\LDA_cir|Add2~5\ & VCC)) # (!\LDA_cir|y\(3) & (!\LDA_cir|Add2~5\)))) # (!\LDA_cir|ystep\(1) & ((\LDA_cir|y\(3) & (!\LDA_cir|Add2~5\)) # (!\LDA_cir|y\(3) & ((\LDA_cir|Add2~5\) # (GND)))))
-- \LDA_cir|Add2~7\ = CARRY((\LDA_cir|ystep\(1) & (!\LDA_cir|y\(3) & !\LDA_cir|Add2~5\)) # (!\LDA_cir|ystep\(1) & ((!\LDA_cir|Add2~5\) # (!\LDA_cir|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ystep\(1),
	datab => \LDA_cir|y\(3),
	datad => VCC,
	cin => \LDA_cir|Add2~5\,
	combout => \LDA_cir|Add2~6_combout\,
	cout => \LDA_cir|Add2~7\);

-- Location: LCCOMB_X20_Y27_N30
\LDA_cir|y~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y~4_combout\ = (\LDA_cir|y0\(3) & ((\LDA_cir|ps.s5~regout\) # ((\LDA_cir|Add2~6_combout\ & \LDA_cir|always4~0_combout\)))) # (!\LDA_cir|y0\(3) & (((\LDA_cir|Add2~6_combout\ & \LDA_cir|always4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(3),
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|Add2~6_combout\,
	datad => \LDA_cir|always4~0_combout\,
	combout => \LDA_cir|y~4_combout\);

-- Location: LCFF_X20_Y27_N31
\LDA_cir|y[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y~4_combout\,
	ena => \LDA_cir|y[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y\(3));

-- Location: LCCOMB_X20_Y27_N18
\LDA_cir|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add2~8_combout\ = ((\LDA_cir|ystep\(1) $ (\LDA_cir|y\(4) $ (!\LDA_cir|Add2~7\)))) # (GND)
-- \LDA_cir|Add2~9\ = CARRY((\LDA_cir|ystep\(1) & ((\LDA_cir|y\(4)) # (!\LDA_cir|Add2~7\))) # (!\LDA_cir|ystep\(1) & (\LDA_cir|y\(4) & !\LDA_cir|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ystep\(1),
	datab => \LDA_cir|y\(4),
	datad => VCC,
	cin => \LDA_cir|Add2~7\,
	combout => \LDA_cir|Add2~8_combout\,
	cout => \LDA_cir|Add2~9\);

-- Location: LCCOMB_X20_Y27_N2
\LDA_cir|y~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y~2_combout\ = (\LDA_cir|always4~0_combout\ & ((\LDA_cir|Add2~8_combout\) # ((\LDA_cir|ps.s5~regout\ & \LDA_cir|y0\(4))))) # (!\LDA_cir|always4~0_combout\ & (\LDA_cir|ps.s5~regout\ & (\LDA_cir|y0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|always4~0_combout\,
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|y0\(4),
	datad => \LDA_cir|Add2~8_combout\,
	combout => \LDA_cir|y~2_combout\);

-- Location: LCFF_X20_Y27_N3
\LDA_cir|y[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y~2_combout\,
	ena => \LDA_cir|y[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y\(4));

-- Location: LCCOMB_X20_Y27_N20
\LDA_cir|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add2~10_combout\ = (\LDA_cir|ystep\(1) & ((\LDA_cir|y\(5) & (\LDA_cir|Add2~9\ & VCC)) # (!\LDA_cir|y\(5) & (!\LDA_cir|Add2~9\)))) # (!\LDA_cir|ystep\(1) & ((\LDA_cir|y\(5) & (!\LDA_cir|Add2~9\)) # (!\LDA_cir|y\(5) & ((\LDA_cir|Add2~9\) # 
-- (GND)))))
-- \LDA_cir|Add2~11\ = CARRY((\LDA_cir|ystep\(1) & (!\LDA_cir|y\(5) & !\LDA_cir|Add2~9\)) # (!\LDA_cir|ystep\(1) & ((!\LDA_cir|Add2~9\) # (!\LDA_cir|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ystep\(1),
	datab => \LDA_cir|y\(5),
	datad => VCC,
	cin => \LDA_cir|Add2~9\,
	combout => \LDA_cir|Add2~10_combout\,
	cout => \LDA_cir|Add2~11\);

-- Location: LCCOMB_X20_Y27_N28
\LDA_cir|y~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y~3_combout\ = (\LDA_cir|y0\(5) & ((\LDA_cir|ps.s5~regout\) # ((\LDA_cir|Add2~10_combout\ & \LDA_cir|always4~0_combout\)))) # (!\LDA_cir|y0\(5) & (((\LDA_cir|Add2~10_combout\ & \LDA_cir|always4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(5),
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|Add2~10_combout\,
	datad => \LDA_cir|always4~0_combout\,
	combout => \LDA_cir|y~3_combout\);

-- Location: LCFF_X20_Y27_N29
\LDA_cir|y[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y~3_combout\,
	ena => \LDA_cir|y[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y\(5));

-- Location: LCCOMB_X20_Y27_N0
\LDA_cir|y~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|y~0_combout\ = (\LDA_cir|y0\(6) & ((\LDA_cir|ps.s5~regout\) # ((\LDA_cir|Add2~12_combout\ & \LDA_cir|always4~0_combout\)))) # (!\LDA_cir|y0\(6) & (((\LDA_cir|Add2~12_combout\ & \LDA_cir|always4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0\(6),
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|Add2~12_combout\,
	datad => \LDA_cir|always4~0_combout\,
	combout => \LDA_cir|y~0_combout\);

-- Location: LCFF_X20_Y27_N1
\LDA_cir|y[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|y~0_combout\,
	ena => \LDA_cir|y[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|y\(6));

-- Location: LCFF_X21_Y27_N19
\LDA_cir|plot_y[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|y\(6),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_y\(6));

-- Location: LCFF_X21_Y27_N17
\LDA_cir|plot_y[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|y\(5),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_y\(5));

-- Location: LCFF_X21_Y27_N15
\LDA_cir|plot_y[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|y\(4),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_y\(4));

-- Location: LCCOMB_X21_Y27_N8
\LDA_cir|plot_y[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|plot_y[1]~feeder_combout\ = \LDA_cir|y\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LDA_cir|y\(1),
	combout => \LDA_cir|plot_y[1]~feeder_combout\);

-- Location: LCFF_X21_Y27_N9
\LDA_cir|plot_y[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|plot_y[1]~feeder_combout\,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_y\(1));

-- Location: LCCOMB_X21_Y27_N2
\LDA_cir|plot_y[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|plot_y[0]~feeder_combout\ = \LDA_cir|y\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LDA_cir|y\(0),
	combout => \LDA_cir|plot_y[0]~feeder_combout\);

-- Location: LCFF_X21_Y27_N3
\LDA_cir|plot_y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|plot_y[0]~feeder_combout\,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_y\(0));

-- Location: LCCOMB_X21_Y27_N10
\LDA_cir|VGA|user_input_translator|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|Add0~0_combout\ = (\LDA_cir|plot_y\(2) & (\LDA_cir|plot_y\(0) $ (VCC))) # (!\LDA_cir|plot_y\(2) & (\LDA_cir|plot_y\(0) & VCC))
-- \LDA_cir|VGA|user_input_translator|Add0~1\ = CARRY((\LDA_cir|plot_y\(2) & \LDA_cir|plot_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|plot_y\(2),
	datab => \LDA_cir|plot_y\(0),
	datad => VCC,
	combout => \LDA_cir|VGA|user_input_translator|Add0~0_combout\,
	cout => \LDA_cir|VGA|user_input_translator|Add0~1\);

-- Location: LCCOMB_X21_Y27_N16
\LDA_cir|VGA|user_input_translator|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|Add0~6_combout\ = (\LDA_cir|plot_y\(3) & ((\LDA_cir|plot_y\(5) & (\LDA_cir|VGA|user_input_translator|Add0~5\ & VCC)) # (!\LDA_cir|plot_y\(5) & (!\LDA_cir|VGA|user_input_translator|Add0~5\)))) # (!\LDA_cir|plot_y\(3) & 
-- ((\LDA_cir|plot_y\(5) & (!\LDA_cir|VGA|user_input_translator|Add0~5\)) # (!\LDA_cir|plot_y\(5) & ((\LDA_cir|VGA|user_input_translator|Add0~5\) # (GND)))))
-- \LDA_cir|VGA|user_input_translator|Add0~7\ = CARRY((\LDA_cir|plot_y\(3) & (!\LDA_cir|plot_y\(5) & !\LDA_cir|VGA|user_input_translator|Add0~5\)) # (!\LDA_cir|plot_y\(3) & ((!\LDA_cir|VGA|user_input_translator|Add0~5\) # (!\LDA_cir|plot_y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|plot_y\(3),
	datab => \LDA_cir|plot_y\(5),
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|Add0~5\,
	combout => \LDA_cir|VGA|user_input_translator|Add0~6_combout\,
	cout => \LDA_cir|VGA|user_input_translator|Add0~7\);

-- Location: LCCOMB_X21_Y27_N18
\LDA_cir|VGA|user_input_translator|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|Add0~8_combout\ = ((\LDA_cir|plot_y\(6) $ (\LDA_cir|plot_y\(4) $ (!\LDA_cir|VGA|user_input_translator|Add0~7\)))) # (GND)
-- \LDA_cir|VGA|user_input_translator|Add0~9\ = CARRY((\LDA_cir|plot_y\(6) & ((\LDA_cir|plot_y\(4)) # (!\LDA_cir|VGA|user_input_translator|Add0~7\))) # (!\LDA_cir|plot_y\(6) & (\LDA_cir|plot_y\(4) & !\LDA_cir|VGA|user_input_translator|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|plot_y\(6),
	datab => \LDA_cir|plot_y\(4),
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|Add0~7\,
	combout => \LDA_cir|VGA|user_input_translator|Add0~8_combout\,
	cout => \LDA_cir|VGA|user_input_translator|Add0~9\);

-- Location: LCCOMB_X21_Y27_N22
\LDA_cir|VGA|user_input_translator|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|Add0~12_combout\ = (\LDA_cir|plot_y\(6) & (\LDA_cir|VGA|user_input_translator|Add0~11\ $ (GND))) # (!\LDA_cir|plot_y\(6) & (!\LDA_cir|VGA|user_input_translator|Add0~11\ & VCC))
-- \LDA_cir|VGA|user_input_translator|Add0~13\ = CARRY((\LDA_cir|plot_y\(6) & !\LDA_cir|VGA|user_input_translator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|plot_y\(6),
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|Add0~11\,
	combout => \LDA_cir|VGA|user_input_translator|Add0~12_combout\,
	cout => \LDA_cir|VGA|user_input_translator|Add0~13\);

-- Location: LCCOMB_X21_Y27_N24
\LDA_cir|VGA|user_input_translator|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|Add0~14_combout\ = (\LDA_cir|plot_y\(7) & (!\LDA_cir|VGA|user_input_translator|Add0~13\)) # (!\LDA_cir|plot_y\(7) & ((\LDA_cir|VGA|user_input_translator|Add0~13\) # (GND)))
-- \LDA_cir|VGA|user_input_translator|Add0~15\ = CARRY((!\LDA_cir|VGA|user_input_translator|Add0~13\) # (!\LDA_cir|plot_y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|plot_y\(7),
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|Add0~13\,
	combout => \LDA_cir|VGA|user_input_translator|Add0~14_combout\,
	cout => \LDA_cir|VGA|user_input_translator|Add0~15\);

-- Location: LCCOMB_X21_Y27_N26
\LDA_cir|VGA|user_input_translator|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|Add0~16_combout\ = !\LDA_cir|VGA|user_input_translator|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \LDA_cir|VGA|user_input_translator|Add0~15\,
	combout => \LDA_cir|VGA|user_input_translator|Add0~16_combout\);

-- Location: LCCOMB_X19_Y25_N0
\LDA_cir|x~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x~2_combout\ = (\LDA_cir|Add1~14_combout\ & ((\LDA_cir|ps.s10~regout\) # ((\LDA_cir|ps.s5~regout\ & \LDA_cir|x0\(7))))) # (!\LDA_cir|Add1~14_combout\ & (((\LDA_cir|ps.s5~regout\ & \LDA_cir|x0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|Add1~14_combout\,
	datab => \LDA_cir|ps.s10~regout\,
	datac => \LDA_cir|ps.s5~regout\,
	datad => \LDA_cir|x0\(7),
	combout => \LDA_cir|x~2_combout\);

-- Location: LCCOMB_X16_Y27_N22
\LDA_cir|x[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x[3]~1_combout\ = (\LDA_cir|ps.s12~regout\) # ((\LDA_cir|ps.s10~regout\) # (\LDA_cir|ps.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|ps.s12~regout\,
	datac => \LDA_cir|ps.s10~regout\,
	datad => \LDA_cir|ps.s5~regout\,
	combout => \LDA_cir|x[3]~1_combout\);

-- Location: LCFF_X19_Y25_N1
\LDA_cir|x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x~2_combout\,
	ena => \LDA_cir|x[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x\(7));

-- Location: LCFF_X22_Y27_N5
\LDA_cir|plot_x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|x\(7),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_x\(7));

-- Location: LCCOMB_X18_Y27_N8
\LDA_cir|x0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~13_combout\ = (\LDA_cir|y0[3]~3_combout\ & (((\LDA_cir|y0[3]~1_combout\)))) # (!\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y0[3]~1_combout\ & ((\drawline_controller|Line_starting_point\(1)))) # (!\LDA_cir|y0[3]~1_combout\ & (\LDA_cir|y0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0\(1),
	datac => \drawline_controller|Line_starting_point\(1),
	datad => \LDA_cir|y0[3]~1_combout\,
	combout => \LDA_cir|x0~13_combout\);

-- Location: LCCOMB_X18_Y27_N12
\LDA_cir|x0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~14_combout\ = (\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|x0~13_combout\ & ((\LDA_cir|x1\(1)))) # (!\LDA_cir|x0~13_combout\ & (\LDA_cir|y1\(1))))) # (!\LDA_cir|y0[3]~3_combout\ & (((\LDA_cir|x0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y1\(1),
	datac => \LDA_cir|x1\(1),
	datad => \LDA_cir|x0~13_combout\,
	combout => \LDA_cir|x0~14_combout\);

-- Location: LCCOMB_X18_Y25_N18
\LDA_cir|x0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~15_combout\ = (\LDA_cir|x0~14_combout\ & (((\LDA_cir|swaped~regout\) # (\LDA_cir|y0[3]~1_combout\)) # (!\LDA_cir|y0[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|swaped~regout\,
	datac => \LDA_cir|y0[3]~1_combout\,
	datad => \LDA_cir|x0~14_combout\,
	combout => \LDA_cir|x0~15_combout\);

-- Location: LCFF_X18_Y25_N19
\LDA_cir|x0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x0~15_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x0\(1));

-- Location: LCCOMB_X19_Y25_N6
\LDA_cir|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add1~0_combout\ = \LDA_cir|x\(0) $ (VCC)
-- \LDA_cir|Add1~1\ = CARRY(\LDA_cir|x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|x\(0),
	datad => VCC,
	combout => \LDA_cir|Add1~0_combout\,
	cout => \LDA_cir|Add1~1\);

-- Location: LCCOMB_X19_Y25_N26
\LDA_cir|x~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x~4_combout\ = (\LDA_cir|x0\(0) & ((\LDA_cir|ps.s5~regout\) # ((\LDA_cir|ps.s10~regout\ & \LDA_cir|Add1~0_combout\)))) # (!\LDA_cir|x0\(0) & (((\LDA_cir|ps.s10~regout\ & \LDA_cir|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(0),
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|ps.s10~regout\,
	datad => \LDA_cir|Add1~0_combout\,
	combout => \LDA_cir|x~4_combout\);

-- Location: LCFF_X19_Y25_N27
\LDA_cir|x[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x~4_combout\,
	ena => \LDA_cir|x[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x\(0));

-- Location: LCCOMB_X19_Y25_N8
\LDA_cir|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add1~2_combout\ = (\LDA_cir|x\(1) & (!\LDA_cir|Add1~1\)) # (!\LDA_cir|x\(1) & ((\LDA_cir|Add1~1\) # (GND)))
-- \LDA_cir|Add1~3\ = CARRY((!\LDA_cir|Add1~1\) # (!\LDA_cir|x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|x\(1),
	datad => VCC,
	cin => \LDA_cir|Add1~1\,
	combout => \LDA_cir|Add1~2_combout\,
	cout => \LDA_cir|Add1~3\);

-- Location: LCCOMB_X20_Y25_N12
\LDA_cir|x~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x~5_combout\ = (\LDA_cir|ps.s10~regout\ & ((\LDA_cir|Add1~2_combout\) # ((\LDA_cir|ps.s5~regout\ & \LDA_cir|x0\(1))))) # (!\LDA_cir|ps.s10~regout\ & (\LDA_cir|ps.s5~regout\ & (\LDA_cir|x0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s10~regout\,
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|x0\(1),
	datad => \LDA_cir|Add1~2_combout\,
	combout => \LDA_cir|x~5_combout\);

-- Location: LCFF_X20_Y25_N13
\LDA_cir|x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x~5_combout\,
	ena => \LDA_cir|x[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x\(1));

-- Location: LCCOMB_X19_Y25_N10
\LDA_cir|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add1~4_combout\ = (\LDA_cir|x\(2) & (\LDA_cir|Add1~3\ $ (GND))) # (!\LDA_cir|x\(2) & (!\LDA_cir|Add1~3\ & VCC))
-- \LDA_cir|Add1~5\ = CARRY((\LDA_cir|x\(2) & !\LDA_cir|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|x\(2),
	datad => VCC,
	cin => \LDA_cir|Add1~3\,
	combout => \LDA_cir|Add1~4_combout\,
	cout => \LDA_cir|Add1~5\);

-- Location: LCCOMB_X19_Y25_N4
\LDA_cir|x~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x~6_combout\ = (\LDA_cir|x0\(2) & ((\LDA_cir|ps.s5~regout\) # ((\LDA_cir|ps.s10~regout\ & \LDA_cir|Add1~4_combout\)))) # (!\LDA_cir|x0\(2) & (((\LDA_cir|ps.s10~regout\ & \LDA_cir|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(2),
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|ps.s10~regout\,
	datad => \LDA_cir|Add1~4_combout\,
	combout => \LDA_cir|x~6_combout\);

-- Location: LCFF_X19_Y25_N5
\LDA_cir|x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x~6_combout\,
	ena => \LDA_cir|x[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x\(2));

-- Location: LCCOMB_X19_Y25_N12
\LDA_cir|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add1~6_combout\ = (\LDA_cir|x\(3) & (!\LDA_cir|Add1~5\)) # (!\LDA_cir|x\(3) & ((\LDA_cir|Add1~5\) # (GND)))
-- \LDA_cir|Add1~7\ = CARRY((!\LDA_cir|Add1~5\) # (!\LDA_cir|x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x\(3),
	datad => VCC,
	cin => \LDA_cir|Add1~5\,
	combout => \LDA_cir|Add1~6_combout\,
	cout => \LDA_cir|Add1~7\);

-- Location: LCCOMB_X19_Y25_N14
\LDA_cir|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add1~8_combout\ = (\LDA_cir|x\(4) & (\LDA_cir|Add1~7\ $ (GND))) # (!\LDA_cir|x\(4) & (!\LDA_cir|Add1~7\ & VCC))
-- \LDA_cir|Add1~9\ = CARRY((\LDA_cir|x\(4) & !\LDA_cir|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|x\(4),
	datad => VCC,
	cin => \LDA_cir|Add1~7\,
	combout => \LDA_cir|Add1~8_combout\,
	cout => \LDA_cir|Add1~9\);

-- Location: LCCOMB_X19_Y25_N30
\LDA_cir|x~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x~8_combout\ = (\LDA_cir|x0\(4) & ((\LDA_cir|ps.s5~regout\) # ((\LDA_cir|ps.s10~regout\ & \LDA_cir|Add1~8_combout\)))) # (!\LDA_cir|x0\(4) & (\LDA_cir|ps.s10~regout\ & (\LDA_cir|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|x0\(4),
	datab => \LDA_cir|ps.s10~regout\,
	datac => \LDA_cir|Add1~8_combout\,
	datad => \LDA_cir|ps.s5~regout\,
	combout => \LDA_cir|x~8_combout\);

-- Location: LCFF_X19_Y25_N31
\LDA_cir|x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x~8_combout\,
	ena => \LDA_cir|x[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x\(4));

-- Location: LCCOMB_X19_Y25_N16
\LDA_cir|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add1~10_combout\ = (\LDA_cir|x\(5) & (!\LDA_cir|Add1~9\)) # (!\LDA_cir|x\(5) & ((\LDA_cir|Add1~9\) # (GND)))
-- \LDA_cir|Add1~11\ = CARRY((!\LDA_cir|Add1~9\) # (!\LDA_cir|x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|x\(5),
	datad => VCC,
	cin => \LDA_cir|Add1~9\,
	combout => \LDA_cir|Add1~10_combout\,
	cout => \LDA_cir|Add1~11\);

-- Location: LCCOMB_X20_Y25_N24
\LDA_cir|x~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x~9_combout\ = (\LDA_cir|ps.s10~regout\ & ((\LDA_cir|Add1~10_combout\) # ((\LDA_cir|x0\(5) & \LDA_cir|ps.s5~regout\)))) # (!\LDA_cir|ps.s10~regout\ & (\LDA_cir|x0\(5) & (\LDA_cir|ps.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s10~regout\,
	datab => \LDA_cir|x0\(5),
	datac => \LDA_cir|ps.s5~regout\,
	datad => \LDA_cir|Add1~10_combout\,
	combout => \LDA_cir|x~9_combout\);

-- Location: LCFF_X20_Y25_N25
\LDA_cir|x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x~9_combout\,
	ena => \LDA_cir|x[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x\(5));

-- Location: LCCOMB_X19_Y25_N18
\LDA_cir|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add1~12_combout\ = (\LDA_cir|x\(6) & (\LDA_cir|Add1~11\ $ (GND))) # (!\LDA_cir|x\(6) & (!\LDA_cir|Add1~11\ & VCC))
-- \LDA_cir|Add1~13\ = CARRY((\LDA_cir|x\(6) & !\LDA_cir|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|x\(6),
	datad => VCC,
	cin => \LDA_cir|Add1~11\,
	combout => \LDA_cir|Add1~12_combout\,
	cout => \LDA_cir|Add1~13\);

-- Location: LCCOMB_X20_Y25_N18
\LDA_cir|x~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x~3_combout\ = (\LDA_cir|ps.s10~regout\ & ((\LDA_cir|Add1~12_combout\) # ((\LDA_cir|ps.s5~regout\ & \LDA_cir|x0\(6))))) # (!\LDA_cir|ps.s10~regout\ & (\LDA_cir|ps.s5~regout\ & (\LDA_cir|x0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s10~regout\,
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|x0\(6),
	datad => \LDA_cir|Add1~12_combout\,
	combout => \LDA_cir|x~3_combout\);

-- Location: LCFF_X20_Y25_N19
\LDA_cir|x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x~3_combout\,
	ena => \LDA_cir|x[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x\(6));

-- Location: LCFF_X22_Y27_N3
\LDA_cir|plot_x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|x\(6),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_x\(6));

-- Location: LCCOMB_X22_Y27_N2
\LDA_cir|VGA|user_input_translator|mem_address[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|mem_address[6]~0_combout\ = (\LDA_cir|plot_y\(0) & (\LDA_cir|plot_x\(6) $ (VCC))) # (!\LDA_cir|plot_y\(0) & (\LDA_cir|plot_x\(6) & VCC))
-- \LDA_cir|VGA|user_input_translator|mem_address[6]~1\ = CARRY((\LDA_cir|plot_y\(0) & \LDA_cir|plot_x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|plot_y\(0),
	datab => \LDA_cir|plot_x\(6),
	datad => VCC,
	combout => \LDA_cir|VGA|user_input_translator|mem_address[6]~0_combout\,
	cout => \LDA_cir|VGA|user_input_translator|mem_address[6]~1\);

-- Location: LCCOMB_X22_Y27_N4
\LDA_cir|VGA|user_input_translator|mem_address[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|mem_address[7]~2_combout\ = (\LDA_cir|plot_y\(1) & ((\LDA_cir|plot_x\(7) & (\LDA_cir|VGA|user_input_translator|mem_address[6]~1\ & VCC)) # (!\LDA_cir|plot_x\(7) & 
-- (!\LDA_cir|VGA|user_input_translator|mem_address[6]~1\)))) # (!\LDA_cir|plot_y\(1) & ((\LDA_cir|plot_x\(7) & (!\LDA_cir|VGA|user_input_translator|mem_address[6]~1\)) # (!\LDA_cir|plot_x\(7) & ((\LDA_cir|VGA|user_input_translator|mem_address[6]~1\) # 
-- (GND)))))
-- \LDA_cir|VGA|user_input_translator|mem_address[7]~3\ = CARRY((\LDA_cir|plot_y\(1) & (!\LDA_cir|plot_x\(7) & !\LDA_cir|VGA|user_input_translator|mem_address[6]~1\)) # (!\LDA_cir|plot_y\(1) & ((!\LDA_cir|VGA|user_input_translator|mem_address[6]~1\) # 
-- (!\LDA_cir|plot_x\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|plot_y\(1),
	datab => \LDA_cir|plot_x\(7),
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|mem_address[6]~1\,
	combout => \LDA_cir|VGA|user_input_translator|mem_address[7]~2_combout\,
	cout => \LDA_cir|VGA|user_input_translator|mem_address[7]~3\);

-- Location: LCCOMB_X22_Y27_N6
\LDA_cir|VGA|user_input_translator|mem_address[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|mem_address[8]~4_combout\ = ((\LDA_cir|plot_x\(8) $ (\LDA_cir|VGA|user_input_translator|Add0~0_combout\ $ (!\LDA_cir|VGA|user_input_translator|mem_address[7]~3\)))) # (GND)
-- \LDA_cir|VGA|user_input_translator|mem_address[8]~5\ = CARRY((\LDA_cir|plot_x\(8) & ((\LDA_cir|VGA|user_input_translator|Add0~0_combout\) # (!\LDA_cir|VGA|user_input_translator|mem_address[7]~3\))) # (!\LDA_cir|plot_x\(8) & 
-- (\LDA_cir|VGA|user_input_translator|Add0~0_combout\ & !\LDA_cir|VGA|user_input_translator|mem_address[7]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|plot_x\(8),
	datab => \LDA_cir|VGA|user_input_translator|Add0~0_combout\,
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|mem_address[7]~3\,
	combout => \LDA_cir|VGA|user_input_translator|mem_address[8]~4_combout\,
	cout => \LDA_cir|VGA|user_input_translator|mem_address[8]~5\);

-- Location: LCCOMB_X22_Y27_N8
\LDA_cir|VGA|user_input_translator|mem_address[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|mem_address[9]~6_combout\ = (\LDA_cir|VGA|user_input_translator|Add0~2_combout\ & (!\LDA_cir|VGA|user_input_translator|mem_address[8]~5\)) # (!\LDA_cir|VGA|user_input_translator|Add0~2_combout\ & 
-- ((\LDA_cir|VGA|user_input_translator|mem_address[8]~5\) # (GND)))
-- \LDA_cir|VGA|user_input_translator|mem_address[9]~7\ = CARRY((!\LDA_cir|VGA|user_input_translator|mem_address[8]~5\) # (!\LDA_cir|VGA|user_input_translator|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|VGA|user_input_translator|Add0~2_combout\,
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|mem_address[8]~5\,
	combout => \LDA_cir|VGA|user_input_translator|mem_address[9]~6_combout\,
	cout => \LDA_cir|VGA|user_input_translator|mem_address[9]~7\);

-- Location: LCCOMB_X22_Y27_N10
\LDA_cir|VGA|user_input_translator|mem_address[10]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|mem_address[10]~8_combout\ = (\LDA_cir|VGA|user_input_translator|Add0~4_combout\ & (\LDA_cir|VGA|user_input_translator|mem_address[9]~7\ $ (GND))) # (!\LDA_cir|VGA|user_input_translator|Add0~4_combout\ & 
-- (!\LDA_cir|VGA|user_input_translator|mem_address[9]~7\ & VCC))
-- \LDA_cir|VGA|user_input_translator|mem_address[10]~9\ = CARRY((\LDA_cir|VGA|user_input_translator|Add0~4_combout\ & !\LDA_cir|VGA|user_input_translator|mem_address[9]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|VGA|user_input_translator|Add0~4_combout\,
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|mem_address[9]~7\,
	combout => \LDA_cir|VGA|user_input_translator|mem_address[10]~8_combout\,
	cout => \LDA_cir|VGA|user_input_translator|mem_address[10]~9\);

-- Location: LCCOMB_X22_Y27_N12
\LDA_cir|VGA|user_input_translator|mem_address[11]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|mem_address[11]~10_combout\ = (\LDA_cir|VGA|user_input_translator|Add0~6_combout\ & (!\LDA_cir|VGA|user_input_translator|mem_address[10]~9\)) # (!\LDA_cir|VGA|user_input_translator|Add0~6_combout\ & 
-- ((\LDA_cir|VGA|user_input_translator|mem_address[10]~9\) # (GND)))
-- \LDA_cir|VGA|user_input_translator|mem_address[11]~11\ = CARRY((!\LDA_cir|VGA|user_input_translator|mem_address[10]~9\) # (!\LDA_cir|VGA|user_input_translator|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|VGA|user_input_translator|Add0~6_combout\,
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|mem_address[10]~9\,
	combout => \LDA_cir|VGA|user_input_translator|mem_address[11]~10_combout\,
	cout => \LDA_cir|VGA|user_input_translator|mem_address[11]~11\);

-- Location: LCCOMB_X22_Y27_N14
\LDA_cir|VGA|user_input_translator|mem_address[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|mem_address[12]~12_combout\ = (\LDA_cir|VGA|user_input_translator|Add0~8_combout\ & (\LDA_cir|VGA|user_input_translator|mem_address[11]~11\ $ (GND))) # (!\LDA_cir|VGA|user_input_translator|Add0~8_combout\ & 
-- (!\LDA_cir|VGA|user_input_translator|mem_address[11]~11\ & VCC))
-- \LDA_cir|VGA|user_input_translator|mem_address[12]~13\ = CARRY((\LDA_cir|VGA|user_input_translator|Add0~8_combout\ & !\LDA_cir|VGA|user_input_translator|mem_address[11]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|VGA|user_input_translator|Add0~8_combout\,
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|mem_address[11]~11\,
	combout => \LDA_cir|VGA|user_input_translator|mem_address[12]~12_combout\,
	cout => \LDA_cir|VGA|user_input_translator|mem_address[12]~13\);

-- Location: LCCOMB_X22_Y27_N16
\LDA_cir|VGA|user_input_translator|mem_address[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|mem_address[13]~14_combout\ = (\LDA_cir|VGA|user_input_translator|Add0~10_combout\ & (!\LDA_cir|VGA|user_input_translator|mem_address[12]~13\)) # (!\LDA_cir|VGA|user_input_translator|Add0~10_combout\ & 
-- ((\LDA_cir|VGA|user_input_translator|mem_address[12]~13\) # (GND)))
-- \LDA_cir|VGA|user_input_translator|mem_address[13]~15\ = CARRY((!\LDA_cir|VGA|user_input_translator|mem_address[12]~13\) # (!\LDA_cir|VGA|user_input_translator|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|VGA|user_input_translator|Add0~10_combout\,
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|mem_address[12]~13\,
	combout => \LDA_cir|VGA|user_input_translator|mem_address[13]~14_combout\,
	cout => \LDA_cir|VGA|user_input_translator|mem_address[13]~15\);

-- Location: LCCOMB_X22_Y27_N18
\LDA_cir|VGA|user_input_translator|mem_address[14]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|mem_address[14]~16_combout\ = (\LDA_cir|VGA|user_input_translator|Add0~12_combout\ & (\LDA_cir|VGA|user_input_translator|mem_address[13]~15\ $ (GND))) # (!\LDA_cir|VGA|user_input_translator|Add0~12_combout\ & 
-- (!\LDA_cir|VGA|user_input_translator|mem_address[13]~15\ & VCC))
-- \LDA_cir|VGA|user_input_translator|mem_address[14]~17\ = CARRY((\LDA_cir|VGA|user_input_translator|Add0~12_combout\ & !\LDA_cir|VGA|user_input_translator|mem_address[13]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|VGA|user_input_translator|Add0~12_combout\,
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|mem_address[13]~15\,
	combout => \LDA_cir|VGA|user_input_translator|mem_address[14]~16_combout\,
	cout => \LDA_cir|VGA|user_input_translator|mem_address[14]~17\);

-- Location: LCCOMB_X22_Y27_N20
\LDA_cir|VGA|user_input_translator|mem_address[15]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|mem_address[15]~18_combout\ = (\LDA_cir|VGA|user_input_translator|Add0~14_combout\ & (!\LDA_cir|VGA|user_input_translator|mem_address[14]~17\)) # (!\LDA_cir|VGA|user_input_translator|Add0~14_combout\ & 
-- ((\LDA_cir|VGA|user_input_translator|mem_address[14]~17\) # (GND)))
-- \LDA_cir|VGA|user_input_translator|mem_address[15]~19\ = CARRY((!\LDA_cir|VGA|user_input_translator|mem_address[14]~17\) # (!\LDA_cir|VGA|user_input_translator|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|VGA|user_input_translator|Add0~14_combout\,
	datad => VCC,
	cin => \LDA_cir|VGA|user_input_translator|mem_address[14]~17\,
	combout => \LDA_cir|VGA|user_input_translator|mem_address[15]~18_combout\,
	cout => \LDA_cir|VGA|user_input_translator|mem_address[15]~19\);

-- Location: LCCOMB_X22_Y27_N22
\LDA_cir|VGA|user_input_translator|mem_address[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|user_input_translator|mem_address[16]~20_combout\ = \LDA_cir|VGA|user_input_translator|mem_address[15]~19\ $ (!\LDA_cir|VGA|user_input_translator|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LDA_cir|VGA|user_input_translator|Add0~16_combout\,
	cin => \LDA_cir|VGA|user_input_translator|mem_address[15]~19\,
	combout => \LDA_cir|VGA|user_input_translator|mem_address[16]~20_combout\);

-- Location: LCCOMB_X22_Y27_N24
\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~0_combout\ = (!\LDA_cir|VGA|user_input_translator|mem_address[15]~18_combout\ & (!\LDA_cir|VGA|user_input_translator|mem_address[12]~12_combout\ & 
-- (!\LDA_cir|VGA|user_input_translator|mem_address[13]~14_combout\ & !\LDA_cir|VGA|user_input_translator|mem_address[14]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|VGA|user_input_translator|mem_address[15]~18_combout\,
	datab => \LDA_cir|VGA|user_input_translator|mem_address[12]~12_combout\,
	datac => \LDA_cir|VGA|user_input_translator|mem_address[13]~14_combout\,
	datad => \LDA_cir|VGA|user_input_translator|mem_address[14]~16_combout\,
	combout => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~0_combout\);

-- Location: LCCOMB_X19_Y25_N22
\LDA_cir|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|Add1~16_combout\ = \LDA_cir|Add1~15\ $ (!\LDA_cir|x\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LDA_cir|x\(8),
	cin => \LDA_cir|Add1~15\,
	combout => \LDA_cir|Add1~16_combout\);

-- Location: LCCOMB_X19_Y25_N28
\LDA_cir|x~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x~0_combout\ = (\LDA_cir|ps.s5~regout\ & ((\LDA_cir|x0\(8)) # ((\LDA_cir|Add1~16_combout\ & \LDA_cir|ps.s10~regout\)))) # (!\LDA_cir|ps.s5~regout\ & (\LDA_cir|Add1~16_combout\ & (\LDA_cir|ps.s10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s5~regout\,
	datab => \LDA_cir|Add1~16_combout\,
	datac => \LDA_cir|ps.s10~regout\,
	datad => \LDA_cir|x0\(8),
	combout => \LDA_cir|x~0_combout\);

-- Location: LCFF_X19_Y25_N29
\LDA_cir|x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x~0_combout\,
	ena => \LDA_cir|x[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x\(8));

-- Location: LCFF_X22_Y27_N7
\LDA_cir|plot_x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|x\(8),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_x\(8));

-- Location: LCCOMB_X23_Y27_N24
\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~1_combout\ = ((!\LDA_cir|plot_x\(7) & !\LDA_cir|plot_x\(6))) # (!\LDA_cir|plot_x\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDA_cir|plot_x\(8),
	datac => \LDA_cir|plot_x\(7),
	datad => \LDA_cir|plot_x\(6),
	combout => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~1_combout\);

-- Location: LCCOMB_X22_Y27_N0
\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~2_combout\ = (\LDA_cir|VGA|LessThan3~0_combout\ & (!\LDA_cir|VGA|user_input_translator|mem_address[16]~20_combout\ & 
-- (\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~0_combout\ & \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|VGA|LessThan3~0_combout\,
	datab => \LDA_cir|VGA|user_input_translator|mem_address[16]~20_combout\,
	datac => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~0_combout\,
	datad => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~1_combout\,
	combout => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~2_combout\);

-- Location: PLL_1
\LDA_cir|VGA|mypll|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_mode => "bypass",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_high => 16,
	c2_initial => 1,
	c2_low => 16,
	c2_mode => "even",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c2",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 3582,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \LDA_cir|VGA|mypll|altpll_component|pll_INCLK_bus\,
	clk => \LDA_cir|VGA|mypll|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G2
\LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y27_N28
\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~4_combout\ = (\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~3_combout\ & (!\LDA_cir|VGA|user_input_translator|mem_address[14]~16_combout\ & 
-- (!\LDA_cir|VGA|user_input_translator|mem_address[15]~18_combout\ & !\LDA_cir|VGA|user_input_translator|mem_address[16]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~3_combout\,
	datab => \LDA_cir|VGA|user_input_translator|mem_address[14]~16_combout\,
	datac => \LDA_cir|VGA|user_input_translator|mem_address[15]~18_combout\,
	datad => \LDA_cir|VGA|user_input_translator|mem_address[16]~20_combout\,
	combout => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~4_combout\);

-- Location: LCCOMB_X27_Y27_N8
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCFF_X22_Y27_N31
\LDA_cir|plot_x[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|x\(0),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_x\(0));

-- Location: LCCOMB_X21_Y27_N6
\LDA_cir|plot_x[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|plot_x[1]~feeder_combout\ = \LDA_cir|x\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LDA_cir|x\(1),
	combout => \LDA_cir|plot_x[1]~feeder_combout\);

-- Location: LCFF_X21_Y27_N7
\LDA_cir|plot_x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|plot_x[1]~feeder_combout\,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_x\(1));

-- Location: LCFF_X21_Y27_N1
\LDA_cir|plot_x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|x\(2),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_x\(2));

-- Location: LCCOMB_X18_Y27_N2
\LDA_cir|x0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~19_combout\ = (\LDA_cir|y0[3]~3_combout\ & (((\LDA_cir|y0[3]~1_combout\)))) # (!\LDA_cir|y0[3]~3_combout\ & ((\LDA_cir|y0[3]~1_combout\ & ((\drawline_controller|Line_starting_point\(3)))) # (!\LDA_cir|y0[3]~1_combout\ & (\LDA_cir|y0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y0[3]~3_combout\,
	datab => \LDA_cir|y0\(3),
	datac => \drawline_controller|Line_starting_point\(3),
	datad => \LDA_cir|y0[3]~1_combout\,
	combout => \LDA_cir|x0~19_combout\);

-- Location: LCCOMB_X18_Y27_N30
\LDA_cir|x0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~20_combout\ = (\LDA_cir|x0~19_combout\ & (((\LDA_cir|x1\(3)) # (!\LDA_cir|y0[3]~3_combout\)))) # (!\LDA_cir|x0~19_combout\ & (\LDA_cir|y1\(3) & (\LDA_cir|y0[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|y1\(3),
	datab => \LDA_cir|x0~19_combout\,
	datac => \LDA_cir|y0[3]~3_combout\,
	datad => \LDA_cir|x1\(3),
	combout => \LDA_cir|x0~20_combout\);

-- Location: LCCOMB_X18_Y27_N16
\LDA_cir|x0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x0~21_combout\ = (\LDA_cir|x0~20_combout\ & ((\LDA_cir|swaped~regout\) # ((\LDA_cir|y0[3]~1_combout\) # (!\LDA_cir|y0[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|swaped~regout\,
	datab => \LDA_cir|y0[3]~1_combout\,
	datac => \LDA_cir|y0[3]~3_combout\,
	datad => \LDA_cir|x0~20_combout\,
	combout => \LDA_cir|x0~21_combout\);

-- Location: LCFF_X18_Y27_N17
\LDA_cir|x0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x0~21_combout\,
	ena => \LDA_cir|y0[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x0\(3));

-- Location: LCCOMB_X20_Y25_N6
\LDA_cir|x~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LDA_cir|x~7_combout\ = (\LDA_cir|ps.s10~regout\ & ((\LDA_cir|Add1~6_combout\) # ((\LDA_cir|ps.s5~regout\ & \LDA_cir|x0\(3))))) # (!\LDA_cir|ps.s10~regout\ & (\LDA_cir|ps.s5~regout\ & (\LDA_cir|x0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDA_cir|ps.s10~regout\,
	datab => \LDA_cir|ps.s5~regout\,
	datac => \LDA_cir|x0\(3),
	datad => \LDA_cir|Add1~6_combout\,
	combout => \LDA_cir|x~7_combout\);

-- Location: LCFF_X20_Y25_N7
\LDA_cir|x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LDA_cir|x~7_combout\,
	ena => \LDA_cir|x[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|x\(3));

-- Location: LCFF_X21_Y27_N5
\LDA_cir|plot_x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|x\(3),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_x\(3));

-- Location: LCFF_X21_Y27_N31
\LDA_cir|plot_x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|x\(4),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_x\(4));

-- Location: LCFF_X20_Y25_N9
\LDA_cir|plot_x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \LDA_cir|x\(5),
	sload => VCC,
	ena => \LDA_cir|ps.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LDA_cir|plot_x\(5));

-- Location: M4K_X26_Y28
\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "LDA_CIRCUIT:LDA_cir|vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_ddg1:auto_generated|altsyncram_d7r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~2_combout\,
	clk0 => \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena1 => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~4_combout\,
	portadatain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\,
	portbdatain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\,
	portaaddr => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\,
	portbaddr => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y27
\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "LDA_CIRCUIT:LDA_cir|vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_ddg1:auto_generated|altsyncram_d7r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~2_combout\,
	clk0 => \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena1 => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~4_combout\,
	portadatain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\,
	portbdatain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\,
	portaaddr => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\,
	portbaddr => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y29
\LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "LDA_CIRCUIT:LDA_cir|vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_ddg1:auto_generated|altsyncram_d7r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~2_combout\,
	clk0 => \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena1 => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode866w[3]~4_combout\,
	portadatain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: CLKCTRL_X0_Y1_N1
\LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_e_VGA_CLK\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_e_VGA_CLK_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_e_VGA_CLK_outclk\);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\waitrequest~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|ALT_INV_waitrequest~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_waitrequest);

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(0));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(1));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(2));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(4));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(5));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(6));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(7));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(8));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(9));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(10));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(11));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(12));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(13));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(14));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(15));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(16));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(17));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(18));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(19));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(20));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(21));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(22));

-- Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(23));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(24));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(25));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(26));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(27));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(28));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(29));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(30));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \drawline_controller|readdata\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(31));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(0));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(3));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(4));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(5));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(6));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(7));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(8));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(9));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(0));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(1));

-- Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(2));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(4));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(5));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(6));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(7));

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(8));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(9));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(3));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(4));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(5));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(6));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(7));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(8));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(9));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLANK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLANK);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_SYNC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_SYNC);

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LDA_cir|VGA|mypll|altpll_component|_clk0~clkctrl_e_VGA_CLK_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_CLK);
END structure;


