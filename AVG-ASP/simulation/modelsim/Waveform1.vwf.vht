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
-- Generated on "05/23/2024 20:21:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          AVGASP_Wave_Test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AVGASP_Wave_Test_vhd_vec_tst IS
END AVGASP_Wave_Test_vhd_vec_tst;
ARCHITECTURE AVGASP_Wave_Test_arch OF AVGASP_Wave_Test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL adc_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL adc_data_rdy : STD_LOGIC;
SIGNAL avg_rdy : STD_LOGIC;
SIGNAL avg_result : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL enable_out : STD_LOGIC;
SIGNAL L_sel : STD_LOGIC;
SIGNAL recvOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT AVGASP_Wave_Test
	PORT (
	adc_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	adc_data_rdy : IN STD_LOGIC;
	avg_rdy : OUT STD_LOGIC;
	avg_result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	enable_out : OUT STD_LOGIC;
	L_sel : IN STD_LOGIC;
	recvOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : AVGASP_Wave_Test
	PORT MAP (
-- list connections between master ports and signals
	adc_data => adc_data,
	adc_data_rdy => adc_data_rdy,
	avg_rdy => avg_rdy,
	avg_result => avg_result,
	clk => clk,
	enable_out => enable_out,
	L_sel => L_sel,
	recvOut => recvOut,
	reset => reset
	);
-- adc_data[15]
t_prcs_adc_data_15: PROCESS
BEGIN
	adc_data(15) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_15;
-- adc_data[14]
t_prcs_adc_data_14: PROCESS
BEGIN
	adc_data(14) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_14;
-- adc_data[13]
t_prcs_adc_data_13: PROCESS
BEGIN
	adc_data(13) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_13;
-- adc_data[12]
t_prcs_adc_data_12: PROCESS
BEGIN
	adc_data(12) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_12;
-- adc_data[11]
t_prcs_adc_data_11: PROCESS
BEGIN
	adc_data(11) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_11;
-- adc_data[10]
t_prcs_adc_data_10: PROCESS
BEGIN
	adc_data(10) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_10;
-- adc_data[9]
t_prcs_adc_data_9: PROCESS
BEGIN
	adc_data(9) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_9;
-- adc_data[8]
t_prcs_adc_data_8: PROCESS
BEGIN
	adc_data(8) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_8;
-- adc_data[7]
t_prcs_adc_data_7: PROCESS
BEGIN
	adc_data(7) <= '0';
	WAIT FOR 620000 ps;
	adc_data(7) <= '1';
WAIT;
END PROCESS t_prcs_adc_data_7;
-- adc_data[6]
t_prcs_adc_data_6: PROCESS
BEGIN
	adc_data(6) <= '0';
	WAIT FOR 300000 ps;
	adc_data(6) <= '1';
	WAIT FOR 320000 ps;
	adc_data(6) <= '0';
	WAIT FOR 320000 ps;
	adc_data(6) <= '1';
WAIT;
END PROCESS t_prcs_adc_data_6;
-- adc_data[5]
t_prcs_adc_data_5: PROCESS
BEGIN
	adc_data(5) <= '0';
	WAIT FOR 140000 ps;
	FOR i IN 1 TO 2
	LOOP
		adc_data(5) <= '1';
		WAIT FOR 160000 ps;
		adc_data(5) <= '0';
		WAIT FOR 160000 ps;
	END LOOP;
	adc_data(5) <= '1';
	WAIT FOR 160000 ps;
	adc_data(5) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_5;
-- adc_data[4]
t_prcs_adc_data_4: PROCESS
BEGIN
	adc_data(4) <= '0';
	WAIT FOR 60000 ps;
	FOR i IN 1 TO 5
	LOOP
		adc_data(4) <= '1';
		WAIT FOR 80000 ps;
		adc_data(4) <= '0';
		WAIT FOR 80000 ps;
	END LOOP;
	adc_data(4) <= '1';
	WAIT FOR 80000 ps;
	adc_data(4) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_4;
-- adc_data[3]
t_prcs_adc_data_3: PROCESS
BEGIN
	adc_data(3) <= '0';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 12
	LOOP
		adc_data(3) <= '1';
		WAIT FOR 40000 ps;
		adc_data(3) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	adc_data(3) <= '1';
WAIT;
END PROCESS t_prcs_adc_data_3;
-- adc_data[2]
t_prcs_adc_data_2: PROCESS
BEGIN
LOOP
	adc_data(2) <= '1';
	WAIT FOR 20000 ps;
	adc_data(2) <= '0';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_adc_data_2;
-- adc_data[1]
t_prcs_adc_data_1: PROCESS
BEGIN
	adc_data(1) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_1;
-- adc_data[0]
t_prcs_adc_data_0: PROCESS
BEGIN
	adc_data(0) <= '0';
WAIT;
END PROCESS t_prcs_adc_data_0;

-- adc_data_rdy
t_prcs_adc_data_rdy: PROCESS
BEGIN
	adc_data_rdy <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 12
	LOOP
		adc_data_rdy <= '0';
		WAIT FOR 40000 ps;
		adc_data_rdy <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_adc_data_rdy;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- L_sel
t_prcs_L_sel: PROCESS
BEGIN
	L_sel <= '0';
WAIT;
END PROCESS t_prcs_L_sel;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END AVGASP_Wave_Test_arch;
