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
-- Generated on "05/21/2024 23:45:38"
                                                             
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
SIGNAL sendCorr : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT CORASP_Wave_Test
	PORT (
	avgVal : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	calc : IN STD_LOGIC;
	clock : IN STD_LOGIC;
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
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- calc
t_prcs_calc: PROCESS
BEGIN
	calc <= '0';
	WAIT FOR 200000 ps;
	calc <= '1';
	WAIT FOR 20000 ps;
	calc <= '0';
	WAIT FOR 170000 ps;
	calc <= '1';
	WAIT FOR 20000 ps;
	calc <= '0';
	WAIT FOR 190000 ps;
	calc <= '1';
	WAIT FOR 20000 ps;
	calc <= '0';
	WAIT FOR 170000 ps;
	calc <= '1';
	WAIT FOR 20000 ps;
	calc <= '0';
	WAIT FOR 190000 ps;
	calc <= '1';
	WAIT FOR 20000 ps;
	calc <= '0';
	WAIT FOR 170000 ps;
	calc <= '1';
	WAIT FOR 30000 ps;
	calc <= '0';
	WAIT FOR 180000 ps;
	calc <= '1';
	WAIT FOR 20000 ps;
	calc <= '0';
	WAIT FOR 160000 ps;
	calc <= '1';
	WAIT FOR 20000 ps;
	calc <= '0';
	WAIT FOR 200000 ps;
	calc <= '1';
	WAIT FOR 20000 ps;
	calc <= '0';
WAIT;
END PROCESS t_prcs_calc;
-- avgVal[15]
t_prcs_avgVal_15: PROCESS
BEGIN
	avgVal(15) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_15;
-- avgVal[14]
t_prcs_avgVal_14: PROCESS
BEGIN
	avgVal(14) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_14;
-- avgVal[13]
t_prcs_avgVal_13: PROCESS
BEGIN
	avgVal(13) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_13;
-- avgVal[12]
t_prcs_avgVal_12: PROCESS
BEGIN
	avgVal(12) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_12;
-- avgVal[11]
t_prcs_avgVal_11: PROCESS
BEGIN
	avgVal(11) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_11;
-- avgVal[10]
t_prcs_avgVal_10: PROCESS
BEGIN
	avgVal(10) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_10;
-- avgVal[9]
t_prcs_avgVal_9: PROCESS
BEGIN
	avgVal(9) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_9;
-- avgVal[8]
t_prcs_avgVal_8: PROCESS
BEGIN
	avgVal(8) <= '0';
	WAIT FOR 1280000 ps;
	avgVal(8) <= '1';
WAIT;
END PROCESS t_prcs_avgVal_8;
-- avgVal[7]
t_prcs_avgVal_7: PROCESS
BEGIN
	avgVal(7) <= '0';
	WAIT FOR 640000 ps;
	avgVal(7) <= '1';
	WAIT FOR 640000 ps;
	avgVal(7) <= '0';
	WAIT FOR 640000 ps;
	avgVal(7) <= '1';
WAIT;
END PROCESS t_prcs_avgVal_7;
-- avgVal[6]
t_prcs_avgVal_6: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		avgVal(6) <= '0';
		WAIT FOR 320000 ps;
		avgVal(6) <= '1';
		WAIT FOR 320000 ps;
	END LOOP;
	avgVal(6) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_6;
-- avgVal[5]
t_prcs_avgVal_5: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		avgVal(5) <= '0';
		WAIT FOR 160000 ps;
		avgVal(5) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	avgVal(5) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_5;
-- avgVal[4]
t_prcs_avgVal_4: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		avgVal(4) <= '0';
		WAIT FOR 80000 ps;
		avgVal(4) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	avgVal(4) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_4;
-- avgVal[3]
t_prcs_avgVal_3: PROCESS
BEGIN
LOOP
	avgVal(3) <= '0';
	WAIT FOR 40000 ps;
	avgVal(3) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_avgVal_3;
-- avgVal[2]
t_prcs_avgVal_2: PROCESS
BEGIN
LOOP
	avgVal(2) <= '0';
	WAIT FOR 20000 ps;
	avgVal(2) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_avgVal_2;
-- avgVal[1]
t_prcs_avgVal_1: PROCESS
BEGIN
LOOP
	avgVal(1) <= '0';
	WAIT FOR 10000 ps;
	avgVal(1) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_avgVal_1;
-- avgVal[0]
t_prcs_avgVal_0: PROCESS
BEGIN
	avgVal(0) <= '0';
WAIT;
END PROCESS t_prcs_avgVal_0;
END CORASP_Wave_Test_arch;
