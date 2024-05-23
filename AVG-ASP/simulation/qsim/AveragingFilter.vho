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

-- DATE "05/23/2024 16:17:09"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	testing IS
    PORT (
	avg_rdy : OUT std_logic;
	adc_data_rd : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	L_sel : IN std_logic;
	adc_data : IN std_logic_vector(15 DOWNTO 0);
	avg_result : OUT std_logic_vector(15 DOWNTO 0);
	fifo_out_0 : OUT std_logic_vector(15 DOWNTO 0);
	fifo_out_1 : OUT std_logic_vector(15 DOWNTO 0);
	fifo_out_2 : OUT std_logic_vector(15 DOWNTO 0);
	fifo_out_3 : OUT std_logic_vector(15 DOWNTO 0);
	fifo_out_4 : OUT std_logic_vector(15 DOWNTO 0);
	write_addr : OUT std_logic_vector(9 DOWNTO 0)
	);
END testing;

ARCHITECTURE structure OF testing IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_avg_rdy : std_logic;
SIGNAL ww_adc_data_rd : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_L_sel : std_logic;
SIGNAL ww_adc_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_avg_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_fifo_out_0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_fifo_out_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_fifo_out_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_fifo_out_3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_fifo_out_4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_write_addr : std_logic_vector(9 DOWNTO 0);
SIGNAL \avg_rdy~output_o\ : std_logic;
SIGNAL \avg_result[15]~output_o\ : std_logic;
SIGNAL \avg_result[14]~output_o\ : std_logic;
SIGNAL \avg_result[13]~output_o\ : std_logic;
SIGNAL \avg_result[12]~output_o\ : std_logic;
SIGNAL \avg_result[11]~output_o\ : std_logic;
SIGNAL \avg_result[10]~output_o\ : std_logic;
SIGNAL \avg_result[9]~output_o\ : std_logic;
SIGNAL \avg_result[8]~output_o\ : std_logic;
SIGNAL \avg_result[7]~output_o\ : std_logic;
SIGNAL \avg_result[6]~output_o\ : std_logic;
SIGNAL \avg_result[5]~output_o\ : std_logic;
SIGNAL \avg_result[4]~output_o\ : std_logic;
SIGNAL \avg_result[3]~output_o\ : std_logic;
SIGNAL \avg_result[2]~output_o\ : std_logic;
SIGNAL \avg_result[1]~output_o\ : std_logic;
SIGNAL \avg_result[0]~output_o\ : std_logic;
SIGNAL \fifo_out_0[15]~output_o\ : std_logic;
SIGNAL \fifo_out_0[14]~output_o\ : std_logic;
SIGNAL \fifo_out_0[13]~output_o\ : std_logic;
SIGNAL \fifo_out_0[12]~output_o\ : std_logic;
SIGNAL \fifo_out_0[11]~output_o\ : std_logic;
SIGNAL \fifo_out_0[10]~output_o\ : std_logic;
SIGNAL \fifo_out_0[9]~output_o\ : std_logic;
SIGNAL \fifo_out_0[8]~output_o\ : std_logic;
SIGNAL \fifo_out_0[7]~output_o\ : std_logic;
SIGNAL \fifo_out_0[6]~output_o\ : std_logic;
SIGNAL \fifo_out_0[5]~output_o\ : std_logic;
SIGNAL \fifo_out_0[4]~output_o\ : std_logic;
SIGNAL \fifo_out_0[3]~output_o\ : std_logic;
SIGNAL \fifo_out_0[2]~output_o\ : std_logic;
SIGNAL \fifo_out_0[1]~output_o\ : std_logic;
SIGNAL \fifo_out_0[0]~output_o\ : std_logic;
SIGNAL \fifo_out_1[15]~output_o\ : std_logic;
SIGNAL \fifo_out_1[14]~output_o\ : std_logic;
SIGNAL \fifo_out_1[13]~output_o\ : std_logic;
SIGNAL \fifo_out_1[12]~output_o\ : std_logic;
SIGNAL \fifo_out_1[11]~output_o\ : std_logic;
SIGNAL \fifo_out_1[10]~output_o\ : std_logic;
SIGNAL \fifo_out_1[9]~output_o\ : std_logic;
SIGNAL \fifo_out_1[8]~output_o\ : std_logic;
SIGNAL \fifo_out_1[7]~output_o\ : std_logic;
SIGNAL \fifo_out_1[6]~output_o\ : std_logic;
SIGNAL \fifo_out_1[5]~output_o\ : std_logic;
SIGNAL \fifo_out_1[4]~output_o\ : std_logic;
SIGNAL \fifo_out_1[3]~output_o\ : std_logic;
SIGNAL \fifo_out_1[2]~output_o\ : std_logic;
SIGNAL \fifo_out_1[1]~output_o\ : std_logic;
SIGNAL \fifo_out_1[0]~output_o\ : std_logic;
SIGNAL \fifo_out_2[15]~output_o\ : std_logic;
SIGNAL \fifo_out_2[14]~output_o\ : std_logic;
SIGNAL \fifo_out_2[13]~output_o\ : std_logic;
SIGNAL \fifo_out_2[12]~output_o\ : std_logic;
SIGNAL \fifo_out_2[11]~output_o\ : std_logic;
SIGNAL \fifo_out_2[10]~output_o\ : std_logic;
SIGNAL \fifo_out_2[9]~output_o\ : std_logic;
SIGNAL \fifo_out_2[8]~output_o\ : std_logic;
SIGNAL \fifo_out_2[7]~output_o\ : std_logic;
SIGNAL \fifo_out_2[6]~output_o\ : std_logic;
SIGNAL \fifo_out_2[5]~output_o\ : std_logic;
SIGNAL \fifo_out_2[4]~output_o\ : std_logic;
SIGNAL \fifo_out_2[3]~output_o\ : std_logic;
SIGNAL \fifo_out_2[2]~output_o\ : std_logic;
SIGNAL \fifo_out_2[1]~output_o\ : std_logic;
SIGNAL \fifo_out_2[0]~output_o\ : std_logic;
SIGNAL \fifo_out_3[15]~output_o\ : std_logic;
SIGNAL \fifo_out_3[14]~output_o\ : std_logic;
SIGNAL \fifo_out_3[13]~output_o\ : std_logic;
SIGNAL \fifo_out_3[12]~output_o\ : std_logic;
SIGNAL \fifo_out_3[11]~output_o\ : std_logic;
SIGNAL \fifo_out_3[10]~output_o\ : std_logic;
SIGNAL \fifo_out_3[9]~output_o\ : std_logic;
SIGNAL \fifo_out_3[8]~output_o\ : std_logic;
SIGNAL \fifo_out_3[7]~output_o\ : std_logic;
SIGNAL \fifo_out_3[6]~output_o\ : std_logic;
SIGNAL \fifo_out_3[5]~output_o\ : std_logic;
SIGNAL \fifo_out_3[4]~output_o\ : std_logic;
SIGNAL \fifo_out_3[3]~output_o\ : std_logic;
SIGNAL \fifo_out_3[2]~output_o\ : std_logic;
SIGNAL \fifo_out_3[1]~output_o\ : std_logic;
SIGNAL \fifo_out_3[0]~output_o\ : std_logic;
SIGNAL \fifo_out_4[15]~output_o\ : std_logic;
SIGNAL \fifo_out_4[14]~output_o\ : std_logic;
SIGNAL \fifo_out_4[13]~output_o\ : std_logic;
SIGNAL \fifo_out_4[12]~output_o\ : std_logic;
SIGNAL \fifo_out_4[11]~output_o\ : std_logic;
SIGNAL \fifo_out_4[10]~output_o\ : std_logic;
SIGNAL \fifo_out_4[9]~output_o\ : std_logic;
SIGNAL \fifo_out_4[8]~output_o\ : std_logic;
SIGNAL \fifo_out_4[7]~output_o\ : std_logic;
SIGNAL \fifo_out_4[6]~output_o\ : std_logic;
SIGNAL \fifo_out_4[5]~output_o\ : std_logic;
SIGNAL \fifo_out_4[4]~output_o\ : std_logic;
SIGNAL \fifo_out_4[3]~output_o\ : std_logic;
SIGNAL \fifo_out_4[2]~output_o\ : std_logic;
SIGNAL \fifo_out_4[1]~output_o\ : std_logic;
SIGNAL \fifo_out_4[0]~output_o\ : std_logic;
SIGNAL \write_addr[9]~output_o\ : std_logic;
SIGNAL \write_addr[8]~output_o\ : std_logic;
SIGNAL \write_addr[7]~output_o\ : std_logic;
SIGNAL \write_addr[6]~output_o\ : std_logic;
SIGNAL \write_addr[5]~output_o\ : std_logic;
SIGNAL \write_addr[4]~output_o\ : std_logic;
SIGNAL \write_addr[3]~output_o\ : std_logic;
SIGNAL \write_addr[2]~output_o\ : std_logic;
SIGNAL \write_addr[1]~output_o\ : std_logic;
SIGNAL \write_addr[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \adc_data_rd~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|avg_rdy~q\ : std_logic;
SIGNAL \adc_data[15]~input_o\ : std_logic;
SIGNAL \adc_data[14]~input_o\ : std_logic;
SIGNAL \adc_data[13]~input_o\ : std_logic;
SIGNAL \adc_data[12]~input_o\ : std_logic;
SIGNAL \adc_data[11]~input_o\ : std_logic;
SIGNAL \adc_data[10]~input_o\ : std_logic;
SIGNAL \adc_data[9]~input_o\ : std_logic;
SIGNAL \adc_data[8]~input_o\ : std_logic;
SIGNAL \adc_data[7]~input_o\ : std_logic;
SIGNAL \adc_data[6]~input_o\ : std_logic;
SIGNAL \adc_data[5]~input_o\ : std_logic;
SIGNAL \adc_data[4]~input_o\ : std_logic;
SIGNAL \adc_data[3]~input_o\ : std_logic;
SIGNAL \adc_data[2]~input_o\ : std_logic;
SIGNAL \adc_data[1]~input_o\ : std_logic;
SIGNAL \adc_data[0]~input_o\ : std_logic;
SIGNAL \inst|Add0~61_sumout\ : std_logic;
SIGNAL \inst|Add0~62\ : std_logic;
SIGNAL \inst|Add0~57_sumout\ : std_logic;
SIGNAL \inst|Add0~58\ : std_logic;
SIGNAL \inst|Add0~53_sumout\ : std_logic;
SIGNAL \inst|Add0~54\ : std_logic;
SIGNAL \inst|Add0~49_sumout\ : std_logic;
SIGNAL \inst|Add0~50\ : std_logic;
SIGNAL \inst|Add0~45_sumout\ : std_logic;
SIGNAL \inst|Add0~46\ : std_logic;
SIGNAL \inst|Add0~41_sumout\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~37_sumout\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \L_sel~input_o\ : std_logic;
SIGNAL \inst|fifo[0][15]~q\ : std_logic;
SIGNAL \inst|fifo[0][14]~q\ : std_logic;
SIGNAL \inst|fifo[0][13]~q\ : std_logic;
SIGNAL \inst|fifo[0][12]~q\ : std_logic;
SIGNAL \inst|fifo[0][11]~q\ : std_logic;
SIGNAL \inst|fifo[0][10]~q\ : std_logic;
SIGNAL \inst|fifo[0][9]~q\ : std_logic;
SIGNAL \inst|fifo[0][8]~q\ : std_logic;
SIGNAL \inst|fifo[0][7]~q\ : std_logic;
SIGNAL \inst|fifo[0][6]~q\ : std_logic;
SIGNAL \inst|fifo[0][5]~q\ : std_logic;
SIGNAL \inst|fifo[0][4]~q\ : std_logic;
SIGNAL \inst|fifo[0][3]~q\ : std_logic;
SIGNAL \inst|fifo[0][2]~q\ : std_logic;
SIGNAL \inst|fifo[0][1]~q\ : std_logic;
SIGNAL \inst|fifo[0][0]~q\ : std_logic;
SIGNAL \inst|fifo[1][15]~q\ : std_logic;
SIGNAL \inst|fifo[1][14]~q\ : std_logic;
SIGNAL \inst|fifo[1][13]~q\ : std_logic;
SIGNAL \inst|fifo[1][12]~q\ : std_logic;
SIGNAL \inst|fifo[1][11]~q\ : std_logic;
SIGNAL \inst|fifo[1][10]~q\ : std_logic;
SIGNAL \inst|fifo[1][9]~q\ : std_logic;
SIGNAL \inst|fifo[1][8]~q\ : std_logic;
SIGNAL \inst|fifo[1][7]~q\ : std_logic;
SIGNAL \inst|fifo[1][6]~q\ : std_logic;
SIGNAL \inst|fifo[1][5]~q\ : std_logic;
SIGNAL \inst|fifo[1][4]~q\ : std_logic;
SIGNAL \inst|fifo[1][3]~q\ : std_logic;
SIGNAL \inst|fifo[1][2]~q\ : std_logic;
SIGNAL \inst|fifo[1][1]~q\ : std_logic;
SIGNAL \inst|fifo[1][0]~q\ : std_logic;
SIGNAL \inst|fifo[2][15]~q\ : std_logic;
SIGNAL \inst|fifo[2][14]~q\ : std_logic;
SIGNAL \inst|fifo[2][13]~q\ : std_logic;
SIGNAL \inst|fifo[2][12]~q\ : std_logic;
SIGNAL \inst|fifo[2][11]~q\ : std_logic;
SIGNAL \inst|fifo[2][10]~q\ : std_logic;
SIGNAL \inst|fifo[2][9]~q\ : std_logic;
SIGNAL \inst|fifo[2][8]~q\ : std_logic;
SIGNAL \inst|fifo[2][7]~q\ : std_logic;
SIGNAL \inst|fifo[2][6]~q\ : std_logic;
SIGNAL \inst|fifo[2][5]~q\ : std_logic;
SIGNAL \inst|fifo[2][4]~q\ : std_logic;
SIGNAL \inst|fifo[2][3]~q\ : std_logic;
SIGNAL \inst|fifo[2][2]~q\ : std_logic;
SIGNAL \inst|fifo[2][1]~q\ : std_logic;
SIGNAL \inst|fifo[2][0]~q\ : std_logic;
SIGNAL \inst|fifo[3][15]~q\ : std_logic;
SIGNAL \inst|fifo[3][14]~q\ : std_logic;
SIGNAL \inst|fifo[3][13]~q\ : std_logic;
SIGNAL \inst|fifo[3][12]~q\ : std_logic;
SIGNAL \inst|fifo[3][11]~q\ : std_logic;
SIGNAL \inst|fifo[3][10]~q\ : std_logic;
SIGNAL \inst|fifo[3][9]~q\ : std_logic;
SIGNAL \inst|fifo[3][8]~q\ : std_logic;
SIGNAL \inst|fifo[3][7]~q\ : std_logic;
SIGNAL \inst|fifo[3][6]~q\ : std_logic;
SIGNAL \inst|fifo[3][5]~q\ : std_logic;
SIGNAL \inst|fifo[3][4]~q\ : std_logic;
SIGNAL \inst|fifo[3][3]~q\ : std_logic;
SIGNAL \inst|fifo[3][2]~q\ : std_logic;
SIGNAL \inst|fifo[3][1]~q\ : std_logic;
SIGNAL \inst|fifo[3][0]~q\ : std_logic;
SIGNAL \inst|fifo[4][15]~0_combout\ : std_logic;
SIGNAL \inst|fifo[4][15]~q\ : std_logic;
SIGNAL \inst|fifo[4][14]~q\ : std_logic;
SIGNAL \inst|fifo[4][13]~q\ : std_logic;
SIGNAL \inst|fifo[4][12]~q\ : std_logic;
SIGNAL \inst|fifo[4][11]~q\ : std_logic;
SIGNAL \inst|fifo[4][10]~q\ : std_logic;
SIGNAL \inst|fifo[4][9]~q\ : std_logic;
SIGNAL \inst|fifo[4][8]~q\ : std_logic;
SIGNAL \inst|fifo[4][7]~q\ : std_logic;
SIGNAL \inst|fifo[4][6]~q\ : std_logic;
SIGNAL \inst|fifo[4][5]~q\ : std_logic;
SIGNAL \inst|fifo[4][4]~q\ : std_logic;
SIGNAL \inst|fifo[4][3]~q\ : std_logic;
SIGNAL \inst|fifo[4][2]~q\ : std_logic;
SIGNAL \inst|fifo[4][1]~q\ : std_logic;
SIGNAL \inst|fifo[4][0]~q\ : std_logic;
SIGNAL \inst1|Add0~37_sumout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~38\ : std_logic;
SIGNAL \inst1|Add0~33_sumout\ : std_logic;
SIGNAL \inst1|Add0~34\ : std_logic;
SIGNAL \inst1|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|Add0~30\ : std_logic;
SIGNAL \inst1|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|Add0~26\ : std_logic;
SIGNAL \inst1|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|Add0~22\ : std_logic;
SIGNAL \inst1|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|Add0~18\ : std_logic;
SIGNAL \inst1|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|Add0~14\ : std_logic;
SIGNAL \inst1|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|Add0~10\ : std_logic;
SIGNAL \inst1|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|Add0~6\ : std_logic;
SIGNAL \inst1|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|write_addr[9]~0_combout\ : std_logic;
SIGNAL \inst1|address\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|avg_result\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|write_addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|sum\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_avg_rdy~q\ : std_logic;
SIGNAL \inst1|ALT_INV_address\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_adc_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_L_sel~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_adc_data_rd~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_sum\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

avg_rdy <= ww_avg_rdy;
ww_adc_data_rd <= adc_data_rd;
ww_clk <= clk;
ww_reset <= reset;
ww_L_sel <= L_sel;
ww_adc_data <= adc_data;
avg_result <= ww_avg_result;
fifo_out_0 <= ww_fifo_out_0;
fifo_out_1 <= ww_fifo_out_1;
fifo_out_2 <= ww_fifo_out_2;
fifo_out_3 <= ww_fifo_out_3;
fifo_out_4 <= ww_fifo_out_4;
write_addr <= ww_write_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_avg_rdy~q\ <= NOT \inst|avg_rdy~q\;
\inst1|ALT_INV_address\(0) <= NOT \inst1|address\(0);
\inst1|ALT_INV_address\(1) <= NOT \inst1|address\(1);
\inst1|ALT_INV_address\(2) <= NOT \inst1|address\(2);
\inst1|ALT_INV_address\(3) <= NOT \inst1|address\(3);
\inst1|ALT_INV_address\(4) <= NOT \inst1|address\(4);
\inst1|ALT_INV_address\(5) <= NOT \inst1|address\(5);
\inst1|ALT_INV_address\(6) <= NOT \inst1|address\(6);
\inst1|ALT_INV_address\(7) <= NOT \inst1|address\(7);
\inst1|ALT_INV_address\(8) <= NOT \inst1|address\(8);
\inst1|ALT_INV_address\(9) <= NOT \inst1|address\(9);
\ALT_INV_adc_data[0]~input_o\ <= NOT \adc_data[0]~input_o\;
\ALT_INV_adc_data[1]~input_o\ <= NOT \adc_data[1]~input_o\;
\ALT_INV_adc_data[2]~input_o\ <= NOT \adc_data[2]~input_o\;
\ALT_INV_adc_data[3]~input_o\ <= NOT \adc_data[3]~input_o\;
\ALT_INV_adc_data[4]~input_o\ <= NOT \adc_data[4]~input_o\;
\ALT_INV_adc_data[5]~input_o\ <= NOT \adc_data[5]~input_o\;
\ALT_INV_adc_data[6]~input_o\ <= NOT \adc_data[6]~input_o\;
\ALT_INV_adc_data[7]~input_o\ <= NOT \adc_data[7]~input_o\;
\ALT_INV_adc_data[8]~input_o\ <= NOT \adc_data[8]~input_o\;
\ALT_INV_adc_data[9]~input_o\ <= NOT \adc_data[9]~input_o\;
\ALT_INV_adc_data[10]~input_o\ <= NOT \adc_data[10]~input_o\;
\ALT_INV_adc_data[11]~input_o\ <= NOT \adc_data[11]~input_o\;
\ALT_INV_adc_data[12]~input_o\ <= NOT \adc_data[12]~input_o\;
\ALT_INV_adc_data[13]~input_o\ <= NOT \adc_data[13]~input_o\;
\ALT_INV_adc_data[14]~input_o\ <= NOT \adc_data[14]~input_o\;
\ALT_INV_adc_data[15]~input_o\ <= NOT \adc_data[15]~input_o\;
\ALT_INV_L_sel~input_o\ <= NOT \L_sel~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_adc_data_rd~input_o\ <= NOT \adc_data_rd~input_o\;
\inst|ALT_INV_sum\(0) <= NOT \inst|sum\(0);
\inst|ALT_INV_sum\(1) <= NOT \inst|sum\(1);
\inst1|ALT_INV_Equal0~1_combout\ <= NOT \inst1|Equal0~1_combout\;
\inst1|ALT_INV_Equal0~0_combout\ <= NOT \inst1|Equal0~0_combout\;
\inst|ALT_INV_sum\(2) <= NOT \inst|sum\(2);
\inst|ALT_INV_sum\(3) <= NOT \inst|sum\(3);
\inst|ALT_INV_sum\(4) <= NOT \inst|sum\(4);
\inst|ALT_INV_sum\(5) <= NOT \inst|sum\(5);
\inst|ALT_INV_sum\(6) <= NOT \inst|sum\(6);
\inst|ALT_INV_sum\(7) <= NOT \inst|sum\(7);
\inst|ALT_INV_sum\(8) <= NOT \inst|sum\(8);
\inst|ALT_INV_sum\(9) <= NOT \inst|sum\(9);
\inst|ALT_INV_sum\(10) <= NOT \inst|sum\(10);
\inst|ALT_INV_sum\(11) <= NOT \inst|sum\(11);
\inst|ALT_INV_sum\(12) <= NOT \inst|sum\(12);
\inst|ALT_INV_sum\(13) <= NOT \inst|sum\(13);
\inst|ALT_INV_sum\(14) <= NOT \inst|sum\(14);
\inst|ALT_INV_sum\(15) <= NOT \inst|sum\(15);

\avg_rdy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_rdy~q\,
	devoe => ww_devoe,
	o => \avg_rdy~output_o\);

\avg_result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(15),
	devoe => ww_devoe,
	o => \avg_result[15]~output_o\);

\avg_result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(14),
	devoe => ww_devoe,
	o => \avg_result[14]~output_o\);

\avg_result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(13),
	devoe => ww_devoe,
	o => \avg_result[13]~output_o\);

\avg_result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(12),
	devoe => ww_devoe,
	o => \avg_result[12]~output_o\);

\avg_result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(11),
	devoe => ww_devoe,
	o => \avg_result[11]~output_o\);

\avg_result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(10),
	devoe => ww_devoe,
	o => \avg_result[10]~output_o\);

\avg_result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(9),
	devoe => ww_devoe,
	o => \avg_result[9]~output_o\);

\avg_result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(8),
	devoe => ww_devoe,
	o => \avg_result[8]~output_o\);

\avg_result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(7),
	devoe => ww_devoe,
	o => \avg_result[7]~output_o\);

\avg_result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(6),
	devoe => ww_devoe,
	o => \avg_result[6]~output_o\);

\avg_result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(5),
	devoe => ww_devoe,
	o => \avg_result[5]~output_o\);

\avg_result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(4),
	devoe => ww_devoe,
	o => \avg_result[4]~output_o\);

\avg_result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(3),
	devoe => ww_devoe,
	o => \avg_result[3]~output_o\);

\avg_result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(2),
	devoe => ww_devoe,
	o => \avg_result[2]~output_o\);

\avg_result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(1),
	devoe => ww_devoe,
	o => \avg_result[1]~output_o\);

\avg_result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|avg_result\(0),
	devoe => ww_devoe,
	o => \avg_result[0]~output_o\);

\fifo_out_0[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][15]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[15]~output_o\);

\fifo_out_0[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][14]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[14]~output_o\);

\fifo_out_0[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][13]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[13]~output_o\);

\fifo_out_0[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][12]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[12]~output_o\);

\fifo_out_0[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][11]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[11]~output_o\);

\fifo_out_0[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][10]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[10]~output_o\);

\fifo_out_0[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][9]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[9]~output_o\);

\fifo_out_0[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][8]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[8]~output_o\);

\fifo_out_0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][7]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[7]~output_o\);

\fifo_out_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][6]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[6]~output_o\);

\fifo_out_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][5]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[5]~output_o\);

\fifo_out_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][4]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[4]~output_o\);

\fifo_out_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][3]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[3]~output_o\);

\fifo_out_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][2]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[2]~output_o\);

\fifo_out_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][1]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[1]~output_o\);

\fifo_out_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[0][0]~q\,
	devoe => ww_devoe,
	o => \fifo_out_0[0]~output_o\);

\fifo_out_1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][15]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[15]~output_o\);

\fifo_out_1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][14]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[14]~output_o\);

\fifo_out_1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][13]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[13]~output_o\);

\fifo_out_1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][12]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[12]~output_o\);

\fifo_out_1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][11]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[11]~output_o\);

\fifo_out_1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][10]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[10]~output_o\);

\fifo_out_1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][9]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[9]~output_o\);

\fifo_out_1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][8]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[8]~output_o\);

\fifo_out_1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][7]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[7]~output_o\);

\fifo_out_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][6]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[6]~output_o\);

\fifo_out_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][5]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[5]~output_o\);

\fifo_out_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][4]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[4]~output_o\);

\fifo_out_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][3]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[3]~output_o\);

\fifo_out_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][2]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[2]~output_o\);

\fifo_out_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][1]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[1]~output_o\);

\fifo_out_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[1][0]~q\,
	devoe => ww_devoe,
	o => \fifo_out_1[0]~output_o\);

\fifo_out_2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][15]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[15]~output_o\);

\fifo_out_2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][14]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[14]~output_o\);

\fifo_out_2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][13]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[13]~output_o\);

\fifo_out_2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][12]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[12]~output_o\);

\fifo_out_2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][11]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[11]~output_o\);

\fifo_out_2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][10]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[10]~output_o\);

\fifo_out_2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][9]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[9]~output_o\);

\fifo_out_2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][8]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[8]~output_o\);

\fifo_out_2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][7]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[7]~output_o\);

\fifo_out_2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][6]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[6]~output_o\);

\fifo_out_2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][5]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[5]~output_o\);

\fifo_out_2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][4]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[4]~output_o\);

\fifo_out_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][3]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[3]~output_o\);

\fifo_out_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][2]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[2]~output_o\);

\fifo_out_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][1]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[1]~output_o\);

\fifo_out_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[2][0]~q\,
	devoe => ww_devoe,
	o => \fifo_out_2[0]~output_o\);

\fifo_out_3[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][15]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[15]~output_o\);

\fifo_out_3[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][14]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[14]~output_o\);

\fifo_out_3[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][13]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[13]~output_o\);

\fifo_out_3[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][12]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[12]~output_o\);

\fifo_out_3[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][11]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[11]~output_o\);

\fifo_out_3[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][10]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[10]~output_o\);

\fifo_out_3[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][9]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[9]~output_o\);

\fifo_out_3[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][8]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[8]~output_o\);

\fifo_out_3[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][7]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[7]~output_o\);

\fifo_out_3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][6]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[6]~output_o\);

\fifo_out_3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][5]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[5]~output_o\);

\fifo_out_3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][4]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[4]~output_o\);

\fifo_out_3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][3]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[3]~output_o\);

\fifo_out_3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][2]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[2]~output_o\);

\fifo_out_3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][1]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[1]~output_o\);

\fifo_out_3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[3][0]~q\,
	devoe => ww_devoe,
	o => \fifo_out_3[0]~output_o\);

\fifo_out_4[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][15]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[15]~output_o\);

\fifo_out_4[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][14]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[14]~output_o\);

\fifo_out_4[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][13]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[13]~output_o\);

\fifo_out_4[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][12]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[12]~output_o\);

\fifo_out_4[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][11]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[11]~output_o\);

\fifo_out_4[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][10]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[10]~output_o\);

\fifo_out_4[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][9]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[9]~output_o\);

\fifo_out_4[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][8]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[8]~output_o\);

\fifo_out_4[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][7]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[7]~output_o\);

\fifo_out_4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][6]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[6]~output_o\);

\fifo_out_4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][5]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[5]~output_o\);

\fifo_out_4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][4]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[4]~output_o\);

\fifo_out_4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][3]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[3]~output_o\);

\fifo_out_4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][2]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[2]~output_o\);

\fifo_out_4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][1]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[1]~output_o\);

\fifo_out_4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fifo[4][0]~q\,
	devoe => ww_devoe,
	o => \fifo_out_4[0]~output_o\);

\write_addr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_addr\(9),
	devoe => ww_devoe,
	o => \write_addr[9]~output_o\);

\write_addr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_addr\(8),
	devoe => ww_devoe,
	o => \write_addr[8]~output_o\);

\write_addr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_addr\(7),
	devoe => ww_devoe,
	o => \write_addr[7]~output_o\);

\write_addr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_addr\(6),
	devoe => ww_devoe,
	o => \write_addr[6]~output_o\);

\write_addr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_addr\(5),
	devoe => ww_devoe,
	o => \write_addr[5]~output_o\);

\write_addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_addr\(4),
	devoe => ww_devoe,
	o => \write_addr[4]~output_o\);

\write_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_addr\(3),
	devoe => ww_devoe,
	o => \write_addr[3]~output_o\);

\write_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_addr\(2),
	devoe => ww_devoe,
	o => \write_addr[2]~output_o\);

\write_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_addr\(1),
	devoe => ww_devoe,
	o => \write_addr[1]~output_o\);

\write_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_addr\(0),
	devoe => ww_devoe,
	o => \write_addr[0]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\adc_data_rd~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_rd,
	o => \adc_data_rd~input_o\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\inst|avg_rdy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data_rd~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_rdy~q\);

\adc_data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(15),
	o => \adc_data[15]~input_o\);

\adc_data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(14),
	o => \adc_data[14]~input_o\);

\adc_data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(13),
	o => \adc_data[13]~input_o\);

\adc_data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(12),
	o => \adc_data[12]~input_o\);

\adc_data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(11),
	o => \adc_data[11]~input_o\);

\adc_data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(10),
	o => \adc_data[10]~input_o\);

\adc_data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(9),
	o => \adc_data[9]~input_o\);

\adc_data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(8),
	o => \adc_data[8]~input_o\);

\adc_data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(7),
	o => \adc_data[7]~input_o\);

\adc_data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(6),
	o => \adc_data[6]~input_o\);

\adc_data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(5),
	o => \adc_data[5]~input_o\);

\adc_data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(4),
	o => \adc_data[4]~input_o\);

\adc_data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(3),
	o => \adc_data[3]~input_o\);

\adc_data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(2),
	o => \adc_data[2]~input_o\);

\adc_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(1),
	o => \adc_data[1]~input_o\);

\adc_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data(0),
	o => \adc_data[0]~input_o\);

\inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~61_sumout\ = SUM(( \inst|sum\(0) ) + ( \adc_data[0]~input_o\ ) + ( !VCC ))
-- \inst|Add0~62\ = CARRY(( \inst|sum\(0) ) + ( \adc_data[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(0),
	dataf => \ALT_INV_adc_data[0]~input_o\,
	cin => GND,
	sumout => \inst|Add0~61_sumout\,
	cout => \inst|Add0~62\);

\inst|sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(0));

\inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~57_sumout\ = SUM(( \inst|sum\(1) ) + ( \adc_data[1]~input_o\ ) + ( \inst|Add0~62\ ))
-- \inst|Add0~58\ = CARRY(( \inst|sum\(1) ) + ( \adc_data[1]~input_o\ ) + ( \inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(1),
	dataf => \ALT_INV_adc_data[1]~input_o\,
	cin => \inst|Add0~62\,
	sumout => \inst|Add0~57_sumout\,
	cout => \inst|Add0~58\);

\inst|sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(1));

\inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~53_sumout\ = SUM(( \inst|sum\(2) ) + ( \adc_data[2]~input_o\ ) + ( \inst|Add0~58\ ))
-- \inst|Add0~54\ = CARRY(( \inst|sum\(2) ) + ( \adc_data[2]~input_o\ ) + ( \inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(2),
	dataf => \ALT_INV_adc_data[2]~input_o\,
	cin => \inst|Add0~58\,
	sumout => \inst|Add0~53_sumout\,
	cout => \inst|Add0~54\);

\inst|sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(2));

\inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~49_sumout\ = SUM(( \inst|sum\(3) ) + ( \adc_data[3]~input_o\ ) + ( \inst|Add0~54\ ))
-- \inst|Add0~50\ = CARRY(( \inst|sum\(3) ) + ( \adc_data[3]~input_o\ ) + ( \inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(3),
	dataf => \ALT_INV_adc_data[3]~input_o\,
	cin => \inst|Add0~54\,
	sumout => \inst|Add0~49_sumout\,
	cout => \inst|Add0~50\);

\inst|sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(3));

\inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~45_sumout\ = SUM(( \inst|sum\(4) ) + ( \adc_data[4]~input_o\ ) + ( \inst|Add0~50\ ))
-- \inst|Add0~46\ = CARRY(( \inst|sum\(4) ) + ( \adc_data[4]~input_o\ ) + ( \inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(4),
	dataf => \ALT_INV_adc_data[4]~input_o\,
	cin => \inst|Add0~50\,
	sumout => \inst|Add0~45_sumout\,
	cout => \inst|Add0~46\);

\inst|sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(4));

\inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~41_sumout\ = SUM(( \inst|sum\(5) ) + ( \adc_data[5]~input_o\ ) + ( \inst|Add0~46\ ))
-- \inst|Add0~42\ = CARRY(( \inst|sum\(5) ) + ( \adc_data[5]~input_o\ ) + ( \inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(5),
	dataf => \ALT_INV_adc_data[5]~input_o\,
	cin => \inst|Add0~46\,
	sumout => \inst|Add0~41_sumout\,
	cout => \inst|Add0~42\);

\inst|sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(5));

\inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~37_sumout\ = SUM(( \inst|sum\(6) ) + ( \adc_data[6]~input_o\ ) + ( \inst|Add0~42\ ))
-- \inst|Add0~38\ = CARRY(( \inst|sum\(6) ) + ( \adc_data[6]~input_o\ ) + ( \inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(6),
	dataf => \ALT_INV_adc_data[6]~input_o\,
	cin => \inst|Add0~42\,
	sumout => \inst|Add0~37_sumout\,
	cout => \inst|Add0~38\);

\inst|sum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(6));

\inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~33_sumout\ = SUM(( \inst|sum\(7) ) + ( \adc_data[7]~input_o\ ) + ( \inst|Add0~38\ ))
-- \inst|Add0~34\ = CARRY(( \inst|sum\(7) ) + ( \adc_data[7]~input_o\ ) + ( \inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(7),
	dataf => \ALT_INV_adc_data[7]~input_o\,
	cin => \inst|Add0~38\,
	sumout => \inst|Add0~33_sumout\,
	cout => \inst|Add0~34\);

\inst|sum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(7));

\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( \inst|sum\(8) ) + ( \adc_data[8]~input_o\ ) + ( \inst|Add0~34\ ))
-- \inst|Add0~30\ = CARRY(( \inst|sum\(8) ) + ( \adc_data[8]~input_o\ ) + ( \inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(8),
	dataf => \ALT_INV_adc_data[8]~input_o\,
	cin => \inst|Add0~34\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

\inst|sum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(8));

\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \inst|sum\(9) ) + ( \adc_data[9]~input_o\ ) + ( \inst|Add0~30\ ))
-- \inst|Add0~26\ = CARRY(( \inst|sum\(9) ) + ( \adc_data[9]~input_o\ ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(9),
	dataf => \ALT_INV_adc_data[9]~input_o\,
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

\inst|sum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(9));

\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \inst|sum\(10) ) + ( \adc_data[10]~input_o\ ) + ( \inst|Add0~26\ ))
-- \inst|Add0~22\ = CARRY(( \inst|sum\(10) ) + ( \adc_data[10]~input_o\ ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(10),
	dataf => \ALT_INV_adc_data[10]~input_o\,
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

\inst|sum[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(10));

\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst|sum\(11) ) + ( \adc_data[11]~input_o\ ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \inst|sum\(11) ) + ( \adc_data[11]~input_o\ ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(11),
	dataf => \ALT_INV_adc_data[11]~input_o\,
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

\inst|sum[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(11));

\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \inst|sum\(12) ) + ( \adc_data[12]~input_o\ ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( \inst|sum\(12) ) + ( \adc_data[12]~input_o\ ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(12),
	dataf => \ALT_INV_adc_data[12]~input_o\,
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

\inst|sum[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(12));

\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst|sum\(13) ) + ( \adc_data[13]~input_o\ ) + ( \inst|Add0~14\ ))
-- \inst|Add0~10\ = CARRY(( \inst|sum\(13) ) + ( \adc_data[13]~input_o\ ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(13),
	dataf => \ALT_INV_adc_data[13]~input_o\,
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

\inst|sum[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(13));

\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \inst|sum\(14) ) + ( \adc_data[14]~input_o\ ) + ( \inst|Add0~10\ ))
-- \inst|Add0~6\ = CARRY(( \inst|sum\(14) ) + ( \adc_data[14]~input_o\ ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(14),
	dataf => \ALT_INV_adc_data[14]~input_o\,
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

\inst|sum[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(14));

\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( \inst|sum\(15) ) + ( \adc_data[15]~input_o\ ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_sum\(15),
	dataf => \ALT_INV_adc_data[15]~input_o\,
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~1_sumout\);

\inst|sum[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sum\(15));

\inst|avg_result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(15),
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(15));

\inst|avg_result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(15),
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(14));

\inst|avg_result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(15),
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(13));

\L_sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_L_sel,
	o => \L_sel~input_o\);

\inst|avg_result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(14),
	asdata => \inst|sum\(15),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(12));

\inst|avg_result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(13),
	asdata => \inst|sum\(14),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(11));

\inst|avg_result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(12),
	asdata => \inst|sum\(13),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(10));

\inst|avg_result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(11),
	asdata => \inst|sum\(12),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(9));

\inst|avg_result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(10),
	asdata => \inst|sum\(11),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(8));

\inst|avg_result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(9),
	asdata => \inst|sum\(10),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(7));

\inst|avg_result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(8),
	asdata => \inst|sum\(9),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(6));

\inst|avg_result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(7),
	asdata => \inst|sum\(8),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(5));

\inst|avg_result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(6),
	asdata => \inst|sum\(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(4));

\inst|avg_result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(5),
	asdata => \inst|sum\(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(3));

\inst|avg_result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(4),
	asdata => \inst|sum\(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(2));

\inst|avg_result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(3),
	asdata => \inst|sum\(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(1));

\inst|avg_result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sum\(2),
	asdata => \inst|sum\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => \L_sel~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|avg_result\(0));

\inst|fifo[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[15]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][15]~q\);

\inst|fifo[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[14]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][14]~q\);

\inst|fifo[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[13]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][13]~q\);

\inst|fifo[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[12]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][12]~q\);

\inst|fifo[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[11]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][11]~q\);

\inst|fifo[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[10]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][10]~q\);

\inst|fifo[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[9]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][9]~q\);

\inst|fifo[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[8]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][8]~q\);

\inst|fifo[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[7]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][7]~q\);

\inst|fifo[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[6]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][6]~q\);

\inst|fifo[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[5]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][5]~q\);

\inst|fifo[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[4]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][4]~q\);

\inst|fifo[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[3]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][3]~q\);

\inst|fifo[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[2]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][2]~q\);

\inst|fifo[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[1]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][1]~q\);

\inst|fifo[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adc_data[0]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[0][0]~q\);

\inst|fifo[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][15]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][15]~q\);

\inst|fifo[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][14]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][14]~q\);

\inst|fifo[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][13]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][13]~q\);

\inst|fifo[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][12]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][12]~q\);

\inst|fifo[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][11]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][11]~q\);

\inst|fifo[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][10]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][10]~q\);

\inst|fifo[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][9]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][9]~q\);

\inst|fifo[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][8]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][8]~q\);

\inst|fifo[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][7]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][7]~q\);

\inst|fifo[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][6]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][6]~q\);

\inst|fifo[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][5]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][5]~q\);

\inst|fifo[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][4]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][4]~q\);

\inst|fifo[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][3]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][3]~q\);

\inst|fifo[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][2]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][2]~q\);

\inst|fifo[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][1]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][1]~q\);

\inst|fifo[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[0][0]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[1][0]~q\);

\inst|fifo[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][15]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][15]~q\);

\inst|fifo[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][14]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][14]~q\);

\inst|fifo[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][13]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][13]~q\);

\inst|fifo[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][12]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][12]~q\);

\inst|fifo[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][11]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][11]~q\);

\inst|fifo[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][10]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][10]~q\);

\inst|fifo[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][9]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][9]~q\);

\inst|fifo[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][8]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][8]~q\);

\inst|fifo[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][7]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][7]~q\);

\inst|fifo[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][6]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][6]~q\);

\inst|fifo[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][5]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][5]~q\);

\inst|fifo[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][4]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][4]~q\);

\inst|fifo[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][3]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][3]~q\);

\inst|fifo[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][2]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][2]~q\);

\inst|fifo[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][1]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][1]~q\);

\inst|fifo[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[1][0]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[2][0]~q\);

\inst|fifo[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][15]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][15]~q\);

\inst|fifo[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][14]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][14]~q\);

\inst|fifo[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][13]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][13]~q\);

\inst|fifo[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][12]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][12]~q\);

\inst|fifo[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][11]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][11]~q\);

\inst|fifo[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][10]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][10]~q\);

\inst|fifo[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][9]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][9]~q\);

\inst|fifo[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][8]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][8]~q\);

\inst|fifo[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][7]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][7]~q\);

\inst|fifo[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][6]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][6]~q\);

\inst|fifo[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][5]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][5]~q\);

\inst|fifo[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][4]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][4]~q\);

\inst|fifo[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][3]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][3]~q\);

\inst|fifo[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][2]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][2]~q\);

\inst|fifo[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][1]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][1]~q\);

\inst|fifo[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[2][0]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \adc_data_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[3][0]~q\);

\inst|fifo[4][15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|fifo[4][15]~0_combout\ = (\adc_data_rd~input_o\ & \L_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adc_data_rd~input_o\,
	datab => \ALT_INV_L_sel~input_o\,
	combout => \inst|fifo[4][15]~0_combout\);

\inst|fifo[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][15]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][15]~q\);

\inst|fifo[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][14]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][14]~q\);

\inst|fifo[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][13]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][13]~q\);

\inst|fifo[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][12]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][12]~q\);

\inst|fifo[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][11]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][11]~q\);

\inst|fifo[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][10]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][10]~q\);

\inst|fifo[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][9]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][9]~q\);

\inst|fifo[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][8]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][8]~q\);

\inst|fifo[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][7]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][7]~q\);

\inst|fifo[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][6]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][6]~q\);

\inst|fifo[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][5]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][5]~q\);

\inst|fifo[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][4]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][4]~q\);

\inst|fifo[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][3]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][3]~q\);

\inst|fifo[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][2]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][2]~q\);

\inst|fifo[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][1]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][1]~q\);

\inst|fifo[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|fifo[3][0]~q\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|fifo[4][15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fifo[4][0]~q\);

\inst1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~37_sumout\ = SUM(( \inst1|address\(0) ) + ( VCC ) + ( !VCC ))
-- \inst1|Add0~38\ = CARRY(( \inst1|address\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_address\(0),
	cin => GND,
	sumout => \inst1|Add0~37_sumout\,
	cout => \inst1|Add0~38\);

\inst1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|address\(9) & (\inst1|address\(8) & (\inst1|address\(7) & \inst1|address\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_address\(9),
	datab => \inst1|ALT_INV_address\(8),
	datac => \inst1|ALT_INV_address\(7),
	datad => \inst1|ALT_INV_address\(6),
	combout => \inst1|Equal0~0_combout\);

\inst1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|address\(3) & (\inst1|address\(2) & (\inst1|address\(1) & \inst1|address\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_address\(3),
	datab => \inst1|ALT_INV_address\(2),
	datac => \inst1|ALT_INV_address\(1),
	datad => \inst1|ALT_INV_address\(0),
	combout => \inst1|Equal0~1_combout\);

\inst1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|address\(5) & (\inst1|address\(4) & (\inst1|Equal0~0_combout\ & \inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_address\(5),
	datab => \inst1|ALT_INV_address\(4),
	datac => \inst1|ALT_INV_Equal0~0_combout\,
	datad => \inst1|ALT_INV_Equal0~1_combout\,
	combout => \inst1|Equal0~2_combout\);

\inst1|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	ena => \inst|avg_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|address\(0));

\inst1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~33_sumout\ = SUM(( \inst1|address\(1) ) + ( GND ) + ( \inst1|Add0~38\ ))
-- \inst1|Add0~34\ = CARRY(( \inst1|address\(1) ) + ( GND ) + ( \inst1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_address\(1),
	cin => \inst1|Add0~38\,
	sumout => \inst1|Add0~33_sumout\,
	cout => \inst1|Add0~34\);

\inst1|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	ena => \inst|avg_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|address\(1));

\inst1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~29_sumout\ = SUM(( \inst1|address\(2) ) + ( GND ) + ( \inst1|Add0~34\ ))
-- \inst1|Add0~30\ = CARRY(( \inst1|address\(2) ) + ( GND ) + ( \inst1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_address\(2),
	cin => \inst1|Add0~34\,
	sumout => \inst1|Add0~29_sumout\,
	cout => \inst1|Add0~30\);

\inst1|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	ena => \inst|avg_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|address\(2));

\inst1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~25_sumout\ = SUM(( \inst1|address\(3) ) + ( GND ) + ( \inst1|Add0~30\ ))
-- \inst1|Add0~26\ = CARRY(( \inst1|address\(3) ) + ( GND ) + ( \inst1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_address\(3),
	cin => \inst1|Add0~30\,
	sumout => \inst1|Add0~25_sumout\,
	cout => \inst1|Add0~26\);

\inst1|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	ena => \inst|avg_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|address\(3));

\inst1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~21_sumout\ = SUM(( \inst1|address\(4) ) + ( GND ) + ( \inst1|Add0~26\ ))
-- \inst1|Add0~22\ = CARRY(( \inst1|address\(4) ) + ( GND ) + ( \inst1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_address\(4),
	cin => \inst1|Add0~26\,
	sumout => \inst1|Add0~21_sumout\,
	cout => \inst1|Add0~22\);

\inst1|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	ena => \inst|avg_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|address\(4));

\inst1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~17_sumout\ = SUM(( \inst1|address\(5) ) + ( GND ) + ( \inst1|Add0~22\ ))
-- \inst1|Add0~18\ = CARRY(( \inst1|address\(5) ) + ( GND ) + ( \inst1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_address\(5),
	cin => \inst1|Add0~22\,
	sumout => \inst1|Add0~17_sumout\,
	cout => \inst1|Add0~18\);

\inst1|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	ena => \inst|avg_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|address\(5));

\inst1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_sumout\ = SUM(( \inst1|address\(6) ) + ( GND ) + ( \inst1|Add0~18\ ))
-- \inst1|Add0~14\ = CARRY(( \inst1|address\(6) ) + ( GND ) + ( \inst1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_address\(6),
	cin => \inst1|Add0~18\,
	sumout => \inst1|Add0~13_sumout\,
	cout => \inst1|Add0~14\);

\inst1|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	ena => \inst|avg_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|address\(6));

\inst1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_sumout\ = SUM(( \inst1|address\(7) ) + ( GND ) + ( \inst1|Add0~14\ ))
-- \inst1|Add0~10\ = CARRY(( \inst1|address\(7) ) + ( GND ) + ( \inst1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_address\(7),
	cin => \inst1|Add0~14\,
	sumout => \inst1|Add0~9_sumout\,
	cout => \inst1|Add0~10\);

\inst1|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	ena => \inst|avg_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|address\(7));

\inst1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_sumout\ = SUM(( \inst1|address\(8) ) + ( GND ) + ( \inst1|Add0~10\ ))
-- \inst1|Add0~6\ = CARRY(( \inst1|address\(8) ) + ( GND ) + ( \inst1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_address\(8),
	cin => \inst1|Add0~10\,
	sumout => \inst1|Add0~5_sumout\,
	cout => \inst1|Add0~6\);

\inst1|address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	ena => \inst|avg_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|address\(8));

\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_sumout\ = SUM(( \inst1|address\(9) ) + ( GND ) + ( \inst1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_address\(9),
	cin => \inst1|Add0~6\,
	sumout => \inst1|Add0~1_sumout\);

\inst1|address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	ena => \inst|avg_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|address\(9));

\inst1|write_addr[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|write_addr[9]~0_combout\ = (\inst|avg_rdy~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_avg_rdy~q\,
	datab => \ALT_INV_reset~input_o\,
	combout => \inst1|write_addr[9]~0_combout\);

\inst1|write_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|address\(9),
	ena => \inst1|write_addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_addr\(9));

\inst1|write_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|address\(8),
	ena => \inst1|write_addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_addr\(8));

\inst1|write_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|address\(7),
	ena => \inst1|write_addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_addr\(7));

\inst1|write_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|address\(6),
	ena => \inst1|write_addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_addr\(6));

\inst1|write_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|address\(5),
	ena => \inst1|write_addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_addr\(5));

\inst1|write_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|address\(4),
	ena => \inst1|write_addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_addr\(4));

\inst1|write_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|address\(3),
	ena => \inst1|write_addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_addr\(3));

\inst1|write_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|address\(2),
	ena => \inst1|write_addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_addr\(2));

\inst1|write_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|address\(1),
	ena => \inst1|write_addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_addr\(1));

\inst1|write_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|address\(0),
	ena => \inst1|write_addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_addr\(0));

ww_avg_rdy <= \avg_rdy~output_o\;

ww_avg_result(15) <= \avg_result[15]~output_o\;

ww_avg_result(14) <= \avg_result[14]~output_o\;

ww_avg_result(13) <= \avg_result[13]~output_o\;

ww_avg_result(12) <= \avg_result[12]~output_o\;

ww_avg_result(11) <= \avg_result[11]~output_o\;

ww_avg_result(10) <= \avg_result[10]~output_o\;

ww_avg_result(9) <= \avg_result[9]~output_o\;

ww_avg_result(8) <= \avg_result[8]~output_o\;

ww_avg_result(7) <= \avg_result[7]~output_o\;

ww_avg_result(6) <= \avg_result[6]~output_o\;

ww_avg_result(5) <= \avg_result[5]~output_o\;

ww_avg_result(4) <= \avg_result[4]~output_o\;

ww_avg_result(3) <= \avg_result[3]~output_o\;

ww_avg_result(2) <= \avg_result[2]~output_o\;

ww_avg_result(1) <= \avg_result[1]~output_o\;

ww_avg_result(0) <= \avg_result[0]~output_o\;

ww_fifo_out_0(15) <= \fifo_out_0[15]~output_o\;

ww_fifo_out_0(14) <= \fifo_out_0[14]~output_o\;

ww_fifo_out_0(13) <= \fifo_out_0[13]~output_o\;

ww_fifo_out_0(12) <= \fifo_out_0[12]~output_o\;

ww_fifo_out_0(11) <= \fifo_out_0[11]~output_o\;

ww_fifo_out_0(10) <= \fifo_out_0[10]~output_o\;

ww_fifo_out_0(9) <= \fifo_out_0[9]~output_o\;

ww_fifo_out_0(8) <= \fifo_out_0[8]~output_o\;

ww_fifo_out_0(7) <= \fifo_out_0[7]~output_o\;

ww_fifo_out_0(6) <= \fifo_out_0[6]~output_o\;

ww_fifo_out_0(5) <= \fifo_out_0[5]~output_o\;

ww_fifo_out_0(4) <= \fifo_out_0[4]~output_o\;

ww_fifo_out_0(3) <= \fifo_out_0[3]~output_o\;

ww_fifo_out_0(2) <= \fifo_out_0[2]~output_o\;

ww_fifo_out_0(1) <= \fifo_out_0[1]~output_o\;

ww_fifo_out_0(0) <= \fifo_out_0[0]~output_o\;

ww_fifo_out_1(15) <= \fifo_out_1[15]~output_o\;

ww_fifo_out_1(14) <= \fifo_out_1[14]~output_o\;

ww_fifo_out_1(13) <= \fifo_out_1[13]~output_o\;

ww_fifo_out_1(12) <= \fifo_out_1[12]~output_o\;

ww_fifo_out_1(11) <= \fifo_out_1[11]~output_o\;

ww_fifo_out_1(10) <= \fifo_out_1[10]~output_o\;

ww_fifo_out_1(9) <= \fifo_out_1[9]~output_o\;

ww_fifo_out_1(8) <= \fifo_out_1[8]~output_o\;

ww_fifo_out_1(7) <= \fifo_out_1[7]~output_o\;

ww_fifo_out_1(6) <= \fifo_out_1[6]~output_o\;

ww_fifo_out_1(5) <= \fifo_out_1[5]~output_o\;

ww_fifo_out_1(4) <= \fifo_out_1[4]~output_o\;

ww_fifo_out_1(3) <= \fifo_out_1[3]~output_o\;

ww_fifo_out_1(2) <= \fifo_out_1[2]~output_o\;

ww_fifo_out_1(1) <= \fifo_out_1[1]~output_o\;

ww_fifo_out_1(0) <= \fifo_out_1[0]~output_o\;

ww_fifo_out_2(15) <= \fifo_out_2[15]~output_o\;

ww_fifo_out_2(14) <= \fifo_out_2[14]~output_o\;

ww_fifo_out_2(13) <= \fifo_out_2[13]~output_o\;

ww_fifo_out_2(12) <= \fifo_out_2[12]~output_o\;

ww_fifo_out_2(11) <= \fifo_out_2[11]~output_o\;

ww_fifo_out_2(10) <= \fifo_out_2[10]~output_o\;

ww_fifo_out_2(9) <= \fifo_out_2[9]~output_o\;

ww_fifo_out_2(8) <= \fifo_out_2[8]~output_o\;

ww_fifo_out_2(7) <= \fifo_out_2[7]~output_o\;

ww_fifo_out_2(6) <= \fifo_out_2[6]~output_o\;

ww_fifo_out_2(5) <= \fifo_out_2[5]~output_o\;

ww_fifo_out_2(4) <= \fifo_out_2[4]~output_o\;

ww_fifo_out_2(3) <= \fifo_out_2[3]~output_o\;

ww_fifo_out_2(2) <= \fifo_out_2[2]~output_o\;

ww_fifo_out_2(1) <= \fifo_out_2[1]~output_o\;

ww_fifo_out_2(0) <= \fifo_out_2[0]~output_o\;

ww_fifo_out_3(15) <= \fifo_out_3[15]~output_o\;

ww_fifo_out_3(14) <= \fifo_out_3[14]~output_o\;

ww_fifo_out_3(13) <= \fifo_out_3[13]~output_o\;

ww_fifo_out_3(12) <= \fifo_out_3[12]~output_o\;

ww_fifo_out_3(11) <= \fifo_out_3[11]~output_o\;

ww_fifo_out_3(10) <= \fifo_out_3[10]~output_o\;

ww_fifo_out_3(9) <= \fifo_out_3[9]~output_o\;

ww_fifo_out_3(8) <= \fifo_out_3[8]~output_o\;

ww_fifo_out_3(7) <= \fifo_out_3[7]~output_o\;

ww_fifo_out_3(6) <= \fifo_out_3[6]~output_o\;

ww_fifo_out_3(5) <= \fifo_out_3[5]~output_o\;

ww_fifo_out_3(4) <= \fifo_out_3[4]~output_o\;

ww_fifo_out_3(3) <= \fifo_out_3[3]~output_o\;

ww_fifo_out_3(2) <= \fifo_out_3[2]~output_o\;

ww_fifo_out_3(1) <= \fifo_out_3[1]~output_o\;

ww_fifo_out_3(0) <= \fifo_out_3[0]~output_o\;

ww_fifo_out_4(15) <= \fifo_out_4[15]~output_o\;

ww_fifo_out_4(14) <= \fifo_out_4[14]~output_o\;

ww_fifo_out_4(13) <= \fifo_out_4[13]~output_o\;

ww_fifo_out_4(12) <= \fifo_out_4[12]~output_o\;

ww_fifo_out_4(11) <= \fifo_out_4[11]~output_o\;

ww_fifo_out_4(10) <= \fifo_out_4[10]~output_o\;

ww_fifo_out_4(9) <= \fifo_out_4[9]~output_o\;

ww_fifo_out_4(8) <= \fifo_out_4[8]~output_o\;

ww_fifo_out_4(7) <= \fifo_out_4[7]~output_o\;

ww_fifo_out_4(6) <= \fifo_out_4[6]~output_o\;

ww_fifo_out_4(5) <= \fifo_out_4[5]~output_o\;

ww_fifo_out_4(4) <= \fifo_out_4[4]~output_o\;

ww_fifo_out_4(3) <= \fifo_out_4[3]~output_o\;

ww_fifo_out_4(2) <= \fifo_out_4[2]~output_o\;

ww_fifo_out_4(1) <= \fifo_out_4[1]~output_o\;

ww_fifo_out_4(0) <= \fifo_out_4[0]~output_o\;

ww_write_addr(9) <= \write_addr[9]~output_o\;

ww_write_addr(8) <= \write_addr[8]~output_o\;

ww_write_addr(7) <= \write_addr[7]~output_o\;

ww_write_addr(6) <= \write_addr[6]~output_o\;

ww_write_addr(5) <= \write_addr[5]~output_o\;

ww_write_addr(4) <= \write_addr[4]~output_o\;

ww_write_addr(3) <= \write_addr[3]~output_o\;

ww_write_addr(2) <= \write_addr[2]~output_o\;

ww_write_addr(1) <= \write_addr[1]~output_o\;

ww_write_addr(0) <= \write_addr[0]~output_o\;
END structure;


