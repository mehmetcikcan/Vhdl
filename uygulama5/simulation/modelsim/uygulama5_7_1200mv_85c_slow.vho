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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/22/2019 13:51:27"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	uygulama5 IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6)
	);
END uygulama5;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uygulama5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter~30_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \counter~29_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \counter~28_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \counter~27_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \counter~26_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \counter~25_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \counter~24_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \counter~23_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \counter~22_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \counter~21_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \counter~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \counter~19_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \counter~18_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \counter~17_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \counter~16_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \counter~15_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \counter~14_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \counter~13_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \counter~12_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \counter2~30_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \counter2~29_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \counter2~28_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \counter2~27_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \counter2~26_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \counter2~25_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \counter2~24_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \counter2~23_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \counter2~22_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \counter2~21_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \counter2~20_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \counter2~19_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \counter2~18_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \counter2~17_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \counter2~16_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \counter2~15_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \counter2~14_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \counter2~13_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \counter2~12_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \counter2~11_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \counter2~10_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \counter2~9_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \counter2~8_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \counter2~7_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \counter2~6_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \counter2~4_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \counter2~5_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \counter2~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \counter2~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \counter2~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \counter2~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \counter7[6]~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \counter3~1_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \counter3~2_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \counter3~3_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \counter3~30_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \counter3~29_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \counter3~28_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \counter3~27_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \counter3~26_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \counter3~25_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \counter3~24_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \counter3~23_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \counter3~22_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \counter3~21_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \counter3~20_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \counter3~19_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \counter3~18_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \counter3~17_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \counter3~16_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \counter3~15_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \counter3~14_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \counter3~13_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \counter3~12_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \counter3~11_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \counter3~10_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \counter3~9_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \counter3~8_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \counter3~7_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \counter3~6_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \counter3~5_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \counter3~4_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \counter3~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \counter4[3]~1_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \counter4~3_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \counter4~4_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \counter4~31_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \counter4~30_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \counter4~29_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \counter4~28_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \counter4~27_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \counter4~26_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \counter4~25_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \counter4~24_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \counter4~23_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \counter4~22_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \counter4~21_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \counter4~20_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \counter4~19_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \counter4~18_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \counter4~17_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \counter4~16_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \counter4~15_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \counter4~14_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \counter4~13_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \counter4~12_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \counter4~11_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \counter4~10_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \counter4~9_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \counter4~8_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \counter4~7_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \counter4~6_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \counter4~5_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \LessThan3~8_combout\ : std_logic;
SIGNAL \LessThan3~9_combout\ : std_logic;
SIGNAL \counter4~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \counter4~2_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \counter5[3]~1_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \LessThan4~5_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \LessThan4~4_combout\ : std_logic;
SIGNAL \LessThan4~6_combout\ : std_logic;
SIGNAL \LessThan4~7_combout\ : std_logic;
SIGNAL \LessThan4~8_combout\ : std_logic;
SIGNAL \LessThan4~9_combout\ : std_logic;
SIGNAL \counter5~2_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \counter5~3_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \counter5~4_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \counter5~31_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \counter5~30_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \counter5~29_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \counter5~28_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \counter5~27_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \counter5~26_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \counter5~25_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \counter5~24_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \counter5~23_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \counter5~22_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \counter5~21_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \counter5~20_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \counter5~19_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \counter5~18_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \counter5~17_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \counter5~16_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \counter5~15_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \counter5~14_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \counter5~13_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \counter5~12_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \counter5~11_combout\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \counter5~10_combout\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \counter5~9_combout\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \counter5~8_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \counter5~7_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \counter5~6_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \counter5~5_combout\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \counter5~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \LessThan4~10_combout\ : std_logic;
SIGNAL \counter6[3]~1_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \counter6~2_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \counter6~3_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \counter6~4_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \counter6~31_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \counter6~30_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \counter6~29_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \counter6~28_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \counter6~27_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \counter6~26_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \counter6~25_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \counter6~24_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \counter6~23_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \counter6~22_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \counter6~21_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \counter6~20_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \counter6~19_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \counter6~18_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \counter6~17_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \counter6~16_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \counter6~15_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \counter6~14_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \counter6~13_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \counter6~12_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \counter6~11_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \counter6~10_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \counter6~9_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \counter6~8_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \counter6~7_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \counter6~6_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~61\ : std_logic;
SIGNAL \Add5~62_combout\ : std_logic;
SIGNAL \counter6~5_combout\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \LessThan5~5_combout\ : std_logic;
SIGNAL \LessThan5~6_combout\ : std_logic;
SIGNAL \LessThan5~7_combout\ : std_logic;
SIGNAL \LessThan5~8_combout\ : std_logic;
SIGNAL \LessThan5~9_combout\ : std_logic;
SIGNAL \counter6~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \counter7[3]~2_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \counter7~32_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \counter7~31_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \counter7~30_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \counter7~29_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \counter7~28_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \counter7~27_combout\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \counter7~26_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \counter7~25_combout\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \counter7~24_combout\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \counter7~23_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \counter7~22_combout\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \counter7~21_combout\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \counter7~20_combout\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \counter7~19_combout\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \counter7~18_combout\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \counter7~17_combout\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \counter7~16_combout\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \counter7~15_combout\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \counter7~14_combout\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \counter7~13_combout\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \counter7~12_combout\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \counter7~11_combout\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \counter7~10_combout\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \counter7~9_combout\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \counter7~8_combout\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \counter7~6_combout\ : std_logic;
SIGNAL \Add6~61\ : std_logic;
SIGNAL \Add6~62_combout\ : std_logic;
SIGNAL \counter7~7_combout\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \LessThan6~4_combout\ : std_logic;
SIGNAL \LessThan6~5_combout\ : std_logic;
SIGNAL \LessThan6~6_combout\ : std_logic;
SIGNAL \LessThan6~7_combout\ : std_logic;
SIGNAL \LessThan6~8_combout\ : std_logic;
SIGNAL \LessThan6~9_combout\ : std_logic;
SIGNAL \counter7~1_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \counter7~3_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \counter7~4_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \counter7~5_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \counter8[31]~feeder_combout\ : std_logic;
SIGNAL \counter8[3]~1_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \counter8~4_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \counter8~31_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \counter8~30_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \counter8~29_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \counter8~28_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \counter8~27_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \counter8~26_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \counter8~25_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \counter8~24_combout\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \counter8~23_combout\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \counter8~22_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \counter8~21_combout\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \counter8~20_combout\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \counter8~19_combout\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \counter8~18_combout\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \counter8~17_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \counter8~16_combout\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \counter8~15_combout\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \counter8~14_combout\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \counter8~13_combout\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \counter8~12_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \counter8~11_combout\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \counter8~10_combout\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \counter8~9_combout\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \counter8~8_combout\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \counter8~7_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \counter8~6_combout\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \counter8~5_combout\ : std_logic;
SIGNAL \Add7~61\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \LessThan7~5_combout\ : std_logic;
SIGNAL \LessThan7~6_combout\ : std_logic;
SIGNAL \LessThan7~7_combout\ : std_logic;
SIGNAL \LessThan7~8_combout\ : std_logic;
SIGNAL \LessThan7~9_combout\ : std_logic;
SIGNAL \counter8~0_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \counter8~2_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \counter8~3_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \counter9[0]~2_combout\ : std_logic;
SIGNAL \counter9[16]~0_combout\ : std_logic;
SIGNAL \counter9[16]~1_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL counter9 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter8 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter7 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter6 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter5 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter4 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter3 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Mux55~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Mux55~0_combout\ <= NOT \Mux55~0_combout\;
\ALT_INV_Mux48~0_combout\ <= NOT \Mux48~0_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux27~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux34~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux41~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux48~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux55~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X108_Y17_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = counter2(0) $ (VCC)
-- \Add1~1\ = CARRY(counter2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X115_Y17_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X111_Y17_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X111_Y18_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (VCC)
-- \Add0~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X112_Y18_N10
\counter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~30_combout\ = (\Add0~0_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~30_combout\);

-- Location: FF_X111_Y18_N13
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~30_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X111_Y18_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X112_Y18_N8
\counter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~29_combout\ = (\Add0~2_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~29_combout\);

-- Location: FF_X111_Y18_N27
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~29_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X111_Y18_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X112_Y18_N6
\counter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~28_combout\ = (\Add0~4_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~28_combout\);

-- Location: FF_X112_Y18_N7
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~28_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X111_Y18_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X112_Y18_N20
\counter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~27_combout\ = (\Add0~6_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~27_combout\);

-- Location: FF_X112_Y18_N21
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~27_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X111_Y18_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X112_Y18_N2
\counter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~26_combout\ = (\Add0~8_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~26_combout\);

-- Location: FF_X112_Y18_N3
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~26_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X111_Y18_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X112_Y18_N12
\counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~25_combout\ = (\Add0~10_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~25_combout\);

-- Location: FF_X112_Y18_N13
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~25_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X111_Y18_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X112_Y18_N22
\counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~24_combout\ = (\Add0~12_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~24_combout\);

-- Location: FF_X112_Y18_N23
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~24_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X111_Y18_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X112_Y18_N28
\counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~23_combout\ = (\Add0~14_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~23_combout\);

-- Location: FF_X112_Y18_N29
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~23_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X111_Y18_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X112_Y18_N18
\counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~22_combout\ = (\Add0~16_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~22_combout\);

-- Location: FF_X112_Y18_N19
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X111_Y18_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X112_Y18_N24
\counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~21_combout\ = (\Add0~18_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~21_combout\);

-- Location: FF_X112_Y18_N25
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~21_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X111_Y18_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X112_Y18_N30
\counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~20_combout\ = (\Add0~20_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~20_combout\);

-- Location: FF_X111_Y18_N11
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~20_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X111_Y18_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X110_Y17_N26
\counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~19_combout\ = (\Add0~22_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datac => \LessThan0~10_combout\,
	combout => \counter~19_combout\);

-- Location: FF_X111_Y18_N17
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~19_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X111_Y18_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X112_Y18_N0
\counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~18_combout\ = (\Add0~24_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~18_combout\);

-- Location: FF_X111_Y18_N31
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~18_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X111_Y18_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X110_Y17_N24
\counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~17_combout\ = (!\LessThan0~10_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add0~26_combout\,
	combout => \counter~17_combout\);

-- Location: FF_X111_Y18_N19
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~17_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X111_Y18_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X112_Y18_N14
\counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~16_combout\ = (\Add0~28_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~16_combout\);

-- Location: FF_X112_Y18_N15
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X111_Y18_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X112_Y18_N4
\counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~15_combout\ = (\Add0~30_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~30_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~15_combout\);

-- Location: FF_X112_Y18_N5
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~15_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X111_Y17_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X110_Y17_N22
\counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~14_combout\ = (\Add0~32_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~32_combout\,
	datac => \LessThan0~10_combout\,
	combout => \counter~14_combout\);

-- Location: FF_X111_Y17_N3
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~14_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X111_Y17_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X112_Y17_N20
\counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~13_combout\ = (\Add0~34_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~13_combout\);

-- Location: FF_X111_Y17_N25
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~13_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X111_Y17_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X112_Y17_N10
\counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~12_combout\ = (\Add0~36_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~12_combout\);

-- Location: FF_X111_Y17_N17
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~12_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X111_Y17_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter(19) & (!\Add0~37\)) # (!counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X110_Y17_N0
\counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (!\LessThan0~10_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add0~38_combout\,
	combout => \counter~11_combout\);

-- Location: FF_X111_Y17_N29
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~11_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X111_Y17_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter(20) & (\Add0~39\ $ (GND))) # (!counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X112_Y17_N0
\counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (\Add0~40_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datad => \Add0~62_combout\,
	combout => \counter~10_combout\);

-- Location: FF_X111_Y17_N9
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~10_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X111_Y17_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(21) & (!\Add0~41\)) # (!counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X112_Y17_N14
\counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (\Add0~42_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datad => \Add0~62_combout\,
	combout => \counter~9_combout\);

-- Location: FF_X111_Y17_N27
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~9_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X111_Y17_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter(22) & (\Add0~43\ $ (GND))) # (!counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X112_Y17_N28
\counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (\Add0~44_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datad => \Add0~62_combout\,
	combout => \counter~8_combout\);

-- Location: FF_X111_Y17_N19
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~8_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X111_Y17_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter(23) & (!\Add0~45\)) # (!counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X112_Y17_N18
\counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add0~46_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datad => \Add0~62_combout\,
	combout => \counter~7_combout\);

-- Location: FF_X111_Y17_N7
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~7_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X111_Y17_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(24) & (\Add0~47\ $ (GND))) # (!counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X112_Y17_N4
\counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add0~48_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~48_combout\,
	datad => \Add0~62_combout\,
	combout => \counter~6_combout\);

-- Location: FF_X111_Y17_N21
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~6_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X111_Y17_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (counter(25) & (!\Add0~49\)) # (!counter(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X112_Y17_N2
\counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add0~50_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~50_combout\,
	datad => \Add0~62_combout\,
	combout => \counter~5_combout\);

-- Location: FF_X111_Y17_N15
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X111_Y17_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (counter(26) & (\Add0~51\ $ (GND))) # (!counter(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((counter(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X112_Y17_N8
\counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add0~52_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~52_combout\,
	datad => \Add0~62_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X111_Y17_N13
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~4_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X111_Y17_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter(27) & (!\Add0~53\)) # (!counter(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X112_Y17_N30
\counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add0~62_combout\ & \Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~62_combout\,
	datad => \Add0~54_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X111_Y17_N1
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~3_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X111_Y17_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (counter(28) & (\Add0~55\ $ (GND))) # (!counter(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((counter(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X112_Y17_N12
\counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add0~56_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~56_combout\,
	datad => \Add0~62_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X111_Y17_N23
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter~2_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X111_Y17_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (counter(29) & (!\Add0~57\)) # (!counter(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X111_Y17_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter(30) & (\Add0~59\ $ (GND))) # (!counter(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((counter(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X112_Y17_N24
\counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add0~62_combout\ & \Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~62_combout\,
	datad => \Add0~60_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X112_Y17_N25
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X111_Y17_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = counter(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X112_Y17_N22
\counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~58_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~58_combout\,
	datad => \Add0~62_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X112_Y17_N23
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X110_Y17_N14
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add0~34_combout\ & (\Add0~32_combout\ & (\Add0~36_combout\ & \Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~36_combout\,
	datad => \Add0~38_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X110_Y17_N4
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Add0~42_combout\) # ((\Add0~44_combout\) # ((\LessThan0~0_combout\ & \Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add0~44_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Add0~30_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y17_N10
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\Add0~2_combout\) # ((\Add0~0_combout\) # ((\Add0~6_combout\) # (\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X110_Y17_N16
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\Add0~12_combout\ & ((\Add0~8_combout\) # ((\Add0~10_combout\) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~10_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y17_N2
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\Add0~18_combout\ & ((\Add0~16_combout\) # ((\Add0~14_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~18_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X110_Y17_N28
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\Add0~22_combout\) # ((\Add0~26_combout\) # ((\Add0~24_combout\) # (\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~26_combout\,
	datac => \Add0~24_combout\,
	datad => \Add0~20_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X110_Y17_N18
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\Add0~28_combout\ & (\LessThan0~0_combout\ & ((\LessThan0~4_combout\) # (\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X110_Y17_N12
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\Add0~40_combout\) # ((\Add0~46_combout\) # ((\Add0~48_combout\) # (\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add0~46_combout\,
	datac => \Add0~48_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X110_Y17_N6
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\Add0~50_combout\) # ((\Add0~52_combout\) # ((\LessThan0~1_combout\) # (\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~52_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X110_Y17_N20
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\Add0~54_combout\) # ((\Add0~56_combout\) # (\LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~54_combout\,
	datac => \Add0~56_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X110_Y17_N30
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!\Add0~62_combout\ & ((\Add0~58_combout\) # ((\Add0~60_combout\) # (\LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Add0~60_combout\,
	datac => \Add0~62_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: FF_X108_Y16_N31
\counter2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(31));

-- Location: LCCOMB_X108_Y17_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (counter2(3) & (!\Add1~5\)) # (!counter2(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!counter2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X108_Y17_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (counter2(4) & (\Add1~7\ $ (GND))) # (!counter2(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((counter2(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X107_Y17_N22
\counter2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~30_combout\ = (\Add1~8_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~8_combout\,
	datad => \Add1~62_combout\,
	combout => \counter2~30_combout\);

-- Location: FF_X108_Y17_N5
\counter2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~30_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(4));

-- Location: LCCOMB_X108_Y17_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (counter2(5) & (!\Add1~9\)) # (!counter2(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!counter2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X107_Y17_N0
\counter2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~29_combout\ = (\Add1~10_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~10_combout\,
	datad => \Add1~62_combout\,
	combout => \counter2~29_combout\);

-- Location: FF_X108_Y17_N23
\counter2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~29_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(5));

-- Location: LCCOMB_X108_Y17_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (counter2(6) & (\Add1~11\ $ (GND))) # (!counter2(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((counter2(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X109_Y17_N18
\counter2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~28_combout\ = (\Add1~12_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datac => \Add1~62_combout\,
	combout => \counter2~28_combout\);

-- Location: FF_X108_Y17_N19
\counter2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~28_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(6));

-- Location: LCCOMB_X108_Y17_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (counter2(7) & (!\Add1~13\)) # (!counter2(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!counter2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X107_Y17_N26
\counter2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~27_combout\ = (\Add1~14_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~14_combout\,
	datad => \Add1~62_combout\,
	combout => \counter2~27_combout\);

-- Location: FF_X108_Y17_N3
\counter2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~27_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(7));

-- Location: LCCOMB_X108_Y17_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (counter2(8) & (\Add1~15\ $ (GND))) # (!counter2(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((counter2(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X109_Y17_N0
\counter2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~26_combout\ = (\Add1~16_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~62_combout\,
	combout => \counter2~26_combout\);

-- Location: FF_X108_Y17_N15
\counter2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~26_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(8));

-- Location: LCCOMB_X108_Y17_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (counter2(9) & (!\Add1~17\)) # (!counter2(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!counter2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X109_Y17_N14
\counter2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~25_combout\ = (\Add1~18_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~18_combout\,
	datac => \Add1~62_combout\,
	combout => \counter2~25_combout\);

-- Location: FF_X108_Y17_N7
\counter2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~25_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(9));

-- Location: LCCOMB_X108_Y17_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (counter2(10) & (\Add1~19\ $ (GND))) # (!counter2(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((counter2(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X109_Y17_N12
\counter2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~24_combout\ = (\Add1~20_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datac => \Add1~62_combout\,
	combout => \counter2~24_combout\);

-- Location: FF_X108_Y17_N25
\counter2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~24_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(10));

-- Location: LCCOMB_X108_Y17_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (counter2(11) & (!\Add1~21\)) # (!counter2(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!counter2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X109_Y17_N10
\counter2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~23_combout\ = (\Add1~22_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~22_combout\,
	datac => \Add1~62_combout\,
	combout => \counter2~23_combout\);

-- Location: FF_X108_Y17_N1
\counter2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~23_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(11));

-- Location: LCCOMB_X108_Y17_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (counter2(12) & (\Add1~23\ $ (GND))) # (!counter2(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((counter2(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X109_Y17_N8
\counter2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~22_combout\ = (\Add1~62_combout\ & \Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~62_combout\,
	datad => \Add1~24_combout\,
	combout => \counter2~22_combout\);

-- Location: FF_X108_Y17_N27
\counter2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~22_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(12));

-- Location: LCCOMB_X108_Y17_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (counter2(13) & (!\Add1~25\)) # (!counter2(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!counter2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X107_Y17_N4
\counter2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~21_combout\ = (\Add1~26_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~26_combout\,
	datad => \Add1~62_combout\,
	combout => \counter2~21_combout\);

-- Location: FF_X108_Y17_N21
\counter2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~21_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(13));

-- Location: LCCOMB_X108_Y17_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (counter2(14) & (\Add1~27\ $ (GND))) # (!counter2(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((counter2(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X107_Y17_N6
\counter2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~20_combout\ = (\Add1~28_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~28_combout\,
	datad => \Add1~62_combout\,
	combout => \counter2~20_combout\);

-- Location: FF_X108_Y17_N29
\counter2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~20_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(14));

-- Location: LCCOMB_X108_Y17_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (counter2(15) & (!\Add1~29\)) # (!counter2(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!counter2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X107_Y17_N16
\counter2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~19_combout\ = (\Add1~30_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~30_combout\,
	datad => \Add1~62_combout\,
	combout => \counter2~19_combout\);

-- Location: FF_X108_Y17_N13
\counter2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~19_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(15));

-- Location: LCCOMB_X108_Y16_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (counter2(16) & (\Add1~31\ $ (GND))) # (!counter2(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((counter2(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X107_Y16_N0
\counter2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~18_combout\ = (\Add1~62_combout\ & \Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datac => \Add1~32_combout\,
	combout => \counter2~18_combout\);

-- Location: FF_X108_Y16_N11
\counter2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~18_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(16));

-- Location: LCCOMB_X108_Y16_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (counter2(17) & (!\Add1~33\)) # (!counter2(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!counter2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X107_Y16_N6
\counter2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~17_combout\ = (\Add1~34_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~34_combout\,
	datac => \Add1~62_combout\,
	combout => \counter2~17_combout\);

-- Location: FF_X108_Y16_N1
\counter2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~17_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(17));

-- Location: LCCOMB_X108_Y16_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (counter2(18) & (\Add1~35\ $ (GND))) # (!counter2(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((counter2(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X107_Y16_N28
\counter2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~16_combout\ = (\Add1~62_combout\ & \Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~62_combout\,
	datad => \Add1~36_combout\,
	combout => \counter2~16_combout\);

-- Location: FF_X107_Y16_N29
\counter2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~16_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(18));

-- Location: LCCOMB_X108_Y16_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (counter2(19) & (!\Add1~37\)) # (!counter2(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!counter2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X109_Y16_N8
\counter2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~15_combout\ = (\Add1~38_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datad => \Add1~62_combout\,
	combout => \counter2~15_combout\);

-- Location: FF_X109_Y16_N9
\counter2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~15_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(19));

-- Location: LCCOMB_X108_Y16_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (counter2(20) & (\Add1~39\ $ (GND))) # (!counter2(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((counter2(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X107_Y16_N16
\counter2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~14_combout\ = (\Add1~62_combout\ & \Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datac => \Add1~40_combout\,
	combout => \counter2~14_combout\);

-- Location: FF_X108_Y16_N3
\counter2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~14_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(20));

-- Location: LCCOMB_X108_Y16_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (counter2(21) & (!\Add1~41\)) # (!counter2(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!counter2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X108_Y18_N22
\counter2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~13_combout\ = (\Add1~62_combout\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~62_combout\,
	datad => \Add1~42_combout\,
	combout => \counter2~13_combout\);

-- Location: FF_X108_Y16_N23
\counter2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~13_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(21));

-- Location: LCCOMB_X108_Y16_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (counter2(22) & (\Add1~43\ $ (GND))) # (!counter2(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((counter2(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X109_Y16_N22
\counter2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~12_combout\ = (\Add1~44_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~44_combout\,
	datad => \Add1~62_combout\,
	combout => \counter2~12_combout\);

-- Location: FF_X108_Y16_N29
\counter2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~12_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(22));

-- Location: LCCOMB_X108_Y16_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (counter2(23) & (!\Add1~45\)) # (!counter2(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!counter2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X108_Y18_N28
\counter2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~11_combout\ = (\Add1~46_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~46_combout\,
	datac => \Add1~62_combout\,
	combout => \counter2~11_combout\);

-- Location: FF_X108_Y16_N15
\counter2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~11_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(23));

-- Location: LCCOMB_X108_Y16_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (counter2(24) & (\Add1~47\ $ (GND))) # (!counter2(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((counter2(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X108_Y18_N18
\counter2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~10_combout\ = (\Add1~62_combout\ & \Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~62_combout\,
	datad => \Add1~48_combout\,
	combout => \counter2~10_combout\);

-- Location: FF_X108_Y16_N5
\counter2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter2~10_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(24));

-- Location: LCCOMB_X108_Y16_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (counter2(25) & (!\Add1~49\)) # (!counter2(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!counter2(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X109_Y17_N28
\counter2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~9_combout\ = (\Add1~62_combout\ & \Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~62_combout\,
	datad => \Add1~50_combout\,
	combout => \counter2~9_combout\);

-- Location: FF_X109_Y17_N29
\counter2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~9_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(25));

-- Location: LCCOMB_X108_Y16_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (counter2(26) & (\Add1~51\ $ (GND))) # (!counter2(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((counter2(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X109_Y17_N26
\counter2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~8_combout\ = (\Add1~62_combout\ & \Add1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~62_combout\,
	datad => \Add1~52_combout\,
	combout => \counter2~8_combout\);

-- Location: FF_X109_Y17_N27
\counter2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~8_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(26));

-- Location: LCCOMB_X108_Y16_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (counter2(27) & (!\Add1~53\)) # (!counter2(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!counter2(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X107_Y17_N14
\counter2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~7_combout\ = (\Add1~54_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~54_combout\,
	datad => \Add1~62_combout\,
	combout => \counter2~7_combout\);

-- Location: FF_X107_Y17_N15
\counter2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~7_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(27));

-- Location: LCCOMB_X108_Y16_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (counter2(28) & (\Add1~55\ $ (GND))) # (!counter2(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((counter2(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X108_Y18_N8
\counter2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~6_combout\ = (\Add1~62_combout\ & \Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~62_combout\,
	datad => \Add1~56_combout\,
	combout => \counter2~6_combout\);

-- Location: FF_X108_Y18_N9
\counter2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~6_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(28));

-- Location: LCCOMB_X108_Y16_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (counter2(29) & (!\Add1~57\)) # (!counter2(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!counter2(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X108_Y16_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (counter2(30) & (\Add1~59\ $ (GND))) # (!counter2(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((counter2(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X109_Y17_N16
\counter2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~4_combout\ = (\Add1~62_combout\ & \Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datad => \Add1~60_combout\,
	combout => \counter2~4_combout\);

-- Location: FF_X109_Y17_N17
\counter2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~4_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(30));

-- Location: LCCOMB_X108_Y16_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = counter2(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X110_Y17_N8
\counter2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~5_combout\ = (\Add1~62_combout\ & \Add1~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datad => \Add1~58_combout\,
	combout => \counter2~5_combout\);

-- Location: FF_X110_Y17_N9
\counter2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~5_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(29));

-- Location: LCCOMB_X109_Y17_N22
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\Add1~8_combout\) # ((\Add1~6_combout\ & ((\Add1~2_combout\) # (\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~8_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X109_Y17_N24
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\Add1~14_combout\) # ((\Add1~10_combout\) # ((\Add1~16_combout\) # (\Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add1~10_combout\,
	datac => \Add1~16_combout\,
	datad => \Add1~12_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X109_Y17_N30
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\Add1~20_combout\) # ((\Add1~18_combout\) # ((\Add1~24_combout\) # (\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add1~18_combout\,
	datac => \Add1~24_combout\,
	datad => \Add1~22_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X107_Y16_N18
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\Add1~28_combout\) # ((\Add1~32_combout\) # ((\Add1~30_combout\) # (\Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Add1~32_combout\,
	datac => \Add1~30_combout\,
	datad => \Add1~26_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X109_Y16_N30
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~0_combout\) # ((\LessThan1~1_combout\) # ((\LessThan1~2_combout\) # (\LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \LessThan1~1_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X107_Y16_N8
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\Add1~36_combout\) # ((\Add1~40_combout\) # ((\Add1~34_combout\) # (\Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \Add1~40_combout\,
	datac => \Add1~34_combout\,
	datad => \Add1~38_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X109_Y16_N16
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (\Add1~42_combout\) # ((\Add1~44_combout\) # ((\LessThan1~4_combout\) # (\LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datab => \Add1~44_combout\,
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X109_Y16_N2
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (\Add1~46_combout\) # ((\Add1~50_combout\) # ((\Add1~48_combout\) # (\LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Add1~50_combout\,
	datac => \Add1~48_combout\,
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X109_Y16_N20
\LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (\Add1~54_combout\) # ((\Add1~52_combout\) # ((\Add1~56_combout\) # (\LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datab => \Add1~52_combout\,
	datac => \Add1~56_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X109_Y16_N14
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (!\Add1~62_combout\ & ((\Add1~58_combout\) # ((\Add1~60_combout\) # (\LessThan1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \Add1~62_combout\,
	datac => \Add1~60_combout\,
	datad => \LessThan1~8_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X109_Y17_N20
\counter2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~0_combout\ = (\Add1~0_combout\ & !\LessThan1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datac => \LessThan1~9_combout\,
	combout => \counter2~0_combout\);

-- Location: FF_X109_Y17_N21
\counter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~0_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(0));

-- Location: LCCOMB_X108_Y17_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (counter2(1) & (!\Add1~1\)) # (!counter2(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!counter2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X109_Y17_N2
\counter2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~1_combout\ = (\Add1~2_combout\ & !\LessThan1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datac => \LessThan1~9_combout\,
	combout => \counter2~1_combout\);

-- Location: FF_X109_Y17_N3
\counter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~1_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(1));

-- Location: LCCOMB_X108_Y17_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (counter2(2) & (\Add1~3\ $ (GND))) # (!counter2(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((counter2(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X109_Y17_N4
\counter2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~2_combout\ = (\Add1~4_combout\ & !\LessThan1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datac => \LessThan1~9_combout\,
	combout => \counter2~2_combout\);

-- Location: FF_X109_Y17_N5
\counter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~2_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(2));

-- Location: LCCOMB_X109_Y17_N6
\counter2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2~3_combout\ = (\Add1~6_combout\ & !\LessThan1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datac => \LessThan1~9_combout\,
	combout => \counter2~3_combout\);

-- Location: FF_X109_Y17_N7
\counter2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~3_combout\,
	clrn => \rst~input_o\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(3));

-- Location: LCCOMB_X107_Y17_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (counter2(0) & ((counter2(3)) # (counter2(1) $ (counter2(2))))) # (!counter2(0) & ((counter2(1)) # (counter2(3) $ (counter2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(3),
	datab => counter2(1),
	datac => counter2(2),
	datad => counter2(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X107_Y17_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (counter2(0) & (counter2(3) $ (((counter2(1)) # (!counter2(2)))))) # (!counter2(0) & (((counter2(1) & !counter2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(3),
	datab => counter2(1),
	datac => counter2(2),
	datad => counter2(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X107_Y17_N24
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (counter2(1) & (!counter2(3) & ((counter2(0))))) # (!counter2(1) & ((counter2(2) & (!counter2(3))) # (!counter2(2) & ((counter2(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(3),
	datab => counter2(1),
	datac => counter2(2),
	datad => counter2(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X107_Y17_N2
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (counter2(1) & (((counter2(2) & counter2(0))))) # (!counter2(1) & (!counter2(3) & (counter2(2) $ (counter2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(3),
	datab => counter2(1),
	datac => counter2(2),
	datad => counter2(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X107_Y17_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (counter2(3) & (counter2(2) & ((counter2(1)) # (!counter2(0))))) # (!counter2(3) & (counter2(1) & (!counter2(2) & !counter2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(3),
	datab => counter2(1),
	datac => counter2(2),
	datad => counter2(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X107_Y17_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (counter2(3) & ((counter2(0) & (counter2(1))) # (!counter2(0) & ((counter2(2)))))) # (!counter2(3) & (counter2(2) & (counter2(1) $ (counter2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(3),
	datab => counter2(1),
	datac => counter2(2),
	datad => counter2(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X107_Y17_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (counter2(3) & (counter2(0) & (counter2(1) $ (counter2(2))))) # (!counter2(3) & (!counter2(1) & (counter2(2) $ (counter2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(3),
	datab => counter2(1),
	datac => counter2(2),
	datad => counter2(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X109_Y14_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = counter3(0) $ (VCC)
-- \Add2~1\ = CARRY(counter3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter3(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X109_Y16_N4
\counter7[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7[6]~0_combout\ = (\LessThan1~9_combout\ & \LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~9_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter7[6]~0_combout\);

-- Location: FF_X109_Y13_N31
\counter3[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~62_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(31));

-- Location: LCCOMB_X109_Y14_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (counter3(1) & (!\Add2~1\)) # (!counter3(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!counter3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X110_Y13_N6
\counter3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~1_combout\ = (\Add2~2_combout\ & !\LessThan2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~2_combout\,
	datad => \LessThan2~9_combout\,
	combout => \counter3~1_combout\);

-- Location: FF_X109_Y14_N19
\counter3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~1_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(1));

-- Location: LCCOMB_X109_Y14_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (counter3(2) & (\Add2~3\ $ (GND))) # (!counter3(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((counter3(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X110_Y13_N0
\counter3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~2_combout\ = (\Add2~4_combout\ & !\LessThan2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~4_combout\,
	datad => \LessThan2~9_combout\,
	combout => \counter3~2_combout\);

-- Location: FF_X109_Y14_N21
\counter3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~2_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(2));

-- Location: LCCOMB_X109_Y14_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (counter3(3) & (!\Add2~5\)) # (!counter3(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!counter3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X110_Y13_N26
\counter3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~3_combout\ = (\Add2~6_combout\ & !\LessThan2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	datad => \LessThan2~9_combout\,
	combout => \counter3~3_combout\);

-- Location: FF_X109_Y14_N13
\counter3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~3_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(3));

-- Location: LCCOMB_X109_Y14_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (counter3(4) & (\Add2~7\ $ (GND))) # (!counter3(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((counter3(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X108_Y14_N16
\counter3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~30_combout\ = (\Add2~62_combout\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~62_combout\,
	datac => \Add2~8_combout\,
	combout => \counter3~30_combout\);

-- Location: FF_X109_Y14_N15
\counter3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~30_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(4));

-- Location: LCCOMB_X109_Y14_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (counter3(5) & (!\Add2~9\)) # (!counter3(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!counter3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X108_Y14_N26
\counter3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~29_combout\ = (\Add2~62_combout\ & \Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~62_combout\,
	datac => \Add2~10_combout\,
	combout => \counter3~29_combout\);

-- Location: FF_X109_Y14_N17
\counter3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~29_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(5));

-- Location: LCCOMB_X109_Y14_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (counter3(6) & (\Add2~11\ $ (GND))) # (!counter3(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((counter3(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X108_Y14_N8
\counter3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~28_combout\ = (\Add2~62_combout\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~62_combout\,
	datac => \Add2~12_combout\,
	combout => \counter3~28_combout\);

-- Location: FF_X109_Y14_N27
\counter3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~28_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(6));

-- Location: LCCOMB_X109_Y14_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (counter3(7) & (!\Add2~13\)) # (!counter3(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!counter3(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X108_Y14_N14
\counter3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~27_combout\ = (\Add2~62_combout\ & \Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~62_combout\,
	datad => \Add2~14_combout\,
	combout => \counter3~27_combout\);

-- Location: FF_X109_Y14_N11
\counter3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~27_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(7));

-- Location: LCCOMB_X109_Y14_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (counter3(8) & (\Add2~15\ $ (GND))) # (!counter3(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((counter3(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X108_Y14_N24
\counter3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~26_combout\ = (\Add2~16_combout\ & \Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~16_combout\,
	datac => \Add2~62_combout\,
	combout => \counter3~26_combout\);

-- Location: FF_X109_Y14_N29
\counter3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~26_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(8));

-- Location: LCCOMB_X109_Y14_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (counter3(9) & (!\Add2~17\)) # (!counter3(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!counter3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X108_Y14_N22
\counter3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~25_combout\ = (\Add2~18_combout\ & \Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	datac => \Add2~62_combout\,
	combout => \counter3~25_combout\);

-- Location: FF_X109_Y14_N31
\counter3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~25_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(9));

-- Location: LCCOMB_X109_Y14_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (counter3(10) & (\Add2~19\ $ (GND))) # (!counter3(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((counter3(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X108_Y14_N4
\counter3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~24_combout\ = (\Add2~62_combout\ & \Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~62_combout\,
	datac => \Add2~20_combout\,
	combout => \counter3~24_combout\);

-- Location: FF_X109_Y14_N25
\counter3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~24_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(10));

-- Location: LCCOMB_X109_Y14_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (counter3(11) & (!\Add2~21\)) # (!counter3(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!counter3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X108_Y14_N10
\counter3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~23_combout\ = (\Add2~62_combout\ & \Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~62_combout\,
	datac => \Add2~22_combout\,
	combout => \counter3~23_combout\);

-- Location: FF_X109_Y14_N9
\counter3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~23_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(11));

-- Location: LCCOMB_X109_Y14_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (counter3(12) & (\Add2~23\ $ (GND))) # (!counter3(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((counter3(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X108_Y14_N28
\counter3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~22_combout\ = (\Add2~24_combout\ & \Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~24_combout\,
	datac => \Add2~62_combout\,
	combout => \counter3~22_combout\);

-- Location: FF_X109_Y14_N5
\counter3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~22_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(12));

-- Location: LCCOMB_X109_Y14_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (counter3(13) & (!\Add2~25\)) # (!counter3(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!counter3(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X108_Y14_N2
\counter3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~21_combout\ = (\Add2~62_combout\ & \Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~62_combout\,
	datac => \Add2~26_combout\,
	combout => \counter3~21_combout\);

-- Location: FF_X109_Y14_N7
\counter3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~21_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(13));

-- Location: LCCOMB_X109_Y14_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (counter3(14) & (\Add2~27\ $ (GND))) # (!counter3(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((counter3(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X108_Y14_N0
\counter3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~20_combout\ = (\Add2~28_combout\ & \Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~28_combout\,
	datac => \Add2~62_combout\,
	combout => \counter3~20_combout\);

-- Location: FF_X109_Y14_N23
\counter3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~20_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(14));

-- Location: LCCOMB_X109_Y14_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (counter3(15) & (!\Add2~29\)) # (!counter3(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!counter3(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X108_Y14_N18
\counter3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~19_combout\ = (\Add2~62_combout\ & \Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~62_combout\,
	datac => \Add2~30_combout\,
	combout => \counter3~19_combout\);

-- Location: FF_X109_Y14_N3
\counter3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~19_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(15));

-- Location: LCCOMB_X109_Y13_N0
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (counter3(16) & (\Add2~31\ $ (GND))) # (!counter3(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((counter3(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X108_Y13_N28
\counter3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~18_combout\ = (\Add2~32_combout\ & \Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~32_combout\,
	datac => \Add2~62_combout\,
	combout => \counter3~18_combout\);

-- Location: FF_X109_Y13_N5
\counter3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~18_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(16));

-- Location: LCCOMB_X109_Y13_N2
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (counter3(17) & (!\Add2~33\)) # (!counter3(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!counter3(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X108_Y13_N14
\counter3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~17_combout\ = (\Add2~62_combout\ & \Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~34_combout\,
	combout => \counter3~17_combout\);

-- Location: FF_X109_Y13_N23
\counter3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~17_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(17));

-- Location: LCCOMB_X109_Y13_N4
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (counter3(18) & (\Add2~35\ $ (GND))) # (!counter3(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((counter3(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X110_Y13_N30
\counter3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~16_combout\ = (\Add2~36_combout\ & \Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~36_combout\,
	datad => \Add2~62_combout\,
	combout => \counter3~16_combout\);

-- Location: FF_X109_Y13_N3
\counter3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~16_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(18));

-- Location: LCCOMB_X109_Y13_N6
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (counter3(19) & (!\Add2~37\)) # (!counter3(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!counter3(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X108_Y13_N20
\counter3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~15_combout\ = (\Add2~62_combout\ & \Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~38_combout\,
	combout => \counter3~15_combout\);

-- Location: FF_X109_Y13_N7
\counter3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~15_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(19));

-- Location: LCCOMB_X109_Y13_N8
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (counter3(20) & (\Add2~39\ $ (GND))) # (!counter3(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((counter3(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X108_Y13_N18
\counter3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~14_combout\ = (\Add2~62_combout\ & \Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datac => \Add2~40_combout\,
	combout => \counter3~14_combout\);

-- Location: FF_X109_Y13_N17
\counter3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~14_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(20));

-- Location: LCCOMB_X109_Y13_N10
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (counter3(21) & (!\Add2~41\)) # (!counter3(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!counter3(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X108_Y13_N24
\counter3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~13_combout\ = (\Add2~62_combout\ & \Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~42_combout\,
	combout => \counter3~13_combout\);

-- Location: FF_X109_Y13_N25
\counter3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~13_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(21));

-- Location: LCCOMB_X109_Y13_N12
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (counter3(22) & (\Add2~43\ $ (GND))) # (!counter3(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((counter3(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X108_Y13_N10
\counter3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~12_combout\ = (\Add2~62_combout\ & \Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~44_combout\,
	combout => \counter3~12_combout\);

-- Location: FF_X109_Y13_N19
\counter3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~12_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(22));

-- Location: LCCOMB_X109_Y13_N14
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (counter3(23) & (!\Add2~45\)) # (!counter3(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!counter3(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X108_Y13_N16
\counter3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~11_combout\ = (\Add2~62_combout\ & \Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~46_combout\,
	combout => \counter3~11_combout\);

-- Location: FF_X109_Y13_N1
\counter3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~11_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(23));

-- Location: LCCOMB_X109_Y13_N16
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (counter3(24) & (\Add2~47\ $ (GND))) # (!counter3(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((counter3(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X108_Y13_N6
\counter3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~10_combout\ = (\Add2~62_combout\ & \Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~48_combout\,
	combout => \counter3~10_combout\);

-- Location: FF_X109_Y13_N29
\counter3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~10_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(24));

-- Location: LCCOMB_X109_Y13_N18
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (counter3(25) & (!\Add2~49\)) # (!counter3(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!counter3(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X108_Y13_N4
\counter3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~9_combout\ = (\Add2~62_combout\ & \Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~50_combout\,
	combout => \counter3~9_combout\);

-- Location: FF_X109_Y13_N21
\counter3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~9_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(25));

-- Location: LCCOMB_X109_Y13_N20
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (counter3(26) & (\Add2~51\ $ (GND))) # (!counter3(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((counter3(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X108_Y13_N22
\counter3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~8_combout\ = (\Add2~62_combout\ & \Add2~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~52_combout\,
	combout => \counter3~8_combout\);

-- Location: FF_X109_Y13_N11
\counter3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~8_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(26));

-- Location: LCCOMB_X109_Y13_N22
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (counter3(27) & (!\Add2~53\)) # (!counter3(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!counter3(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X108_Y13_N0
\counter3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~7_combout\ = (\Add2~62_combout\ & \Add2~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~54_combout\,
	combout => \counter3~7_combout\);

-- Location: FF_X109_Y13_N15
\counter3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~7_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(27));

-- Location: LCCOMB_X109_Y13_N24
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (counter3(28) & (\Add2~55\ $ (GND))) # (!counter3(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((counter3(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X108_Y13_N26
\counter3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~6_combout\ = (\Add2~62_combout\ & \Add2~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~56_combout\,
	combout => \counter3~6_combout\);

-- Location: FF_X109_Y13_N13
\counter3[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~6_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(28));

-- Location: LCCOMB_X109_Y13_N26
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (counter3(29) & (!\Add2~57\)) # (!counter3(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!counter3(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X110_Y13_N12
\counter3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~5_combout\ = (\Add2~62_combout\ & \Add2~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~62_combout\,
	datad => \Add2~58_combout\,
	combout => \counter3~5_combout\);

-- Location: FF_X109_Y13_N9
\counter3[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(29));

-- Location: LCCOMB_X109_Y13_N28
\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (counter3(30) & (\Add2~59\ $ (GND))) # (!counter3(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((counter3(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X108_Y13_N12
\counter3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~4_combout\ = (\Add2~62_combout\ & \Add2~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~60_combout\,
	combout => \counter3~4_combout\);

-- Location: FF_X109_Y13_N27
\counter3[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~4_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(30));

-- Location: LCCOMB_X109_Y13_N30
\Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = counter3(31) $ (\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X110_Y13_N14
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (\Add2~34_combout\) # ((\Add2~36_combout\) # ((\Add2~38_combout\) # (\Add2~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \Add2~36_combout\,
	datac => \Add2~38_combout\,
	datad => \Add2~40_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X110_Y13_N22
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\Add2~12_combout\) # ((\Add2~16_combout\) # ((\Add2~14_combout\) # (\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add2~16_combout\,
	datac => \Add2~14_combout\,
	datad => \Add2~10_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X110_Y13_N4
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\Add2~8_combout\) # ((\Add2~6_combout\ & ((\Add2~4_combout\) # (\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X110_Y13_N8
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\Add2~18_combout\) # ((\Add2~20_combout\) # ((\Add2~22_combout\) # (\Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add2~20_combout\,
	datac => \Add2~22_combout\,
	datad => \Add2~24_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X110_Y13_N10
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (\Add2~32_combout\) # ((\Add2~26_combout\) # ((\Add2~28_combout\) # (\Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Add2~26_combout\,
	datac => \Add2~28_combout\,
	datad => \Add2~30_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X110_Y13_N16
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\LessThan2~1_combout\) # ((\LessThan2~0_combout\) # ((\LessThan2~2_combout\) # (\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \LessThan2~0_combout\,
	datac => \LessThan2~2_combout\,
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X110_Y13_N28
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (\Add2~44_combout\) # ((\Add2~42_combout\) # ((\LessThan2~5_combout\) # (\LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => \Add2~42_combout\,
	datac => \LessThan2~5_combout\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X110_Y13_N18
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (\Add2~46_combout\) # ((\Add2~50_combout\) # ((\Add2~48_combout\) # (\LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datab => \Add2~50_combout\,
	datac => \Add2~48_combout\,
	datad => \LessThan2~6_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X110_Y13_N20
\LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (\Add2~52_combout\) # ((\Add2~56_combout\) # ((\Add2~54_combout\) # (\LessThan2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~52_combout\,
	datab => \Add2~56_combout\,
	datac => \Add2~54_combout\,
	datad => \LessThan2~7_combout\,
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X110_Y13_N2
\LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (!\Add2~62_combout\ & ((\Add2~58_combout\) # ((\Add2~60_combout\) # (\LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~58_combout\,
	datac => \Add2~60_combout\,
	datad => \LessThan2~8_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X110_Y13_N24
\counter3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3~0_combout\ = (\Add2~0_combout\ & !\LessThan2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datad => \LessThan2~9_combout\,
	combout => \counter3~0_combout\);

-- Location: FF_X109_Y14_N1
\counter3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter3~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter7[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(0));

-- Location: LCCOMB_X109_Y20_N8
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (counter3(0) & ((counter3(3)) # (counter3(2) $ (counter3(1))))) # (!counter3(0) & ((counter3(1)) # (counter3(2) $ (counter3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(0),
	datab => counter3(2),
	datac => counter3(1),
	datad => counter3(3),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X109_Y20_N6
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (counter3(0) & (counter3(3) $ (((counter3(1)) # (!counter3(2)))))) # (!counter3(0) & (!counter3(2) & (counter3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(0),
	datab => counter3(2),
	datac => counter3(1),
	datad => counter3(3),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X109_Y20_N24
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (counter3(1) & (counter3(0) & ((!counter3(3))))) # (!counter3(1) & ((counter3(2) & ((!counter3(3)))) # (!counter3(2) & (counter3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(0),
	datab => counter3(2),
	datac => counter3(1),
	datad => counter3(3),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X109_Y20_N14
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (counter3(1) & (counter3(0) & (counter3(2)))) # (!counter3(1) & (!counter3(3) & (counter3(0) $ (counter3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(0),
	datab => counter3(2),
	datac => counter3(1),
	datad => counter3(3),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X109_Y20_N0
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (counter3(2) & (counter3(3) & ((counter3(1)) # (!counter3(0))))) # (!counter3(2) & (!counter3(0) & (counter3(1) & !counter3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(0),
	datab => counter3(2),
	datac => counter3(1),
	datad => counter3(3),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X109_Y20_N22
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (counter3(1) & ((counter3(0) & ((counter3(3)))) # (!counter3(0) & (counter3(2))))) # (!counter3(1) & (counter3(2) & (counter3(0) $ (counter3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(0),
	datab => counter3(2),
	datac => counter3(1),
	datad => counter3(3),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X109_Y20_N28
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (counter3(2) & (!counter3(1) & (counter3(0) $ (!counter3(3))))) # (!counter3(2) & (counter3(0) & (counter3(1) $ (!counter3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(0),
	datab => counter3(2),
	datac => counter3(1),
	datad => counter3(3),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X106_Y17_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = counter4(0) $ (VCC)
-- \Add3~1\ = CARRY(counter4(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X109_Y16_N0
\counter4[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4[3]~1_combout\ = (\LessThan2~9_combout\ & (\LessThan1~9_combout\ & \LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datac => \LessThan1~9_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter4[3]~1_combout\);

-- Location: FF_X106_Y16_N31
\counter4[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~62_combout\,
	clrn => \rst~input_o\,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(31));

-- Location: LCCOMB_X106_Y17_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (counter4(1) & (!\Add3~1\)) # (!counter4(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!counter4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X106_Y17_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (counter4(2) & (\Add3~3\ $ (GND))) # (!counter4(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((counter4(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X105_Y16_N8
\counter4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~3_combout\ = (\Add3~4_combout\ & !\LessThan3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~4_combout\,
	datad => \LessThan3~9_combout\,
	combout => \counter4~3_combout\);

-- Location: FF_X106_Y17_N25
\counter4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~3_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(2));

-- Location: LCCOMB_X106_Y17_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (counter4(3) & (!\Add3~5\)) # (!counter4(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!counter4(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X105_Y16_N22
\counter4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~4_combout\ = (\Add3~6_combout\ & !\LessThan3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~6_combout\,
	datad => \LessThan3~9_combout\,
	combout => \counter4~4_combout\);

-- Location: FF_X106_Y17_N29
\counter4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~4_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(3));

-- Location: LCCOMB_X106_Y17_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (counter4(4) & (\Add3~7\ $ (GND))) # (!counter4(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((counter4(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X105_Y17_N6
\counter4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~31_combout\ = (\Add3~8_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~8_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~31_combout\);

-- Location: FF_X106_Y17_N1
\counter4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~31_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(4));

-- Location: LCCOMB_X106_Y17_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (counter4(5) & (!\Add3~9\)) # (!counter4(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!counter4(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X105_Y17_N4
\counter4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~30_combout\ = (\Add3~10_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~10_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~30_combout\);

-- Location: FF_X106_Y17_N23
\counter4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~30_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(5));

-- Location: LCCOMB_X106_Y17_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (counter4(6) & (\Add3~11\ $ (GND))) # (!counter4(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((counter4(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X105_Y17_N18
\counter4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~29_combout\ = (\Add3~12_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~12_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~29_combout\);

-- Location: FF_X106_Y17_N17
\counter4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~29_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(6));

-- Location: LCCOMB_X106_Y17_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (counter4(7) & (!\Add3~13\)) # (!counter4(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!counter4(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X105_Y17_N0
\counter4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~28_combout\ = (\Add3~14_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~14_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~28_combout\);

-- Location: FF_X106_Y17_N21
\counter4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~28_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(7));

-- Location: LCCOMB_X106_Y17_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (counter4(8) & (\Add3~15\ $ (GND))) # (!counter4(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((counter4(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X105_Y17_N2
\counter4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~27_combout\ = (\Add3~16_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~16_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~27_combout\);

-- Location: FF_X106_Y17_N11
\counter4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~27_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(8));

-- Location: LCCOMB_X106_Y17_N18
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (counter4(9) & (!\Add3~17\)) # (!counter4(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!counter4(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X105_Y17_N16
\counter4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~26_combout\ = (\Add3~18_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~18_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~26_combout\);

-- Location: FF_X106_Y17_N5
\counter4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~26_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(9));

-- Location: LCCOMB_X106_Y17_N20
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (counter4(10) & (\Add3~19\ $ (GND))) # (!counter4(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((counter4(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X105_Y17_N26
\counter4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~25_combout\ = (\Add3~20_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~20_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~25_combout\);

-- Location: FF_X106_Y17_N7
\counter4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~25_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(10));

-- Location: LCCOMB_X106_Y17_N22
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (counter4(11) & (!\Add3~21\)) # (!counter4(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!counter4(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X105_Y17_N24
\counter4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~24_combout\ = (\Add3~22_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~22_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~24_combout\);

-- Location: FF_X106_Y17_N19
\counter4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~24_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(11));

-- Location: LCCOMB_X106_Y17_N24
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (counter4(12) & (\Add3~23\ $ (GND))) # (!counter4(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((counter4(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X105_Y17_N22
\counter4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~23_combout\ = (\Add3~24_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~24_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~23_combout\);

-- Location: FF_X106_Y17_N9
\counter4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~23_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(12));

-- Location: LCCOMB_X106_Y17_N26
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (counter4(13) & (!\Add3~25\)) # (!counter4(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!counter4(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X105_Y17_N20
\counter4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~22_combout\ = (\Add3~26_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~26_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~22_combout\);

-- Location: FF_X106_Y17_N27
\counter4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~22_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(13));

-- Location: LCCOMB_X106_Y17_N28
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (counter4(14) & (\Add3~27\ $ (GND))) # (!counter4(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((counter4(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X105_Y17_N14
\counter4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~21_combout\ = (\Add3~28_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~28_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~21_combout\);

-- Location: FF_X106_Y17_N3
\counter4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~21_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(14));

-- Location: LCCOMB_X106_Y17_N30
\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (counter4(15) & (!\Add3~29\)) # (!counter4(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!counter4(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X105_Y17_N28
\counter4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~20_combout\ = (\Add3~30_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~30_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~20_combout\);

-- Location: FF_X106_Y17_N31
\counter4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~20_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(15));

-- Location: LCCOMB_X106_Y16_N0
\Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (counter4(16) & (\Add3~31\ $ (GND))) # (!counter4(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((counter4(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X105_Y17_N30
\counter4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~19_combout\ = (\Add3~32_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~32_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~19_combout\);

-- Location: FF_X106_Y16_N29
\counter4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~19_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(16));

-- Location: LCCOMB_X106_Y16_N2
\Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (counter4(17) & (!\Add3~33\)) # (!counter4(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!counter4(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X105_Y17_N8
\counter4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~18_combout\ = (\Add3~34_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~34_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~18_combout\);

-- Location: FF_X106_Y16_N3
\counter4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~18_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(17));

-- Location: LCCOMB_X106_Y16_N4
\Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (counter4(18) & (\Add3~35\ $ (GND))) # (!counter4(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((counter4(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X107_Y16_N22
\counter4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~17_combout\ = (\Add3~36_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~36_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~17_combout\);

-- Location: FF_X106_Y16_N23
\counter4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~17_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(18));

-- Location: LCCOMB_X106_Y16_N6
\Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (counter4(19) & (!\Add3~37\)) # (!counter4(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!counter4(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X106_Y15_N12
\counter4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~16_combout\ = (\Add3~62_combout\ & \Add3~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~62_combout\,
	datad => \Add3~38_combout\,
	combout => \counter4~16_combout\);

-- Location: FF_X106_Y16_N27
\counter4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~16_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(19));

-- Location: LCCOMB_X106_Y16_N8
\Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (counter4(20) & (\Add3~39\ $ (GND))) # (!counter4(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((counter4(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X105_Y16_N14
\counter4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~15_combout\ = (\Add3~62_combout\ & \Add3~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datac => \Add3~40_combout\,
	combout => \counter4~15_combout\);

-- Location: FF_X109_Y16_N23
\counter4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~15_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(20));

-- Location: LCCOMB_X106_Y16_N10
\Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (counter4(21) & (!\Add3~41\)) # (!counter4(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!counter4(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X105_Y16_N16
\counter4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~14_combout\ = (\Add3~62_combout\ & \Add3~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datac => \Add3~42_combout\,
	combout => \counter4~14_combout\);

-- Location: FF_X106_Y16_N25
\counter4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~14_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(21));

-- Location: LCCOMB_X106_Y16_N12
\Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (counter4(22) & (\Add3~43\ $ (GND))) # (!counter4(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((counter4(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X107_Y16_N20
\counter4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~13_combout\ = (\Add3~44_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~44_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~13_combout\);

-- Location: FF_X106_Y16_N11
\counter4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~13_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(22));

-- Location: LCCOMB_X106_Y16_N14
\Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (counter4(23) & (!\Add3~45\)) # (!counter4(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!counter4(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X107_Y16_N14
\counter4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~12_combout\ = (\Add3~46_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~46_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~12_combout\);

-- Location: FF_X106_Y16_N15
\counter4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~12_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(23));

-- Location: LCCOMB_X106_Y16_N16
\Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (counter4(24) & (\Add3~47\ $ (GND))) # (!counter4(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((counter4(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X107_Y16_N4
\counter4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~11_combout\ = (\Add3~48_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~48_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~11_combout\);

-- Location: FF_X106_Y16_N17
\counter4[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~11_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(24));

-- Location: LCCOMB_X106_Y16_N18
\Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (counter4(25) & (!\Add3~49\)) # (!counter4(25) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!counter4(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X107_Y16_N30
\counter4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~10_combout\ = (\Add3~50_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~50_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~10_combout\);

-- Location: FF_X106_Y16_N9
\counter4[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~10_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(25));

-- Location: LCCOMB_X106_Y16_N20
\Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (counter4(26) & (\Add3~51\ $ (GND))) # (!counter4(26) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((counter4(26) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X107_Y16_N2
\counter4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~9_combout\ = (\Add3~62_combout\ & \Add3~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~62_combout\,
	datad => \Add3~52_combout\,
	combout => \counter4~9_combout\);

-- Location: FF_X107_Y16_N3
\counter4[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter4~9_combout\,
	clrn => \rst~input_o\,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(26));

-- Location: LCCOMB_X106_Y16_N22
\Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (counter4(27) & (!\Add3~53\)) # (!counter4(27) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!counter4(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X107_Y16_N24
\counter4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~8_combout\ = (\Add3~62_combout\ & \Add3~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~62_combout\,
	datad => \Add3~54_combout\,
	combout => \counter4~8_combout\);

-- Location: FF_X107_Y16_N25
\counter4[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter4~8_combout\,
	clrn => \rst~input_o\,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(27));

-- Location: LCCOMB_X106_Y16_N24
\Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (counter4(28) & (\Add3~55\ $ (GND))) # (!counter4(28) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((counter4(28) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X107_Y16_N26
\counter4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~7_combout\ = (\Add3~62_combout\ & \Add3~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~62_combout\,
	datad => \Add3~56_combout\,
	combout => \counter4~7_combout\);

-- Location: FF_X107_Y16_N27
\counter4[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter4~7_combout\,
	clrn => \rst~input_o\,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(28));

-- Location: LCCOMB_X106_Y16_N26
\Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (counter4(29) & (!\Add3~57\)) # (!counter4(29) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!counter4(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X107_Y16_N12
\counter4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~6_combout\ = (\Add3~58_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~58_combout\,
	datad => \Add3~62_combout\,
	combout => \counter4~6_combout\);

-- Location: FF_X106_Y16_N21
\counter4[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~6_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(29));

-- Location: LCCOMB_X106_Y16_N28
\Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (counter4(30) & (\Add3~59\ $ (GND))) # (!counter4(30) & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((counter4(30) & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X107_Y16_N10
\counter4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~5_combout\ = (\Add3~62_combout\ & \Add3~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~62_combout\,
	datad => \Add3~60_combout\,
	combout => \counter4~5_combout\);

-- Location: FF_X106_Y16_N7
\counter4[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(30));

-- Location: LCCOMB_X106_Y16_N30
\Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = counter4(31) $ (\Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: LCCOMB_X105_Y16_N4
\LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (\Add3~36_combout\) # ((\Add3~40_combout\) # ((\Add3~34_combout\) # (\Add3~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~36_combout\,
	datab => \Add3~40_combout\,
	datac => \Add3~34_combout\,
	datad => \Add3~38_combout\,
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X105_Y16_N6
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\Add3~8_combout\) # ((\Add3~6_combout\ & ((\Add3~2_combout\) # (\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~8_combout\,
	datac => \Add3~4_combout\,
	datad => \Add3~6_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X105_Y16_N28
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\Add3~14_combout\) # ((\Add3~12_combout\) # ((\Add3~10_combout\) # (\Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \Add3~12_combout\,
	datac => \Add3~10_combout\,
	datad => \Add3~16_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X105_Y16_N30
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (\Add3~18_combout\) # ((\Add3~22_combout\) # ((\Add3~20_combout\) # (\Add3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~18_combout\,
	datab => \Add3~22_combout\,
	datac => \Add3~20_combout\,
	datad => \Add3~24_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X105_Y16_N12
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (\Add3~32_combout\) # ((\Add3~30_combout\) # ((\Add3~26_combout\) # (\Add3~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => \Add3~30_combout\,
	datac => \Add3~26_combout\,
	datad => \Add3~28_combout\,
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X105_Y16_N2
\LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (\LessThan3~0_combout\) # ((\LessThan3~1_combout\) # ((\LessThan3~2_combout\) # (\LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan3~1_combout\,
	datac => \LessThan3~2_combout\,
	datad => \LessThan3~3_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X105_Y16_N10
\LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = (\Add3~42_combout\) # ((\Add3~44_combout\) # ((\LessThan3~5_combout\) # (\LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~42_combout\,
	datab => \Add3~44_combout\,
	datac => \LessThan3~5_combout\,
	datad => \LessThan3~4_combout\,
	combout => \LessThan3~6_combout\);

-- Location: LCCOMB_X105_Y16_N24
\LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~7_combout\ = (\Add3~46_combout\) # ((\Add3~50_combout\) # ((\Add3~48_combout\) # (\LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~46_combout\,
	datab => \Add3~50_combout\,
	datac => \Add3~48_combout\,
	datad => \LessThan3~6_combout\,
	combout => \LessThan3~7_combout\);

-- Location: LCCOMB_X105_Y16_N18
\LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~8_combout\ = (\Add3~54_combout\) # ((\Add3~56_combout\) # ((\Add3~52_combout\) # (\LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~54_combout\,
	datab => \Add3~56_combout\,
	datac => \Add3~52_combout\,
	datad => \LessThan3~7_combout\,
	combout => \LessThan3~8_combout\);

-- Location: LCCOMB_X105_Y16_N20
\LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~9_combout\ = (!\Add3~62_combout\ & ((\Add3~58_combout\) # ((\Add3~60_combout\) # (\LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datab => \Add3~58_combout\,
	datac => \Add3~60_combout\,
	datad => \LessThan3~8_combout\,
	combout => \LessThan3~9_combout\);

-- Location: LCCOMB_X105_Y16_N26
\counter4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~0_combout\ = (\Add3~0_combout\ & !\LessThan3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~0_combout\,
	datad => \LessThan3~9_combout\,
	combout => \counter4~0_combout\);

-- Location: FF_X106_Y17_N13
\counter4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter4~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(0));

-- Location: LCCOMB_X105_Y16_N0
\counter4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4~2_combout\ = (\Add3~2_combout\ & !\LessThan3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~2_combout\,
	datad => \LessThan3~9_combout\,
	combout => \counter4~2_combout\);

-- Location: FF_X105_Y16_N1
\counter4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter4~2_combout\,
	clrn => \rst~input_o\,
	ena => \counter4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(1));

-- Location: LCCOMB_X114_Y19_N28
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (counter4(0) & ((counter4(3)) # (counter4(1) $ (counter4(2))))) # (!counter4(0) & ((counter4(1)) # (counter4(2) $ (counter4(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(1),
	datab => counter4(2),
	datac => counter4(0),
	datad => counter4(3),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X114_Y19_N10
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (counter4(0) & (counter4(3) $ (((counter4(1)) # (!counter4(2)))))) # (!counter4(0) & (counter4(1) & (!counter4(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(1),
	datab => counter4(2),
	datac => counter4(0),
	datad => counter4(3),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X114_Y19_N8
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (counter4(1) & (((counter4(0) & !counter4(3))))) # (!counter4(1) & ((counter4(2) & ((!counter4(3)))) # (!counter4(2) & (counter4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(1),
	datab => counter4(2),
	datac => counter4(0),
	datad => counter4(3),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X114_Y19_N26
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (counter4(1) & (counter4(2) & (counter4(0)))) # (!counter4(1) & (!counter4(3) & (counter4(2) $ (counter4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(1),
	datab => counter4(2),
	datac => counter4(0),
	datad => counter4(3),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X114_Y19_N4
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (counter4(2) & (counter4(3) & ((counter4(1)) # (!counter4(0))))) # (!counter4(2) & (counter4(1) & (!counter4(0) & !counter4(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(1),
	datab => counter4(2),
	datac => counter4(0),
	datad => counter4(3),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X114_Y19_N14
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (counter4(1) & ((counter4(0) & ((counter4(3)))) # (!counter4(0) & (counter4(2))))) # (!counter4(1) & (counter4(2) & (counter4(0) $ (counter4(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(1),
	datab => counter4(2),
	datac => counter4(0),
	datad => counter4(3),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X114_Y19_N20
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (counter4(2) & (!counter4(1) & (counter4(0) $ (!counter4(3))))) # (!counter4(2) & (counter4(0) & (counter4(1) $ (!counter4(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(1),
	datab => counter4(2),
	datac => counter4(0),
	datad => counter4(3),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X110_Y16_N26
\counter5[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5[3]~1_combout\ = (\LessThan1~9_combout\ & (\LessThan2~9_combout\ & (\LessThan0~10_combout\ & \LessThan3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~9_combout\,
	datab => \LessThan2~9_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan3~9_combout\,
	combout => \counter5[3]~1_combout\);

-- Location: FF_X110_Y18_N31
\counter5[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~62_combout\,
	clrn => \rst~input_o\,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(31));

-- Location: LCCOMB_X110_Y19_N0
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = counter5(0) $ (VCC)
-- \Add4~1\ = CARRY(counter5(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter5(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X110_Y19_N2
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (counter5(1) & (!\Add4~1\)) # (!counter5(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!counter5(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X109_Y18_N6
\LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~5_combout\ = (\Add4~34_combout\) # ((\Add4~40_combout\) # ((\Add4~36_combout\) # (\Add4~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datab => \Add4~40_combout\,
	datac => \Add4~36_combout\,
	datad => \Add4~38_combout\,
	combout => \LessThan4~5_combout\);

-- Location: LCCOMB_X109_Y19_N10
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\Add4~8_combout\) # ((\Add4~6_combout\ & ((\Add4~2_combout\) # (\Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Add4~8_combout\,
	datac => \Add4~4_combout\,
	datad => \Add4~6_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X109_Y19_N28
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\Add4~14_combout\) # ((\Add4~10_combout\) # ((\Add4~12_combout\) # (\Add4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \Add4~10_combout\,
	datac => \Add4~12_combout\,
	datad => \Add4~16_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X109_Y19_N30
\LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (\Add4~20_combout\) # ((\Add4~18_combout\) # ((\Add4~24_combout\) # (\Add4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~20_combout\,
	datab => \Add4~18_combout\,
	datac => \Add4~24_combout\,
	datad => \Add4~22_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X109_Y19_N24
\LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = (\Add4~28_combout\) # ((\Add4~26_combout\) # ((\Add4~30_combout\) # (\Add4~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~28_combout\,
	datab => \Add4~26_combout\,
	datac => \Add4~30_combout\,
	datad => \Add4~32_combout\,
	combout => \LessThan4~3_combout\);

-- Location: LCCOMB_X109_Y19_N26
\LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~4_combout\ = (\LessThan4~0_combout\) # ((\LessThan4~1_combout\) # ((\LessThan4~2_combout\) # (\LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \LessThan4~1_combout\,
	datac => \LessThan4~2_combout\,
	datad => \LessThan4~3_combout\,
	combout => \LessThan4~4_combout\);

-- Location: LCCOMB_X109_Y16_N6
\LessThan4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~6_combout\ = (\Add4~42_combout\) # ((\Add4~44_combout\) # ((\LessThan4~5_combout\) # (\LessThan4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~42_combout\,
	datab => \Add4~44_combout\,
	datac => \LessThan4~5_combout\,
	datad => \LessThan4~4_combout\,
	combout => \LessThan4~6_combout\);

-- Location: LCCOMB_X109_Y16_N24
\LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~7_combout\ = (\Add4~46_combout\) # ((\Add4~50_combout\) # ((\Add4~48_combout\) # (\LessThan4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~46_combout\,
	datab => \Add4~50_combout\,
	datac => \Add4~48_combout\,
	datad => \LessThan4~6_combout\,
	combout => \LessThan4~7_combout\);

-- Location: LCCOMB_X109_Y16_N18
\LessThan4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~8_combout\ = (\Add4~52_combout\) # ((\Add4~54_combout\) # (\LessThan4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~52_combout\,
	datac => \Add4~54_combout\,
	datad => \LessThan4~7_combout\,
	combout => \LessThan4~8_combout\);

-- Location: LCCOMB_X109_Y16_N12
\LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~9_combout\ = (\Add4~60_combout\) # ((\Add4~58_combout\) # ((\Add4~56_combout\) # (\LessThan4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~60_combout\,
	datab => \Add4~58_combout\,
	datac => \Add4~56_combout\,
	datad => \LessThan4~8_combout\,
	combout => \LessThan4~9_combout\);

-- Location: LCCOMB_X109_Y19_N6
\counter5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~2_combout\ = (\Add4~2_combout\ & ((\Add4~62_combout\) # (!\LessThan4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~62_combout\,
	datac => \Add4~2_combout\,
	datad => \LessThan4~9_combout\,
	combout => \counter5~2_combout\);

-- Location: FF_X109_Y19_N7
\counter5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter5~2_combout\,
	clrn => \rst~input_o\,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(1));

-- Location: LCCOMB_X110_Y19_N4
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (counter5(2) & (\Add4~3\ $ (GND))) # (!counter5(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((counter5(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter5(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X109_Y19_N12
\counter5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~3_combout\ = (\Add4~4_combout\ & ((\Add4~62_combout\) # (!\LessThan4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~62_combout\,
	datac => \Add4~4_combout\,
	datad => \LessThan4~9_combout\,
	combout => \counter5~3_combout\);

-- Location: FF_X109_Y19_N13
\counter5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter5~3_combout\,
	clrn => \rst~input_o\,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(2));

-- Location: LCCOMB_X110_Y19_N6
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (counter5(3) & (!\Add4~5\)) # (!counter5(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!counter5(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter5(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X109_Y19_N14
\counter5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~4_combout\ = (\Add4~6_combout\ & ((\Add4~62_combout\) # (!\LessThan4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datac => \Add4~62_combout\,
	datad => \LessThan4~9_combout\,
	combout => \counter5~4_combout\);

-- Location: FF_X109_Y19_N15
\counter5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter5~4_combout\,
	clrn => \rst~input_o\,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(3));

-- Location: LCCOMB_X110_Y19_N8
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (counter5(4) & (\Add4~7\ $ (GND))) # (!counter5(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((counter5(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X109_Y19_N18
\counter5~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~31_combout\ = (\Add4~8_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~8_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~31_combout\);

-- Location: FF_X110_Y19_N1
\counter5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~31_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(4));

-- Location: LCCOMB_X110_Y19_N10
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (counter5(5) & (!\Add4~9\)) # (!counter5(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!counter5(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter5(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X111_Y19_N18
\counter5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~30_combout\ = (\Add4~10_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~30_combout\);

-- Location: FF_X110_Y19_N7
\counter5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~30_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(5));

-- Location: LCCOMB_X110_Y19_N12
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (counter5(6) & (\Add4~11\ $ (GND))) # (!counter5(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((counter5(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X109_Y19_N0
\counter5~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~29_combout\ = (\Add4~12_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~12_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~29_combout\);

-- Location: FF_X110_Y19_N3
\counter5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~29_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(6));

-- Location: LCCOMB_X110_Y19_N14
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (counter5(7) & (!\Add4~13\)) # (!counter5(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!counter5(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter5(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X111_Y19_N20
\counter5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~28_combout\ = (\Add4~14_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~28_combout\);

-- Location: FF_X110_Y19_N31
\counter5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~28_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(7));

-- Location: LCCOMB_X110_Y19_N16
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (counter5(8) & (\Add4~15\ $ (GND))) # (!counter5(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((counter5(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X109_Y19_N22
\counter5~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~27_combout\ = (\Add4~16_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~16_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~27_combout\);

-- Location: FF_X110_Y19_N9
\counter5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~27_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(8));

-- Location: LCCOMB_X110_Y19_N18
\Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (counter5(9) & (!\Add4~17\)) # (!counter5(9) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!counter5(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter5(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X111_Y19_N10
\counter5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~26_combout\ = (\Add4~18_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~18_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~26_combout\);

-- Location: FF_X110_Y19_N27
\counter5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~26_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(9));

-- Location: LCCOMB_X110_Y19_N20
\Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (counter5(10) & (\Add4~19\ $ (GND))) # (!counter5(10) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((counter5(10) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X111_Y19_N12
\counter5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~25_combout\ = (\Add4~20_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~20_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~25_combout\);

-- Location: FF_X110_Y19_N25
\counter5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~25_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(10));

-- Location: LCCOMB_X110_Y19_N22
\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (counter5(11) & (!\Add4~21\)) # (!counter5(11) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!counter5(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(11),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X111_Y19_N14
\counter5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~24_combout\ = (\Add4~22_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~22_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~24_combout\);

-- Location: FF_X110_Y19_N19
\counter5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~24_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(11));

-- Location: LCCOMB_X110_Y19_N24
\Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (counter5(12) & (\Add4~23\ $ (GND))) # (!counter5(12) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((counter5(12) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter5(12),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X111_Y19_N8
\counter5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~23_combout\ = (\Add4~24_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~24_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~23_combout\);

-- Location: FF_X110_Y19_N11
\counter5[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~23_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(12));

-- Location: LCCOMB_X110_Y19_N26
\Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (counter5(13) & (!\Add4~25\)) # (!counter5(13) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!counter5(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(13),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X109_Y19_N4
\counter5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~22_combout\ = (\Add4~26_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~26_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~22_combout\);

-- Location: FF_X110_Y19_N21
\counter5[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~22_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(13));

-- Location: LCCOMB_X110_Y19_N28
\Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (counter5(14) & (\Add4~27\ $ (GND))) # (!counter5(14) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((counter5(14) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(14),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X109_Y19_N2
\counter5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~21_combout\ = (\Add4~28_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~28_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~21_combout\);

-- Location: FF_X110_Y19_N29
\counter5[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~21_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(14));

-- Location: LCCOMB_X110_Y19_N30
\Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (counter5(15) & (!\Add4~29\)) # (!counter5(15) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!counter5(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(15),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X111_Y19_N30
\counter5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~20_combout\ = (\Add4~30_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~30_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~20_combout\);

-- Location: FF_X110_Y19_N5
\counter5[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~20_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(15));

-- Location: LCCOMB_X110_Y18_N0
\Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (counter5(16) & (\Add4~31\ $ (GND))) # (!counter5(16) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((counter5(16) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(16),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X109_Y19_N20
\counter5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~19_combout\ = (\Add4~32_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~32_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~19_combout\);

-- Location: FF_X110_Y18_N29
\counter5[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~19_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(16));

-- Location: LCCOMB_X110_Y18_N2
\Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (counter5(17) & (!\Add4~33\)) # (!counter5(17) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!counter5(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(17),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X109_Y18_N26
\counter5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~18_combout\ = (\Add4~34_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~34_combout\,
	datac => \Add4~62_combout\,
	combout => \counter5~18_combout\);

-- Location: FF_X110_Y18_N15
\counter5[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~18_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(17));

-- Location: LCCOMB_X110_Y18_N4
\Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (counter5(18) & (\Add4~35\ $ (GND))) # (!counter5(18) & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((counter5(18) & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(18),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X109_Y18_N8
\counter5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~17_combout\ = (\Add4~36_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~36_combout\,
	datac => \Add4~62_combout\,
	combout => \counter5~17_combout\);

-- Location: FF_X110_Y18_N25
\counter5[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~17_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(18));

-- Location: LCCOMB_X110_Y18_N6
\Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (counter5(19) & (!\Add4~37\)) # (!counter5(19) & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!counter5(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(19),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X109_Y18_N30
\counter5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~16_combout\ = (\Add4~62_combout\ & \Add4~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~62_combout\,
	datad => \Add4~38_combout\,
	combout => \counter5~16_combout\);

-- Location: FF_X110_Y18_N5
\counter5[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~16_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(19));

-- Location: LCCOMB_X110_Y18_N8
\Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (counter5(20) & (\Add4~39\ $ (GND))) # (!counter5(20) & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((counter5(20) & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(20),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X109_Y18_N0
\counter5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~15_combout\ = (\Add4~62_combout\ & \Add4~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~62_combout\,
	datac => \Add4~40_combout\,
	combout => \counter5~15_combout\);

-- Location: FF_X110_Y18_N17
\counter5[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~15_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(20));

-- Location: LCCOMB_X110_Y18_N10
\Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (counter5(21) & (!\Add4~41\)) # (!counter5(21) & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!counter5(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(21),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X109_Y18_N2
\counter5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~14_combout\ = (\Add4~42_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~42_combout\,
	datac => \Add4~62_combout\,
	combout => \counter5~14_combout\);

-- Location: FF_X110_Y18_N1
\counter5[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~14_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(21));

-- Location: LCCOMB_X110_Y18_N12
\Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (counter5(22) & (\Add4~43\ $ (GND))) # (!counter5(22) & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((counter5(22) & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(22),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X109_Y18_N4
\counter5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~13_combout\ = (\Add4~44_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~44_combout\,
	datac => \Add4~62_combout\,
	combout => \counter5~13_combout\);

-- Location: FF_X110_Y18_N19
\counter5[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~13_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(22));

-- Location: LCCOMB_X110_Y18_N14
\Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (counter5(23) & (!\Add4~45\)) # (!counter5(23) & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!counter5(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(23),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: LCCOMB_X109_Y18_N22
\counter5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~12_combout\ = (\Add4~46_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~46_combout\,
	datac => \Add4~62_combout\,
	combout => \counter5~12_combout\);

-- Location: FF_X110_Y18_N3
\counter5[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~12_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(23));

-- Location: LCCOMB_X110_Y18_N16
\Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (counter5(24) & (\Add4~47\ $ (GND))) # (!counter5(24) & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((counter5(24) & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter5(24),
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: LCCOMB_X109_Y18_N16
\counter5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~11_combout\ = (\Add4~62_combout\ & \Add4~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~62_combout\,
	datad => \Add4~48_combout\,
	combout => \counter5~11_combout\);

-- Location: FF_X110_Y18_N13
\counter5[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~11_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(24));

-- Location: LCCOMB_X110_Y18_N18
\Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (counter5(25) & (!\Add4~49\)) # (!counter5(25) & ((\Add4~49\) # (GND)))
-- \Add4~51\ = CARRY((!\Add4~49\) # (!counter5(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter5(25),
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: LCCOMB_X109_Y18_N18
\counter5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~10_combout\ = (\Add4~62_combout\ & \Add4~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~62_combout\,
	datad => \Add4~50_combout\,
	combout => \counter5~10_combout\);

-- Location: FF_X110_Y18_N23
\counter5[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~10_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(25));

-- Location: LCCOMB_X110_Y18_N20
\Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (counter5(26) & (\Add4~51\ $ (GND))) # (!counter5(26) & (!\Add4~51\ & VCC))
-- \Add4~53\ = CARRY((counter5(26) & !\Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter5(26),
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: LCCOMB_X109_Y18_N12
\counter5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~9_combout\ = (\Add4~52_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~52_combout\,
	datac => \Add4~62_combout\,
	combout => \counter5~9_combout\);

-- Location: FF_X110_Y18_N27
\counter5[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~9_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(26));

-- Location: LCCOMB_X110_Y18_N22
\Add4~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (counter5(27) & (!\Add4~53\)) # (!counter5(27) & ((\Add4~53\) # (GND)))
-- \Add4~55\ = CARRY((!\Add4~53\) # (!counter5(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter5(27),
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: LCCOMB_X109_Y18_N14
\counter5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~8_combout\ = (\Add4~62_combout\ & \Add4~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~62_combout\,
	datad => \Add4~54_combout\,
	combout => \counter5~8_combout\);

-- Location: FF_X110_Y18_N7
\counter5[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~8_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(27));

-- Location: LCCOMB_X110_Y18_N24
\Add4~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (counter5(28) & (\Add4~55\ $ (GND))) # (!counter5(28) & (!\Add4~55\ & VCC))
-- \Add4~57\ = CARRY((counter5(28) & !\Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(28),
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: LCCOMB_X109_Y18_N28
\counter5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~7_combout\ = (\Add4~62_combout\ & \Add4~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~62_combout\,
	datad => \Add4~56_combout\,
	combout => \counter5~7_combout\);

-- Location: FF_X109_Y18_N29
\counter5[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter5~7_combout\,
	clrn => \rst~input_o\,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(28));

-- Location: LCCOMB_X110_Y18_N26
\Add4~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (counter5(29) & (!\Add4~57\)) # (!counter5(29) & ((\Add4~57\) # (GND)))
-- \Add4~59\ = CARRY((!\Add4~57\) # (!counter5(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(29),
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: LCCOMB_X109_Y18_N20
\counter5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~6_combout\ = (\Add4~62_combout\ & \Add4~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~62_combout\,
	datad => \Add4~58_combout\,
	combout => \counter5~6_combout\);

-- Location: FF_X110_Y18_N9
\counter5[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~6_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(29));

-- Location: LCCOMB_X110_Y18_N28
\Add4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = (counter5(30) & (\Add4~59\ $ (GND))) # (!counter5(30) & (!\Add4~59\ & VCC))
-- \Add4~61\ = CARRY((counter5(30) & !\Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter5(30),
	datad => VCC,
	cin => \Add4~59\,
	combout => \Add4~60_combout\,
	cout => \Add4~61\);

-- Location: LCCOMB_X111_Y19_N28
\counter5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~5_combout\ = (\Add4~60_combout\ & \Add4~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~60_combout\,
	datad => \Add4~62_combout\,
	combout => \counter5~5_combout\);

-- Location: FF_X110_Y18_N21
\counter5[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter5~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(30));

-- Location: LCCOMB_X110_Y18_N30
\Add4~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~62_combout\ = counter5(31) $ (\Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter5(31),
	cin => \Add4~61\,
	combout => \Add4~62_combout\);

-- Location: LCCOMB_X109_Y19_N16
\counter5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter5~0_combout\ = (\Add4~0_combout\ & ((\Add4~62_combout\) # (!\LessThan4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~62_combout\,
	datab => \Add4~0_combout\,
	datad => \LessThan4~9_combout\,
	combout => \counter5~0_combout\);

-- Location: FF_X109_Y19_N17
\counter5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter5~0_combout\,
	clrn => \rst~input_o\,
	ena => \counter5[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter5(0));

-- Location: LCCOMB_X111_Y19_N4
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (counter5(0) & ((counter5(3)) # (counter5(1) $ (counter5(2))))) # (!counter5(0) & ((counter5(1)) # (counter5(3) $ (counter5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter5(0),
	datab => counter5(3),
	datac => counter5(1),
	datad => counter5(2),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X111_Y19_N6
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (counter5(0) & (counter5(3) $ (((counter5(1)) # (!counter5(2)))))) # (!counter5(0) & (((counter5(1) & !counter5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter5(0),
	datab => counter5(3),
	datac => counter5(1),
	datad => counter5(2),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X111_Y19_N0
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (counter5(1) & (counter5(0) & (!counter5(3)))) # (!counter5(1) & ((counter5(2) & ((!counter5(3)))) # (!counter5(2) & (counter5(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter5(0),
	datab => counter5(3),
	datac => counter5(1),
	datad => counter5(2),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X111_Y19_N26
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (counter5(1) & (counter5(0) & ((counter5(2))))) # (!counter5(1) & (!counter5(3) & (counter5(0) $ (counter5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter5(0),
	datab => counter5(3),
	datac => counter5(1),
	datad => counter5(2),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X109_Y19_N8
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (counter5(2) & (counter5(3) & ((counter5(1)) # (!counter5(0))))) # (!counter5(2) & (!counter5(3) & (counter5(1) & !counter5(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter5(2),
	datab => counter5(3),
	datac => counter5(1),
	datad => counter5(0),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X111_Y19_N24
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (counter5(3) & ((counter5(0) & (counter5(1))) # (!counter5(0) & ((counter5(2)))))) # (!counter5(3) & (counter5(2) & (counter5(0) $ (counter5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter5(0),
	datab => counter5(3),
	datac => counter5(1),
	datad => counter5(2),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X111_Y19_N22
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (counter5(3) & (counter5(0) & (counter5(1) $ (counter5(2))))) # (!counter5(3) & (!counter5(1) & (counter5(0) $ (counter5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter5(0),
	datab => counter5(3),
	datac => counter5(1),
	datad => counter5(2),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X110_Y15_N0
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = counter6(0) $ (VCC)
-- \Add5~1\ = CARRY(counter6(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter6(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X109_Y16_N10
\LessThan4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~10_combout\ = (!\Add4~62_combout\ & \LessThan4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~62_combout\,
	datad => \LessThan4~9_combout\,
	combout => \LessThan4~10_combout\);

-- Location: LCCOMB_X109_Y16_N28
\counter6[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6[3]~1_combout\ = (\LessThan2~9_combout\ & (\LessThan3~9_combout\ & (\counter7[6]~0_combout\ & \LessThan4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \LessThan3~9_combout\,
	datac => \counter7[6]~0_combout\,
	datad => \LessThan4~10_combout\,
	combout => \counter6[3]~1_combout\);

-- Location: FF_X110_Y14_N31
\counter6[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~62_combout\,
	clrn => \rst~input_o\,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(31));

-- Location: LCCOMB_X110_Y15_N2
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (counter6(1) & (!\Add5~1\)) # (!counter6(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!counter6(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X109_Y15_N10
\counter6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~2_combout\ = (\Add5~2_combout\ & !\LessThan5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~2_combout\,
	datad => \LessThan5~9_combout\,
	combout => \counter6~2_combout\);

-- Location: FF_X109_Y15_N11
\counter6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter6~2_combout\,
	clrn => \rst~input_o\,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(1));

-- Location: LCCOMB_X110_Y15_N4
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (counter6(2) & (\Add5~3\ $ (GND))) # (!counter6(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((counter6(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X109_Y15_N28
\counter6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~3_combout\ = (\Add5~4_combout\ & !\LessThan5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datad => \LessThan5~9_combout\,
	combout => \counter6~3_combout\);

-- Location: FF_X109_Y15_N29
\counter6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter6~3_combout\,
	clrn => \rst~input_o\,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(2));

-- Location: LCCOMB_X110_Y15_N6
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (counter6(3) & (!\Add5~5\)) # (!counter6(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!counter6(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X109_Y15_N14
\counter6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~4_combout\ = (\Add5~6_combout\ & !\LessThan5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datad => \LessThan5~9_combout\,
	combout => \counter6~4_combout\);

-- Location: FF_X109_Y15_N15
\counter6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter6~4_combout\,
	clrn => \rst~input_o\,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(3));

-- Location: LCCOMB_X110_Y15_N8
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (counter6(4) & (\Add5~7\ $ (GND))) # (!counter6(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((counter6(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X109_Y15_N6
\counter6~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~31_combout\ = (\Add5~8_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~8_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~31_combout\);

-- Location: FF_X110_Y15_N5
\counter6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~31_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(4));

-- Location: LCCOMB_X110_Y15_N10
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (counter6(5) & (!\Add5~9\)) # (!counter6(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!counter6(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X109_Y15_N4
\counter6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~30_combout\ = (\Add5~10_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~10_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~30_combout\);

-- Location: FF_X110_Y15_N17
\counter6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~30_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(5));

-- Location: LCCOMB_X110_Y15_N12
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (counter6(6) & (\Add5~11\ $ (GND))) # (!counter6(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((counter6(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X109_Y15_N22
\counter6~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~29_combout\ = (\Add5~12_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~12_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~29_combout\);

-- Location: FF_X110_Y15_N29
\counter6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~29_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(6));

-- Location: LCCOMB_X110_Y15_N14
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (counter6(7) & (!\Add5~13\)) # (!counter6(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!counter6(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X109_Y15_N16
\counter6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~28_combout\ = (\Add5~14_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~14_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~28_combout\);

-- Location: FF_X110_Y15_N1
\counter6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~28_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(7));

-- Location: LCCOMB_X110_Y15_N16
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (counter6(8) & (\Add5~15\ $ (GND))) # (!counter6(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((counter6(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X109_Y15_N26
\counter6~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~27_combout\ = (\Add5~16_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~16_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~27_combout\);

-- Location: FF_X110_Y15_N19
\counter6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~27_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(8));

-- Location: LCCOMB_X110_Y15_N18
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (counter6(9) & (!\Add5~17\)) # (!counter6(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!counter6(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X109_Y15_N8
\counter6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~26_combout\ = (\Add5~18_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~18_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~26_combout\);

-- Location: FF_X110_Y15_N27
\counter6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~26_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(9));

-- Location: LCCOMB_X110_Y15_N20
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (counter6(10) & (\Add5~19\ $ (GND))) # (!counter6(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((counter6(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X109_Y15_N30
\counter6~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~25_combout\ = (\Add5~20_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~20_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~25_combout\);

-- Location: FF_X110_Y15_N13
\counter6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~25_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(10));

-- Location: LCCOMB_X110_Y15_N22
\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (counter6(11) & (!\Add5~21\)) # (!counter6(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!counter6(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X109_Y15_N12
\counter6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~24_combout\ = (\Add5~22_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~22_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~24_combout\);

-- Location: FF_X110_Y15_N11
\counter6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~24_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(11));

-- Location: LCCOMB_X110_Y15_N24
\Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (counter6(12) & (\Add5~23\ $ (GND))) # (!counter6(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((counter6(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X108_Y15_N14
\counter6~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~23_combout\ = (\Add5~24_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~24_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~23_combout\);

-- Location: FF_X110_Y15_N7
\counter6[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~23_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(12));

-- Location: LCCOMB_X110_Y15_N26
\Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (counter6(13) & (!\Add5~25\)) # (!counter6(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!counter6(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X111_Y15_N30
\counter6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~22_combout\ = (\Add5~26_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~26_combout\,
	datac => \Add5~62_combout\,
	combout => \counter6~22_combout\);

-- Location: FF_X110_Y15_N23
\counter6[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~22_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(13));

-- Location: LCCOMB_X110_Y15_N28
\Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (counter6(14) & (\Add5~27\ $ (GND))) # (!counter6(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((counter6(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X109_Y15_N18
\counter6~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~21_combout\ = (\Add5~28_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~28_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~21_combout\);

-- Location: FF_X110_Y15_N21
\counter6[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~21_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(14));

-- Location: LCCOMB_X110_Y15_N30
\Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (counter6(15) & (!\Add5~29\)) # (!counter6(15) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!counter6(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(15),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X111_Y15_N0
\counter6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~20_combout\ = (\Add5~30_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~30_combout\,
	datac => \Add5~62_combout\,
	combout => \counter6~20_combout\);

-- Location: FF_X110_Y15_N15
\counter6[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~20_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(15));

-- Location: LCCOMB_X110_Y14_N0
\Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (counter6(16) & (\Add5~31\ $ (GND))) # (!counter6(16) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((counter6(16) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(16),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X111_Y14_N10
\counter6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~19_combout\ = (\Add5~32_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~32_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~19_combout\);

-- Location: FF_X110_Y14_N23
\counter6[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~19_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(16));

-- Location: LCCOMB_X110_Y14_N2
\Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (counter6(17) & (!\Add5~33\)) # (!counter6(17) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!counter6(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(17),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X111_Y14_N20
\counter6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~18_combout\ = (\Add5~34_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~34_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~18_combout\);

-- Location: FF_X110_Y14_N9
\counter6[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~18_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(17));

-- Location: LCCOMB_X110_Y14_N4
\Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (counter6(18) & (\Add5~35\ $ (GND))) # (!counter6(18) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((counter6(18) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(18),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X111_Y14_N30
\counter6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~17_combout\ = (\Add5~36_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~36_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~17_combout\);

-- Location: FF_X110_Y14_N13
\counter6[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~17_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(18));

-- Location: LCCOMB_X110_Y14_N6
\Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (counter6(19) & (!\Add5~37\)) # (!counter6(19) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!counter6(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(19),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X111_Y14_N8
\counter6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~16_combout\ = (\Add5~38_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~38_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~16_combout\);

-- Location: FF_X110_Y14_N7
\counter6[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~16_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(19));

-- Location: LCCOMB_X110_Y14_N8
\Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (counter6(20) & (\Add5~39\ $ (GND))) # (!counter6(20) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((counter6(20) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(20),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: LCCOMB_X111_Y14_N14
\counter6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~15_combout\ = (\Add5~40_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~40_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~15_combout\);

-- Location: FF_X110_Y14_N27
\counter6[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~15_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(20));

-- Location: LCCOMB_X110_Y14_N10
\Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (counter6(21) & (!\Add5~41\)) # (!counter6(21) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!counter6(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(21),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X111_Y14_N12
\counter6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~14_combout\ = (\Add5~42_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~42_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~14_combout\);

-- Location: FF_X110_Y14_N15
\counter6[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~14_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(21));

-- Location: LCCOMB_X110_Y14_N12
\Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (counter6(22) & (\Add5~43\ $ (GND))) # (!counter6(22) & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((counter6(22) & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(22),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X111_Y14_N2
\counter6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~13_combout\ = (\Add5~44_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~44_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~13_combout\);

-- Location: FF_X110_Y14_N29
\counter6[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~13_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(22));

-- Location: LCCOMB_X110_Y14_N14
\Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (counter6(23) & (!\Add5~45\)) # (!counter6(23) & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!counter6(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(23),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: LCCOMB_X111_Y14_N0
\counter6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~12_combout\ = (\Add5~46_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~46_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~12_combout\);

-- Location: FF_X110_Y14_N5
\counter6[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~12_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(23));

-- Location: LCCOMB_X110_Y14_N16
\Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (counter6(24) & (\Add5~47\ $ (GND))) # (!counter6(24) & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((counter6(24) & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(24),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: LCCOMB_X109_Y18_N10
\counter6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~11_combout\ = (\Add5~48_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~48_combout\,
	datac => \Add5~62_combout\,
	combout => \counter6~11_combout\);

-- Location: FF_X109_Y18_N11
\counter6[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter6~11_combout\,
	clrn => \rst~input_o\,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(24));

-- Location: LCCOMB_X110_Y14_N18
\Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (counter6(25) & (!\Add5~49\)) # (!counter6(25) & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!counter6(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(25),
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: LCCOMB_X108_Y14_N12
\counter6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~10_combout\ = (\Add5~50_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~50_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~10_combout\);

-- Location: FF_X108_Y14_N13
\counter6[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter6~10_combout\,
	clrn => \rst~input_o\,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(25));

-- Location: LCCOMB_X110_Y14_N20
\Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (counter6(26) & (\Add5~51\ $ (GND))) # (!counter6(26) & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((counter6(26) & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(26),
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: LCCOMB_X108_Y14_N30
\counter6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~9_combout\ = (\Add5~52_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~52_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~9_combout\);

-- Location: FF_X108_Y14_N31
\counter6[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter6~9_combout\,
	clrn => \rst~input_o\,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(26));

-- Location: LCCOMB_X110_Y14_N22
\Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (counter6(27) & (!\Add5~53\)) # (!counter6(27) & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!counter6(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(27),
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: LCCOMB_X111_Y14_N22
\counter6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~8_combout\ = (\Add5~54_combout\ & \Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~54_combout\,
	datad => \Add5~62_combout\,
	combout => \counter6~8_combout\);

-- Location: FF_X110_Y14_N17
\counter6[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~8_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(27));

-- Location: LCCOMB_X110_Y14_N24
\Add5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (counter6(28) & (\Add5~55\ $ (GND))) # (!counter6(28) & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((counter6(28) & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(28),
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: LCCOMB_X109_Y18_N24
\counter6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~7_combout\ = (\Add5~62_combout\ & \Add5~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~62_combout\,
	datad => \Add5~56_combout\,
	combout => \counter6~7_combout\);

-- Location: FF_X109_Y18_N25
\counter6[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter6~7_combout\,
	clrn => \rst~input_o\,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(28));

-- Location: LCCOMB_X110_Y14_N26
\Add5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (counter6(29) & (!\Add5~57\)) # (!counter6(29) & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!counter6(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(29),
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: LCCOMB_X108_Y14_N20
\counter6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~6_combout\ = (\Add5~62_combout\ & \Add5~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~62_combout\,
	datad => \Add5~58_combout\,
	combout => \counter6~6_combout\);

-- Location: FF_X108_Y14_N21
\counter6[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter6~6_combout\,
	clrn => \rst~input_o\,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(29));

-- Location: LCCOMB_X110_Y14_N28
\Add5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = (counter6(30) & (\Add5~59\ $ (GND))) # (!counter6(30) & (!\Add5~59\ & VCC))
-- \Add5~61\ = CARRY((counter6(30) & !\Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter6(30),
	datad => VCC,
	cin => \Add5~59\,
	combout => \Add5~60_combout\,
	cout => \Add5~61\);

-- Location: LCCOMB_X110_Y14_N30
\Add5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~62_combout\ = counter6(31) $ (\Add5~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter6(31),
	cin => \Add5~61\,
	combout => \Add5~62_combout\);

-- Location: LCCOMB_X110_Y16_N18
\counter6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~5_combout\ = (\Add5~62_combout\ & \Add5~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~62_combout\,
	datad => \Add5~60_combout\,
	combout => \counter6~5_combout\);

-- Location: FF_X108_Y16_N13
\counter6[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter6~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(30));

-- Location: LCCOMB_X109_Y15_N0
\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (\Add5~20_combout\) # ((\Add5~18_combout\) # ((\Add5~24_combout\) # (\Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~20_combout\,
	datab => \Add5~18_combout\,
	datac => \Add5~24_combout\,
	datad => \Add5~22_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X109_Y15_N24
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\Add5~8_combout\) # ((\Add5~6_combout\ & ((\Add5~2_combout\) # (\Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \Add5~8_combout\,
	datac => \Add5~2_combout\,
	datad => \Add5~4_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X109_Y15_N2
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\Add5~12_combout\) # ((\Add5~10_combout\) # ((\Add5~14_combout\) # (\Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~12_combout\,
	datab => \Add5~10_combout\,
	datac => \Add5~14_combout\,
	datad => \Add5~16_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X110_Y16_N28
\LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (\Add5~30_combout\) # ((\Add5~26_combout\) # ((\Add5~28_combout\) # (\Add5~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~30_combout\,
	datab => \Add5~26_combout\,
	datac => \Add5~28_combout\,
	datad => \Add5~32_combout\,
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X110_Y16_N30
\LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = (\LessThan5~2_combout\) # ((\LessThan5~0_combout\) # ((\LessThan5~1_combout\) # (\LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \LessThan5~0_combout\,
	datac => \LessThan5~1_combout\,
	datad => \LessThan5~3_combout\,
	combout => \LessThan5~4_combout\);

-- Location: LCCOMB_X111_Y14_N4
\LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~5_combout\ = (\Add5~34_combout\) # ((\Add5~36_combout\) # ((\Add5~38_combout\) # (\Add5~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~34_combout\,
	datab => \Add5~36_combout\,
	datac => \Add5~38_combout\,
	datad => \Add5~40_combout\,
	combout => \LessThan5~5_combout\);

-- Location: LCCOMB_X110_Y16_N20
\LessThan5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~6_combout\ = (\Add5~44_combout\) # ((\Add5~42_combout\) # ((\LessThan5~4_combout\) # (\LessThan5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~44_combout\,
	datab => \Add5~42_combout\,
	datac => \LessThan5~4_combout\,
	datad => \LessThan5~5_combout\,
	combout => \LessThan5~6_combout\);

-- Location: LCCOMB_X110_Y16_N6
\LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~7_combout\ = (\Add5~48_combout\) # ((\Add5~46_combout\) # ((\Add5~50_combout\) # (\LessThan5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~48_combout\,
	datab => \Add5~46_combout\,
	datac => \Add5~50_combout\,
	datad => \LessThan5~6_combout\,
	combout => \LessThan5~7_combout\);

-- Location: LCCOMB_X110_Y16_N10
\LessThan5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~8_combout\ = (\Add5~52_combout\) # ((\Add5~56_combout\) # ((\Add5~54_combout\) # (\LessThan5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~52_combout\,
	datab => \Add5~56_combout\,
	datac => \Add5~54_combout\,
	datad => \LessThan5~7_combout\,
	combout => \LessThan5~8_combout\);

-- Location: LCCOMB_X110_Y16_N8
\LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~9_combout\ = (!\Add5~62_combout\ & ((\Add5~60_combout\) # ((\Add5~58_combout\) # (\LessThan5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~60_combout\,
	datab => \Add5~62_combout\,
	datac => \Add5~58_combout\,
	datad => \LessThan5~8_combout\,
	combout => \LessThan5~9_combout\);

-- Location: LCCOMB_X109_Y15_N20
\counter6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter6~0_combout\ = (\Add5~0_combout\ & !\LessThan5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~0_combout\,
	datad => \LessThan5~9_combout\,
	combout => \counter6~0_combout\);

-- Location: FF_X109_Y15_N21
\counter6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter6~0_combout\,
	clrn => \rst~input_o\,
	ena => \counter6[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter6(0));

-- Location: LCCOMB_X108_Y15_N16
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (counter6(0) & ((counter6(3)) # (counter6(1) $ (counter6(2))))) # (!counter6(0) & ((counter6(1)) # (counter6(3) $ (counter6(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter6(0),
	datab => counter6(1),
	datac => counter6(3),
	datad => counter6(2),
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X108_Y15_N26
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (counter6(0) & (counter6(3) $ (((counter6(1)) # (!counter6(2)))))) # (!counter6(0) & (counter6(1) & ((!counter6(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter6(0),
	datab => counter6(1),
	datac => counter6(3),
	datad => counter6(2),
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X108_Y15_N20
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (counter6(1) & (counter6(0) & (!counter6(3)))) # (!counter6(1) & ((counter6(2) & ((!counter6(3)))) # (!counter6(2) & (counter6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter6(0),
	datab => counter6(1),
	datac => counter6(3),
	datad => counter6(2),
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X108_Y15_N6
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (counter6(1) & (counter6(0) & ((counter6(2))))) # (!counter6(1) & (!counter6(3) & (counter6(0) $ (counter6(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter6(0),
	datab => counter6(1),
	datac => counter6(3),
	datad => counter6(2),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X108_Y15_N12
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (counter6(3) & (counter6(2) & ((counter6(1)) # (!counter6(0))))) # (!counter6(3) & (!counter6(0) & (counter6(1) & !counter6(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter6(0),
	datab => counter6(1),
	datac => counter6(3),
	datad => counter6(2),
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X108_Y15_N10
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (counter6(1) & ((counter6(0) & (counter6(3))) # (!counter6(0) & ((counter6(2)))))) # (!counter6(1) & (counter6(2) & (counter6(0) $ (counter6(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter6(0),
	datab => counter6(1),
	datac => counter6(3),
	datad => counter6(2),
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X108_Y15_N28
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (counter6(3) & (counter6(0) & (counter6(1) $ (counter6(2))))) # (!counter6(3) & (!counter6(1) & (counter6(0) $ (counter6(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter6(0),
	datab => counter6(1),
	datac => counter6(3),
	datad => counter6(2),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X107_Y20_N0
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = counter7(0) $ (VCC)
-- \Add6~1\ = CARRY(counter7(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter7(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X109_Y16_N26
\counter7[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7[3]~2_combout\ = (\LessThan4~10_combout\ & (\LessThan3~9_combout\ & (\LessThan5~9_combout\ & \counter4[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~10_combout\,
	datab => \LessThan3~9_combout\,
	datac => \LessThan5~9_combout\,
	datad => \counter4[3]~1_combout\,
	combout => \counter7[3]~2_combout\);

-- Location: FF_X107_Y19_N31
\counter7[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add6~62_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(31));

-- Location: LCCOMB_X107_Y20_N6
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (counter7(3) & (!\Add6~5\)) # (!counter7(3) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!counter7(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X107_Y20_N8
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (counter7(4) & (\Add6~7\ $ (GND))) # (!counter7(4) & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((counter7(4) & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X109_Y20_N26
\counter7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~32_combout\ = (\Add6~8_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~32_combout\);

-- Location: FF_X109_Y20_N27
\counter7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~32_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(4));

-- Location: LCCOMB_X107_Y20_N10
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (counter7(5) & (!\Add6~9\)) # (!counter7(5) & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!counter7(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X108_Y20_N30
\counter7~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~31_combout\ = (\Add6~10_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~31_combout\);

-- Location: FF_X108_Y20_N31
\counter7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~31_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(5));

-- Location: LCCOMB_X107_Y20_N12
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (counter7(6) & (\Add6~11\ $ (GND))) # (!counter7(6) & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((counter7(6) & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(6),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X109_Y20_N4
\counter7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~30_combout\ = (\Add6~12_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~12_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~30_combout\);

-- Location: FF_X109_Y20_N5
\counter7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~30_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(6));

-- Location: LCCOMB_X107_Y20_N14
\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (counter7(7) & (!\Add6~13\)) # (!counter7(7) & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!counter7(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(7),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X109_Y20_N10
\counter7~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~29_combout\ = (\Add6~14_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~14_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~29_combout\);

-- Location: FF_X109_Y20_N11
\counter7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~29_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(7));

-- Location: LCCOMB_X107_Y20_N16
\Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (counter7(8) & (\Add6~15\ $ (GND))) # (!counter7(8) & (!\Add6~15\ & VCC))
-- \Add6~17\ = CARRY((counter7(8) & !\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(8),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X109_Y20_N16
\counter7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~28_combout\ = (\Add6~16_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~16_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~28_combout\);

-- Location: FF_X109_Y20_N17
\counter7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~28_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(8));

-- Location: LCCOMB_X107_Y20_N18
\Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (counter7(9) & (!\Add6~17\)) # (!counter7(9) & ((\Add6~17\) # (GND)))
-- \Add6~19\ = CARRY((!\Add6~17\) # (!counter7(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(9),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X109_Y20_N30
\counter7~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~27_combout\ = (\Add6~18_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~18_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~27_combout\);

-- Location: FF_X109_Y20_N31
\counter7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~27_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(9));

-- Location: LCCOMB_X107_Y20_N20
\Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (counter7(10) & (\Add6~19\ $ (GND))) # (!counter7(10) & (!\Add6~19\ & VCC))
-- \Add6~21\ = CARRY((counter7(10) & !\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(10),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X109_Y20_N12
\counter7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~26_combout\ = (\Add6~20_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~20_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~26_combout\);

-- Location: FF_X109_Y20_N13
\counter7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~26_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(10));

-- Location: LCCOMB_X107_Y20_N22
\Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (counter7(11) & (!\Add6~21\)) # (!counter7(11) & ((\Add6~21\) # (GND)))
-- \Add6~23\ = CARRY((!\Add6~21\) # (!counter7(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(11),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X108_Y19_N22
\counter7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~25_combout\ = (\Add6~22_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~22_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~25_combout\);

-- Location: FF_X108_Y19_N23
\counter7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~25_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(11));

-- Location: LCCOMB_X107_Y20_N24
\Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (counter7(12) & (\Add6~23\ $ (GND))) # (!counter7(12) & (!\Add6~23\ & VCC))
-- \Add6~25\ = CARRY((counter7(12) & !\Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(12),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: LCCOMB_X109_Y20_N18
\counter7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~24_combout\ = (\Add6~24_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~24_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~24_combout\);

-- Location: FF_X109_Y20_N19
\counter7[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~24_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(12));

-- Location: LCCOMB_X107_Y20_N26
\Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (counter7(13) & (!\Add6~25\)) # (!counter7(13) & ((\Add6~25\) # (GND)))
-- \Add6~27\ = CARRY((!\Add6~25\) # (!counter7(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(13),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: LCCOMB_X109_Y20_N20
\counter7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~23_combout\ = (\Add6~26_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~26_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~23_combout\);

-- Location: FF_X109_Y20_N21
\counter7[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~23_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(13));

-- Location: LCCOMB_X107_Y20_N28
\Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = (counter7(14) & (\Add6~27\ $ (GND))) # (!counter7(14) & (!\Add6~27\ & VCC))
-- \Add6~29\ = CARRY((counter7(14) & !\Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(14),
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: LCCOMB_X109_Y20_N2
\counter7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~22_combout\ = (\Add6~62_combout\ & \Add6~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~62_combout\,
	datad => \Add6~28_combout\,
	combout => \counter7~22_combout\);

-- Location: FF_X109_Y20_N3
\counter7[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~22_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(14));

-- Location: LCCOMB_X107_Y20_N30
\Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (counter7(15) & (!\Add6~29\)) # (!counter7(15) & ((\Add6~29\) # (GND)))
-- \Add6~31\ = CARRY((!\Add6~29\) # (!counter7(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(15),
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: LCCOMB_X108_Y20_N28
\counter7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~21_combout\ = (\Add6~30_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~30_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~21_combout\);

-- Location: FF_X108_Y20_N29
\counter7[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~21_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(15));

-- Location: LCCOMB_X107_Y19_N0
\Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = (counter7(16) & (\Add6~31\ $ (GND))) # (!counter7(16) & (!\Add6~31\ & VCC))
-- \Add6~33\ = CARRY((counter7(16) & !\Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(16),
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: LCCOMB_X108_Y19_N0
\counter7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~20_combout\ = (\Add6~32_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~32_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~20_combout\);

-- Location: FF_X108_Y19_N1
\counter7[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~20_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(16));

-- Location: LCCOMB_X107_Y19_N2
\Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (counter7(17) & (!\Add6~33\)) # (!counter7(17) & ((\Add6~33\) # (GND)))
-- \Add6~35\ = CARRY((!\Add6~33\) # (!counter7(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(17),
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: LCCOMB_X108_Y19_N6
\counter7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~19_combout\ = (\Add6~34_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~34_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~19_combout\);

-- Location: FF_X108_Y19_N7
\counter7[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~19_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(17));

-- Location: LCCOMB_X107_Y19_N4
\Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = (counter7(18) & (\Add6~35\ $ (GND))) # (!counter7(18) & (!\Add6~35\ & VCC))
-- \Add6~37\ = CARRY((counter7(18) & !\Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(18),
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: LCCOMB_X108_Y19_N12
\counter7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~18_combout\ = (\Add6~36_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~36_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~18_combout\);

-- Location: FF_X108_Y19_N13
\counter7[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~18_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(18));

-- Location: LCCOMB_X107_Y19_N6
\Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (counter7(19) & (!\Add6~37\)) # (!counter7(19) & ((\Add6~37\) # (GND)))
-- \Add6~39\ = CARRY((!\Add6~37\) # (!counter7(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(19),
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: LCCOMB_X108_Y19_N30
\counter7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~17_combout\ = (\Add6~38_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~38_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~17_combout\);

-- Location: FF_X108_Y19_N31
\counter7[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~17_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(19));

-- Location: LCCOMB_X107_Y19_N8
\Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = (counter7(20) & (\Add6~39\ $ (GND))) # (!counter7(20) & (!\Add6~39\ & VCC))
-- \Add6~41\ = CARRY((counter7(20) & !\Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(20),
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: LCCOMB_X108_Y19_N4
\counter7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~16_combout\ = (\Add6~40_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~40_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~16_combout\);

-- Location: FF_X108_Y19_N5
\counter7[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~16_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(20));

-- Location: LCCOMB_X107_Y19_N10
\Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (counter7(21) & (!\Add6~41\)) # (!counter7(21) & ((\Add6~41\) # (GND)))
-- \Add6~43\ = CARRY((!\Add6~41\) # (!counter7(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(21),
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: LCCOMB_X108_Y19_N2
\counter7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~15_combout\ = (\Add6~42_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~42_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~15_combout\);

-- Location: FF_X108_Y19_N3
\counter7[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~15_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(21));

-- Location: LCCOMB_X107_Y19_N12
\Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = (counter7(22) & (\Add6~43\ $ (GND))) # (!counter7(22) & (!\Add6~43\ & VCC))
-- \Add6~45\ = CARRY((counter7(22) & !\Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(22),
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: LCCOMB_X108_Y19_N16
\counter7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~14_combout\ = (\Add6~44_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~44_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~14_combout\);

-- Location: FF_X108_Y19_N17
\counter7[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~14_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(22));

-- Location: LCCOMB_X107_Y19_N14
\Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (counter7(23) & (!\Add6~45\)) # (!counter7(23) & ((\Add6~45\) # (GND)))
-- \Add6~47\ = CARRY((!\Add6~45\) # (!counter7(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(23),
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: LCCOMB_X108_Y19_N14
\counter7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~13_combout\ = (\Add6~46_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~46_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~13_combout\);

-- Location: FF_X108_Y19_N15
\counter7[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~13_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(23));

-- Location: LCCOMB_X107_Y19_N16
\Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = (counter7(24) & (\Add6~47\ $ (GND))) # (!counter7(24) & (!\Add6~47\ & VCC))
-- \Add6~49\ = CARRY((counter7(24) & !\Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(24),
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: LCCOMB_X108_Y19_N24
\counter7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~12_combout\ = (\Add6~48_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~48_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~12_combout\);

-- Location: FF_X108_Y19_N25
\counter7[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~12_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(24));

-- Location: LCCOMB_X107_Y19_N18
\Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (counter7(25) & (!\Add6~49\)) # (!counter7(25) & ((\Add6~49\) # (GND)))
-- \Add6~51\ = CARRY((!\Add6~49\) # (!counter7(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(25),
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: LCCOMB_X108_Y19_N10
\counter7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~11_combout\ = (\Add6~50_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~50_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~11_combout\);

-- Location: FF_X108_Y19_N11
\counter7[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~11_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(25));

-- Location: LCCOMB_X107_Y19_N20
\Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = (counter7(26) & (\Add6~51\ $ (GND))) # (!counter7(26) & (!\Add6~51\ & VCC))
-- \Add6~53\ = CARRY((counter7(26) & !\Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(26),
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: LCCOMB_X108_Y19_N20
\counter7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~10_combout\ = (\Add6~62_combout\ & \Add6~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~62_combout\,
	datad => \Add6~52_combout\,
	combout => \counter7~10_combout\);

-- Location: FF_X108_Y19_N21
\counter7[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~10_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(26));

-- Location: LCCOMB_X107_Y19_N22
\Add6~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (counter7(27) & (!\Add6~53\)) # (!counter7(27) & ((\Add6~53\) # (GND)))
-- \Add6~55\ = CARRY((!\Add6~53\) # (!counter7(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(27),
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: LCCOMB_X108_Y19_N26
\counter7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~9_combout\ = (\Add6~54_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~54_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~9_combout\);

-- Location: FF_X108_Y19_N27
\counter7[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~9_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(27));

-- Location: LCCOMB_X107_Y19_N24
\Add6~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = (counter7(28) & (\Add6~55\ $ (GND))) # (!counter7(28) & (!\Add6~55\ & VCC))
-- \Add6~57\ = CARRY((counter7(28) & !\Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(28),
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: LCCOMB_X108_Y19_N8
\counter7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~8_combout\ = (\Add6~56_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~56_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~8_combout\);

-- Location: FF_X108_Y19_N9
\counter7[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~8_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(28));

-- Location: LCCOMB_X107_Y19_N26
\Add6~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (counter7(29) & (!\Add6~57\)) # (!counter7(29) & ((\Add6~57\) # (GND)))
-- \Add6~59\ = CARRY((!\Add6~57\) # (!counter7(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(29),
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: LCCOMB_X107_Y19_N28
\Add6~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = (counter7(30) & (\Add6~59\ $ (GND))) # (!counter7(30) & (!\Add6~59\ & VCC))
-- \Add6~61\ = CARRY((counter7(30) & !\Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(30),
	datad => VCC,
	cin => \Add6~59\,
	combout => \Add6~60_combout\,
	cout => \Add6~61\);

-- Location: LCCOMB_X108_Y19_N28
\counter7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~6_combout\ = (\Add6~60_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~60_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~6_combout\);

-- Location: FF_X108_Y19_N29
\counter7[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~6_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(30));

-- Location: LCCOMB_X107_Y19_N30
\Add6~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~62_combout\ = counter7(31) $ (\Add6~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter7(31),
	cin => \Add6~61\,
	combout => \Add6~62_combout\);

-- Location: LCCOMB_X108_Y19_N18
\counter7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~7_combout\ = (\Add6~58_combout\ & \Add6~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~58_combout\,
	datad => \Add6~62_combout\,
	combout => \counter7~7_combout\);

-- Location: FF_X108_Y19_N19
\counter7[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~7_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(29));

-- Location: LCCOMB_X108_Y20_N22
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (\Add6~10_combout\) # ((\Add6~12_combout\) # ((\Add6~16_combout\) # (\Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \Add6~12_combout\,
	datac => \Add6~16_combout\,
	datad => \Add6~14_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X108_Y20_N8
\LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (\Add6~20_combout\) # ((\Add6~24_combout\) # ((\Add6~18_combout\) # (\Add6~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~20_combout\,
	datab => \Add6~24_combout\,
	datac => \Add6~18_combout\,
	datad => \Add6~22_combout\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X108_Y20_N4
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\Add6~8_combout\) # ((\Add6~6_combout\ & ((\Add6~2_combout\) # (\Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => \Add6~2_combout\,
	datac => \Add6~4_combout\,
	datad => \Add6~8_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X108_Y20_N18
\LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = (\Add6~32_combout\) # ((\Add6~26_combout\) # ((\Add6~30_combout\) # (\Add6~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~32_combout\,
	datab => \Add6~26_combout\,
	datac => \Add6~30_combout\,
	datad => \Add6~28_combout\,
	combout => \LessThan6~3_combout\);

-- Location: LCCOMB_X108_Y20_N12
\LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~4_combout\ = (\LessThan6~1_combout\) # ((\LessThan6~2_combout\) # ((\LessThan6~0_combout\) # (\LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~1_combout\,
	datab => \LessThan6~2_combout\,
	datac => \LessThan6~0_combout\,
	datad => \LessThan6~3_combout\,
	combout => \LessThan6~4_combout\);

-- Location: LCCOMB_X108_Y20_N6
\LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~5_combout\ = (\Add6~36_combout\) # ((\Add6~34_combout\) # ((\Add6~38_combout\) # (\Add6~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~36_combout\,
	datab => \Add6~34_combout\,
	datac => \Add6~38_combout\,
	datad => \Add6~40_combout\,
	combout => \LessThan6~5_combout\);

-- Location: LCCOMB_X108_Y20_N0
\LessThan6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~6_combout\ = (\Add6~46_combout\) # ((\Add6~44_combout\) # ((\Add6~42_combout\) # (\LessThan6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~46_combout\,
	datab => \Add6~44_combout\,
	datac => \Add6~42_combout\,
	datad => \LessThan6~5_combout\,
	combout => \LessThan6~6_combout\);

-- Location: LCCOMB_X108_Y20_N10
\LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~7_combout\ = (\LessThan6~4_combout\) # ((\Add6~48_combout\) # ((\Add6~50_combout\) # (\LessThan6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~4_combout\,
	datab => \Add6~48_combout\,
	datac => \Add6~50_combout\,
	datad => \LessThan6~6_combout\,
	combout => \LessThan6~7_combout\);

-- Location: LCCOMB_X108_Y20_N24
\LessThan6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~8_combout\ = (\Add6~56_combout\) # ((\Add6~52_combout\) # ((\Add6~54_combout\) # (\LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~56_combout\,
	datab => \Add6~52_combout\,
	datac => \Add6~54_combout\,
	datad => \LessThan6~7_combout\,
	combout => \LessThan6~8_combout\);

-- Location: LCCOMB_X108_Y20_N2
\LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~9_combout\ = (!\Add6~62_combout\ & ((\Add6~58_combout\) # ((\Add6~60_combout\) # (\LessThan6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~58_combout\,
	datab => \Add6~62_combout\,
	datac => \Add6~60_combout\,
	datad => \LessThan6~8_combout\,
	combout => \LessThan6~9_combout\);

-- Location: LCCOMB_X108_Y20_N20
\counter7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~1_combout\ = (\Add6~0_combout\ & !\LessThan6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datad => \LessThan6~9_combout\,
	combout => \counter7~1_combout\);

-- Location: FF_X108_Y20_N21
\counter7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~1_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(0));

-- Location: LCCOMB_X107_Y20_N2
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (counter7(1) & (!\Add6~1\)) # (!counter7(1) & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!counter7(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X108_Y20_N14
\counter7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~3_combout\ = (\Add6~2_combout\ & !\LessThan6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~2_combout\,
	datad => \LessThan6~9_combout\,
	combout => \counter7~3_combout\);

-- Location: FF_X108_Y20_N15
\counter7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~3_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(1));

-- Location: LCCOMB_X107_Y20_N4
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (counter7(2) & (\Add6~3\ $ (GND))) # (!counter7(2) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((counter7(2) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter7(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X108_Y20_N16
\counter7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~4_combout\ = (\Add6~4_combout\ & !\LessThan6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~4_combout\,
	datad => \LessThan6~9_combout\,
	combout => \counter7~4_combout\);

-- Location: FF_X108_Y20_N17
\counter7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~4_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(2));

-- Location: LCCOMB_X108_Y20_N26
\counter7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter7~5_combout\ = (\Add6~6_combout\ & !\LessThan6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datad => \LessThan6~9_combout\,
	combout => \counter7~5_combout\);

-- Location: FF_X108_Y20_N27
\counter7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter7~5_combout\,
	clrn => \rst~input_o\,
	ena => \counter7[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter7(3));

-- Location: LCCOMB_X91_Y4_N24
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (counter7(0) & ((counter7(3)) # (counter7(2) $ (counter7(1))))) # (!counter7(0) & ((counter7(1)) # (counter7(3) $ (counter7(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter7(3),
	datab => counter7(0),
	datac => counter7(2),
	datad => counter7(1),
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X91_Y4_N22
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (counter7(0) & (counter7(3) $ (((counter7(1)) # (!counter7(2)))))) # (!counter7(0) & (((!counter7(2) & counter7(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter7(3),
	datab => counter7(0),
	datac => counter7(2),
	datad => counter7(1),
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X91_Y4_N20
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (counter7(1) & (!counter7(3) & (counter7(0)))) # (!counter7(1) & ((counter7(2) & (!counter7(3))) # (!counter7(2) & ((counter7(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter7(3),
	datab => counter7(0),
	datac => counter7(2),
	datad => counter7(1),
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X91_Y4_N26
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (counter7(1) & (((counter7(0) & counter7(2))))) # (!counter7(1) & (!counter7(3) & (counter7(0) $ (counter7(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter7(3),
	datab => counter7(0),
	datac => counter7(2),
	datad => counter7(1),
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X91_Y4_N0
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (counter7(3) & (counter7(2) & ((counter7(1)) # (!counter7(0))))) # (!counter7(3) & (!counter7(0) & (!counter7(2) & counter7(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter7(3),
	datab => counter7(0),
	datac => counter7(2),
	datad => counter7(1),
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X91_Y4_N14
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (counter7(3) & ((counter7(0) & ((counter7(1)))) # (!counter7(0) & (counter7(2))))) # (!counter7(3) & (counter7(2) & (counter7(0) $ (counter7(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter7(3),
	datab => counter7(0),
	datac => counter7(2),
	datad => counter7(1),
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X91_Y4_N4
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (counter7(3) & (counter7(0) & (counter7(2) $ (counter7(1))))) # (!counter7(3) & (!counter7(1) & (counter7(0) $ (counter7(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter7(3),
	datab => counter7(0),
	datac => counter7(2),
	datad => counter7(1),
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X112_Y16_N0
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = counter8(0) $ (VCC)
-- \Add7~1\ = CARRY(counter8(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter8(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X111_Y15_N12
\counter8[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8[31]~feeder_combout\ = \Add7~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	combout => \counter8[31]~feeder_combout\);

-- Location: LCCOMB_X110_Y16_N4
\counter8[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8[3]~1_combout\ = (\LessThan6~9_combout\ & (\LessThan5~9_combout\ & (\counter5[3]~1_combout\ & \LessThan4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~9_combout\,
	datab => \LessThan5~9_combout\,
	datac => \counter5[3]~1_combout\,
	datad => \LessThan4~10_combout\,
	combout => \counter8[3]~1_combout\);

-- Location: FF_X111_Y15_N13
\counter8[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8[31]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(31));

-- Location: LCCOMB_X112_Y16_N4
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (counter8(2) & (\Add7~3\ $ (GND))) # (!counter8(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((counter8(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X112_Y16_N6
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (counter8(3) & (!\Add7~5\)) # (!counter8(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!counter8(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X113_Y16_N26
\counter8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~4_combout\ = (\Add7~6_combout\ & !\LessThan7~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~6_combout\,
	datad => \LessThan7~9_combout\,
	combout => \counter8~4_combout\);

-- Location: FF_X113_Y16_N27
\counter8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~4_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(3));

-- Location: LCCOMB_X112_Y16_N8
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (counter8(4) & (\Add7~7\ $ (GND))) # (!counter8(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((counter8(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X113_Y16_N14
\counter8~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~31_combout\ = (\Add7~62_combout\ & \Add7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~8_combout\,
	combout => \counter8~31_combout\);

-- Location: FF_X112_Y16_N27
\counter8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter8~31_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(4));

-- Location: LCCOMB_X112_Y16_N10
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (counter8(5) & (!\Add7~9\)) # (!counter8(5) & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!counter8(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X111_Y16_N14
\counter8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~30_combout\ = (\Add7~10_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datac => \Add7~62_combout\,
	combout => \counter8~30_combout\);

-- Location: FF_X111_Y16_N15
\counter8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~30_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(5));

-- Location: LCCOMB_X112_Y16_N12
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (counter8(6) & (\Add7~11\ $ (GND))) # (!counter8(6) & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((counter8(6) & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X111_Y16_N8
\counter8~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~29_combout\ = (\Add7~12_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~12_combout\,
	datac => \Add7~62_combout\,
	combout => \counter8~29_combout\);

-- Location: FF_X111_Y16_N9
\counter8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~29_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(6));

-- Location: LCCOMB_X112_Y16_N14
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (counter8(7) & (!\Add7~13\)) # (!counter8(7) & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!counter8(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X111_Y16_N26
\counter8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~28_combout\ = (\Add7~62_combout\ & \Add7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~14_combout\,
	combout => \counter8~28_combout\);

-- Location: FF_X111_Y16_N27
\counter8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~28_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(7));

-- Location: LCCOMB_X112_Y16_N16
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (counter8(8) & (\Add7~15\ $ (GND))) # (!counter8(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((counter8(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X110_Y16_N22
\counter8~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~27_combout\ = (\Add7~16_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~16_combout\,
	datad => \Add7~62_combout\,
	combout => \counter8~27_combout\);

-- Location: FF_X110_Y16_N23
\counter8[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~27_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(8));

-- Location: LCCOMB_X112_Y16_N18
\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (counter8(9) & (!\Add7~17\)) # (!counter8(9) & ((\Add7~17\) # (GND)))
-- \Add7~19\ = CARRY((!\Add7~17\) # (!counter8(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X111_Y16_N20
\counter8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~26_combout\ = (\Add7~62_combout\ & \Add7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~18_combout\,
	combout => \counter8~26_combout\);

-- Location: FF_X111_Y16_N21
\counter8[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~26_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(9));

-- Location: LCCOMB_X112_Y16_N20
\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (counter8(10) & (\Add7~19\ $ (GND))) # (!counter8(10) & (!\Add7~19\ & VCC))
-- \Add7~21\ = CARRY((counter8(10) & !\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(10),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X113_Y16_N0
\counter8~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~25_combout\ = (\Add7~62_combout\ & \Add7~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~20_combout\,
	combout => \counter8~25_combout\);

-- Location: FF_X112_Y16_N29
\counter8[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter8~25_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(10));

-- Location: LCCOMB_X112_Y16_N22
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (counter8(11) & (!\Add7~21\)) # (!counter8(11) & ((\Add7~21\) # (GND)))
-- \Add7~23\ = CARRY((!\Add7~21\) # (!counter8(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(11),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X111_Y16_N6
\counter8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~24_combout\ = (\Add7~62_combout\ & \Add7~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~22_combout\,
	combout => \counter8~24_combout\);

-- Location: FF_X111_Y16_N7
\counter8[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~24_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(11));

-- Location: LCCOMB_X112_Y16_N24
\Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (counter8(12) & (\Add7~23\ $ (GND))) # (!counter8(12) & (!\Add7~23\ & VCC))
-- \Add7~25\ = CARRY((counter8(12) & !\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: LCCOMB_X111_Y16_N16
\counter8~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~23_combout\ = (\Add7~62_combout\ & \Add7~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~24_combout\,
	combout => \counter8~23_combout\);

-- Location: FF_X111_Y16_N17
\counter8[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~23_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(12));

-- Location: LCCOMB_X112_Y16_N26
\Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (counter8(13) & (!\Add7~25\)) # (!counter8(13) & ((\Add7~25\) # (GND)))
-- \Add7~27\ = CARRY((!\Add7~25\) # (!counter8(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(13),
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X111_Y16_N2
\counter8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~22_combout\ = (\Add7~26_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~26_combout\,
	datac => \Add7~62_combout\,
	combout => \counter8~22_combout\);

-- Location: FF_X111_Y16_N3
\counter8[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~22_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(13));

-- Location: LCCOMB_X112_Y16_N28
\Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (counter8(14) & (\Add7~27\ $ (GND))) # (!counter8(14) & (!\Add7~27\ & VCC))
-- \Add7~29\ = CARRY((counter8(14) & !\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(14),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X111_Y16_N24
\counter8~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~21_combout\ = (\Add7~62_combout\ & \Add7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~28_combout\,
	combout => \counter8~21_combout\);

-- Location: FF_X111_Y16_N25
\counter8[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~21_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(14));

-- Location: LCCOMB_X112_Y16_N30
\Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (counter8(15) & (!\Add7~29\)) # (!counter8(15) & ((\Add7~29\) # (GND)))
-- \Add7~31\ = CARRY((!\Add7~29\) # (!counter8(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(15),
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X113_Y16_N30
\counter8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~20_combout\ = (\Add7~30_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~30_combout\,
	datac => \Add7~62_combout\,
	combout => \counter8~20_combout\);

-- Location: FF_X112_Y16_N5
\counter8[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter8~20_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(15));

-- Location: LCCOMB_X112_Y15_N0
\Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (counter8(16) & (\Add7~31\ $ (GND))) # (!counter8(16) & (!\Add7~31\ & VCC))
-- \Add7~33\ = CARRY((counter8(16) & !\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(16),
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: LCCOMB_X111_Y16_N30
\counter8~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~19_combout\ = (\Add7~62_combout\ & \Add7~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~32_combout\,
	combout => \counter8~19_combout\);

-- Location: FF_X111_Y16_N31
\counter8[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~19_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(16));

-- Location: LCCOMB_X112_Y15_N2
\Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (counter8(17) & (!\Add7~33\)) # (!counter8(17) & ((\Add7~33\) # (GND)))
-- \Add7~35\ = CARRY((!\Add7~33\) # (!counter8(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(17),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: LCCOMB_X111_Y15_N6
\counter8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~18_combout\ = (\Add7~62_combout\ & \Add7~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~34_combout\,
	combout => \counter8~18_combout\);

-- Location: FF_X111_Y15_N7
\counter8[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~18_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(17));

-- Location: LCCOMB_X112_Y15_N4
\Add7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (counter8(18) & (\Add7~35\ $ (GND))) # (!counter8(18) & (!\Add7~35\ & VCC))
-- \Add7~37\ = CARRY((counter8(18) & !\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(18),
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: LCCOMB_X111_Y16_N0
\counter8~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~17_combout\ = (\Add7~36_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~36_combout\,
	datac => \Add7~62_combout\,
	combout => \counter8~17_combout\);

-- Location: FF_X111_Y16_N1
\counter8[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~17_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(18));

-- Location: LCCOMB_X112_Y15_N6
\Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (counter8(19) & (!\Add7~37\)) # (!counter8(19) & ((\Add7~37\) # (GND)))
-- \Add7~39\ = CARRY((!\Add7~37\) # (!counter8(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(19),
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X111_Y15_N16
\counter8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~16_combout\ = (\Add7~62_combout\ & \Add7~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~38_combout\,
	combout => \counter8~16_combout\);

-- Location: FF_X111_Y15_N17
\counter8[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~16_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(19));

-- Location: LCCOMB_X112_Y15_N8
\Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (counter8(20) & (\Add7~39\ $ (GND))) # (!counter8(20) & (!\Add7~39\ & VCC))
-- \Add7~41\ = CARRY((counter8(20) & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(20),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: LCCOMB_X111_Y15_N14
\counter8~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~15_combout\ = (\Add7~40_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~40_combout\,
	datac => \Add7~62_combout\,
	combout => \counter8~15_combout\);

-- Location: FF_X111_Y15_N15
\counter8[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~15_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(20));

-- Location: LCCOMB_X112_Y15_N10
\Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (counter8(21) & (!\Add7~41\)) # (!counter8(21) & ((\Add7~41\) # (GND)))
-- \Add7~43\ = CARRY((!\Add7~41\) # (!counter8(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(21),
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X111_Y16_N18
\counter8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~14_combout\ = (\Add7~42_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~42_combout\,
	datac => \Add7~62_combout\,
	combout => \counter8~14_combout\);

-- Location: FF_X111_Y16_N19
\counter8[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~14_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(21));

-- Location: LCCOMB_X112_Y15_N12
\Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (counter8(22) & (\Add7~43\ $ (GND))) # (!counter8(22) & (!\Add7~43\ & VCC))
-- \Add7~45\ = CARRY((counter8(22) & !\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(22),
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X111_Y16_N4
\counter8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~13_combout\ = (\Add7~62_combout\ & \Add7~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~44_combout\,
	combout => \counter8~13_combout\);

-- Location: FF_X111_Y16_N5
\counter8[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~13_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(22));

-- Location: LCCOMB_X112_Y15_N14
\Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (counter8(23) & (!\Add7~45\)) # (!counter8(23) & ((\Add7~45\) # (GND)))
-- \Add7~47\ = CARRY((!\Add7~45\) # (!counter8(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(23),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: LCCOMB_X111_Y15_N24
\counter8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~12_combout\ = (\Add7~62_combout\ & \Add7~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~46_combout\,
	combout => \counter8~12_combout\);

-- Location: FF_X111_Y15_N25
\counter8[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~12_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(23));

-- Location: LCCOMB_X112_Y15_N16
\Add7~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = (counter8(24) & (\Add7~47\ $ (GND))) # (!counter8(24) & (!\Add7~47\ & VCC))
-- \Add7~49\ = CARRY((counter8(24) & !\Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(24),
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: LCCOMB_X111_Y15_N22
\counter8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~11_combout\ = (\Add7~62_combout\ & \Add7~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~48_combout\,
	combout => \counter8~11_combout\);

-- Location: FF_X111_Y15_N23
\counter8[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~11_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(24));

-- Location: LCCOMB_X112_Y15_N18
\Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (counter8(25) & (!\Add7~49\)) # (!counter8(25) & ((\Add7~49\) # (GND)))
-- \Add7~51\ = CARRY((!\Add7~49\) # (!counter8(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(25),
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: LCCOMB_X111_Y16_N22
\counter8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~10_combout\ = (\Add7~50_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~50_combout\,
	datac => \Add7~62_combout\,
	combout => \counter8~10_combout\);

-- Location: FF_X111_Y16_N23
\counter8[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~10_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(25));

-- Location: LCCOMB_X112_Y15_N20
\Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (counter8(26) & (\Add7~51\ $ (GND))) # (!counter8(26) & (!\Add7~51\ & VCC))
-- \Add7~53\ = CARRY((counter8(26) & !\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(26),
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: LCCOMB_X111_Y16_N12
\counter8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~9_combout\ = (\Add7~62_combout\ & \Add7~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~52_combout\,
	combout => \counter8~9_combout\);

-- Location: FF_X111_Y16_N13
\counter8[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~9_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(26));

-- Location: LCCOMB_X112_Y15_N22
\Add7~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (counter8(27) & (!\Add7~53\)) # (!counter8(27) & ((\Add7~53\) # (GND)))
-- \Add7~55\ = CARRY((!\Add7~53\) # (!counter8(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter8(27),
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: LCCOMB_X111_Y15_N4
\counter8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~8_combout\ = (\Add7~62_combout\ & \Add7~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~54_combout\,
	combout => \counter8~8_combout\);

-- Location: FF_X111_Y15_N5
\counter8[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~8_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(27));

-- Location: LCCOMB_X112_Y15_N24
\Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (counter8(28) & (\Add7~55\ $ (GND))) # (!counter8(28) & (!\Add7~55\ & VCC))
-- \Add7~57\ = CARRY((counter8(28) & !\Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(28),
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: LCCOMB_X111_Y16_N10
\counter8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~7_combout\ = (\Add7~56_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~56_combout\,
	datac => \Add7~62_combout\,
	combout => \counter8~7_combout\);

-- Location: FF_X111_Y16_N11
\counter8[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~7_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(28));

-- Location: LCCOMB_X112_Y15_N26
\Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (counter8(29) & (!\Add7~57\)) # (!counter8(29) & ((\Add7~57\) # (GND)))
-- \Add7~59\ = CARRY((!\Add7~57\) # (!counter8(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(29),
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~58_combout\,
	cout => \Add7~59\);

-- Location: LCCOMB_X111_Y16_N28
\counter8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~6_combout\ = (\Add7~62_combout\ & \Add7~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~62_combout\,
	datac => \Add7~58_combout\,
	combout => \counter8~6_combout\);

-- Location: FF_X111_Y16_N29
\counter8[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~6_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(29));

-- Location: LCCOMB_X112_Y15_N28
\Add7~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = (counter8(30) & (\Add7~59\ $ (GND))) # (!counter8(30) & (!\Add7~59\ & VCC))
-- \Add7~61\ = CARRY((counter8(30) & !\Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(30),
	datad => VCC,
	cin => \Add7~59\,
	combout => \Add7~60_combout\,
	cout => \Add7~61\);

-- Location: LCCOMB_X111_Y15_N10
\counter8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~5_combout\ = (\Add7~62_combout\ & \Add7~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~60_combout\,
	combout => \counter8~5_combout\);

-- Location: FF_X111_Y15_N11
\counter8[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~5_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(30));

-- Location: LCCOMB_X112_Y15_N30
\Add7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = \Add7~61\ $ (counter8(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter8(31),
	cin => \Add7~61\,
	combout => \Add7~62_combout\);

-- Location: LCCOMB_X113_Y16_N12
\LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (\Add7~24_combout\) # ((\Add7~20_combout\) # ((\Add7~18_combout\) # (\Add7~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~24_combout\,
	datab => \Add7~20_combout\,
	datac => \Add7~18_combout\,
	datad => \Add7~22_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X113_Y16_N28
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\Add7~8_combout\) # ((\Add7~6_combout\ & ((\Add7~4_combout\) # (\Add7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add7~6_combout\,
	datac => \Add7~4_combout\,
	datad => \Add7~2_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X113_Y16_N22
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (\Add7~16_combout\) # ((\Add7~10_combout\) # ((\Add7~14_combout\) # (\Add7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datab => \Add7~10_combout\,
	datac => \Add7~14_combout\,
	datad => \Add7~12_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X113_Y16_N2
\LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = (\Add7~30_combout\) # ((\Add7~28_combout\) # ((\Add7~32_combout\) # (\Add7~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~30_combout\,
	datab => \Add7~28_combout\,
	datac => \Add7~32_combout\,
	datad => \Add7~26_combout\,
	combout => \LessThan7~3_combout\);

-- Location: LCCOMB_X113_Y16_N4
\LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = (\LessThan7~2_combout\) # ((\LessThan7~0_combout\) # ((\LessThan7~1_combout\) # (\LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~2_combout\,
	datab => \LessThan7~0_combout\,
	datac => \LessThan7~1_combout\,
	datad => \LessThan7~3_combout\,
	combout => \LessThan7~4_combout\);

-- Location: LCCOMB_X113_Y15_N0
\LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~5_combout\ = (\Add7~34_combout\) # ((\Add7~38_combout\) # ((\Add7~36_combout\) # (\Add7~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~34_combout\,
	datab => \Add7~38_combout\,
	datac => \Add7~36_combout\,
	datad => \Add7~40_combout\,
	combout => \LessThan7~5_combout\);

-- Location: LCCOMB_X113_Y16_N10
\LessThan7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~6_combout\ = (\Add7~42_combout\) # ((\LessThan7~5_combout\) # ((\Add7~44_combout\) # (\Add7~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~42_combout\,
	datab => \LessThan7~5_combout\,
	datac => \Add7~44_combout\,
	datad => \Add7~46_combout\,
	combout => \LessThan7~6_combout\);

-- Location: LCCOMB_X113_Y16_N16
\LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~7_combout\ = (\Add7~50_combout\) # ((\Add7~48_combout\) # ((\LessThan7~4_combout\) # (\LessThan7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~50_combout\,
	datab => \Add7~48_combout\,
	datac => \LessThan7~4_combout\,
	datad => \LessThan7~6_combout\,
	combout => \LessThan7~7_combout\);

-- Location: LCCOMB_X113_Y16_N18
\LessThan7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~8_combout\ = (\Add7~52_combout\) # ((\Add7~56_combout\) # ((\Add7~54_combout\) # (\LessThan7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~52_combout\,
	datab => \Add7~56_combout\,
	datac => \Add7~54_combout\,
	datad => \LessThan7~7_combout\,
	combout => \LessThan7~8_combout\);

-- Location: LCCOMB_X113_Y16_N24
\LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~9_combout\ = (!\Add7~62_combout\ & ((\Add7~60_combout\) # ((\Add7~58_combout\) # (\LessThan7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~62_combout\,
	datab => \Add7~60_combout\,
	datac => \Add7~58_combout\,
	datad => \LessThan7~8_combout\,
	combout => \LessThan7~9_combout\);

-- Location: LCCOMB_X113_Y16_N8
\counter8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~0_combout\ = (\Add7~0_combout\ & !\LessThan7~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~0_combout\,
	datad => \LessThan7~9_combout\,
	combout => \counter8~0_combout\);

-- Location: FF_X113_Y16_N9
\counter8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~0_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(0));

-- Location: LCCOMB_X112_Y16_N2
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (counter8(1) & (!\Add7~1\)) # (!counter8(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!counter8(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter8(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X113_Y16_N6
\counter8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~2_combout\ = (\Add7~2_combout\ & !\LessThan7~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datad => \LessThan7~9_combout\,
	combout => \counter8~2_combout\);

-- Location: FF_X113_Y16_N7
\counter8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~2_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(1));

-- Location: LCCOMB_X113_Y16_N20
\counter8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter8~3_combout\ = (\Add7~4_combout\ & !\LessThan7~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~4_combout\,
	datad => \LessThan7~9_combout\,
	combout => \counter8~3_combout\);

-- Location: FF_X113_Y16_N21
\counter8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter8~3_combout\,
	clrn => \rst~input_o\,
	ena => \counter8[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter8(2));

-- Location: LCCOMB_X85_Y4_N16
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (counter8(0) & ((counter8(3)) # (counter8(2) $ (counter8(1))))) # (!counter8(0) & ((counter8(1)) # (counter8(2) $ (counter8(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter8(2),
	datab => counter8(1),
	datac => counter8(3),
	datad => counter8(0),
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X85_Y4_N22
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (counter8(0) & (counter8(3) $ (((counter8(1)) # (!counter8(2)))))) # (!counter8(0) & (!counter8(2) & (counter8(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter8(2),
	datab => counter8(1),
	datac => counter8(3),
	datad => counter8(0),
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X85_Y4_N24
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (counter8(1) & (((!counter8(3) & counter8(0))))) # (!counter8(1) & ((counter8(2) & (!counter8(3))) # (!counter8(2) & ((counter8(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter8(2),
	datab => counter8(1),
	datac => counter8(3),
	datad => counter8(0),
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X85_Y4_N10
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (counter8(1) & (counter8(2) & ((counter8(0))))) # (!counter8(1) & (!counter8(3) & (counter8(2) $ (counter8(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter8(2),
	datab => counter8(1),
	datac => counter8(3),
	datad => counter8(0),
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X85_Y4_N28
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (counter8(2) & (counter8(3) & ((counter8(1)) # (!counter8(0))))) # (!counter8(2) & (counter8(1) & (!counter8(3) & !counter8(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter8(2),
	datab => counter8(1),
	datac => counter8(3),
	datad => counter8(0),
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X85_Y4_N18
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (counter8(1) & ((counter8(0) & ((counter8(3)))) # (!counter8(0) & (counter8(2))))) # (!counter8(1) & (counter8(2) & (counter8(3) $ (counter8(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter8(2),
	datab => counter8(1),
	datac => counter8(3),
	datad => counter8(0),
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X85_Y4_N12
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (counter8(2) & (!counter8(1) & (counter8(3) $ (!counter8(0))))) # (!counter8(2) & (counter8(0) & (counter8(1) $ (!counter8(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter8(2),
	datab => counter8(1),
	datac => counter8(3),
	datad => counter8(0),
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X110_Y16_N24
\counter9[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter9[0]~2_combout\ = !counter9(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter9(0),
	combout => \counter9[0]~2_combout\);

-- Location: LCCOMB_X110_Y16_N2
\counter9[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter9[16]~0_combout\ = (\LessThan7~9_combout\ & (\LessThan5~9_combout\ & (\LessThan6~9_combout\ & \LessThan3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~9_combout\,
	datab => \LessThan5~9_combout\,
	datac => \LessThan6~9_combout\,
	datad => \LessThan3~9_combout\,
	combout => \counter9[16]~0_combout\);

-- Location: LCCOMB_X110_Y16_N0
\counter9[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter9[16]~1_combout\ = (\LessThan4~10_combout\ & (\LessThan2~9_combout\ & (\counter7[6]~0_combout\ & \counter9[16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~10_combout\,
	datab => \LessThan2~9_combout\,
	datac => \counter7[6]~0_combout\,
	datad => \counter9[16]~0_combout\,
	combout => \counter9[16]~1_combout\);

-- Location: FF_X110_Y16_N25
\counter9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter9[0]~2_combout\,
	clrn => \rst~input_o\,
	ena => \counter9[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter9(0));

-- Location: LCCOMB_X110_Y16_N12
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (counter9(1) & (counter9(0) $ (VCC))) # (!counter9(1) & (counter9(0) & VCC))
-- \Add8~1\ = CARRY((counter9(1) & counter9(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter9(1),
	datab => counter9(0),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: FF_X110_Y16_N13
\counter9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add8~0_combout\,
	clrn => \rst~input_o\,
	ena => \counter9[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter9(1));

-- Location: LCCOMB_X110_Y16_N14
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (counter9(2) & (!\Add8~1\)) # (!counter9(2) & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!counter9(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter9(2),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: FF_X110_Y16_N15
\counter9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add8~2_combout\,
	clrn => \rst~input_o\,
	ena => \counter9[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter9(2));

-- Location: LCCOMB_X110_Y16_N16
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = \Add8~3\ $ (!counter9(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter9(3),
	cin => \Add8~3\,
	combout => \Add8~4_combout\);

-- Location: FF_X110_Y16_N17
\counter9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add8~4_combout\,
	clrn => \rst~input_o\,
	ena => \counter9[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter9(3));

-- Location: LCCOMB_X70_Y4_N12
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (counter9(0) & ((counter9(3)) # (counter9(1) $ (counter9(2))))) # (!counter9(0) & ((counter9(1)) # (counter9(3) $ (counter9(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter9(3),
	datab => counter9(0),
	datac => counter9(1),
	datad => counter9(2),
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X70_Y4_N26
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (counter9(0) & (counter9(3) $ (((counter9(1)) # (!counter9(2)))))) # (!counter9(0) & (((counter9(1) & !counter9(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter9(3),
	datab => counter9(0),
	datac => counter9(1),
	datad => counter9(2),
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X70_Y4_N24
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (counter9(1) & (!counter9(3) & (counter9(0)))) # (!counter9(1) & ((counter9(2) & (!counter9(3))) # (!counter9(2) & ((counter9(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter9(3),
	datab => counter9(0),
	datac => counter9(1),
	datad => counter9(2),
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X70_Y4_N22
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (counter9(1) & (((counter9(0) & counter9(2))))) # (!counter9(1) & (!counter9(3) & (counter9(0) $ (counter9(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter9(3),
	datab => counter9(0),
	datac => counter9(1),
	datad => counter9(2),
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X70_Y4_N0
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (counter9(3) & (counter9(2) & ((counter9(1)) # (!counter9(0))))) # (!counter9(3) & (!counter9(0) & (counter9(1) & !counter9(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter9(3),
	datab => counter9(0),
	datac => counter9(1),
	datad => counter9(2),
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X70_Y4_N10
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (counter9(3) & ((counter9(0) & (counter9(1))) # (!counter9(0) & ((counter9(2)))))) # (!counter9(3) & (counter9(2) & (counter9(0) $ (counter9(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter9(3),
	datab => counter9(0),
	datac => counter9(1),
	datad => counter9(2),
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X70_Y4_N28
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (counter9(3) & (counter9(0) & (counter9(1) $ (counter9(2))))) # (!counter9(3) & (!counter9(1) & (counter9(0) $ (counter9(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter9(3),
	datab => counter9(0),
	datac => counter9(1),
	datad => counter9(2),
	combout => \Mux49~0_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;
END structure;


