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
-- Generated on "05/23/2024 19:12:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CORASP_Wave_Test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CORASP_Wave_Test_vhd_vec_tst IS
END CORASP_Wave_Test_vhd_vec_tst;
ARCHITECTURE CORASP_Wave_Test_arch OF CORASP_Wave_Test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL avgVal : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL calc : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL flag : STD_LOGIC;
SIGNAL recvOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL sendCorr : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT CORASP_Wave_Test
	PORT (
	avgVal : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	calc : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	flag : IN STD_LOGIC;
	recvOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	sendCorr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CORASP_Wave_Test
	PORT MAP (
-- list connections between master ports and signals
	avgVal => avgVal,
	calc => calc,
	clock => clock,
	flag => flag,
	recvOut => recvOut,
	sendCorr => sendCorr
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- calc
t_prcs_calc: PROCESS
BEGIN
	calc <= '0';
	WAIT FOR 380000 ps;
	calc <= '1';
	WAIT FOR 30000 ps;
	calc <= '0';
	WAIT FOR 340000 ps;
	calc <= '1';
	WAIT FOR 60000 ps;
	calc <= '0';
WAIT;
END PROCESS t_prcs_calc;
-- avgVal[15]
t_prcs_avgVal_15: PROCESS
BEGIN
	avgVal(15) <= '0';
	WAIT FOR 330000 ps;
	avgVal(15) <= '1';
	WAIT FOR 10000 ps;
	avgVal(15) <= '0';
	WAIT FOR 10000 ps;
	avgVal(15) <= '1';
	WAIT FOR 10000 ps;
	avgVal(15) <= '0';
	WAIT FOR 10000 ps;
	avgVal(15) <= '1';
	WAIT FOR 10000 ps;
	avgVal(15) <= '0';
	WAIT FOR 240000 ps;
	avgVal(15) <= '1';
	WAIT FOR 30000 ps;
	avgVal(15) <= '0';
	WAIT FOR 50000 ps;
	avgVal(15) <= '1';
	WAIT FOR 30000 ps;
	avgVal(15) <= '0';
	WAIT FOR 10000 ps;
	avgVal(15) <= '1';
	WAIT FOR 20000 ps;
	avgVal(15) <= '0';
	WAIT FOR 10000 ps;
	avgVal(15) <= '1';
	WAIT FOR 50000 ps;
	avgVal(15) <= '0';
	WAIT FOR 20000 ps;
	avgVal(15) <= '1';
	WAIT FOR 20000 ps;
	avgVal(15) <= '0';
	WAIT FOR 20000 ps;
	avgVal(15) <= '1';
	WAIT FOR 20000 ps;
	avgVal(15) <= '0';
	WAIT FOR 20000 ps;
	avgVal(15) <= '1';
	WAIT FOR 10000 ps;
	avgVal(15) <= '0';
	WAIT FOR 30000 ps;
	avgVal(15) <= '1';
	WAIT FOR 10000 ps;
	avgVal(15) <= '0';
	WAIT FOR 10000 ps;
	avgVal(15) <= '1';
	WAIT FOR 10000 ps;
	avgVal(15) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_15;
-- avgVal[14]
t_prcs_avgVal_14: PROCESS
BEGIN
	avgVal(14) <= '0';
	WAIT FOR 360000 ps;
	avgVal(14) <= '1';
	WAIT FOR 10000 ps;
	avgVal(14) <= '0';
	WAIT FOR 250000 ps;
	avgVal(14) <= '1';
	WAIT FOR 10000 ps;
	avgVal(14) <= '0';
	WAIT FOR 10000 ps;
	avgVal(14) <= '1';
	WAIT FOR 30000 ps;
	avgVal(14) <= '0';
	WAIT FOR 10000 ps;
	avgVal(14) <= '1';
	WAIT FOR 10000 ps;
	avgVal(14) <= '0';
	WAIT FOR 20000 ps;
	avgVal(14) <= '1';
	WAIT FOR 10000 ps;
	avgVal(14) <= '0';
	WAIT FOR 20000 ps;
	avgVal(14) <= '1';
	WAIT FOR 50000 ps;
	avgVal(14) <= '0';
	WAIT FOR 10000 ps;
	avgVal(14) <= '1';
	WAIT FOR 40000 ps;
	avgVal(14) <= '0';
	WAIT FOR 30000 ps;
	avgVal(14) <= '1';
	WAIT FOR 20000 ps;
	avgVal(14) <= '0';
	WAIT FOR 30000 ps;
	avgVal(14) <= '1';
	WAIT FOR 20000 ps;
	avgVal(14) <= '0';
	WAIT FOR 10000 ps;
	avgVal(14) <= '1';
	WAIT FOR 10000 ps;
	avgVal(14) <= '0';
	WAIT FOR 10000 ps;
	avgVal(14) <= '1';
	WAIT FOR 10000 ps;
	avgVal(14) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_14;
-- avgVal[13]
t_prcs_avgVal_13: PROCESS
BEGIN
	avgVal(13) <= '0';
	WAIT FOR 340000 ps;
	avgVal(13) <= '1';
	WAIT FOR 40000 ps;
	avgVal(13) <= '0';
	WAIT FOR 270000 ps;
	avgVal(13) <= '1';
	WAIT FOR 20000 ps;
	avgVal(13) <= '0';
	WAIT FOR 20000 ps;
	avgVal(13) <= '1';
	WAIT FOR 10000 ps;
	avgVal(13) <= '0';
	WAIT FOR 10000 ps;
	avgVal(13) <= '1';
	WAIT FOR 30000 ps;
	avgVal(13) <= '0';
	WAIT FOR 10000 ps;
	avgVal(13) <= '1';
	WAIT FOR 30000 ps;
	avgVal(13) <= '0';
	WAIT FOR 30000 ps;
	avgVal(13) <= '1';
	WAIT FOR 10000 ps;
	avgVal(13) <= '0';
	WAIT FOR 20000 ps;
	avgVal(13) <= '1';
	WAIT FOR 10000 ps;
	avgVal(13) <= '0';
	WAIT FOR 10000 ps;
	avgVal(13) <= '1';
	WAIT FOR 10000 ps;
	avgVal(13) <= '0';
	WAIT FOR 20000 ps;
	avgVal(13) <= '1';
	WAIT FOR 10000 ps;
	avgVal(13) <= '0';
	WAIT FOR 10000 ps;
	avgVal(13) <= '1';
	WAIT FOR 10000 ps;
	avgVal(13) <= '0';
	WAIT FOR 10000 ps;
	avgVal(13) <= '1';
	WAIT FOR 20000 ps;
	avgVal(13) <= '0';
	WAIT FOR 10000 ps;
	avgVal(13) <= '1';
	WAIT FOR 20000 ps;
	avgVal(13) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_13;
-- avgVal[12]
t_prcs_avgVal_12: PROCESS
BEGIN
	avgVal(12) <= '0';
	WAIT FOR 350000 ps;
	avgVal(12) <= '1';
	WAIT FOR 10000 ps;
	avgVal(12) <= '0';
	WAIT FOR 10000 ps;
	avgVal(12) <= '1';
	WAIT FOR 10000 ps;
	avgVal(12) <= '0';
	WAIT FOR 250000 ps;
	avgVal(12) <= '1';
	WAIT FOR 20000 ps;
	avgVal(12) <= '0';
	WAIT FOR 10000 ps;
	avgVal(12) <= '1';
	WAIT FOR 20000 ps;
	avgVal(12) <= '0';
	WAIT FOR 10000 ps;
	avgVal(12) <= '1';
	WAIT FOR 10000 ps;
	avgVal(12) <= '0';
	WAIT FOR 10000 ps;
	avgVal(12) <= '1';
	WAIT FOR 20000 ps;
	avgVal(12) <= '0';
	WAIT FOR 10000 ps;
	avgVal(12) <= '1';
	WAIT FOR 70000 ps;
	avgVal(12) <= '0';
	WAIT FOR 20000 ps;
	avgVal(12) <= '1';
	WAIT FOR 60000 ps;
	avgVal(12) <= '0';
	WAIT FOR 10000 ps;
	avgVal(12) <= '1';
	WAIT FOR 60000 ps;
	avgVal(12) <= '0';
	WAIT FOR 10000 ps;
	avgVal(12) <= '1';
	WAIT FOR 10000 ps;
	avgVal(12) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_12;
-- avgVal[11]
t_prcs_avgVal_11: PROCESS
BEGIN
	avgVal(11) <= '0';
	WAIT FOR 340000 ps;
	avgVal(11) <= '1';
	WAIT FOR 10000 ps;
	avgVal(11) <= '0';
	WAIT FOR 20000 ps;
	avgVal(11) <= '1';
	WAIT FOR 10000 ps;
	avgVal(11) <= '0';
	WAIT FOR 260000 ps;
	avgVal(11) <= '1';
	WAIT FOR 20000 ps;
	avgVal(11) <= '0';
	WAIT FOR 10000 ps;
	avgVal(11) <= '1';
	WAIT FOR 10000 ps;
	avgVal(11) <= '0';
	WAIT FOR 10000 ps;
	avgVal(11) <= '1';
	WAIT FOR 20000 ps;
	avgVal(11) <= '0';
	WAIT FOR 30000 ps;
	avgVal(11) <= '1';
	WAIT FOR 10000 ps;
	avgVal(11) <= '0';
	WAIT FOR 10000 ps;
	avgVal(11) <= '1';
	WAIT FOR 10000 ps;
	avgVal(11) <= '0';
	WAIT FOR 20000 ps;
	avgVal(11) <= '1';
	WAIT FOR 10000 ps;
	avgVal(11) <= '0';
	WAIT FOR 10000 ps;
	avgVal(11) <= '1';
	WAIT FOR 30000 ps;
	avgVal(11) <= '0';
	WAIT FOR 10000 ps;
	avgVal(11) <= '1';
	WAIT FOR 60000 ps;
	avgVal(11) <= '0';
	WAIT FOR 10000 ps;
	avgVal(11) <= '1';
	WAIT FOR 20000 ps;
	avgVal(11) <= '0';
	WAIT FOR 10000 ps;
	avgVal(11) <= '1';
	WAIT FOR 10000 ps;
	avgVal(11) <= '0';
	WAIT FOR 10000 ps;
	avgVal(11) <= '1';
	WAIT FOR 20000 ps;
	avgVal(11) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_11;
-- avgVal[10]
t_prcs_avgVal_10: PROCESS
BEGIN
	avgVal(10) <= '0';
	WAIT FOR 330000 ps;
	avgVal(10) <= '1';
	WAIT FOR 10000 ps;
	avgVal(10) <= '0';
	WAIT FOR 20000 ps;
	avgVal(10) <= '1';
	WAIT FOR 20000 ps;
	avgVal(10) <= '0';
	WAIT FOR 250000 ps;
	avgVal(10) <= '1';
	WAIT FOR 20000 ps;
	avgVal(10) <= '0';
	WAIT FOR 10000 ps;
	avgVal(10) <= '1';
	WAIT FOR 20000 ps;
	avgVal(10) <= '0';
	WAIT FOR 20000 ps;
	avgVal(10) <= '1';
	WAIT FOR 10000 ps;
	avgVal(10) <= '0';
	WAIT FOR 10000 ps;
	avgVal(10) <= '1';
	WAIT FOR 10000 ps;
	avgVal(10) <= '0';
	WAIT FOR 10000 ps;
	avgVal(10) <= '1';
	WAIT FOR 80000 ps;
	avgVal(10) <= '0';
	WAIT FOR 10000 ps;
	avgVal(10) <= '1';
	WAIT FOR 10000 ps;
	avgVal(10) <= '0';
	WAIT FOR 20000 ps;
	avgVal(10) <= '1';
	WAIT FOR 10000 ps;
	avgVal(10) <= '0';
	WAIT FOR 40000 ps;
	avgVal(10) <= '1';
	WAIT FOR 10000 ps;
	avgVal(10) <= '0';
	WAIT FOR 30000 ps;
	avgVal(10) <= '1';
	WAIT FOR 20000 ps;
	avgVal(10) <= '0';
	WAIT FOR 20000 ps;
	avgVal(10) <= '1';
WAIT;
END PROCESS t_prcs_avgVal_10;
-- avgVal[9]
t_prcs_avgVal_9: PROCESS
BEGIN
	avgVal(9) <= '0';
	WAIT FOR 330000 ps;
	avgVal(9) <= '1';
	WAIT FOR 10000 ps;
	avgVal(9) <= '0';
	WAIT FOR 10000 ps;
	avgVal(9) <= '1';
	WAIT FOR 10000 ps;
	avgVal(9) <= '0';
	WAIT FOR 10000 ps;
	avgVal(9) <= '1';
	WAIT FOR 10000 ps;
	avgVal(9) <= '0';
	WAIT FOR 250000 ps;
	avgVal(9) <= '1';
	WAIT FOR 20000 ps;
	avgVal(9) <= '0';
	WAIT FOR 30000 ps;
	avgVal(9) <= '1';
	WAIT FOR 10000 ps;
	avgVal(9) <= '0';
	WAIT FOR 10000 ps;
	avgVal(9) <= '1';
	WAIT FOR 10000 ps;
	avgVal(9) <= '0';
	WAIT FOR 10000 ps;
	avgVal(9) <= '1';
	WAIT FOR 40000 ps;
	avgVal(9) <= '0';
	WAIT FOR 20000 ps;
	avgVal(9) <= '1';
	WAIT FOR 10000 ps;
	avgVal(9) <= '0';
	WAIT FOR 20000 ps;
	avgVal(9) <= '1';
	WAIT FOR 10000 ps;
	avgVal(9) <= '0';
	WAIT FOR 10000 ps;
	avgVal(9) <= '1';
	WAIT FOR 10000 ps;
	avgVal(9) <= '0';
	WAIT FOR 20000 ps;
	avgVal(9) <= '1';
	WAIT FOR 10000 ps;
	avgVal(9) <= '0';
	WAIT FOR 10000 ps;
	avgVal(9) <= '1';
	WAIT FOR 10000 ps;
	avgVal(9) <= '0';
	WAIT FOR 10000 ps;
	avgVal(9) <= '1';
	WAIT FOR 20000 ps;
	avgVal(9) <= '0';
	WAIT FOR 30000 ps;
	avgVal(9) <= '1';
	WAIT FOR 10000 ps;
	avgVal(9) <= '0';
	WAIT FOR 30000 ps;
	avgVal(9) <= '1';
WAIT;
END PROCESS t_prcs_avgVal_9;
-- avgVal[8]
t_prcs_avgVal_8: PROCESS
BEGIN
	avgVal(8) <= '0';
	WAIT FOR 330000 ps;
	avgVal(8) <= '1';
	WAIT FOR 10000 ps;
	avgVal(8) <= '0';
	WAIT FOR 30000 ps;
	avgVal(8) <= '1';
	WAIT FOR 10000 ps;
	avgVal(8) <= '0';
	WAIT FOR 240000 ps;
	avgVal(8) <= '1';
	WAIT FOR 10000 ps;
	avgVal(8) <= '0';
	WAIT FOR 10000 ps;
	avgVal(8) <= '1';
	WAIT FOR 30000 ps;
	avgVal(8) <= '0';
	WAIT FOR 10000 ps;
	avgVal(8) <= '1';
	WAIT FOR 30000 ps;
	avgVal(8) <= '0';
	WAIT FOR 20000 ps;
	avgVal(8) <= '1';
	WAIT FOR 10000 ps;
	avgVal(8) <= '0';
	WAIT FOR 20000 ps;
	avgVal(8) <= '1';
	WAIT FOR 20000 ps;
	avgVal(8) <= '0';
	WAIT FOR 40000 ps;
	avgVal(8) <= '1';
	WAIT FOR 10000 ps;
	avgVal(8) <= '0';
	WAIT FOR 10000 ps;
	avgVal(8) <= '1';
	WAIT FOR 20000 ps;
	avgVal(8) <= '0';
	WAIT FOR 10000 ps;
	avgVal(8) <= '1';
	WAIT FOR 10000 ps;
	avgVal(8) <= '0';
	WAIT FOR 10000 ps;
	avgVal(8) <= '1';
	WAIT FOR 10000 ps;
	avgVal(8) <= '0';
	WAIT FOR 20000 ps;
	avgVal(8) <= '1';
	WAIT FOR 20000 ps;
	avgVal(8) <= '0';
	WAIT FOR 20000 ps;
	avgVal(8) <= '1';
	WAIT FOR 10000 ps;
	avgVal(8) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_8;
-- avgVal[7]
t_prcs_avgVal_7: PROCESS
BEGIN
	avgVal(7) <= '0';
	WAIT FOR 330000 ps;
	avgVal(7) <= '1';
	WAIT FOR 10000 ps;
	avgVal(7) <= '0';
	WAIT FOR 20000 ps;
	avgVal(7) <= '1';
	WAIT FOR 10000 ps;
	avgVal(7) <= '0';
	WAIT FOR 320000 ps;
	avgVal(7) <= '1';
	WAIT FOR 10000 ps;
	avgVal(7) <= '0';
	WAIT FOR 20000 ps;
	avgVal(7) <= '1';
	WAIT FOR 40000 ps;
	avgVal(7) <= '0';
	WAIT FOR 30000 ps;
	avgVal(7) <= '1';
	WAIT FOR 20000 ps;
	avgVal(7) <= '0';
	WAIT FOR 20000 ps;
	avgVal(7) <= '1';
	WAIT FOR 20000 ps;
	avgVal(7) <= '0';
	WAIT FOR 10000 ps;
	avgVal(7) <= '1';
	WAIT FOR 20000 ps;
	avgVal(7) <= '0';
	WAIT FOR 20000 ps;
	avgVal(7) <= '1';
	WAIT FOR 20000 ps;
	avgVal(7) <= '0';
	WAIT FOR 30000 ps;
	avgVal(7) <= '1';
	WAIT FOR 10000 ps;
	avgVal(7) <= '0';
	WAIT FOR 30000 ps;
	avgVal(7) <= '1';
WAIT;
END PROCESS t_prcs_avgVal_7;
-- avgVal[6]
t_prcs_avgVal_6: PROCESS
BEGIN
	avgVal(6) <= '0';
	WAIT FOR 320000 ps;
	avgVal(6) <= '1';
	WAIT FOR 10000 ps;
	avgVal(6) <= '0';
	WAIT FOR 20000 ps;
	avgVal(6) <= '1';
	WAIT FOR 10000 ps;
	avgVal(6) <= '0';
	WAIT FOR 240000 ps;
	avgVal(6) <= '1';
	WAIT FOR 30000 ps;
	avgVal(6) <= '0';
	WAIT FOR 20000 ps;
	avgVal(6) <= '1';
	WAIT FOR 10000 ps;
	avgVal(6) <= '0';
	WAIT FOR 10000 ps;
	avgVal(6) <= '1';
	WAIT FOR 10000 ps;
	avgVal(6) <= '0';
	WAIT FOR 10000 ps;
	avgVal(6) <= '1';
	WAIT FOR 30000 ps;
	avgVal(6) <= '0';
	WAIT FOR 10000 ps;
	avgVal(6) <= '1';
	WAIT FOR 20000 ps;
	avgVal(6) <= '0';
	WAIT FOR 10000 ps;
	avgVal(6) <= '1';
	WAIT FOR 10000 ps;
	avgVal(6) <= '0';
	WAIT FOR 30000 ps;
	avgVal(6) <= '1';
	WAIT FOR 50000 ps;
	avgVal(6) <= '0';
	WAIT FOR 10000 ps;
	avgVal(6) <= '1';
	WAIT FOR 30000 ps;
	avgVal(6) <= '0';
	WAIT FOR 20000 ps;
	avgVal(6) <= '1';
	WAIT FOR 10000 ps;
	avgVal(6) <= '0';
	WAIT FOR 10000 ps;
	avgVal(6) <= '1';
	WAIT FOR 10000 ps;
	avgVal(6) <= '0';
	WAIT FOR 10000 ps;
	avgVal(6) <= '1';
	WAIT FOR 10000 ps;
	avgVal(6) <= '0';
	WAIT FOR 10000 ps;
	avgVal(6) <= '1';
	WAIT FOR 20000 ps;
	avgVal(6) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_6;
-- avgVal[5]
t_prcs_avgVal_5: PROCESS
BEGIN
	avgVal(5) <= '0';
	WAIT FOR 350000 ps;
	avgVal(5) <= '1';
	WAIT FOR 20000 ps;
	avgVal(5) <= '0';
	WAIT FOR 120000 ps;
	avgVal(5) <= '1';
	WAIT FOR 110000 ps;
	avgVal(5) <= '0';
	WAIT FOR 30000 ps;
	avgVal(5) <= '1';
	WAIT FOR 40000 ps;
	avgVal(5) <= '0';
	WAIT FOR 30000 ps;
	avgVal(5) <= '1';
	WAIT FOR 20000 ps;
	avgVal(5) <= '0';
	WAIT FOR 10000 ps;
	avgVal(5) <= '1';
	WAIT FOR 20000 ps;
	avgVal(5) <= '0';
	WAIT FOR 10000 ps;
	avgVal(5) <= '1';
	WAIT FOR 10000 ps;
	avgVal(5) <= '0';
	WAIT FOR 40000 ps;
	avgVal(5) <= '1';
	WAIT FOR 10000 ps;
	avgVal(5) <= '0';
	WAIT FOR 10000 ps;
	avgVal(5) <= '1';
	WAIT FOR 10000 ps;
	avgVal(5) <= '0';
	WAIT FOR 10000 ps;
	avgVal(5) <= '1';
	WAIT FOR 10000 ps;
	avgVal(5) <= '0';
	WAIT FOR 40000 ps;
	avgVal(5) <= '1';
	WAIT FOR 20000 ps;
	avgVal(5) <= '0';
	WAIT FOR 30000 ps;
	avgVal(5) <= '1';
	WAIT FOR 10000 ps;
	avgVal(5) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_5;
-- avgVal[4]
t_prcs_avgVal_4: PROCESS
BEGIN
	avgVal(4) <= '0';
	WAIT FOR 160000 ps;
	avgVal(4) <= '1';
	WAIT FOR 160000 ps;
	avgVal(4) <= '0';
	WAIT FOR 10000 ps;
	avgVal(4) <= '1';
	WAIT FOR 10000 ps;
	avgVal(4) <= '0';
	WAIT FOR 10000 ps;
	avgVal(4) <= '1';
	WAIT FOR 10000 ps;
	avgVal(4) <= '0';
	WAIT FOR 80000 ps;
	avgVal(4) <= '1';
	WAIT FOR 50000 ps;
	avgVal(4) <= '0';
	WAIT FOR 50000 ps;
	avgVal(4) <= '1';
	WAIT FOR 60000 ps;
	avgVal(4) <= '0';
	WAIT FOR 30000 ps;
	avgVal(4) <= '1';
	WAIT FOR 10000 ps;
	avgVal(4) <= '0';
	WAIT FOR 10000 ps;
	avgVal(4) <= '1';
	WAIT FOR 30000 ps;
	avgVal(4) <= '0';
	WAIT FOR 40000 ps;
	avgVal(4) <= '1';
	WAIT FOR 20000 ps;
	avgVal(4) <= '0';
	WAIT FOR 20000 ps;
	avgVal(4) <= '1';
	WAIT FOR 20000 ps;
	avgVal(4) <= '0';
	WAIT FOR 10000 ps;
	avgVal(4) <= '1';
	WAIT FOR 40000 ps;
	avgVal(4) <= '0';
	WAIT FOR 40000 ps;
	avgVal(4) <= '1';
	WAIT FOR 20000 ps;
	avgVal(4) <= '0';
	WAIT FOR 10000 ps;
	avgVal(4) <= '1';
	WAIT FOR 10000 ps;
	avgVal(4) <= '0';
	WAIT FOR 30000 ps;
	avgVal(4) <= '1';
	WAIT FOR 10000 ps;
	avgVal(4) <= '0';
	WAIT FOR 10000 ps;
	avgVal(4) <= '1';
	WAIT FOR 20000 ps;
	avgVal(4) <= '0';
	WAIT FOR 10000 ps;
	avgVal(4) <= '1';
WAIT;
END PROCESS t_prcs_avgVal_4;
-- avgVal[3]
t_prcs_avgVal_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		avgVal(3) <= '0';
		WAIT FOR 80000 ps;
		avgVal(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	avgVal(3) <= '0';
	WAIT FOR 20000 ps;
	avgVal(3) <= '1';
	WAIT FOR 10000 ps;
	avgVal(3) <= '0';
	WAIT FOR 10000 ps;
	avgVal(3) <= '1';
	WAIT FOR 20000 ps;
	avgVal(3) <= '0';
	WAIT FOR 30000 ps;
	avgVal(3) <= '1';
	WAIT FOR 30000 ps;
	avgVal(3) <= '0';
	WAIT FOR 20000 ps;
	avgVal(3) <= '1';
	WAIT FOR 30000 ps;
	avgVal(3) <= '0';
	WAIT FOR 30000 ps;
	avgVal(3) <= '1';
	WAIT FOR 20000 ps;
	avgVal(3) <= '0';
	WAIT FOR 30000 ps;
	avgVal(3) <= '1';
	WAIT FOR 30000 ps;
	avgVal(3) <= '0';
	WAIT FOR 10000 ps;
	avgVal(3) <= 'X';
	WAIT FOR 10000 ps;
	avgVal(3) <= '0';
	WAIT FOR 60000 ps;
	avgVal(3) <= '1';
	WAIT FOR 10000 ps;
	avgVal(3) <= '0';
	WAIT FOR 10000 ps;
	avgVal(3) <= '1';
	WAIT FOR 10000 ps;
	avgVal(3) <= '0';
	WAIT FOR 10000 ps;
	avgVal(3) <= '1';
	WAIT FOR 30000 ps;
	avgVal(3) <= '0';
	WAIT FOR 10000 ps;
	avgVal(3) <= '1';
	WAIT FOR 20000 ps;
	avgVal(3) <= '0';
	WAIT FOR 30000 ps;
	avgVal(3) <= '1';
	WAIT FOR 90000 ps;
	avgVal(3) <= '0';
	WAIT FOR 10000 ps;
	avgVal(3) <= '1';
	WAIT FOR 10000 ps;
	avgVal(3) <= '0';
	WAIT FOR 20000 ps;
	avgVal(3) <= '1';
	WAIT FOR 20000 ps;
	avgVal(3) <= '0';
	WAIT FOR 20000 ps;
	avgVal(3) <= '1';
WAIT;
END PROCESS t_prcs_avgVal_3;
-- avgVal[2]
t_prcs_avgVal_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		avgVal(2) <= '0';
		WAIT FOR 40000 ps;
		avgVal(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	avgVal(2) <= '0';
	WAIT FOR 50000 ps;
	avgVal(2) <= '1';
	WAIT FOR 10000 ps;
	avgVal(2) <= '0';
	WAIT FOR 20000 ps;
	avgVal(2) <= '1';
	WAIT FOR 10000 ps;
	avgVal(2) <= '0';
	WAIT FOR 10000 ps;
	avgVal(2) <= '1';
	WAIT FOR 20000 ps;
	avgVal(2) <= '0';
	WAIT FOR 10000 ps;
	avgVal(2) <= '1';
	WAIT FOR 10000 ps;
	avgVal(2) <= '0';
	WAIT FOR 20000 ps;
	avgVal(2) <= '1';
	WAIT FOR 10000 ps;
	avgVal(2) <= '0';
	WAIT FOR 10000 ps;
	avgVal(2) <= '1';
	WAIT FOR 20000 ps;
	avgVal(2) <= '0';
	WAIT FOR 10000 ps;
	avgVal(2) <= '1';
	WAIT FOR 10000 ps;
	avgVal(2) <= '0';
	WAIT FOR 20000 ps;
	avgVal(2) <= '1';
	WAIT FOR 10000 ps;
	avgVal(2) <= '0';
	WAIT FOR 10000 ps;
	avgVal(2) <= '1';
	WAIT FOR 20000 ps;
	avgVal(2) <= '0';
	WAIT FOR 10000 ps;
	avgVal(2) <= 'X';
	WAIT FOR 10000 ps;
	avgVal(2) <= '1';
	WAIT FOR 20000 ps;
	avgVal(2) <= '0';
	WAIT FOR 10000 ps;
	avgVal(2) <= '1';
	WAIT FOR 10000 ps;
	avgVal(2) <= '0';
	WAIT FOR 40000 ps;
	avgVal(2) <= '1';
	WAIT FOR 10000 ps;
	avgVal(2) <= '0';
	WAIT FOR 50000 ps;
	avgVal(2) <= '1';
	WAIT FOR 10000 ps;
	avgVal(2) <= '0';
	WAIT FOR 30000 ps;
	avgVal(2) <= '1';
	WAIT FOR 50000 ps;
	avgVal(2) <= '0';
	WAIT FOR 50000 ps;
	avgVal(2) <= '1';
	WAIT FOR 50000 ps;
	avgVal(2) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_2;
-- avgVal[1]
t_prcs_avgVal_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		avgVal(1) <= '0';
		WAIT FOR 20000 ps;
		avgVal(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	avgVal(1) <= '0';
	WAIT FOR 10000 ps;
	avgVal(1) <= '1';
	WAIT FOR 30000 ps;
	avgVal(1) <= '0';
	WAIT FOR 30000 ps;
	avgVal(1) <= '1';
	WAIT FOR 20000 ps;
	avgVal(1) <= '0';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 4
	LOOP
		avgVal(1) <= '1';
		WAIT FOR 20000 ps;
		avgVal(1) <= '0';
		WAIT FOR 20000 ps;
	END LOOP;
	avgVal(1) <= '1';
	WAIT FOR 20000 ps;
	avgVal(1) <= '0';
	WAIT FOR 10000 ps;
	avgVal(1) <= '1';
	WAIT FOR 10000 ps;
	avgVal(1) <= '0';
	WAIT FOR 50000 ps;
	avgVal(1) <= '1';
	WAIT FOR 30000 ps;
	avgVal(1) <= '0';
	WAIT FOR 10000 ps;
	avgVal(1) <= '1';
	WAIT FOR 10000 ps;
	avgVal(1) <= '0';
	WAIT FOR 10000 ps;
	avgVal(1) <= '1';
	WAIT FOR 20000 ps;
	avgVal(1) <= '0';
	WAIT FOR 20000 ps;
	avgVal(1) <= '1';
	WAIT FOR 10000 ps;
	avgVal(1) <= '0';
	WAIT FOR 20000 ps;
	avgVal(1) <= '1';
	WAIT FOR 20000 ps;
	avgVal(1) <= '0';
	WAIT FOR 20000 ps;
	avgVal(1) <= '1';
	WAIT FOR 10000 ps;
	avgVal(1) <= '0';
	WAIT FOR 10000 ps;
	avgVal(1) <= '1';
	WAIT FOR 30000 ps;
	avgVal(1) <= '0';
	WAIT FOR 10000 ps;
	avgVal(1) <= '1';
	WAIT FOR 20000 ps;
	avgVal(1) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_1;
-- avgVal[0]
t_prcs_avgVal_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		avgVal(0) <= '0';
		WAIT FOR 10000 ps;
		avgVal(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	avgVal(0) <= '0';
	WAIT FOR 50000 ps;
	avgVal(0) <= '1';
	WAIT FOR 10000 ps;
	avgVal(0) <= '0';
	WAIT FOR 10000 ps;
	avgVal(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 10
	LOOP
		avgVal(0) <= '0';
		WAIT FOR 10000 ps;
		avgVal(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	avgVal(0) <= '0';
	WAIT FOR 40000 ps;
	avgVal(0) <= '1';
	WAIT FOR 20000 ps;
	avgVal(0) <= '0';
	WAIT FOR 10000 ps;
	avgVal(0) <= '1';
	WAIT FOR 40000 ps;
	avgVal(0) <= '0';
	WAIT FOR 20000 ps;
	avgVal(0) <= '1';
	WAIT FOR 10000 ps;
	avgVal(0) <= '0';
	WAIT FOR 10000 ps;
	avgVal(0) <= '1';
	WAIT FOR 10000 ps;
	avgVal(0) <= '0';
	WAIT FOR 20000 ps;
	avgVal(0) <= '1';
	WAIT FOR 10000 ps;
	avgVal(0) <= '0';
	WAIT FOR 30000 ps;
	avgVal(0) <= '1';
	WAIT FOR 20000 ps;
	avgVal(0) <= '0';
	WAIT FOR 10000 ps;
	avgVal(0) <= '1';
	WAIT FOR 20000 ps;
	avgVal(0) <= '0';
	WAIT FOR 10000 ps;
	avgVal(0) <= '1';
	WAIT FOR 10000 ps;
	avgVal(0) <= '0';
	WAIT FOR 20000 ps;
	avgVal(0) <= '1';
	WAIT FOR 10000 ps;
	avgVal(0) <= '0';
	WAIT FOR 10000 ps;
	avgVal(0) <= '1';
	WAIT FOR 10000 ps;
	avgVal(0) <= '0';
	WAIT FOR 10000 ps;
	avgVal(0) <= '1';
	WAIT FOR 10000 ps;
	avgVal(0) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_0;

-- flag
t_prcs_flag: PROCESS
BEGIN
	flag <= '0';
	WAIT FOR 980000 ps;
	flag <= '1';
WAIT;
END PROCESS t_prcs_flag;
END CORASP_Wave_Test_arch;
