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

-- DATE "03/13/2019 13:11:12"

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

ENTITY 	uygulama9 IS
    PORT (
	Clk : IN std_logic;
	RoundingMode : IN std_logic_vector(1 DOWNTO 0);
	F1 : IN std_logic_vector(8 DOWNTO 0);
	F2 : IN std_logic_vector(8 DOWNTO 0);
	F3 : BUFFER std_logic_vector(8 DOWNTO 0);
	Exception_Inf : BUFFER std_logic;
	Exception_NaN : BUFFER std_logic
	);
END uygulama9;

-- Design Ports Information
-- F3[0]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3[7]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Exception_Inf	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Exception_NaN	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RoundingMode[0]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RoundingMode[1]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1[7]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1[4]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1[5]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1[0]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1[1]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1[2]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1[8]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uygulama9 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_RoundingMode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_F1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_F2 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_F3 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Exception_Inf : std_logic;
SIGNAL ww_Exception_NaN : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \F3[0]~output_o\ : std_logic;
SIGNAL \F3[1]~output_o\ : std_logic;
SIGNAL \F3[2]~output_o\ : std_logic;
SIGNAL \F3[3]~output_o\ : std_logic;
SIGNAL \F3[4]~output_o\ : std_logic;
SIGNAL \F3[5]~output_o\ : std_logic;
SIGNAL \F3[6]~output_o\ : std_logic;
SIGNAL \F3[7]~output_o\ : std_logic;
SIGNAL \F3[8]~output_o\ : std_logic;
SIGNAL \Exception_Inf~output_o\ : std_logic;
SIGNAL \Exception_NaN~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \F1[0]~input_o\ : std_logic;
SIGNAL \F1[1]~input_o\ : std_logic;
SIGNAL \F1[2]~input_o\ : std_logic;
SIGNAL \F1[3]~input_o\ : std_logic;
SIGNAL \F1[5]~input_o\ : std_logic;
SIGNAL \F1[4]~input_o\ : std_logic;
SIGNAL \F1[6]~input_o\ : std_logic;
SIGNAL \F1[7]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \F2[0]~input_o\ : std_logic;
SIGNAL \F2[1]~input_o\ : std_logic;
SIGNAL \F2[2]~input_o\ : std_logic;
SIGNAL \F2[3]~input_o\ : std_logic;
SIGNAL \F2[5]~input_o\ : std_logic;
SIGNAL \F2[7]~input_o\ : std_logic;
SIGNAL \F2[6]~input_o\ : std_logic;
SIGNAL \F2[4]~input_o\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL RoundBit : std_logic;
SIGNAL StickyBit : std_logic;
SIGNAL \RoundingMode[1]~input_o\ : std_logic;
SIGNAL \Rounded_m1m2~3_combout\ : std_logic;
SIGNAL \RoundingMode[0]~input_o\ : std_logic;
SIGNAL \F2[8]~input_o\ : std_logic;
SIGNAL \s2~feeder_combout\ : std_logic;
SIGNAL \s2~q\ : std_logic;
SIGNAL \F1[8]~input_o\ : std_logic;
SIGNAL \s1~feeder_combout\ : std_logic;
SIGNAL \s1~q\ : std_logic;
SIGNAL \s1s2~0_combout\ : std_logic;
SIGNAL \s1s2~q\ : std_logic;
SIGNAL \Rounded_m1m2~2_combout\ : std_logic;
SIGNAL \Rounded_m1m2~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Exception~0_combout\ : std_logic;
SIGNAL \Exception~1_combout\ : std_logic;
SIGNAL \Exception~2_combout\ : std_logic;
SIGNAL \Exception_2[1]~feeder_combout\ : std_logic;
SIGNAL \Exception_4[1]~feeder_combout\ : std_logic;
SIGNAL \Exception~3_combout\ : std_logic;
SIGNAL \Exception_2[0]~feeder_combout\ : std_logic;
SIGNAL \Exception_3[0]~feeder_combout\ : std_logic;
SIGNAL \Exception_4[0]~feeder_combout\ : std_logic;
SIGNAL \F3~0_combout\ : std_logic;
SIGNAL \F3[0]~1_combout\ : std_logic;
SIGNAL \F3[0]~reg0_q\ : std_logic;
SIGNAL \Rounded_m1m2[1]~5_combout\ : std_logic;
SIGNAL \Rounded_m1m2[1]~6_combout\ : std_logic;
SIGNAL \Rounded_m1m2~7_combout\ : std_logic;
SIGNAL \F3~2_combout\ : std_logic;
SIGNAL \F3[1]~reg0_q\ : std_logic;
SIGNAL \Rounded_m1m2~9_combout\ : std_logic;
SIGNAL \m3[2]~feeder_combout\ : std_logic;
SIGNAL \F3~3_combout\ : std_logic;
SIGNAL \F3[2]~reg0_q\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Rounded_m1m2~8_combout\ : std_logic;
SIGNAL \m3[3]~feeder_combout\ : std_logic;
SIGNAL \F3~4_combout\ : std_logic;
SIGNAL \F3[3]~reg0_q\ : std_logic;
SIGNAL \e1[0]~0_combout\ : std_logic;
SIGNAL \e2[0]~0_combout\ : std_logic;
SIGNAL \e1e2[0]~4_combout\ : std_logic;
SIGNAL \e1e2_2[0]~4_combout\ : std_logic;
SIGNAL \e3[0]~feeder_combout\ : std_logic;
SIGNAL \F3~5_combout\ : std_logic;
SIGNAL \F3[4]~reg0_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \e1e2[0]~5\ : std_logic;
SIGNAL \e1e2[1]~6_combout\ : std_logic;
SIGNAL \e1e2_2[0]~5\ : std_logic;
SIGNAL \e1e2_2[1]~6_combout\ : std_logic;
SIGNAL \e3[1]~feeder_combout\ : std_logic;
SIGNAL \F3~6_combout\ : std_logic;
SIGNAL \F3[5]~reg0_q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \e1e2[1]~7\ : std_logic;
SIGNAL \e1e2[2]~8_combout\ : std_logic;
SIGNAL \e1e2_2[1]~7\ : std_logic;
SIGNAL \e1e2_2[2]~8_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \F3~7_combout\ : std_logic;
SIGNAL \F3[6]~reg0_q\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \e1e2[2]~9\ : std_logic;
SIGNAL \e1e2[3]~10_combout\ : std_logic;
SIGNAL \e1e2_2[2]~9\ : std_logic;
SIGNAL \e1e2_2[3]~10_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \F3~8_combout\ : std_logic;
SIGNAL \F3[7]~reg0_q\ : std_logic;
SIGNAL \s1s2_2~feeder_combout\ : std_logic;
SIGNAL \s1s2_2~q\ : std_logic;
SIGNAL \s3~feeder_combout\ : std_logic;
SIGNAL \s3~q\ : std_logic;
SIGNAL \F3[8]~reg0feeder_combout\ : std_logic;
SIGNAL \F3[8]~reg0_q\ : std_logic;
SIGNAL \Exception_Inf~reg0feeder_combout\ : std_logic;
SIGNAL \Exception_Inf~reg0_q\ : std_logic;
SIGNAL \Exception_NaN~reg0feeder_combout\ : std_logic;
SIGNAL \Exception_NaN~reg0_q\ : std_logic;
SIGNAL e2 : std_logic_vector(3 DOWNTO 0);
SIGNAL e1 : std_logic_vector(3 DOWNTO 0);
SIGNAL e1e2_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL e1e2 : std_logic_vector(3 DOWNTO 0);
SIGNAL m1m2 : std_logic_vector(4 DOWNTO 0);
SIGNAL Exception : std_logic_vector(1 DOWNTO 0);
SIGNAL Exception_4 : std_logic_vector(1 DOWNTO 0);
SIGNAL m3 : std_logic_vector(4 DOWNTO 0);
SIGNAL Exception_3 : std_logic_vector(1 DOWNTO 0);
SIGNAL e3 : std_logic_vector(3 DOWNTO 0);
SIGNAL Rounded_m1m2 : std_logic_vector(4 DOWNTO 0);
SIGNAL Exception_2 : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_RoundingMode <= RoundingMode;
ww_F1 <= F1;
ww_F2 <= F2;
F3 <= ww_F3;
Exception_Inf <= ww_Exception_Inf;
Exception_NaN <= ww_Exception_NaN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~7\ & \Mult0|auto_generated|mac_mult1~6\ & \Mult0|auto_generated|mac_mult1~5\ & \Mult0|auto_generated|mac_mult1~4\ & \Mult0|auto_generated|mac_mult1~3\ & 
\Mult0|auto_generated|mac_mult1~2\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
StickyBit <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
RoundBit <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
m1m2(0) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
m1m2(1) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
m1m2(2) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
m1m2(3) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
m1m2(4) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\Equal2~0_combout\ & \F1[3]~input_o\ & \F1[2]~input_o\ & \F1[1]~input_o\ & \F1[0]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\Equal4~0_combout\ & \F2[3]~input_o\ & \F2[2]~input_o\ & \F2[1]~input_o\ & \F2[0]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y0_N9
\F3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3[0]~reg0_q\,
	devoe => ww_devoe,
	o => \F3[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\F3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3[1]~reg0_q\,
	devoe => ww_devoe,
	o => \F3[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\F3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3[2]~reg0_q\,
	devoe => ww_devoe,
	o => \F3[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\F3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3[3]~reg0_q\,
	devoe => ww_devoe,
	o => \F3[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\F3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3[4]~reg0_q\,
	devoe => ww_devoe,
	o => \F3[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\F3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3[5]~reg0_q\,
	devoe => ww_devoe,
	o => \F3[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\F3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3[6]~reg0_q\,
	devoe => ww_devoe,
	o => \F3[6]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\F3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3[7]~reg0_q\,
	devoe => ww_devoe,
	o => \F3[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\F3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3[8]~reg0_q\,
	devoe => ww_devoe,
	o => \F3[8]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\Exception_Inf~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Exception_Inf~reg0_q\,
	devoe => ww_devoe,
	o => \Exception_Inf~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\Exception_NaN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Exception_NaN~reg0_q\,
	devoe => ww_devoe,
	o => \Exception_NaN~output_o\);

-- Location: IOIBUF_X58_Y0_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G17
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y16_N8
\F1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(0),
	o => \F1[0]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\F1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(1),
	o => \F1[1]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\F1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(2),
	o => \F1[2]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\F1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(3),
	o => \F1[3]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\F1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(5),
	o => \F1[5]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\F1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(4),
	o => \F1[4]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\F1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(6),
	o => \F1[6]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\F1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(7),
	o => \F1[7]~input_o\);

-- Location: LCCOMB_X97_Y11_N22
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\F1[5]~input_o\) # ((\F1[4]~input_o\) # ((\F1[6]~input_o\) # (\F1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1[5]~input_o\,
	datab => \F1[4]~input_o\,
	datac => \F1[6]~input_o\,
	datad => \F1[7]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\F2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2(0),
	o => \F2[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\F2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2(1),
	o => \F2[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\F2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2(2),
	o => \F2[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\F2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2(3),
	o => \F2[3]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\F2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2(5),
	o => \F2[5]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\F2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2(7),
	o => \F2[7]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\F2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2(6),
	o => \F2[6]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\F2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2(4),
	o => \F2[4]~input_o\);

-- Location: LCCOMB_X96_Y11_N2
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\F2[5]~input_o\) # ((\F2[7]~input_o\) # ((\F2[6]~input_o\) # (\F2[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2[5]~input_o\,
	datab => \F2[7]~input_o\,
	datac => \F2[6]~input_o\,
	datad => \F2[4]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: DSPMULT_X93_Y11_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \Clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y11_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: IOIBUF_X94_Y0_N1
\RoundingMode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RoundingMode(1),
	o => \RoundingMode[1]~input_o\);

-- Location: LCCOMB_X94_Y11_N14
\Rounded_m1m2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rounded_m1m2~3_combout\ = (StickyBit) # ((RoundBit & \RoundingMode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RoundBit,
	datab => StickyBit,
	datad => \RoundingMode[1]~input_o\,
	combout => \Rounded_m1m2~3_combout\);

-- Location: IOIBUF_X94_Y0_N8
\RoundingMode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RoundingMode(0),
	o => \RoundingMode[0]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\F2[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2(8),
	o => \F2[8]~input_o\);

-- Location: LCCOMB_X94_Y11_N8
\s2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2~feeder_combout\ = \F2[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2[8]~input_o\,
	combout => \s2~feeder_combout\);

-- Location: FF_X94_Y11_N9
s2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \s2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2~q\);

-- Location: IOIBUF_X115_Y14_N8
\F1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(8),
	o => \F1[8]~input_o\);

-- Location: LCCOMB_X106_Y11_N8
\s1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1~feeder_combout\ = \F1[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1[8]~input_o\,
	combout => \s1~feeder_combout\);

-- Location: FF_X106_Y11_N9
s1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \s1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1~q\);

-- Location: LCCOMB_X94_Y11_N10
\s1s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1s2~0_combout\ = \s2~q\ $ (\s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s2~q\,
	datad => \s1~q\,
	combout => \s1s2~0_combout\);

-- Location: FF_X94_Y11_N11
s1s2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \s1s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1s2~q\);

-- Location: LCCOMB_X94_Y11_N2
\Rounded_m1m2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rounded_m1m2~2_combout\ = (\RoundingMode[1]~input_o\ & ((\RoundingMode[0]~input_o\ $ (\s1s2~q\)))) # (!\RoundingMode[1]~input_o\ & (((!\RoundingMode[0]~input_o\)) # (!RoundBit)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RoundBit,
	datab => \RoundingMode[1]~input_o\,
	datac => \RoundingMode[0]~input_o\,
	datad => \s1s2~q\,
	combout => \Rounded_m1m2~2_combout\);

-- Location: LCCOMB_X94_Y11_N22
\Rounded_m1m2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rounded_m1m2~4_combout\ = (m1m2(0) & ((\Rounded_m1m2~2_combout\) # ((!RoundBit & !\Rounded_m1m2~3_combout\)))) # (!m1m2(0) & (((\Rounded_m1m2~3_combout\ & !\Rounded_m1m2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RoundBit,
	datab => m1m2(0),
	datac => \Rounded_m1m2~3_combout\,
	datad => \Rounded_m1m2~2_combout\,
	combout => \Rounded_m1m2~4_combout\);

-- Location: FF_X94_Y11_N23
\Rounded_m1m2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Rounded_m1m2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rounded_m1m2(0));

-- Location: FF_X94_Y11_N15
\m3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => Rounded_m1m2(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m3(0));

-- Location: LCCOMB_X96_Y11_N24
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\F2[5]~input_o\ & (\F2[7]~input_o\ & (\F2[6]~input_o\ & \F2[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2[5]~input_o\,
	datab => \F2[7]~input_o\,
	datac => \F2[6]~input_o\,
	datad => \F2[4]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X97_Y11_N8
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\F2[3]~input_o\ & (!\F2[2]~input_o\ & (!\F2[1]~input_o\ & !\F2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2[3]~input_o\,
	datab => \F2[2]~input_o\,
	datac => \F2[1]~input_o\,
	datad => \F2[0]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X97_Y11_N12
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\F1[1]~input_o\ & (!\F1[0]~input_o\ & (!\F1[2]~input_o\ & !\F1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1[1]~input_o\,
	datab => \F1[0]~input_o\,
	datac => \F1[2]~input_o\,
	datad => \F1[3]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X97_Y11_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\F1[5]~input_o\ & (\F1[4]~input_o\ & (\F1[6]~input_o\ & \F1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1[5]~input_o\,
	datab => \F1[4]~input_o\,
	datac => \F1[6]~input_o\,
	datad => \F1[7]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X97_Y11_N2
\Exception~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Exception~0_combout\ = (\Equal3~0_combout\ & (((\Equal1~0_combout\ & \Equal0~0_combout\)) # (!\Equal2~0_combout\))) # (!\Equal3~0_combout\ & (((\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Exception~0_combout\);

-- Location: LCCOMB_X97_Y11_N30
\Exception~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Exception~1_combout\ = (\Exception~0_combout\) # ((\Equal5~0_combout\ & (!\Equal4~0_combout\)) # (!\Equal5~0_combout\ & ((\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \Exception~0_combout\,
	combout => \Exception~1_combout\);

-- Location: LCCOMB_X97_Y11_N16
\Exception~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Exception~2_combout\ = (\Exception~1_combout\ & ((\Equal1~0_combout\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Exception~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Exception~2_combout\);

-- Location: FF_X97_Y11_N17
\Exception[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Exception~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Exception(1));

-- Location: LCCOMB_X96_Y11_N0
\Exception_2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Exception_2[1]~feeder_combout\ = Exception(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Exception(1),
	combout => \Exception_2[1]~feeder_combout\);

-- Location: FF_X96_Y11_N1
\Exception_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Exception_2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Exception_2(1));

-- Location: FF_X95_Y11_N21
\Exception_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => Exception_2(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Exception_3(1));

-- Location: LCCOMB_X95_Y11_N8
\Exception_4[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Exception_4[1]~feeder_combout\ = Exception_3(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Exception_3(1),
	combout => \Exception_4[1]~feeder_combout\);

-- Location: FF_X95_Y11_N9
\Exception_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Exception_4[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Exception_4(1));

-- Location: LCCOMB_X97_Y11_N10
\Exception~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Exception~3_combout\ = (!\Exception~1_combout\ & ((\Equal1~0_combout\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Exception~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Exception~3_combout\);

-- Location: FF_X97_Y11_N11
\Exception[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Exception~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Exception(0));

-- Location: LCCOMB_X96_Y11_N26
\Exception_2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Exception_2[0]~feeder_combout\ = Exception(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Exception(0),
	combout => \Exception_2[0]~feeder_combout\);

-- Location: FF_X96_Y11_N27
\Exception_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Exception_2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Exception_2(0));

-- Location: LCCOMB_X95_Y11_N6
\Exception_3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Exception_3[0]~feeder_combout\ = Exception_2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Exception_2(0),
	combout => \Exception_3[0]~feeder_combout\);

-- Location: FF_X95_Y11_N7
\Exception_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Exception_3[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Exception_3(0));

-- Location: LCCOMB_X95_Y11_N30
\Exception_4[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Exception_4[0]~feeder_combout\ = Exception_3(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Exception_3(0),
	combout => \Exception_4[0]~feeder_combout\);

-- Location: FF_X95_Y11_N31
\Exception_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Exception_4[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Exception_4(0));

-- Location: LCCOMB_X95_Y11_N4
\F3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F3~0_combout\ = (!Exception_4(0) & ((m3(0)) # (Exception_4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3(0),
	datab => Exception_4(1),
	datac => Exception_4(0),
	combout => \F3~0_combout\);

-- Location: LCCOMB_X95_Y11_N20
\F3[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F3[0]~1_combout\ = (!Exception_4(1)) # (!Exception_4(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Exception_4(0),
	datab => Exception_4(1),
	combout => \F3[0]~1_combout\);

-- Location: FF_X95_Y11_N5
\F3[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \F3~0_combout\,
	ena => \F3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F3[0]~reg0_q\);

-- Location: LCCOMB_X94_Y11_N24
\Rounded_m1m2[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rounded_m1m2[1]~5_combout\ = (RoundBit & ((\RoundingMode[1]~input_o\) # ((StickyBit) # (m1m2(0))))) # (!RoundBit & (\RoundingMode[1]~input_o\ & (StickyBit)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RoundBit,
	datab => \RoundingMode[1]~input_o\,
	datac => StickyBit,
	datad => m1m2(0),
	combout => \Rounded_m1m2[1]~5_combout\);

-- Location: LCCOMB_X94_Y11_N12
\Rounded_m1m2[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rounded_m1m2[1]~6_combout\ = (\RoundingMode[0]~input_o\ $ (((\s1s2~q\) # (!\RoundingMode[1]~input_o\)))) # (!\Rounded_m1m2[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1s2~q\,
	datab => \RoundingMode[1]~input_o\,
	datac => \RoundingMode[0]~input_o\,
	datad => \Rounded_m1m2[1]~5_combout\,
	combout => \Rounded_m1m2[1]~6_combout\);

-- Location: LCCOMB_X94_Y11_N4
\Rounded_m1m2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rounded_m1m2~7_combout\ = m1m2(1) $ (((m1m2(0) & !\Rounded_m1m2[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m1m2(0),
	datac => m1m2(1),
	datad => \Rounded_m1m2[1]~6_combout\,
	combout => \Rounded_m1m2~7_combout\);

-- Location: FF_X94_Y11_N5
\Rounded_m1m2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Rounded_m1m2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rounded_m1m2(1));

-- Location: FF_X94_Y11_N31
\m3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => Rounded_m1m2(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m3(1));

-- Location: LCCOMB_X95_Y11_N22
\F3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F3~2_combout\ = (!Exception_4(0) & ((Exception_4(1)) # (m3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Exception_4(1),
	datac => Exception_4(0),
	datad => m3(1),
	combout => \F3~2_combout\);

-- Location: FF_X95_Y11_N23
\F3[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \F3~2_combout\,
	ena => \F3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F3[1]~reg0_q\);

-- Location: LCCOMB_X94_Y11_N20
\Rounded_m1m2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rounded_m1m2~9_combout\ = m1m2(2) $ (((m1m2(0) & (m1m2(1) & !\Rounded_m1m2[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1m2(2),
	datab => m1m2(0),
	datac => m1m2(1),
	datad => \Rounded_m1m2[1]~6_combout\,
	combout => \Rounded_m1m2~9_combout\);

-- Location: FF_X94_Y11_N21
\Rounded_m1m2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Rounded_m1m2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rounded_m1m2(2));

-- Location: LCCOMB_X94_Y11_N6
\m3[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3[2]~feeder_combout\ = Rounded_m1m2(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Rounded_m1m2(2),
	combout => \m3[2]~feeder_combout\);

-- Location: FF_X94_Y11_N7
\m3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \m3[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m3(2));

-- Location: LCCOMB_X95_Y11_N12
\F3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \F3~3_combout\ = (!Exception_4(0) & ((Exception_4(1)) # (m3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Exception_4(0),
	datab => Exception_4(1),
	datac => m3(2),
	combout => \F3~3_combout\);

-- Location: FF_X95_Y11_N13
\F3[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \F3~3_combout\,
	ena => \F3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F3[2]~reg0_q\);

-- Location: LCCOMB_X94_Y11_N30
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (m1m2(1) & m1m2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1m2(1),
	datad => m1m2(0),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X94_Y11_N0
\Rounded_m1m2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rounded_m1m2~8_combout\ = m1m2(3) $ (((\Add4~0_combout\ & (m1m2(2) & !\Rounded_m1m2[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => m1m2(2),
	datac => m1m2(3),
	datad => \Rounded_m1m2[1]~6_combout\,
	combout => \Rounded_m1m2~8_combout\);

-- Location: FF_X94_Y11_N1
\Rounded_m1m2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Rounded_m1m2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Rounded_m1m2(3));

-- Location: LCCOMB_X94_Y11_N18
\m3[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3[3]~feeder_combout\ = Rounded_m1m2(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Rounded_m1m2(3),
	combout => \m3[3]~feeder_combout\);

-- Location: FF_X94_Y11_N19
\m3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \m3[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m3(3));

-- Location: LCCOMB_X95_Y11_N2
\F3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \F3~4_combout\ = (!Exception_4(0) & ((Exception_4(1)) # (m3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Exception_4(0),
	datac => Exception_4(1),
	datad => m3(3),
	combout => \F3~4_combout\);

-- Location: FF_X95_Y11_N3
\F3[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \F3~4_combout\,
	ena => \F3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F3[3]~reg0_q\);

-- Location: LCCOMB_X97_Y11_N4
\e1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1[0]~0_combout\ = !\F1[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F1[4]~input_o\,
	combout => \e1[0]~0_combout\);

-- Location: FF_X97_Y11_N5
\e1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1(0));

-- Location: LCCOMB_X96_Y11_N4
\e2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e2[0]~0_combout\ = !\F2[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2[4]~input_o\,
	combout => \e2[0]~0_combout\);

-- Location: FF_X96_Y11_N5
\e2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e2(0));

-- Location: LCCOMB_X96_Y11_N16
\e1e2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1e2[0]~4_combout\ = (e1(0) & (e2(0) $ (VCC))) # (!e1(0) & (e2(0) & VCC))
-- \e1e2[0]~5\ = CARRY((e1(0) & e2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e1(0),
	datab => e2(0),
	datad => VCC,
	combout => \e1e2[0]~4_combout\,
	cout => \e1e2[0]~5\);

-- Location: FF_X96_Y11_N17
\e1e2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e1e2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1e2(0));

-- Location: LCCOMB_X96_Y11_N6
\e1e2_2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1e2_2[0]~4_combout\ = (m1m2(4) & (e1e2(0) $ (VCC))) # (!m1m2(4) & (e1e2(0) & VCC))
-- \e1e2_2[0]~5\ = CARRY((m1m2(4) & e1e2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1m2(4),
	datab => e1e2(0),
	datad => VCC,
	combout => \e1e2_2[0]~4_combout\,
	cout => \e1e2_2[0]~5\);

-- Location: FF_X96_Y11_N7
\e1e2_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e1e2_2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1e2_2(0));

-- Location: LCCOMB_X95_Y11_N18
\e3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3[0]~feeder_combout\ = e1e2_2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => e1e2_2(0),
	combout => \e3[0]~feeder_combout\);

-- Location: FF_X95_Y11_N19
\e3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e3[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e3(0));

-- Location: LCCOMB_X95_Y11_N0
\F3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \F3~5_combout\ = ((Exception_4(0)) # (Exception_4(1))) # (!e3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => e3(0),
	datac => Exception_4(0),
	datad => Exception_4(1),
	combout => \F3~5_combout\);

-- Location: FF_X95_Y11_N1
\F3[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \F3~5_combout\,
	ena => \F3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F3[4]~reg0_q\);

-- Location: LCCOMB_X96_Y11_N30
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \F2[5]~input_o\ $ (\F2[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F2[5]~input_o\,
	datad => \F2[4]~input_o\,
	combout => \Add1~0_combout\);

-- Location: FF_X96_Y11_N31
\e2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e2(1));

-- Location: LCCOMB_X97_Y11_N26
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \F1[5]~input_o\ $ (\F1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1[5]~input_o\,
	datac => \F1[4]~input_o\,
	combout => \Add0~0_combout\);

-- Location: FF_X97_Y11_N27
\e1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1(1));

-- Location: LCCOMB_X96_Y11_N18
\e1e2[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1e2[1]~6_combout\ = (e2(1) & ((e1(1) & (\e1e2[0]~5\ & VCC)) # (!e1(1) & (!\e1e2[0]~5\)))) # (!e2(1) & ((e1(1) & (!\e1e2[0]~5\)) # (!e1(1) & ((\e1e2[0]~5\) # (GND)))))
-- \e1e2[1]~7\ = CARRY((e2(1) & (!e1(1) & !\e1e2[0]~5\)) # (!e2(1) & ((!\e1e2[0]~5\) # (!e1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => e2(1),
	datab => e1(1),
	datad => VCC,
	cin => \e1e2[0]~5\,
	combout => \e1e2[1]~6_combout\,
	cout => \e1e2[1]~7\);

-- Location: FF_X96_Y11_N19
\e1e2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e1e2[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1e2(1));

-- Location: LCCOMB_X96_Y11_N8
\e1e2_2[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1e2_2[1]~6_combout\ = (e1e2(1) & (!\e1e2_2[0]~5\)) # (!e1e2(1) & ((\e1e2_2[0]~5\) # (GND)))
-- \e1e2_2[1]~7\ = CARRY((!\e1e2_2[0]~5\) # (!e1e2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => e1e2(1),
	datad => VCC,
	cin => \e1e2_2[0]~5\,
	combout => \e1e2_2[1]~6_combout\,
	cout => \e1e2_2[1]~7\);

-- Location: FF_X96_Y11_N9
\e1e2_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e1e2_2[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1e2_2(1));

-- Location: LCCOMB_X95_Y11_N28
\e3[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \e3[1]~feeder_combout\ = e1e2_2(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => e1e2_2(1),
	combout => \e3[1]~feeder_combout\);

-- Location: FF_X95_Y11_N29
\e3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e3(1));

-- Location: LCCOMB_X95_Y11_N14
\F3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \F3~6_combout\ = (Exception_4(0)) # ((Exception_4(1)) # (e3(1) $ (!e3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e3(1),
	datab => e3(0),
	datac => Exception_4(0),
	datad => Exception_4(1),
	combout => \F3~6_combout\);

-- Location: FF_X95_Y11_N15
\F3[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \F3~6_combout\,
	ena => \F3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F3[5]~reg0_q\);

-- Location: LCCOMB_X97_Y11_N20
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \F1[6]~input_o\ $ (((\F1[5]~input_o\ & \F1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1[5]~input_o\,
	datab => \F1[4]~input_o\,
	datac => \F1[6]~input_o\,
	combout => \Add0~1_combout\);

-- Location: FF_X97_Y11_N21
\e1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1(2));

-- Location: LCCOMB_X96_Y11_N28
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \F2[6]~input_o\ $ (((\F2[5]~input_o\ & \F2[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2[5]~input_o\,
	datac => \F2[6]~input_o\,
	datad => \F2[4]~input_o\,
	combout => \Add1~1_combout\);

-- Location: FF_X96_Y11_N29
\e2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e2(2));

-- Location: LCCOMB_X96_Y11_N20
\e1e2[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1e2[2]~8_combout\ = ((e1(2) $ (e2(2) $ (!\e1e2[1]~7\)))) # (GND)
-- \e1e2[2]~9\ = CARRY((e1(2) & ((e2(2)) # (!\e1e2[1]~7\))) # (!e1(2) & (e2(2) & !\e1e2[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => e1(2),
	datab => e2(2),
	datad => VCC,
	cin => \e1e2[1]~7\,
	combout => \e1e2[2]~8_combout\,
	cout => \e1e2[2]~9\);

-- Location: FF_X96_Y11_N21
\e1e2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e1e2[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1e2(2));

-- Location: LCCOMB_X96_Y11_N10
\e1e2_2[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1e2_2[2]~8_combout\ = (e1e2(2) & (\e1e2_2[1]~7\ $ (GND))) # (!e1e2(2) & (!\e1e2_2[1]~7\ & VCC))
-- \e1e2_2[2]~9\ = CARRY((e1e2(2) & !\e1e2_2[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => e1e2(2),
	datad => VCC,
	cin => \e1e2_2[1]~7\,
	combout => \e1e2_2[2]~8_combout\,
	cout => \e1e2_2[2]~9\);

-- Location: FF_X96_Y11_N11
\e1e2_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e1e2_2[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1e2_2(2));

-- Location: FF_X95_Y11_N11
\e3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => e1e2_2(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e3(2));

-- Location: LCCOMB_X95_Y11_N10
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = e3(2) $ (((e3(1)) # (e3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => e3(1),
	datac => e3(2),
	datad => e3(0),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X95_Y11_N24
\F3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \F3~7_combout\ = ((Exception_4(0)) # (Exception_4(1))) # (!\Add6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~0_combout\,
	datac => Exception_4(0),
	datad => Exception_4(1),
	combout => \F3~7_combout\);

-- Location: FF_X95_Y11_N25
\F3[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \F3~7_combout\,
	ena => \F3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F3[6]~reg0_q\);

-- Location: LCCOMB_X96_Y11_N14
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = \F2[7]~input_o\ $ ((((!\F2[4]~input_o\) # (!\F2[6]~input_o\)) # (!\F2[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2[5]~input_o\,
	datab => \F2[7]~input_o\,
	datac => \F2[6]~input_o\,
	datad => \F2[4]~input_o\,
	combout => \Add1~2_combout\);

-- Location: FF_X96_Y11_N15
\e2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e2(3));

-- Location: LCCOMB_X97_Y11_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \F1[7]~input_o\ $ ((((!\F1[6]~input_o\) # (!\F1[4]~input_o\)) # (!\F1[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1[5]~input_o\,
	datab => \F1[4]~input_o\,
	datac => \F1[6]~input_o\,
	datad => \F1[7]~input_o\,
	combout => \Add0~2_combout\);

-- Location: FF_X97_Y11_N19
\e1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1(3));

-- Location: LCCOMB_X96_Y11_N22
\e1e2[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1e2[3]~10_combout\ = e2(3) $ (\e1e2[2]~9\ $ (e1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => e2(3),
	datad => e1(3),
	cin => \e1e2[2]~9\,
	combout => \e1e2[3]~10_combout\);

-- Location: FF_X96_Y11_N23
\e1e2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e1e2[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1e2(3));

-- Location: LCCOMB_X96_Y11_N12
\e1e2_2[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1e2_2[3]~10_combout\ = e1e2(3) $ (\e1e2_2[2]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => e1e2(3),
	cin => \e1e2_2[2]~9\,
	combout => \e1e2_2[3]~10_combout\);

-- Location: FF_X96_Y11_N13
\e1e2_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \e1e2_2[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e1e2_2(3));

-- Location: FF_X95_Y11_N17
\e3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => e1e2_2(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e3(3));

-- Location: LCCOMB_X95_Y11_N16
\Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = e3(3) $ (((e3(2)) # ((e3(1)) # (e3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e3(2),
	datab => e3(1),
	datac => e3(3),
	datad => e3(0),
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X95_Y11_N26
\F3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \F3~8_combout\ = (\Add6~1_combout\) # ((Exception_4(0)) # (Exception_4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~1_combout\,
	datac => Exception_4(0),
	datad => Exception_4(1),
	combout => \F3~8_combout\);

-- Location: FF_X95_Y11_N27
\F3[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \F3~8_combout\,
	ena => \F3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F3[7]~reg0_q\);

-- Location: LCCOMB_X94_Y11_N16
\s1s2_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1s2_2~feeder_combout\ = \s1s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s1s2~q\,
	combout => \s1s2_2~feeder_combout\);

-- Location: FF_X94_Y11_N17
s1s2_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \s1s2_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1s2_2~q\);

-- Location: LCCOMB_X94_Y11_N26
\s3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3~feeder_combout\ = \s1s2_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s1s2_2~q\,
	combout => \s3~feeder_combout\);

-- Location: FF_X94_Y11_N27
s3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \s3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s3~q\);

-- Location: LCCOMB_X94_Y11_N28
\F3[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \F3[8]~reg0feeder_combout\ = \s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s3~q\,
	combout => \F3[8]~reg0feeder_combout\);

-- Location: FF_X94_Y11_N29
\F3[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \F3[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F3[8]~reg0_q\);

-- Location: LCCOMB_X107_Y11_N20
\Exception_Inf~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Exception_Inf~reg0feeder_combout\ = Exception_4(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Exception_4(0),
	combout => \Exception_Inf~reg0feeder_combout\);

-- Location: FF_X107_Y11_N21
\Exception_Inf~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Exception_Inf~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Exception_Inf~reg0_q\);

-- Location: LCCOMB_X103_Y11_N20
\Exception_NaN~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Exception_NaN~reg0feeder_combout\ = Exception_4(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Exception_4(1),
	combout => \Exception_NaN~reg0feeder_combout\);

-- Location: FF_X103_Y11_N21
\Exception_NaN~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Exception_NaN~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Exception_NaN~reg0_q\);

ww_F3(0) <= \F3[0]~output_o\;

ww_F3(1) <= \F3[1]~output_o\;

ww_F3(2) <= \F3[2]~output_o\;

ww_F3(3) <= \F3[3]~output_o\;

ww_F3(4) <= \F3[4]~output_o\;

ww_F3(5) <= \F3[5]~output_o\;

ww_F3(6) <= \F3[6]~output_o\;

ww_F3(7) <= \F3[7]~output_o\;

ww_F3(8) <= \F3[8]~output_o\;

ww_Exception_Inf <= \Exception_Inf~output_o\;

ww_Exception_NaN <= \Exception_NaN~output_o\;
END structure;


