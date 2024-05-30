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

-- DATE "05/24/2024 21:51:52"

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

ENTITY 	CORASP IS
    PORT (
	clock : IN std_logic;
	\send.data\ : OUT std_logic_vector(31 DOWNTO 0);
	\send.addr\ : OUT std_logic_vector(7 DOWNTO 0);
	\recv.data\ : IN std_logic_vector(31 DOWNTO 0);
	\recv.addr\ : IN std_logic_vector(7 DOWNTO 0);
	avgVal : IN std_logic_vector(15 DOWNTO 0);
	calc : IN std_logic;
	sendCorr : OUT std_logic_vector(31 DOWNTO 0)
	);
END CORASP;

-- Design Ports Information
-- send.data[0]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[1]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[2]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[3]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[5]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[7]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[8]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[9]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[10]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[11]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[12]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[13]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[14]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[15]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[16]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[17]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[18]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[19]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[20]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[21]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[22]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[23]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[24]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[25]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[26]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[27]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[28]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[29]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[30]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[31]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[0]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[1]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[2]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[3]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[16]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[18]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[19]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[24]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[25]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[26]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[27]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[0]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[1]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[4]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[7]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[8]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[10]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[12]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[13]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[14]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avgVal[15]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- calc	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[0]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[1]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[2]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[4]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[5]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[6]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[8]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[9]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[10]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[11]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[12]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[13]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[14]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[15]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[16]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[17]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[18]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[19]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[20]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[21]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[22]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[23]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[24]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[25]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[26]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[27]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[28]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[29]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[30]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendCorr[31]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[28]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[30]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[29]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[31]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[20]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[21]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[22]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[23]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[17]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[1]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[3]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[4]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[7]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[8]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[9]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[10]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[11]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[12]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[13]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[14]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[15]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CORASP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL \ww_send.data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_send.addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_recv.data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_recv.addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_avgVal : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_calc : std_logic;
SIGNAL ww_sendCorr : std_logic_vector(31 DOWNTO 0);
SIGNAL \Mult9~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult9~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult9~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult9~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult9~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult9~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult9~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult9~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult8~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult8~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult8~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult8~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult8~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult8~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult8~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult8~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult7~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult7~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult7~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult7~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult7~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult7~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult7~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult7~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult6~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult6~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult6~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult6~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult6~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult6~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult6~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult6~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult5~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult5~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult5~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult5~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult5~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult5~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult5~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult5~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult4~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult4~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult4~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult4~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult4~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult3~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult3~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult3~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult2~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult2~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult2~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult2~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult2~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add1~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Add1~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Add1~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Add1~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Add1~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Add1~8_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Add1~8_BY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Add1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult9~8\ : std_logic;
SIGNAL \Mult9~9\ : std_logic;
SIGNAL \Mult9~10\ : std_logic;
SIGNAL \Mult9~11\ : std_logic;
SIGNAL \Mult9~12\ : std_logic;
SIGNAL \Mult9~13\ : std_logic;
SIGNAL \Mult9~14\ : std_logic;
SIGNAL \Mult9~15\ : std_logic;
SIGNAL \Mult9~16\ : std_logic;
SIGNAL \Mult9~17\ : std_logic;
SIGNAL \Mult9~18\ : std_logic;
SIGNAL \Mult9~19\ : std_logic;
SIGNAL \Mult9~20\ : std_logic;
SIGNAL \Mult9~21\ : std_logic;
SIGNAL \Mult9~22\ : std_logic;
SIGNAL \Mult9~23\ : std_logic;
SIGNAL \Mult9~24\ : std_logic;
SIGNAL \Mult9~25\ : std_logic;
SIGNAL \Mult9~26\ : std_logic;
SIGNAL \Mult9~27\ : std_logic;
SIGNAL \Mult9~28\ : std_logic;
SIGNAL \Mult9~29\ : std_logic;
SIGNAL \Mult9~30\ : std_logic;
SIGNAL \Mult9~31\ : std_logic;
SIGNAL \Mult9~32\ : std_logic;
SIGNAL \Mult9~33\ : std_logic;
SIGNAL \Mult9~34\ : std_logic;
SIGNAL \Mult9~35\ : std_logic;
SIGNAL \Mult9~36\ : std_logic;
SIGNAL \Mult9~37\ : std_logic;
SIGNAL \Mult9~38\ : std_logic;
SIGNAL \Mult9~39\ : std_logic;
SIGNAL \Mult8~8\ : std_logic;
SIGNAL \Mult8~9\ : std_logic;
SIGNAL \Mult8~10\ : std_logic;
SIGNAL \Mult8~11\ : std_logic;
SIGNAL \Mult8~12\ : std_logic;
SIGNAL \Mult8~13\ : std_logic;
SIGNAL \Mult8~14\ : std_logic;
SIGNAL \Mult8~15\ : std_logic;
SIGNAL \Mult8~16\ : std_logic;
SIGNAL \Mult8~17\ : std_logic;
SIGNAL \Mult8~18\ : std_logic;
SIGNAL \Mult8~19\ : std_logic;
SIGNAL \Mult8~20\ : std_logic;
SIGNAL \Mult8~21\ : std_logic;
SIGNAL \Mult8~22\ : std_logic;
SIGNAL \Mult8~23\ : std_logic;
SIGNAL \Mult8~24\ : std_logic;
SIGNAL \Mult8~25\ : std_logic;
SIGNAL \Mult8~26\ : std_logic;
SIGNAL \Mult8~27\ : std_logic;
SIGNAL \Mult8~28\ : std_logic;
SIGNAL \Mult8~29\ : std_logic;
SIGNAL \Mult8~30\ : std_logic;
SIGNAL \Mult8~31\ : std_logic;
SIGNAL \Mult8~32\ : std_logic;
SIGNAL \Mult8~33\ : std_logic;
SIGNAL \Mult8~34\ : std_logic;
SIGNAL \Mult8~35\ : std_logic;
SIGNAL \Mult8~36\ : std_logic;
SIGNAL \Mult8~37\ : std_logic;
SIGNAL \Mult8~38\ : std_logic;
SIGNAL \Mult8~39\ : std_logic;
SIGNAL \Mult7~8\ : std_logic;
SIGNAL \Mult7~9\ : std_logic;
SIGNAL \Mult7~10\ : std_logic;
SIGNAL \Mult7~11\ : std_logic;
SIGNAL \Mult7~12\ : std_logic;
SIGNAL \Mult7~13\ : std_logic;
SIGNAL \Mult7~14\ : std_logic;
SIGNAL \Mult7~15\ : std_logic;
SIGNAL \Mult7~16\ : std_logic;
SIGNAL \Mult7~17\ : std_logic;
SIGNAL \Mult7~18\ : std_logic;
SIGNAL \Mult7~19\ : std_logic;
SIGNAL \Mult7~20\ : std_logic;
SIGNAL \Mult7~21\ : std_logic;
SIGNAL \Mult7~22\ : std_logic;
SIGNAL \Mult7~23\ : std_logic;
SIGNAL \Mult7~24\ : std_logic;
SIGNAL \Mult7~25\ : std_logic;
SIGNAL \Mult7~26\ : std_logic;
SIGNAL \Mult7~27\ : std_logic;
SIGNAL \Mult7~28\ : std_logic;
SIGNAL \Mult7~29\ : std_logic;
SIGNAL \Mult7~30\ : std_logic;
SIGNAL \Mult7~31\ : std_logic;
SIGNAL \Mult7~32\ : std_logic;
SIGNAL \Mult7~33\ : std_logic;
SIGNAL \Mult7~34\ : std_logic;
SIGNAL \Mult7~35\ : std_logic;
SIGNAL \Mult7~36\ : std_logic;
SIGNAL \Mult7~37\ : std_logic;
SIGNAL \Mult7~38\ : std_logic;
SIGNAL \Mult7~39\ : std_logic;
SIGNAL \Mult6~8\ : std_logic;
SIGNAL \Mult6~9\ : std_logic;
SIGNAL \Mult6~10\ : std_logic;
SIGNAL \Mult6~11\ : std_logic;
SIGNAL \Mult6~12\ : std_logic;
SIGNAL \Mult6~13\ : std_logic;
SIGNAL \Mult6~14\ : std_logic;
SIGNAL \Mult6~15\ : std_logic;
SIGNAL \Mult6~16\ : std_logic;
SIGNAL \Mult6~17\ : std_logic;
SIGNAL \Mult6~18\ : std_logic;
SIGNAL \Mult6~19\ : std_logic;
SIGNAL \Mult6~20\ : std_logic;
SIGNAL \Mult6~21\ : std_logic;
SIGNAL \Mult6~22\ : std_logic;
SIGNAL \Mult6~23\ : std_logic;
SIGNAL \Mult6~24\ : std_logic;
SIGNAL \Mult6~25\ : std_logic;
SIGNAL \Mult6~26\ : std_logic;
SIGNAL \Mult6~27\ : std_logic;
SIGNAL \Mult6~28\ : std_logic;
SIGNAL \Mult6~29\ : std_logic;
SIGNAL \Mult6~30\ : std_logic;
SIGNAL \Mult6~31\ : std_logic;
SIGNAL \Mult6~32\ : std_logic;
SIGNAL \Mult6~33\ : std_logic;
SIGNAL \Mult6~34\ : std_logic;
SIGNAL \Mult6~35\ : std_logic;
SIGNAL \Mult6~36\ : std_logic;
SIGNAL \Mult6~37\ : std_logic;
SIGNAL \Mult6~38\ : std_logic;
SIGNAL \Mult6~39\ : std_logic;
SIGNAL \Mult5~8\ : std_logic;
SIGNAL \Mult5~9\ : std_logic;
SIGNAL \Mult5~10\ : std_logic;
SIGNAL \Mult5~11\ : std_logic;
SIGNAL \Mult5~12\ : std_logic;
SIGNAL \Mult5~13\ : std_logic;
SIGNAL \Mult5~14\ : std_logic;
SIGNAL \Mult5~15\ : std_logic;
SIGNAL \Mult5~16\ : std_logic;
SIGNAL \Mult5~17\ : std_logic;
SIGNAL \Mult5~18\ : std_logic;
SIGNAL \Mult5~19\ : std_logic;
SIGNAL \Mult5~20\ : std_logic;
SIGNAL \Mult5~21\ : std_logic;
SIGNAL \Mult5~22\ : std_logic;
SIGNAL \Mult5~23\ : std_logic;
SIGNAL \Mult5~24\ : std_logic;
SIGNAL \Mult5~25\ : std_logic;
SIGNAL \Mult5~26\ : std_logic;
SIGNAL \Mult5~27\ : std_logic;
SIGNAL \Mult5~28\ : std_logic;
SIGNAL \Mult5~29\ : std_logic;
SIGNAL \Mult5~30\ : std_logic;
SIGNAL \Mult5~31\ : std_logic;
SIGNAL \Mult5~32\ : std_logic;
SIGNAL \Mult5~33\ : std_logic;
SIGNAL \Mult5~34\ : std_logic;
SIGNAL \Mult5~35\ : std_logic;
SIGNAL \Mult5~36\ : std_logic;
SIGNAL \Mult5~37\ : std_logic;
SIGNAL \Mult5~38\ : std_logic;
SIGNAL \Mult5~39\ : std_logic;
SIGNAL \Mult4~8\ : std_logic;
SIGNAL \Mult4~9\ : std_logic;
SIGNAL \Mult4~10\ : std_logic;
SIGNAL \Mult4~11\ : std_logic;
SIGNAL \Mult4~12\ : std_logic;
SIGNAL \Mult4~13\ : std_logic;
SIGNAL \Mult4~14\ : std_logic;
SIGNAL \Mult4~15\ : std_logic;
SIGNAL \Mult4~16\ : std_logic;
SIGNAL \Mult4~17\ : std_logic;
SIGNAL \Mult4~18\ : std_logic;
SIGNAL \Mult4~19\ : std_logic;
SIGNAL \Mult4~20\ : std_logic;
SIGNAL \Mult4~21\ : std_logic;
SIGNAL \Mult4~22\ : std_logic;
SIGNAL \Mult4~23\ : std_logic;
SIGNAL \Mult4~24\ : std_logic;
SIGNAL \Mult4~25\ : std_logic;
SIGNAL \Mult4~26\ : std_logic;
SIGNAL \Mult4~27\ : std_logic;
SIGNAL \Mult4~28\ : std_logic;
SIGNAL \Mult4~29\ : std_logic;
SIGNAL \Mult4~30\ : std_logic;
SIGNAL \Mult4~31\ : std_logic;
SIGNAL \Mult4~32\ : std_logic;
SIGNAL \Mult4~33\ : std_logic;
SIGNAL \Mult4~34\ : std_logic;
SIGNAL \Mult4~35\ : std_logic;
SIGNAL \Mult4~36\ : std_logic;
SIGNAL \Mult4~37\ : std_logic;
SIGNAL \Mult4~38\ : std_logic;
SIGNAL \Mult4~39\ : std_logic;
SIGNAL \Mult3~8\ : std_logic;
SIGNAL \Mult3~9\ : std_logic;
SIGNAL \Mult3~10\ : std_logic;
SIGNAL \Mult3~11\ : std_logic;
SIGNAL \Mult3~12\ : std_logic;
SIGNAL \Mult3~13\ : std_logic;
SIGNAL \Mult3~14\ : std_logic;
SIGNAL \Mult3~15\ : std_logic;
SIGNAL \Mult3~16\ : std_logic;
SIGNAL \Mult3~17\ : std_logic;
SIGNAL \Mult3~18\ : std_logic;
SIGNAL \Mult3~19\ : std_logic;
SIGNAL \Mult3~20\ : std_logic;
SIGNAL \Mult3~21\ : std_logic;
SIGNAL \Mult3~22\ : std_logic;
SIGNAL \Mult3~23\ : std_logic;
SIGNAL \Mult3~24\ : std_logic;
SIGNAL \Mult3~25\ : std_logic;
SIGNAL \Mult3~26\ : std_logic;
SIGNAL \Mult3~27\ : std_logic;
SIGNAL \Mult3~28\ : std_logic;
SIGNAL \Mult3~29\ : std_logic;
SIGNAL \Mult3~30\ : std_logic;
SIGNAL \Mult3~31\ : std_logic;
SIGNAL \Mult3~32\ : std_logic;
SIGNAL \Mult3~33\ : std_logic;
SIGNAL \Mult3~34\ : std_logic;
SIGNAL \Mult3~35\ : std_logic;
SIGNAL \Mult3~36\ : std_logic;
SIGNAL \Mult3~37\ : std_logic;
SIGNAL \Mult3~38\ : std_logic;
SIGNAL \Mult3~39\ : std_logic;
SIGNAL \Mult2~8\ : std_logic;
SIGNAL \Mult2~9\ : std_logic;
SIGNAL \Mult2~10\ : std_logic;
SIGNAL \Mult2~11\ : std_logic;
SIGNAL \Mult2~12\ : std_logic;
SIGNAL \Mult2~13\ : std_logic;
SIGNAL \Mult2~14\ : std_logic;
SIGNAL \Mult2~15\ : std_logic;
SIGNAL \Mult2~16\ : std_logic;
SIGNAL \Mult2~17\ : std_logic;
SIGNAL \Mult2~18\ : std_logic;
SIGNAL \Mult2~19\ : std_logic;
SIGNAL \Mult2~20\ : std_logic;
SIGNAL \Mult2~21\ : std_logic;
SIGNAL \Mult2~22\ : std_logic;
SIGNAL \Mult2~23\ : std_logic;
SIGNAL \Mult2~24\ : std_logic;
SIGNAL \Mult2~25\ : std_logic;
SIGNAL \Mult2~26\ : std_logic;
SIGNAL \Mult2~27\ : std_logic;
SIGNAL \Mult2~28\ : std_logic;
SIGNAL \Mult2~29\ : std_logic;
SIGNAL \Mult2~30\ : std_logic;
SIGNAL \Mult2~31\ : std_logic;
SIGNAL \Mult2~32\ : std_logic;
SIGNAL \Mult2~33\ : std_logic;
SIGNAL \Mult2~34\ : std_logic;
SIGNAL \Mult2~35\ : std_logic;
SIGNAL \Mult2~36\ : std_logic;
SIGNAL \Mult2~37\ : std_logic;
SIGNAL \Mult2~38\ : std_logic;
SIGNAL \Mult2~39\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~63\ : std_logic;
SIGNAL \Add1~64\ : std_logic;
SIGNAL \Add1~65\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~68\ : std_logic;
SIGNAL \Add1~69\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~71\ : std_logic;
SIGNAL \recv.data[16]~input_o\ : std_logic;
SIGNAL \recv.data[18]~input_o\ : std_logic;
SIGNAL \recv.data[19]~input_o\ : std_logic;
SIGNAL \recv.data[24]~input_o\ : std_logic;
SIGNAL \recv.data[25]~input_o\ : std_logic;
SIGNAL \recv.data[26]~input_o\ : std_logic;
SIGNAL \recv.data[27]~input_o\ : std_logic;
SIGNAL \recv.addr[0]~input_o\ : std_logic;
SIGNAL \recv.addr[1]~input_o\ : std_logic;
SIGNAL \recv.addr[2]~input_o\ : std_logic;
SIGNAL \recv.addr[3]~input_o\ : std_logic;
SIGNAL \recv.addr[4]~input_o\ : std_logic;
SIGNAL \recv.addr[5]~input_o\ : std_logic;
SIGNAL \recv.addr[6]~input_o\ : std_logic;
SIGNAL \recv.addr[7]~input_o\ : std_logic;
SIGNAL \avgVal[0]~input_o\ : std_logic;
SIGNAL \avgVal[1]~input_o\ : std_logic;
SIGNAL \avgVal[2]~input_o\ : std_logic;
SIGNAL \avgVal[3]~input_o\ : std_logic;
SIGNAL \avgVal[4]~input_o\ : std_logic;
SIGNAL \avgVal[5]~input_o\ : std_logic;
SIGNAL \avgVal[6]~input_o\ : std_logic;
SIGNAL \avgVal[7]~input_o\ : std_logic;
SIGNAL \avgVal[8]~input_o\ : std_logic;
SIGNAL \avgVal[9]~input_o\ : std_logic;
SIGNAL \avgVal[10]~input_o\ : std_logic;
SIGNAL \avgVal[11]~input_o\ : std_logic;
SIGNAL \avgVal[12]~input_o\ : std_logic;
SIGNAL \avgVal[13]~input_o\ : std_logic;
SIGNAL \avgVal[14]~input_o\ : std_logic;
SIGNAL \avgVal[15]~input_o\ : std_logic;
SIGNAL \calc~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \recv.data[17]~input_o\ : std_logic;
SIGNAL \enable~feeder_combout\ : std_logic;
SIGNAL \recv.data[30]~input_o\ : std_logic;
SIGNAL \recv.data[28]~input_o\ : std_logic;
SIGNAL \recv.data[29]~input_o\ : std_logic;
SIGNAL \recv.data[31]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \enable~q\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \flag~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \index~1_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \index~0_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \index~2_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \avgBuffer[19][0]~3_combout\ : std_logic;
SIGNAL \avgBuffer[19][0]~4_combout\ : std_logic;
SIGNAL \avgBuffer[19][0]~5_combout\ : std_logic;
SIGNAL \avgBuffer[0][0]~0_combout\ : std_logic;
SIGNAL \avgBuffer[0][0]~1_combout\ : std_logic;
SIGNAL \avgBuffer[0][0]~2_combout\ : std_logic;
SIGNAL \recv.data[0]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[1]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[2]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[3]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[4]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[5]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[6]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[7]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[8]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[9]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[10]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[11]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[12]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[13]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[14]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \recv.data[15]~input_o\ : std_logic;
SIGNAL \avgBuffer[0][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][0]~8_combout\ : std_logic;
SIGNAL \avgBuffer[18][0]~9_combout\ : std_logic;
SIGNAL \avgBuffer[1][0]~6_combout\ : std_logic;
SIGNAL \avgBuffer[1][0]~7_combout\ : std_logic;
SIGNAL \avgBuffer[1][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[1][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[18][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][0]~12_combout\ : std_logic;
SIGNAL \avgBuffer[17][0]~13_combout\ : std_logic;
SIGNAL \avgBuffer[2][0]~10_combout\ : std_logic;
SIGNAL \avgBuffer[2][0]~11_combout\ : std_logic;
SIGNAL \avgBuffer[2][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[2][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[17][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][0]~16_combout\ : std_logic;
SIGNAL \avgBuffer[16][0]~17_combout\ : std_logic;
SIGNAL \avgBuffer[3][0]~14_combout\ : std_logic;
SIGNAL \avgBuffer[3][0]~15_combout\ : std_logic;
SIGNAL \avgBuffer[3][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[3][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[16][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][0]~21_combout\ : std_logic;
SIGNAL \avgBuffer[15][0]~22_combout\ : std_logic;
SIGNAL \avgBuffer[15][0]~23_combout\ : std_logic;
SIGNAL \avgBuffer[4][0]~18_combout\ : std_logic;
SIGNAL \avgBuffer[4][0]~19_combout\ : std_logic;
SIGNAL \avgBuffer[4][0]~20_combout\ : std_logic;
SIGNAL \avgBuffer[4][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[4][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[15][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][0]~27_combout\ : std_logic;
SIGNAL \avgBuffer[14][0]~28_combout\ : std_logic;
SIGNAL \avgBuffer[14][0]~29_combout\ : std_logic;
SIGNAL \avgBuffer[5][0]~24_combout\ : std_logic;
SIGNAL \avgBuffer[5][0]~25_combout\ : std_logic;
SIGNAL \avgBuffer[5][0]~26_combout\ : std_logic;
SIGNAL \avgBuffer[5][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[5][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[14][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][0]~32_combout\ : std_logic;
SIGNAL \avgBuffer[13][0]~33_combout\ : std_logic;
SIGNAL \avgBuffer[6][0]~30_combout\ : std_logic;
SIGNAL \avgBuffer[6][0]~31_combout\ : std_logic;
SIGNAL \avgBuffer[6][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[6][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[13][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][0]~36_combout\ : std_logic;
SIGNAL \avgBuffer[12][0]~37_combout\ : std_logic;
SIGNAL \avgBuffer[7][0]~34_combout\ : std_logic;
SIGNAL \avgBuffer[7][0]~35_combout\ : std_logic;
SIGNAL \avgBuffer[7][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[7][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[12][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][0]~38_combout\ : std_logic;
SIGNAL \avgBuffer[11][0]~41_combout\ : std_logic;
SIGNAL \avgBuffer[11][0]~42_combout\ : std_logic;
SIGNAL \avgBuffer[10][0]~45_combout\ : std_logic;
SIGNAL \avgBuffer[10][0]~46_combout\ : std_logic;
SIGNAL \avgBuffer[8][0]~39_combout\ : std_logic;
SIGNAL \avgBuffer[8][0]~40_combout\ : std_logic;
SIGNAL \avgBuffer[8][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[8][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[11][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[9][0]~43_combout\ : std_logic;
SIGNAL \avgBuffer[9][0]~44_combout\ : std_logic;
SIGNAL \avgBuffer[9][0]~q\ : std_logic;
SIGNAL \avgBuffer[9][1]~q\ : std_logic;
SIGNAL \avgBuffer[9][2]~q\ : std_logic;
SIGNAL \avgBuffer[9][3]~q\ : std_logic;
SIGNAL \avgBuffer[9][4]~q\ : std_logic;
SIGNAL \avgBuffer[9][5]~q\ : std_logic;
SIGNAL \avgBuffer[9][6]~q\ : std_logic;
SIGNAL \avgBuffer[9][7]~q\ : std_logic;
SIGNAL \avgBuffer[9][8]~q\ : std_logic;
SIGNAL \avgBuffer[9][9]~q\ : std_logic;
SIGNAL \avgBuffer[9][10]~q\ : std_logic;
SIGNAL \avgBuffer[9][11]~q\ : std_logic;
SIGNAL \avgBuffer[9][12]~q\ : std_logic;
SIGNAL \avgBuffer[9][13]~q\ : std_logic;
SIGNAL \avgBuffer[9][14]~q\ : std_logic;
SIGNAL \avgBuffer[9][15]~q\ : std_logic;
SIGNAL \avgBuffer[10][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \avgBuffer[10][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Add1~8_resulta\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Mult2~mac_resulta\ : std_logic;
SIGNAL \Mult2~309\ : std_logic;
SIGNAL \Mult2~310\ : std_logic;
SIGNAL \Mult2~311\ : std_logic;
SIGNAL \Mult2~312\ : std_logic;
SIGNAL \Mult2~313\ : std_logic;
SIGNAL \Mult2~314\ : std_logic;
SIGNAL \Mult2~315\ : std_logic;
SIGNAL \Mult2~316\ : std_logic;
SIGNAL \Mult2~317\ : std_logic;
SIGNAL \Mult2~318\ : std_logic;
SIGNAL \Mult2~319\ : std_logic;
SIGNAL \Mult2~320\ : std_logic;
SIGNAL \Mult2~321\ : std_logic;
SIGNAL \Mult2~322\ : std_logic;
SIGNAL \Mult2~323\ : std_logic;
SIGNAL \Mult2~324\ : std_logic;
SIGNAL \Mult2~325\ : std_logic;
SIGNAL \Mult2~326\ : std_logic;
SIGNAL \Mult2~327\ : std_logic;
SIGNAL \Mult2~328\ : std_logic;
SIGNAL \Mult2~329\ : std_logic;
SIGNAL \Mult2~330\ : std_logic;
SIGNAL \Mult2~331\ : std_logic;
SIGNAL \Mult2~332\ : std_logic;
SIGNAL \Mult2~333\ : std_logic;
SIGNAL \Mult2~334\ : std_logic;
SIGNAL \Mult2~335\ : std_logic;
SIGNAL \Mult2~336\ : std_logic;
SIGNAL \Mult2~337\ : std_logic;
SIGNAL \Mult2~338\ : std_logic;
SIGNAL \Mult2~339\ : std_logic;
SIGNAL \Mult3~mac_resulta\ : std_logic;
SIGNAL \Mult3~309\ : std_logic;
SIGNAL \Mult3~310\ : std_logic;
SIGNAL \Mult3~311\ : std_logic;
SIGNAL \Mult3~312\ : std_logic;
SIGNAL \Mult3~313\ : std_logic;
SIGNAL \Mult3~314\ : std_logic;
SIGNAL \Mult3~315\ : std_logic;
SIGNAL \Mult3~316\ : std_logic;
SIGNAL \Mult3~317\ : std_logic;
SIGNAL \Mult3~318\ : std_logic;
SIGNAL \Mult3~319\ : std_logic;
SIGNAL \Mult3~320\ : std_logic;
SIGNAL \Mult3~321\ : std_logic;
SIGNAL \Mult3~322\ : std_logic;
SIGNAL \Mult3~323\ : std_logic;
SIGNAL \Mult3~324\ : std_logic;
SIGNAL \Mult3~325\ : std_logic;
SIGNAL \Mult3~326\ : std_logic;
SIGNAL \Mult3~327\ : std_logic;
SIGNAL \Mult3~328\ : std_logic;
SIGNAL \Mult3~329\ : std_logic;
SIGNAL \Mult3~330\ : std_logic;
SIGNAL \Mult3~331\ : std_logic;
SIGNAL \Mult3~332\ : std_logic;
SIGNAL \Mult3~333\ : std_logic;
SIGNAL \Mult3~334\ : std_logic;
SIGNAL \Mult3~335\ : std_logic;
SIGNAL \Mult3~336\ : std_logic;
SIGNAL \Mult3~337\ : std_logic;
SIGNAL \Mult3~338\ : std_logic;
SIGNAL \Mult3~339\ : std_logic;
SIGNAL \Mult4~mac_resulta\ : std_logic;
SIGNAL \Mult4~309\ : std_logic;
SIGNAL \Mult4~310\ : std_logic;
SIGNAL \Mult4~311\ : std_logic;
SIGNAL \Mult4~312\ : std_logic;
SIGNAL \Mult4~313\ : std_logic;
SIGNAL \Mult4~314\ : std_logic;
SIGNAL \Mult4~315\ : std_logic;
SIGNAL \Mult4~316\ : std_logic;
SIGNAL \Mult4~317\ : std_logic;
SIGNAL \Mult4~318\ : std_logic;
SIGNAL \Mult4~319\ : std_logic;
SIGNAL \Mult4~320\ : std_logic;
SIGNAL \Mult4~321\ : std_logic;
SIGNAL \Mult4~322\ : std_logic;
SIGNAL \Mult4~323\ : std_logic;
SIGNAL \Mult4~324\ : std_logic;
SIGNAL \Mult4~325\ : std_logic;
SIGNAL \Mult4~326\ : std_logic;
SIGNAL \Mult4~327\ : std_logic;
SIGNAL \Mult4~328\ : std_logic;
SIGNAL \Mult4~329\ : std_logic;
SIGNAL \Mult4~330\ : std_logic;
SIGNAL \Mult4~331\ : std_logic;
SIGNAL \Mult4~332\ : std_logic;
SIGNAL \Mult4~333\ : std_logic;
SIGNAL \Mult4~334\ : std_logic;
SIGNAL \Mult4~335\ : std_logic;
SIGNAL \Mult4~336\ : std_logic;
SIGNAL \Mult4~337\ : std_logic;
SIGNAL \Mult4~338\ : std_logic;
SIGNAL \Mult4~339\ : std_logic;
SIGNAL \Mult5~mac_resulta\ : std_logic;
SIGNAL \Mult5~309\ : std_logic;
SIGNAL \Mult5~310\ : std_logic;
SIGNAL \Mult5~311\ : std_logic;
SIGNAL \Mult5~312\ : std_logic;
SIGNAL \Mult5~313\ : std_logic;
SIGNAL \Mult5~314\ : std_logic;
SIGNAL \Mult5~315\ : std_logic;
SIGNAL \Mult5~316\ : std_logic;
SIGNAL \Mult5~317\ : std_logic;
SIGNAL \Mult5~318\ : std_logic;
SIGNAL \Mult5~319\ : std_logic;
SIGNAL \Mult5~320\ : std_logic;
SIGNAL \Mult5~321\ : std_logic;
SIGNAL \Mult5~322\ : std_logic;
SIGNAL \Mult5~323\ : std_logic;
SIGNAL \Mult5~324\ : std_logic;
SIGNAL \Mult5~325\ : std_logic;
SIGNAL \Mult5~326\ : std_logic;
SIGNAL \Mult5~327\ : std_logic;
SIGNAL \Mult5~328\ : std_logic;
SIGNAL \Mult5~329\ : std_logic;
SIGNAL \Mult5~330\ : std_logic;
SIGNAL \Mult5~331\ : std_logic;
SIGNAL \Mult5~332\ : std_logic;
SIGNAL \Mult5~333\ : std_logic;
SIGNAL \Mult5~334\ : std_logic;
SIGNAL \Mult5~335\ : std_logic;
SIGNAL \Mult5~336\ : std_logic;
SIGNAL \Mult5~337\ : std_logic;
SIGNAL \Mult5~338\ : std_logic;
SIGNAL \Mult5~339\ : std_logic;
SIGNAL \Mult6~mac_resulta\ : std_logic;
SIGNAL \Mult6~309\ : std_logic;
SIGNAL \Mult6~310\ : std_logic;
SIGNAL \Mult6~311\ : std_logic;
SIGNAL \Mult6~312\ : std_logic;
SIGNAL \Mult6~313\ : std_logic;
SIGNAL \Mult6~314\ : std_logic;
SIGNAL \Mult6~315\ : std_logic;
SIGNAL \Mult6~316\ : std_logic;
SIGNAL \Mult6~317\ : std_logic;
SIGNAL \Mult6~318\ : std_logic;
SIGNAL \Mult6~319\ : std_logic;
SIGNAL \Mult6~320\ : std_logic;
SIGNAL \Mult6~321\ : std_logic;
SIGNAL \Mult6~322\ : std_logic;
SIGNAL \Mult6~323\ : std_logic;
SIGNAL \Mult6~324\ : std_logic;
SIGNAL \Mult6~325\ : std_logic;
SIGNAL \Mult6~326\ : std_logic;
SIGNAL \Mult6~327\ : std_logic;
SIGNAL \Mult6~328\ : std_logic;
SIGNAL \Mult6~329\ : std_logic;
SIGNAL \Mult6~330\ : std_logic;
SIGNAL \Mult6~331\ : std_logic;
SIGNAL \Mult6~332\ : std_logic;
SIGNAL \Mult6~333\ : std_logic;
SIGNAL \Mult6~334\ : std_logic;
SIGNAL \Mult6~335\ : std_logic;
SIGNAL \Mult6~336\ : std_logic;
SIGNAL \Mult6~337\ : std_logic;
SIGNAL \Mult6~338\ : std_logic;
SIGNAL \Mult6~339\ : std_logic;
SIGNAL \Mult7~mac_resulta\ : std_logic;
SIGNAL \Mult7~309\ : std_logic;
SIGNAL \Mult7~310\ : std_logic;
SIGNAL \Mult7~311\ : std_logic;
SIGNAL \Mult7~312\ : std_logic;
SIGNAL \Mult7~313\ : std_logic;
SIGNAL \Mult7~314\ : std_logic;
SIGNAL \Mult7~315\ : std_logic;
SIGNAL \Mult7~316\ : std_logic;
SIGNAL \Mult7~317\ : std_logic;
SIGNAL \Mult7~318\ : std_logic;
SIGNAL \Mult7~319\ : std_logic;
SIGNAL \Mult7~320\ : std_logic;
SIGNAL \Mult7~321\ : std_logic;
SIGNAL \Mult7~322\ : std_logic;
SIGNAL \Mult7~323\ : std_logic;
SIGNAL \Mult7~324\ : std_logic;
SIGNAL \Mult7~325\ : std_logic;
SIGNAL \Mult7~326\ : std_logic;
SIGNAL \Mult7~327\ : std_logic;
SIGNAL \Mult7~328\ : std_logic;
SIGNAL \Mult7~329\ : std_logic;
SIGNAL \Mult7~330\ : std_logic;
SIGNAL \Mult7~331\ : std_logic;
SIGNAL \Mult7~332\ : std_logic;
SIGNAL \Mult7~333\ : std_logic;
SIGNAL \Mult7~334\ : std_logic;
SIGNAL \Mult7~335\ : std_logic;
SIGNAL \Mult7~336\ : std_logic;
SIGNAL \Mult7~337\ : std_logic;
SIGNAL \Mult7~338\ : std_logic;
SIGNAL \Mult7~339\ : std_logic;
SIGNAL \Mult8~mac_resulta\ : std_logic;
SIGNAL \Mult8~309\ : std_logic;
SIGNAL \Mult8~310\ : std_logic;
SIGNAL \Mult8~311\ : std_logic;
SIGNAL \Mult8~312\ : std_logic;
SIGNAL \Mult8~313\ : std_logic;
SIGNAL \Mult8~314\ : std_logic;
SIGNAL \Mult8~315\ : std_logic;
SIGNAL \Mult8~316\ : std_logic;
SIGNAL \Mult8~317\ : std_logic;
SIGNAL \Mult8~318\ : std_logic;
SIGNAL \Mult8~319\ : std_logic;
SIGNAL \Mult8~320\ : std_logic;
SIGNAL \Mult8~321\ : std_logic;
SIGNAL \Mult8~322\ : std_logic;
SIGNAL \Mult8~323\ : std_logic;
SIGNAL \Mult8~324\ : std_logic;
SIGNAL \Mult8~325\ : std_logic;
SIGNAL \Mult8~326\ : std_logic;
SIGNAL \Mult8~327\ : std_logic;
SIGNAL \Mult8~328\ : std_logic;
SIGNAL \Mult8~329\ : std_logic;
SIGNAL \Mult8~330\ : std_logic;
SIGNAL \Mult8~331\ : std_logic;
SIGNAL \Mult8~332\ : std_logic;
SIGNAL \Mult8~333\ : std_logic;
SIGNAL \Mult8~334\ : std_logic;
SIGNAL \Mult8~335\ : std_logic;
SIGNAL \Mult8~336\ : std_logic;
SIGNAL \Mult8~337\ : std_logic;
SIGNAL \Mult8~338\ : std_logic;
SIGNAL \Mult8~339\ : std_logic;
SIGNAL \Mult9~mac_resulta\ : std_logic;
SIGNAL \corrVar~0_combout\ : std_logic;
SIGNAL \send.data[0]~reg0_q\ : std_logic;
SIGNAL \Mult9~309\ : std_logic;
SIGNAL \corrVar~1_combout\ : std_logic;
SIGNAL \send.data[1]~reg0_q\ : std_logic;
SIGNAL \corrVar[2]~feeder_combout\ : std_logic;
SIGNAL \Mult9~310\ : std_logic;
SIGNAL \corrVar~2_combout\ : std_logic;
SIGNAL \send.data[2]~reg0_q\ : std_logic;
SIGNAL \corrVar[3]~feeder_combout\ : std_logic;
SIGNAL \Mult9~311\ : std_logic;
SIGNAL \corrVar~3_combout\ : std_logic;
SIGNAL \send.data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[3]~reg0_q\ : std_logic;
SIGNAL \Mult9~312\ : std_logic;
SIGNAL \corrVar~4_combout\ : std_logic;
SIGNAL \send.data[4]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[4]~reg0_q\ : std_logic;
SIGNAL \Mult9~313\ : std_logic;
SIGNAL \corrVar~5_combout\ : std_logic;
SIGNAL \send.data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[5]~reg0_q\ : std_logic;
SIGNAL \Mult9~314\ : std_logic;
SIGNAL \corrVar~6_combout\ : std_logic;
SIGNAL \send.data[6]~reg0_q\ : std_logic;
SIGNAL \corrVar[7]~feeder_combout\ : std_logic;
SIGNAL \Mult9~315\ : std_logic;
SIGNAL \corrVar~7_combout\ : std_logic;
SIGNAL \send.data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[7]~reg0_q\ : std_logic;
SIGNAL \Mult9~316\ : std_logic;
SIGNAL \corrVar~8_combout\ : std_logic;
SIGNAL \send.data[8]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[8]~reg0_q\ : std_logic;
SIGNAL \Mult9~317\ : std_logic;
SIGNAL \corrVar~9_combout\ : std_logic;
SIGNAL \send.data[9]~reg0_q\ : std_logic;
SIGNAL \Mult9~318\ : std_logic;
SIGNAL \corrVar~10_combout\ : std_logic;
SIGNAL \send.data[10]~reg0_q\ : std_logic;
SIGNAL \corrVar[11]~feeder_combout\ : std_logic;
SIGNAL \Mult9~319\ : std_logic;
SIGNAL \corrVar~11_combout\ : std_logic;
SIGNAL \send.data[11]~reg0_q\ : std_logic;
SIGNAL \Mult9~320\ : std_logic;
SIGNAL \corrVar~12_combout\ : std_logic;
SIGNAL \send.data[12]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[12]~reg0_q\ : std_logic;
SIGNAL \Mult9~321\ : std_logic;
SIGNAL \corrVar~13_combout\ : std_logic;
SIGNAL \send.data[13]~reg0_q\ : std_logic;
SIGNAL \Mult9~322\ : std_logic;
SIGNAL \corrVar~14_combout\ : std_logic;
SIGNAL \send.data[14]~reg0_q\ : std_logic;
SIGNAL \Mult9~323\ : std_logic;
SIGNAL \corrVar~15_combout\ : std_logic;
SIGNAL \send.data[15]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[15]~reg0_q\ : std_logic;
SIGNAL \corrVar[16]~feeder_combout\ : std_logic;
SIGNAL \Mult9~324\ : std_logic;
SIGNAL \corrVar~16_combout\ : std_logic;
SIGNAL \send.data[16]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[16]~reg0_q\ : std_logic;
SIGNAL \Mult9~325\ : std_logic;
SIGNAL \corrVar~17_combout\ : std_logic;
SIGNAL \send.data[17]~reg0_q\ : std_logic;
SIGNAL \Mult9~326\ : std_logic;
SIGNAL \corrVar~18_combout\ : std_logic;
SIGNAL \send.data[18]~reg0_q\ : std_logic;
SIGNAL \Mult9~327\ : std_logic;
SIGNAL \corrVar[19]~feeder_combout\ : std_logic;
SIGNAL \corrVar~19_combout\ : std_logic;
SIGNAL \send.data[19]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[19]~reg0_q\ : std_logic;
SIGNAL \corrVar[20]~feeder_combout\ : std_logic;
SIGNAL \Mult9~328\ : std_logic;
SIGNAL \corrVar~20_combout\ : std_logic;
SIGNAL \send.data[20]~reg0_q\ : std_logic;
SIGNAL \Mult9~329\ : std_logic;
SIGNAL \corrVar~21_combout\ : std_logic;
SIGNAL \send.data[21]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[21]~reg0_q\ : std_logic;
SIGNAL \Mult9~330\ : std_logic;
SIGNAL \corrVar~22_combout\ : std_logic;
SIGNAL \send.data[22]~reg0_q\ : std_logic;
SIGNAL \Mult9~331\ : std_logic;
SIGNAL \corrVar~23_combout\ : std_logic;
SIGNAL \send.data[23]~reg0_q\ : std_logic;
SIGNAL \Mult9~332\ : std_logic;
SIGNAL \corrVar~24_combout\ : std_logic;
SIGNAL \send.data[24]~reg0_q\ : std_logic;
SIGNAL \Mult9~333\ : std_logic;
SIGNAL \corrVar~25_combout\ : std_logic;
SIGNAL \send.data[25]~reg0_q\ : std_logic;
SIGNAL \Mult9~334\ : std_logic;
SIGNAL \corrVar~26_combout\ : std_logic;
SIGNAL \send.data[26]~reg0_q\ : std_logic;
SIGNAL \corrVar[27]~feeder_combout\ : std_logic;
SIGNAL \Mult9~335\ : std_logic;
SIGNAL \corrVar~27_combout\ : std_logic;
SIGNAL \send.data[27]~reg0_q\ : std_logic;
SIGNAL \corrVar[28]~feeder_combout\ : std_logic;
SIGNAL \Mult9~336\ : std_logic;
SIGNAL \corrVar~28_combout\ : std_logic;
SIGNAL \send.data[28]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[28]~reg0_q\ : std_logic;
SIGNAL \Mult9~337\ : std_logic;
SIGNAL \corrVar~29_combout\ : std_logic;
SIGNAL \send.data[29]~reg0_q\ : std_logic;
SIGNAL \validCor~0_combout\ : std_logic;
SIGNAL \send.data[30]~reg0_q\ : std_logic;
SIGNAL \recv.data[20]~input_o\ : std_logic;
SIGNAL \send.addr[0]~reg0_q\ : std_logic;
SIGNAL \recv.data[21]~input_o\ : std_logic;
SIGNAL \send.addr[1]~reg0feeder_combout\ : std_logic;
SIGNAL \send.addr[1]~reg0_q\ : std_logic;
SIGNAL \recv.data[22]~input_o\ : std_logic;
SIGNAL \send.addr[2]~reg0feeder_combout\ : std_logic;
SIGNAL \send.addr[2]~reg0_q\ : std_logic;
SIGNAL \recv.data[23]~input_o\ : std_logic;
SIGNAL \send.addr[3]~reg0feeder_combout\ : std_logic;
SIGNAL \send.addr[3]~reg0_q\ : std_logic;
SIGNAL \correlation[0]~0_combout\ : std_logic;
SIGNAL \correlation[1]~feeder_combout\ : std_logic;
SIGNAL \correlation[3]~feeder_combout\ : std_logic;
SIGNAL \correlation[4]~feeder_combout\ : std_logic;
SIGNAL \correlation[7]~feeder_combout\ : std_logic;
SIGNAL \correlation[9]~feeder_combout\ : std_logic;
SIGNAL \correlation[11]~feeder_combout\ : std_logic;
SIGNAL \correlation[12]~feeder_combout\ : std_logic;
SIGNAL \correlation[14]~feeder_combout\ : std_logic;
SIGNAL \correlation[15]~feeder_combout\ : std_logic;
SIGNAL \correlation[18]~feeder_combout\ : std_logic;
SIGNAL \correlation[20]~feeder_combout\ : std_logic;
SIGNAL \correlation[22]~feeder_combout\ : std_logic;
SIGNAL \correlation[23]~feeder_combout\ : std_logic;
SIGNAL \correlation[24]~feeder_combout\ : std_logic;
SIGNAL \correlation[28]~feeder_combout\ : std_logic;
SIGNAL \Mult9~338\ : std_logic;
SIGNAL \Mult9~339\ : std_logic;
SIGNAL index : std_logic_vector(31 DOWNTO 0);
SIGNAL correlation : std_logic_vector(31 DOWNTO 0);
SIGNAL corrVar : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_index : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult9~337\ : std_logic;
SIGNAL \ALT_INV_Mult9~336\ : std_logic;
SIGNAL \ALT_INV_Mult9~335\ : std_logic;
SIGNAL \ALT_INV_Mult9~334\ : std_logic;
SIGNAL \ALT_INV_Mult9~333\ : std_logic;
SIGNAL \ALT_INV_Mult9~332\ : std_logic;
SIGNAL \ALT_INV_Mult9~331\ : std_logic;
SIGNAL \ALT_INV_Mult9~330\ : std_logic;
SIGNAL \ALT_INV_Mult9~329\ : std_logic;
SIGNAL \ALT_INV_Mult9~328\ : std_logic;
SIGNAL \ALT_INV_Mult9~327\ : std_logic;
SIGNAL \ALT_INV_Mult9~326\ : std_logic;
SIGNAL \ALT_INV_Mult9~325\ : std_logic;
SIGNAL \ALT_INV_Mult9~324\ : std_logic;
SIGNAL \ALT_INV_Mult9~323\ : std_logic;
SIGNAL \ALT_INV_Mult9~322\ : std_logic;
SIGNAL \ALT_INV_Mult9~321\ : std_logic;
SIGNAL \ALT_INV_Mult9~320\ : std_logic;
SIGNAL \ALT_INV_Mult9~319\ : std_logic;
SIGNAL \ALT_INV_Mult9~318\ : std_logic;
SIGNAL \ALT_INV_Mult9~317\ : std_logic;
SIGNAL \ALT_INV_Mult9~316\ : std_logic;
SIGNAL \ALT_INV_Mult9~315\ : std_logic;
SIGNAL \ALT_INV_Mult9~314\ : std_logic;
SIGNAL \ALT_INV_Mult9~313\ : std_logic;
SIGNAL \ALT_INV_Mult9~312\ : std_logic;
SIGNAL \ALT_INV_Mult9~311\ : std_logic;
SIGNAL \ALT_INV_Mult9~310\ : std_logic;
SIGNAL \ALT_INV_Mult9~309\ : std_logic;
SIGNAL \ALT_INV_Mult9~mac_resulta\ : std_logic;
SIGNAL \ALT_INV_flag~q\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_recv.data[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[10][0]~45_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[9][0]~43_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[11][0]~41_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[8][0]~39_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[8][0]~38_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[12][0]~36_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[7][0]~34_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[13][0]~32_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[6][0]~30_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[14][0]~28_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[14][0]~27_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[5][0]~25_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[5][0]~24_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[15][0]~22_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[15][0]~21_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[4][0]~19_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[4][0]~18_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[16][0]~16_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[3][0]~14_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[17][0]~12_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[2][0]~10_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[18][0]~8_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[1][0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[19][0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[19][0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[0][0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_avgBuffer[0][0]~0_combout\ : std_logic;
SIGNAL ALT_INV_corrVar : std_logic_vector(29 DOWNTO 0);
SIGNAL \ALT_INV_corrVar~28_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~27_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~21_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~20_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~19_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~16_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~15_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~12_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~11_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~8_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~7_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~5_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~4_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~3_combout\ : std_logic;
SIGNAL \ALT_INV_corrVar~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable~q\ : std_logic;

BEGIN

ww_clock <= clock;
\send.data\ <= \ww_send.data\;
\send.addr\ <= \ww_send.addr\;
\ww_recv.data\ <= \recv.data\;
\ww_recv.addr\ <= \recv.addr\;
ww_avgVal <= avgVal;
ww_calc <= calc;
sendCorr <= ww_sendCorr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult9~mac_ACLR_bus\ <= (gnd & gnd);

\Mult9~mac_CLK_bus\ <= (gnd & \clock~inputCLKENA0_outclk\ & \clock~inputCLKENA0_outclk\);

\Mult9~mac_ENA_bus\ <= (vcc & \avgBuffer[0][0]~2_combout\ & \avgBuffer[19][0]~5_combout\);

\Mult9~mac_AX_bus\ <= (\avgBuffer[0][15]~SCLR_LUT_combout\ & \avgBuffer[0][15]~SCLR_LUT_combout\ & \avgBuffer[0][15]~SCLR_LUT_combout\ & \avgBuffer[0][14]~SCLR_LUT_combout\ & \avgBuffer[0][13]~SCLR_LUT_combout\ & \avgBuffer[0][12]~SCLR_LUT_combout\ & 
\avgBuffer[0][11]~SCLR_LUT_combout\ & \avgBuffer[0][10]~SCLR_LUT_combout\ & \avgBuffer[0][9]~SCLR_LUT_combout\ & \avgBuffer[0][8]~SCLR_LUT_combout\ & \avgBuffer[0][7]~SCLR_LUT_combout\ & \avgBuffer[0][6]~SCLR_LUT_combout\ & 
\avgBuffer[0][5]~SCLR_LUT_combout\ & \avgBuffer[0][4]~SCLR_LUT_combout\ & \avgBuffer[0][3]~SCLR_LUT_combout\ & \avgBuffer[0][2]~SCLR_LUT_combout\ & \avgBuffer[0][1]~SCLR_LUT_combout\ & \avgBuffer[0][0]~SCLR_LUT_combout\);

\Mult9~mac_AY_bus\ <= (\recv.data[15]~input_o\ & \recv.data[15]~input_o\ & \recv.data[15]~input_o\ & \recv.data[15]~input_o\ & \recv.data[14]~input_o\ & \recv.data[13]~input_o\ & \recv.data[12]~input_o\ & \recv.data[11]~input_o\ & \recv.data[10]~input_o\
& \recv.data[9]~input_o\ & \recv.data[8]~input_o\ & \recv.data[7]~input_o\ & \recv.data[6]~input_o\ & \recv.data[5]~input_o\ & \recv.data[4]~input_o\ & \recv.data[3]~input_o\ & \recv.data[2]~input_o\ & \recv.data[1]~input_o\ & \recv.data[0]~input_o\);

\Mult9~mac_BX_bus\ <= (\Mult8~339\ & \Mult8~339\ & \Mult8~339\ & \Mult8~339\ & \Mult8~339\ & \Mult8~338\ & \Mult8~337\ & \Mult8~336\ & \Mult8~335\ & \Mult8~334\ & \Mult8~333\ & \Mult8~332\ & \Mult8~331\ & \Mult8~330\ & \Mult8~329\ & \Mult8~328\ & 
\Mult8~327\ & \Mult8~326\);

\Mult9~mac_BY_bus\ <= (\Mult8~325\ & \Mult8~324\ & \Mult8~323\ & \Mult8~322\ & \Mult8~321\ & \Mult8~320\ & \Mult8~319\ & \Mult8~318\ & \Mult8~317\ & \Mult8~316\ & \Mult8~315\ & \Mult8~314\ & \Mult8~313\ & \Mult8~312\ & \Mult8~311\ & \Mult8~310\ & 
\Mult8~309\ & \Mult8~mac_resulta\);

\Mult9~mac_resulta\ <= \Mult9~mac_RESULTA_bus\(0);
\Mult9~309\ <= \Mult9~mac_RESULTA_bus\(1);
\Mult9~310\ <= \Mult9~mac_RESULTA_bus\(2);
\Mult9~311\ <= \Mult9~mac_RESULTA_bus\(3);
\Mult9~312\ <= \Mult9~mac_RESULTA_bus\(4);
\Mult9~313\ <= \Mult9~mac_RESULTA_bus\(5);
\Mult9~314\ <= \Mult9~mac_RESULTA_bus\(6);
\Mult9~315\ <= \Mult9~mac_RESULTA_bus\(7);
\Mult9~316\ <= \Mult9~mac_RESULTA_bus\(8);
\Mult9~317\ <= \Mult9~mac_RESULTA_bus\(9);
\Mult9~318\ <= \Mult9~mac_RESULTA_bus\(10);
\Mult9~319\ <= \Mult9~mac_RESULTA_bus\(11);
\Mult9~320\ <= \Mult9~mac_RESULTA_bus\(12);
\Mult9~321\ <= \Mult9~mac_RESULTA_bus\(13);
\Mult9~322\ <= \Mult9~mac_RESULTA_bus\(14);
\Mult9~323\ <= \Mult9~mac_RESULTA_bus\(15);
\Mult9~324\ <= \Mult9~mac_RESULTA_bus\(16);
\Mult9~325\ <= \Mult9~mac_RESULTA_bus\(17);
\Mult9~326\ <= \Mult9~mac_RESULTA_bus\(18);
\Mult9~327\ <= \Mult9~mac_RESULTA_bus\(19);
\Mult9~328\ <= \Mult9~mac_RESULTA_bus\(20);
\Mult9~329\ <= \Mult9~mac_RESULTA_bus\(21);
\Mult9~330\ <= \Mult9~mac_RESULTA_bus\(22);
\Mult9~331\ <= \Mult9~mac_RESULTA_bus\(23);
\Mult9~332\ <= \Mult9~mac_RESULTA_bus\(24);
\Mult9~333\ <= \Mult9~mac_RESULTA_bus\(25);
\Mult9~334\ <= \Mult9~mac_RESULTA_bus\(26);
\Mult9~335\ <= \Mult9~mac_RESULTA_bus\(27);
\Mult9~336\ <= \Mult9~mac_RESULTA_bus\(28);
\Mult9~337\ <= \Mult9~mac_RESULTA_bus\(29);
\Mult9~338\ <= \Mult9~mac_RESULTA_bus\(30);
\Mult9~339\ <= \Mult9~mac_RESULTA_bus\(31);
\Mult9~8\ <= \Mult9~mac_RESULTA_bus\(32);
\Mult9~9\ <= \Mult9~mac_RESULTA_bus\(33);
\Mult9~10\ <= \Mult9~mac_RESULTA_bus\(34);
\Mult9~11\ <= \Mult9~mac_RESULTA_bus\(35);
\Mult9~12\ <= \Mult9~mac_RESULTA_bus\(36);
\Mult9~13\ <= \Mult9~mac_RESULTA_bus\(37);
\Mult9~14\ <= \Mult9~mac_RESULTA_bus\(38);
\Mult9~15\ <= \Mult9~mac_RESULTA_bus\(39);
\Mult9~16\ <= \Mult9~mac_RESULTA_bus\(40);
\Mult9~17\ <= \Mult9~mac_RESULTA_bus\(41);
\Mult9~18\ <= \Mult9~mac_RESULTA_bus\(42);
\Mult9~19\ <= \Mult9~mac_RESULTA_bus\(43);
\Mult9~20\ <= \Mult9~mac_RESULTA_bus\(44);
\Mult9~21\ <= \Mult9~mac_RESULTA_bus\(45);
\Mult9~22\ <= \Mult9~mac_RESULTA_bus\(46);
\Mult9~23\ <= \Mult9~mac_RESULTA_bus\(47);
\Mult9~24\ <= \Mult9~mac_RESULTA_bus\(48);
\Mult9~25\ <= \Mult9~mac_RESULTA_bus\(49);
\Mult9~26\ <= \Mult9~mac_RESULTA_bus\(50);
\Mult9~27\ <= \Mult9~mac_RESULTA_bus\(51);
\Mult9~28\ <= \Mult9~mac_RESULTA_bus\(52);
\Mult9~29\ <= \Mult9~mac_RESULTA_bus\(53);
\Mult9~30\ <= \Mult9~mac_RESULTA_bus\(54);
\Mult9~31\ <= \Mult9~mac_RESULTA_bus\(55);
\Mult9~32\ <= \Mult9~mac_RESULTA_bus\(56);
\Mult9~33\ <= \Mult9~mac_RESULTA_bus\(57);
\Mult9~34\ <= \Mult9~mac_RESULTA_bus\(58);
\Mult9~35\ <= \Mult9~mac_RESULTA_bus\(59);
\Mult9~36\ <= \Mult9~mac_RESULTA_bus\(60);
\Mult9~37\ <= \Mult9~mac_RESULTA_bus\(61);
\Mult9~38\ <= \Mult9~mac_RESULTA_bus\(62);
\Mult9~39\ <= \Mult9~mac_RESULTA_bus\(63);

\Mult8~mac_ACLR_bus\ <= (gnd & gnd);

\Mult8~mac_CLK_bus\ <= (gnd & \clock~inputCLKENA0_outclk\ & \clock~inputCLKENA0_outclk\);

\Mult8~mac_ENA_bus\ <= (vcc & \avgBuffer[1][0]~7_combout\ & \avgBuffer[18][0]~9_combout\);

\Mult8~mac_AX_bus\ <= (\avgBuffer[1][15]~SCLR_LUT_combout\ & \avgBuffer[1][15]~SCLR_LUT_combout\ & \avgBuffer[1][15]~SCLR_LUT_combout\ & \avgBuffer[1][14]~SCLR_LUT_combout\ & \avgBuffer[1][13]~SCLR_LUT_combout\ & \avgBuffer[1][12]~SCLR_LUT_combout\ & 
\avgBuffer[1][11]~SCLR_LUT_combout\ & \avgBuffer[1][10]~SCLR_LUT_combout\ & \avgBuffer[1][9]~SCLR_LUT_combout\ & \avgBuffer[1][8]~SCLR_LUT_combout\ & \avgBuffer[1][7]~SCLR_LUT_combout\ & \avgBuffer[1][6]~SCLR_LUT_combout\ & 
\avgBuffer[1][5]~SCLR_LUT_combout\ & \avgBuffer[1][4]~SCLR_LUT_combout\ & \avgBuffer[1][3]~SCLR_LUT_combout\ & \avgBuffer[1][2]~SCLR_LUT_combout\ & \avgBuffer[1][1]~SCLR_LUT_combout\ & \avgBuffer[1][0]~SCLR_LUT_combout\);

\Mult8~mac_AY_bus\ <= (\avgBuffer[18][15]~SCLR_LUT_combout\ & \avgBuffer[18][15]~SCLR_LUT_combout\ & \avgBuffer[18][15]~SCLR_LUT_combout\ & \avgBuffer[18][15]~SCLR_LUT_combout\ & \avgBuffer[18][14]~SCLR_LUT_combout\ & \avgBuffer[18][13]~SCLR_LUT_combout\
& \avgBuffer[18][12]~SCLR_LUT_combout\ & \avgBuffer[18][11]~SCLR_LUT_combout\ & \avgBuffer[18][10]~SCLR_LUT_combout\ & \avgBuffer[18][9]~SCLR_LUT_combout\ & \avgBuffer[18][8]~SCLR_LUT_combout\ & \avgBuffer[18][7]~SCLR_LUT_combout\ & 
\avgBuffer[18][6]~SCLR_LUT_combout\ & \avgBuffer[18][5]~SCLR_LUT_combout\ & \avgBuffer[18][4]~SCLR_LUT_combout\ & \avgBuffer[18][3]~SCLR_LUT_combout\ & \avgBuffer[18][2]~SCLR_LUT_combout\ & \avgBuffer[18][1]~SCLR_LUT_combout\ & 
\avgBuffer[18][0]~SCLR_LUT_combout\);

\Mult8~mac_BX_bus\ <= (\Mult7~339\ & \Mult7~339\ & \Mult7~339\ & \Mult7~339\ & \Mult7~339\ & \Mult7~338\ & \Mult7~337\ & \Mult7~336\ & \Mult7~335\ & \Mult7~334\ & \Mult7~333\ & \Mult7~332\ & \Mult7~331\ & \Mult7~330\ & \Mult7~329\ & \Mult7~328\ & 
\Mult7~327\ & \Mult7~326\);

\Mult8~mac_BY_bus\ <= (\Mult7~325\ & \Mult7~324\ & \Mult7~323\ & \Mult7~322\ & \Mult7~321\ & \Mult7~320\ & \Mult7~319\ & \Mult7~318\ & \Mult7~317\ & \Mult7~316\ & \Mult7~315\ & \Mult7~314\ & \Mult7~313\ & \Mult7~312\ & \Mult7~311\ & \Mult7~310\ & 
\Mult7~309\ & \Mult7~mac_resulta\);

\Mult8~mac_resulta\ <= \Mult8~mac_RESULTA_bus\(0);
\Mult8~309\ <= \Mult8~mac_RESULTA_bus\(1);
\Mult8~310\ <= \Mult8~mac_RESULTA_bus\(2);
\Mult8~311\ <= \Mult8~mac_RESULTA_bus\(3);
\Mult8~312\ <= \Mult8~mac_RESULTA_bus\(4);
\Mult8~313\ <= \Mult8~mac_RESULTA_bus\(5);
\Mult8~314\ <= \Mult8~mac_RESULTA_bus\(6);
\Mult8~315\ <= \Mult8~mac_RESULTA_bus\(7);
\Mult8~316\ <= \Mult8~mac_RESULTA_bus\(8);
\Mult8~317\ <= \Mult8~mac_RESULTA_bus\(9);
\Mult8~318\ <= \Mult8~mac_RESULTA_bus\(10);
\Mult8~319\ <= \Mult8~mac_RESULTA_bus\(11);
\Mult8~320\ <= \Mult8~mac_RESULTA_bus\(12);
\Mult8~321\ <= \Mult8~mac_RESULTA_bus\(13);
\Mult8~322\ <= \Mult8~mac_RESULTA_bus\(14);
\Mult8~323\ <= \Mult8~mac_RESULTA_bus\(15);
\Mult8~324\ <= \Mult8~mac_RESULTA_bus\(16);
\Mult8~325\ <= \Mult8~mac_RESULTA_bus\(17);
\Mult8~326\ <= \Mult8~mac_RESULTA_bus\(18);
\Mult8~327\ <= \Mult8~mac_RESULTA_bus\(19);
\Mult8~328\ <= \Mult8~mac_RESULTA_bus\(20);
\Mult8~329\ <= \Mult8~mac_RESULTA_bus\(21);
\Mult8~330\ <= \Mult8~mac_RESULTA_bus\(22);
\Mult8~331\ <= \Mult8~mac_RESULTA_bus\(23);
\Mult8~332\ <= \Mult8~mac_RESULTA_bus\(24);
\Mult8~333\ <= \Mult8~mac_RESULTA_bus\(25);
\Mult8~334\ <= \Mult8~mac_RESULTA_bus\(26);
\Mult8~335\ <= \Mult8~mac_RESULTA_bus\(27);
\Mult8~336\ <= \Mult8~mac_RESULTA_bus\(28);
\Mult8~337\ <= \Mult8~mac_RESULTA_bus\(29);
\Mult8~338\ <= \Mult8~mac_RESULTA_bus\(30);
\Mult8~339\ <= \Mult8~mac_RESULTA_bus\(31);
\Mult8~8\ <= \Mult8~mac_RESULTA_bus\(32);
\Mult8~9\ <= \Mult8~mac_RESULTA_bus\(33);
\Mult8~10\ <= \Mult8~mac_RESULTA_bus\(34);
\Mult8~11\ <= \Mult8~mac_RESULTA_bus\(35);
\Mult8~12\ <= \Mult8~mac_RESULTA_bus\(36);
\Mult8~13\ <= \Mult8~mac_RESULTA_bus\(37);
\Mult8~14\ <= \Mult8~mac_RESULTA_bus\(38);
\Mult8~15\ <= \Mult8~mac_RESULTA_bus\(39);
\Mult8~16\ <= \Mult8~mac_RESULTA_bus\(40);
\Mult8~17\ <= \Mult8~mac_RESULTA_bus\(41);
\Mult8~18\ <= \Mult8~mac_RESULTA_bus\(42);
\Mult8~19\ <= \Mult8~mac_RESULTA_bus\(43);
\Mult8~20\ <= \Mult8~mac_RESULTA_bus\(44);
\Mult8~21\ <= \Mult8~mac_RESULTA_bus\(45);
\Mult8~22\ <= \Mult8~mac_RESULTA_bus\(46);
\Mult8~23\ <= \Mult8~mac_RESULTA_bus\(47);
\Mult8~24\ <= \Mult8~mac_RESULTA_bus\(48);
\Mult8~25\ <= \Mult8~mac_RESULTA_bus\(49);
\Mult8~26\ <= \Mult8~mac_RESULTA_bus\(50);
\Mult8~27\ <= \Mult8~mac_RESULTA_bus\(51);
\Mult8~28\ <= \Mult8~mac_RESULTA_bus\(52);
\Mult8~29\ <= \Mult8~mac_RESULTA_bus\(53);
\Mult8~30\ <= \Mult8~mac_RESULTA_bus\(54);
\Mult8~31\ <= \Mult8~mac_RESULTA_bus\(55);
\Mult8~32\ <= \Mult8~mac_RESULTA_bus\(56);
\Mult8~33\ <= \Mult8~mac_RESULTA_bus\(57);
\Mult8~34\ <= \Mult8~mac_RESULTA_bus\(58);
\Mult8~35\ <= \Mult8~mac_RESULTA_bus\(59);
\Mult8~36\ <= \Mult8~mac_RESULTA_bus\(60);
\Mult8~37\ <= \Mult8~mac_RESULTA_bus\(61);
\Mult8~38\ <= \Mult8~mac_RESULTA_bus\(62);
\Mult8~39\ <= \Mult8~mac_RESULTA_bus\(63);

\Mult7~mac_ACLR_bus\ <= (gnd & gnd);

\Mult7~mac_CLK_bus\ <= (gnd & \clock~inputCLKENA0_outclk\ & \clock~inputCLKENA0_outclk\);

\Mult7~mac_ENA_bus\ <= (vcc & \avgBuffer[2][0]~11_combout\ & \avgBuffer[17][0]~13_combout\);

\Mult7~mac_AX_bus\ <= (\avgBuffer[2][15]~SCLR_LUT_combout\ & \avgBuffer[2][15]~SCLR_LUT_combout\ & \avgBuffer[2][15]~SCLR_LUT_combout\ & \avgBuffer[2][14]~SCLR_LUT_combout\ & \avgBuffer[2][13]~SCLR_LUT_combout\ & \avgBuffer[2][12]~SCLR_LUT_combout\ & 
\avgBuffer[2][11]~SCLR_LUT_combout\ & \avgBuffer[2][10]~SCLR_LUT_combout\ & \avgBuffer[2][9]~SCLR_LUT_combout\ & \avgBuffer[2][8]~SCLR_LUT_combout\ & \avgBuffer[2][7]~SCLR_LUT_combout\ & \avgBuffer[2][6]~SCLR_LUT_combout\ & 
\avgBuffer[2][5]~SCLR_LUT_combout\ & \avgBuffer[2][4]~SCLR_LUT_combout\ & \avgBuffer[2][3]~SCLR_LUT_combout\ & \avgBuffer[2][2]~SCLR_LUT_combout\ & \avgBuffer[2][1]~SCLR_LUT_combout\ & \avgBuffer[2][0]~SCLR_LUT_combout\);

\Mult7~mac_AY_bus\ <= (\avgBuffer[17][15]~SCLR_LUT_combout\ & \avgBuffer[17][15]~SCLR_LUT_combout\ & \avgBuffer[17][15]~SCLR_LUT_combout\ & \avgBuffer[17][15]~SCLR_LUT_combout\ & \avgBuffer[17][14]~SCLR_LUT_combout\ & \avgBuffer[17][13]~SCLR_LUT_combout\
& \avgBuffer[17][12]~SCLR_LUT_combout\ & \avgBuffer[17][11]~SCLR_LUT_combout\ & \avgBuffer[17][10]~SCLR_LUT_combout\ & \avgBuffer[17][9]~SCLR_LUT_combout\ & \avgBuffer[17][8]~SCLR_LUT_combout\ & \avgBuffer[17][7]~SCLR_LUT_combout\ & 
\avgBuffer[17][6]~SCLR_LUT_combout\ & \avgBuffer[17][5]~SCLR_LUT_combout\ & \avgBuffer[17][4]~SCLR_LUT_combout\ & \avgBuffer[17][3]~SCLR_LUT_combout\ & \avgBuffer[17][2]~SCLR_LUT_combout\ & \avgBuffer[17][1]~SCLR_LUT_combout\ & 
\avgBuffer[17][0]~SCLR_LUT_combout\);

\Mult7~mac_BX_bus\ <= (\Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~338\ & \Mult6~337\ & \Mult6~336\ & \Mult6~335\ & \Mult6~334\ & \Mult6~333\ & \Mult6~332\ & \Mult6~331\ & \Mult6~330\ & \Mult6~329\ & \Mult6~328\ & 
\Mult6~327\ & \Mult6~326\);

\Mult7~mac_BY_bus\ <= (\Mult6~325\ & \Mult6~324\ & \Mult6~323\ & \Mult6~322\ & \Mult6~321\ & \Mult6~320\ & \Mult6~319\ & \Mult6~318\ & \Mult6~317\ & \Mult6~316\ & \Mult6~315\ & \Mult6~314\ & \Mult6~313\ & \Mult6~312\ & \Mult6~311\ & \Mult6~310\ & 
\Mult6~309\ & \Mult6~mac_resulta\);

\Mult7~mac_resulta\ <= \Mult7~mac_RESULTA_bus\(0);
\Mult7~309\ <= \Mult7~mac_RESULTA_bus\(1);
\Mult7~310\ <= \Mult7~mac_RESULTA_bus\(2);
\Mult7~311\ <= \Mult7~mac_RESULTA_bus\(3);
\Mult7~312\ <= \Mult7~mac_RESULTA_bus\(4);
\Mult7~313\ <= \Mult7~mac_RESULTA_bus\(5);
\Mult7~314\ <= \Mult7~mac_RESULTA_bus\(6);
\Mult7~315\ <= \Mult7~mac_RESULTA_bus\(7);
\Mult7~316\ <= \Mult7~mac_RESULTA_bus\(8);
\Mult7~317\ <= \Mult7~mac_RESULTA_bus\(9);
\Mult7~318\ <= \Mult7~mac_RESULTA_bus\(10);
\Mult7~319\ <= \Mult7~mac_RESULTA_bus\(11);
\Mult7~320\ <= \Mult7~mac_RESULTA_bus\(12);
\Mult7~321\ <= \Mult7~mac_RESULTA_bus\(13);
\Mult7~322\ <= \Mult7~mac_RESULTA_bus\(14);
\Mult7~323\ <= \Mult7~mac_RESULTA_bus\(15);
\Mult7~324\ <= \Mult7~mac_RESULTA_bus\(16);
\Mult7~325\ <= \Mult7~mac_RESULTA_bus\(17);
\Mult7~326\ <= \Mult7~mac_RESULTA_bus\(18);
\Mult7~327\ <= \Mult7~mac_RESULTA_bus\(19);
\Mult7~328\ <= \Mult7~mac_RESULTA_bus\(20);
\Mult7~329\ <= \Mult7~mac_RESULTA_bus\(21);
\Mult7~330\ <= \Mult7~mac_RESULTA_bus\(22);
\Mult7~331\ <= \Mult7~mac_RESULTA_bus\(23);
\Mult7~332\ <= \Mult7~mac_RESULTA_bus\(24);
\Mult7~333\ <= \Mult7~mac_RESULTA_bus\(25);
\Mult7~334\ <= \Mult7~mac_RESULTA_bus\(26);
\Mult7~335\ <= \Mult7~mac_RESULTA_bus\(27);
\Mult7~336\ <= \Mult7~mac_RESULTA_bus\(28);
\Mult7~337\ <= \Mult7~mac_RESULTA_bus\(29);
\Mult7~338\ <= \Mult7~mac_RESULTA_bus\(30);
\Mult7~339\ <= \Mult7~mac_RESULTA_bus\(31);
\Mult7~8\ <= \Mult7~mac_RESULTA_bus\(32);
\Mult7~9\ <= \Mult7~mac_RESULTA_bus\(33);
\Mult7~10\ <= \Mult7~mac_RESULTA_bus\(34);
\Mult7~11\ <= \Mult7~mac_RESULTA_bus\(35);
\Mult7~12\ <= \Mult7~mac_RESULTA_bus\(36);
\Mult7~13\ <= \Mult7~mac_RESULTA_bus\(37);
\Mult7~14\ <= \Mult7~mac_RESULTA_bus\(38);
\Mult7~15\ <= \Mult7~mac_RESULTA_bus\(39);
\Mult7~16\ <= \Mult7~mac_RESULTA_bus\(40);
\Mult7~17\ <= \Mult7~mac_RESULTA_bus\(41);
\Mult7~18\ <= \Mult7~mac_RESULTA_bus\(42);
\Mult7~19\ <= \Mult7~mac_RESULTA_bus\(43);
\Mult7~20\ <= \Mult7~mac_RESULTA_bus\(44);
\Mult7~21\ <= \Mult7~mac_RESULTA_bus\(45);
\Mult7~22\ <= \Mult7~mac_RESULTA_bus\(46);
\Mult7~23\ <= \Mult7~mac_RESULTA_bus\(47);
\Mult7~24\ <= \Mult7~mac_RESULTA_bus\(48);
\Mult7~25\ <= \Mult7~mac_RESULTA_bus\(49);
\Mult7~26\ <= \Mult7~mac_RESULTA_bus\(50);
\Mult7~27\ <= \Mult7~mac_RESULTA_bus\(51);
\Mult7~28\ <= \Mult7~mac_RESULTA_bus\(52);
\Mult7~29\ <= \Mult7~mac_RESULTA_bus\(53);
\Mult7~30\ <= \Mult7~mac_RESULTA_bus\(54);
\Mult7~31\ <= \Mult7~mac_RESULTA_bus\(55);
\Mult7~32\ <= \Mult7~mac_RESULTA_bus\(56);
\Mult7~33\ <= \Mult7~mac_RESULTA_bus\(57);
\Mult7~34\ <= \Mult7~mac_RESULTA_bus\(58);
\Mult7~35\ <= \Mult7~mac_RESULTA_bus\(59);
\Mult7~36\ <= \Mult7~mac_RESULTA_bus\(60);
\Mult7~37\ <= \Mult7~mac_RESULTA_bus\(61);
\Mult7~38\ <= \Mult7~mac_RESULTA_bus\(62);
\Mult7~39\ <= \Mult7~mac_RESULTA_bus\(63);

\Mult6~mac_ACLR_bus\ <= (gnd & gnd);

\Mult6~mac_CLK_bus\ <= (gnd & \clock~inputCLKENA0_outclk\ & \clock~inputCLKENA0_outclk\);

\Mult6~mac_ENA_bus\ <= (vcc & \avgBuffer[3][0]~15_combout\ & \avgBuffer[16][0]~17_combout\);

\Mult6~mac_AX_bus\ <= (\avgBuffer[3][15]~SCLR_LUT_combout\ & \avgBuffer[3][15]~SCLR_LUT_combout\ & \avgBuffer[3][15]~SCLR_LUT_combout\ & \avgBuffer[3][14]~SCLR_LUT_combout\ & \avgBuffer[3][13]~SCLR_LUT_combout\ & \avgBuffer[3][12]~SCLR_LUT_combout\ & 
\avgBuffer[3][11]~SCLR_LUT_combout\ & \avgBuffer[3][10]~SCLR_LUT_combout\ & \avgBuffer[3][9]~SCLR_LUT_combout\ & \avgBuffer[3][8]~SCLR_LUT_combout\ & \avgBuffer[3][7]~SCLR_LUT_combout\ & \avgBuffer[3][6]~SCLR_LUT_combout\ & 
\avgBuffer[3][5]~SCLR_LUT_combout\ & \avgBuffer[3][4]~SCLR_LUT_combout\ & \avgBuffer[3][3]~SCLR_LUT_combout\ & \avgBuffer[3][2]~SCLR_LUT_combout\ & \avgBuffer[3][1]~SCLR_LUT_combout\ & \avgBuffer[3][0]~SCLR_LUT_combout\);

\Mult6~mac_AY_bus\ <= (\avgBuffer[16][15]~SCLR_LUT_combout\ & \avgBuffer[16][15]~SCLR_LUT_combout\ & \avgBuffer[16][15]~SCLR_LUT_combout\ & \avgBuffer[16][15]~SCLR_LUT_combout\ & \avgBuffer[16][14]~SCLR_LUT_combout\ & \avgBuffer[16][13]~SCLR_LUT_combout\
& \avgBuffer[16][12]~SCLR_LUT_combout\ & \avgBuffer[16][11]~SCLR_LUT_combout\ & \avgBuffer[16][10]~SCLR_LUT_combout\ & \avgBuffer[16][9]~SCLR_LUT_combout\ & \avgBuffer[16][8]~SCLR_LUT_combout\ & \avgBuffer[16][7]~SCLR_LUT_combout\ & 
\avgBuffer[16][6]~SCLR_LUT_combout\ & \avgBuffer[16][5]~SCLR_LUT_combout\ & \avgBuffer[16][4]~SCLR_LUT_combout\ & \avgBuffer[16][3]~SCLR_LUT_combout\ & \avgBuffer[16][2]~SCLR_LUT_combout\ & \avgBuffer[16][1]~SCLR_LUT_combout\ & 
\avgBuffer[16][0]~SCLR_LUT_combout\);

\Mult6~mac_BX_bus\ <= (\Mult5~339\ & \Mult5~339\ & \Mult5~339\ & \Mult5~339\ & \Mult5~339\ & \Mult5~338\ & \Mult5~337\ & \Mult5~336\ & \Mult5~335\ & \Mult5~334\ & \Mult5~333\ & \Mult5~332\ & \Mult5~331\ & \Mult5~330\ & \Mult5~329\ & \Mult5~328\ & 
\Mult5~327\ & \Mult5~326\);

\Mult6~mac_BY_bus\ <= (\Mult5~325\ & \Mult5~324\ & \Mult5~323\ & \Mult5~322\ & \Mult5~321\ & \Mult5~320\ & \Mult5~319\ & \Mult5~318\ & \Mult5~317\ & \Mult5~316\ & \Mult5~315\ & \Mult5~314\ & \Mult5~313\ & \Mult5~312\ & \Mult5~311\ & \Mult5~310\ & 
\Mult5~309\ & \Mult5~mac_resulta\);

\Mult6~mac_resulta\ <= \Mult6~mac_RESULTA_bus\(0);
\Mult6~309\ <= \Mult6~mac_RESULTA_bus\(1);
\Mult6~310\ <= \Mult6~mac_RESULTA_bus\(2);
\Mult6~311\ <= \Mult6~mac_RESULTA_bus\(3);
\Mult6~312\ <= \Mult6~mac_RESULTA_bus\(4);
\Mult6~313\ <= \Mult6~mac_RESULTA_bus\(5);
\Mult6~314\ <= \Mult6~mac_RESULTA_bus\(6);
\Mult6~315\ <= \Mult6~mac_RESULTA_bus\(7);
\Mult6~316\ <= \Mult6~mac_RESULTA_bus\(8);
\Mult6~317\ <= \Mult6~mac_RESULTA_bus\(9);
\Mult6~318\ <= \Mult6~mac_RESULTA_bus\(10);
\Mult6~319\ <= \Mult6~mac_RESULTA_bus\(11);
\Mult6~320\ <= \Mult6~mac_RESULTA_bus\(12);
\Mult6~321\ <= \Mult6~mac_RESULTA_bus\(13);
\Mult6~322\ <= \Mult6~mac_RESULTA_bus\(14);
\Mult6~323\ <= \Mult6~mac_RESULTA_bus\(15);
\Mult6~324\ <= \Mult6~mac_RESULTA_bus\(16);
\Mult6~325\ <= \Mult6~mac_RESULTA_bus\(17);
\Mult6~326\ <= \Mult6~mac_RESULTA_bus\(18);
\Mult6~327\ <= \Mult6~mac_RESULTA_bus\(19);
\Mult6~328\ <= \Mult6~mac_RESULTA_bus\(20);
\Mult6~329\ <= \Mult6~mac_RESULTA_bus\(21);
\Mult6~330\ <= \Mult6~mac_RESULTA_bus\(22);
\Mult6~331\ <= \Mult6~mac_RESULTA_bus\(23);
\Mult6~332\ <= \Mult6~mac_RESULTA_bus\(24);
\Mult6~333\ <= \Mult6~mac_RESULTA_bus\(25);
\Mult6~334\ <= \Mult6~mac_RESULTA_bus\(26);
\Mult6~335\ <= \Mult6~mac_RESULTA_bus\(27);
\Mult6~336\ <= \Mult6~mac_RESULTA_bus\(28);
\Mult6~337\ <= \Mult6~mac_RESULTA_bus\(29);
\Mult6~338\ <= \Mult6~mac_RESULTA_bus\(30);
\Mult6~339\ <= \Mult6~mac_RESULTA_bus\(31);
\Mult6~8\ <= \Mult6~mac_RESULTA_bus\(32);
\Mult6~9\ <= \Mult6~mac_RESULTA_bus\(33);
\Mult6~10\ <= \Mult6~mac_RESULTA_bus\(34);
\Mult6~11\ <= \Mult6~mac_RESULTA_bus\(35);
\Mult6~12\ <= \Mult6~mac_RESULTA_bus\(36);
\Mult6~13\ <= \Mult6~mac_RESULTA_bus\(37);
\Mult6~14\ <= \Mult6~mac_RESULTA_bus\(38);
\Mult6~15\ <= \Mult6~mac_RESULTA_bus\(39);
\Mult6~16\ <= \Mult6~mac_RESULTA_bus\(40);
\Mult6~17\ <= \Mult6~mac_RESULTA_bus\(41);
\Mult6~18\ <= \Mult6~mac_RESULTA_bus\(42);
\Mult6~19\ <= \Mult6~mac_RESULTA_bus\(43);
\Mult6~20\ <= \Mult6~mac_RESULTA_bus\(44);
\Mult6~21\ <= \Mult6~mac_RESULTA_bus\(45);
\Mult6~22\ <= \Mult6~mac_RESULTA_bus\(46);
\Mult6~23\ <= \Mult6~mac_RESULTA_bus\(47);
\Mult6~24\ <= \Mult6~mac_RESULTA_bus\(48);
\Mult6~25\ <= \Mult6~mac_RESULTA_bus\(49);
\Mult6~26\ <= \Mult6~mac_RESULTA_bus\(50);
\Mult6~27\ <= \Mult6~mac_RESULTA_bus\(51);
\Mult6~28\ <= \Mult6~mac_RESULTA_bus\(52);
\Mult6~29\ <= \Mult6~mac_RESULTA_bus\(53);
\Mult6~30\ <= \Mult6~mac_RESULTA_bus\(54);
\Mult6~31\ <= \Mult6~mac_RESULTA_bus\(55);
\Mult6~32\ <= \Mult6~mac_RESULTA_bus\(56);
\Mult6~33\ <= \Mult6~mac_RESULTA_bus\(57);
\Mult6~34\ <= \Mult6~mac_RESULTA_bus\(58);
\Mult6~35\ <= \Mult6~mac_RESULTA_bus\(59);
\Mult6~36\ <= \Mult6~mac_RESULTA_bus\(60);
\Mult6~37\ <= \Mult6~mac_RESULTA_bus\(61);
\Mult6~38\ <= \Mult6~mac_RESULTA_bus\(62);
\Mult6~39\ <= \Mult6~mac_RESULTA_bus\(63);

\Mult5~mac_ACLR_bus\ <= (gnd & gnd);

\Mult5~mac_CLK_bus\ <= (gnd & \clock~inputCLKENA0_outclk\ & \clock~inputCLKENA0_outclk\);

\Mult5~mac_ENA_bus\ <= (vcc & \avgBuffer[4][0]~20_combout\ & \avgBuffer[15][0]~23_combout\);

\Mult5~mac_AX_bus\ <= (\avgBuffer[4][15]~SCLR_LUT_combout\ & \avgBuffer[4][15]~SCLR_LUT_combout\ & \avgBuffer[4][15]~SCLR_LUT_combout\ & \avgBuffer[4][14]~SCLR_LUT_combout\ & \avgBuffer[4][13]~SCLR_LUT_combout\ & \avgBuffer[4][12]~SCLR_LUT_combout\ & 
\avgBuffer[4][11]~SCLR_LUT_combout\ & \avgBuffer[4][10]~SCLR_LUT_combout\ & \avgBuffer[4][9]~SCLR_LUT_combout\ & \avgBuffer[4][8]~SCLR_LUT_combout\ & \avgBuffer[4][7]~SCLR_LUT_combout\ & \avgBuffer[4][6]~SCLR_LUT_combout\ & 
\avgBuffer[4][5]~SCLR_LUT_combout\ & \avgBuffer[4][4]~SCLR_LUT_combout\ & \avgBuffer[4][3]~SCLR_LUT_combout\ & \avgBuffer[4][2]~SCLR_LUT_combout\ & \avgBuffer[4][1]~SCLR_LUT_combout\ & \avgBuffer[4][0]~SCLR_LUT_combout\);

\Mult5~mac_AY_bus\ <= (\avgBuffer[15][15]~SCLR_LUT_combout\ & \avgBuffer[15][15]~SCLR_LUT_combout\ & \avgBuffer[15][15]~SCLR_LUT_combout\ & \avgBuffer[15][15]~SCLR_LUT_combout\ & \avgBuffer[15][14]~SCLR_LUT_combout\ & \avgBuffer[15][13]~SCLR_LUT_combout\
& \avgBuffer[15][12]~SCLR_LUT_combout\ & \avgBuffer[15][11]~SCLR_LUT_combout\ & \avgBuffer[15][10]~SCLR_LUT_combout\ & \avgBuffer[15][9]~SCLR_LUT_combout\ & \avgBuffer[15][8]~SCLR_LUT_combout\ & \avgBuffer[15][7]~SCLR_LUT_combout\ & 
\avgBuffer[15][6]~SCLR_LUT_combout\ & \avgBuffer[15][5]~SCLR_LUT_combout\ & \avgBuffer[15][4]~SCLR_LUT_combout\ & \avgBuffer[15][3]~SCLR_LUT_combout\ & \avgBuffer[15][2]~SCLR_LUT_combout\ & \avgBuffer[15][1]~SCLR_LUT_combout\ & 
\avgBuffer[15][0]~SCLR_LUT_combout\);

\Mult5~mac_BX_bus\ <= (\Mult4~339\ & \Mult4~339\ & \Mult4~339\ & \Mult4~339\ & \Mult4~339\ & \Mult4~338\ & \Mult4~337\ & \Mult4~336\ & \Mult4~335\ & \Mult4~334\ & \Mult4~333\ & \Mult4~332\ & \Mult4~331\ & \Mult4~330\ & \Mult4~329\ & \Mult4~328\ & 
\Mult4~327\ & \Mult4~326\);

\Mult5~mac_BY_bus\ <= (\Mult4~325\ & \Mult4~324\ & \Mult4~323\ & \Mult4~322\ & \Mult4~321\ & \Mult4~320\ & \Mult4~319\ & \Mult4~318\ & \Mult4~317\ & \Mult4~316\ & \Mult4~315\ & \Mult4~314\ & \Mult4~313\ & \Mult4~312\ & \Mult4~311\ & \Mult4~310\ & 
\Mult4~309\ & \Mult4~mac_resulta\);

\Mult5~mac_resulta\ <= \Mult5~mac_RESULTA_bus\(0);
\Mult5~309\ <= \Mult5~mac_RESULTA_bus\(1);
\Mult5~310\ <= \Mult5~mac_RESULTA_bus\(2);
\Mult5~311\ <= \Mult5~mac_RESULTA_bus\(3);
\Mult5~312\ <= \Mult5~mac_RESULTA_bus\(4);
\Mult5~313\ <= \Mult5~mac_RESULTA_bus\(5);
\Mult5~314\ <= \Mult5~mac_RESULTA_bus\(6);
\Mult5~315\ <= \Mult5~mac_RESULTA_bus\(7);
\Mult5~316\ <= \Mult5~mac_RESULTA_bus\(8);
\Mult5~317\ <= \Mult5~mac_RESULTA_bus\(9);
\Mult5~318\ <= \Mult5~mac_RESULTA_bus\(10);
\Mult5~319\ <= \Mult5~mac_RESULTA_bus\(11);
\Mult5~320\ <= \Mult5~mac_RESULTA_bus\(12);
\Mult5~321\ <= \Mult5~mac_RESULTA_bus\(13);
\Mult5~322\ <= \Mult5~mac_RESULTA_bus\(14);
\Mult5~323\ <= \Mult5~mac_RESULTA_bus\(15);
\Mult5~324\ <= \Mult5~mac_RESULTA_bus\(16);
\Mult5~325\ <= \Mult5~mac_RESULTA_bus\(17);
\Mult5~326\ <= \Mult5~mac_RESULTA_bus\(18);
\Mult5~327\ <= \Mult5~mac_RESULTA_bus\(19);
\Mult5~328\ <= \Mult5~mac_RESULTA_bus\(20);
\Mult5~329\ <= \Mult5~mac_RESULTA_bus\(21);
\Mult5~330\ <= \Mult5~mac_RESULTA_bus\(22);
\Mult5~331\ <= \Mult5~mac_RESULTA_bus\(23);
\Mult5~332\ <= \Mult5~mac_RESULTA_bus\(24);
\Mult5~333\ <= \Mult5~mac_RESULTA_bus\(25);
\Mult5~334\ <= \Mult5~mac_RESULTA_bus\(26);
\Mult5~335\ <= \Mult5~mac_RESULTA_bus\(27);
\Mult5~336\ <= \Mult5~mac_RESULTA_bus\(28);
\Mult5~337\ <= \Mult5~mac_RESULTA_bus\(29);
\Mult5~338\ <= \Mult5~mac_RESULTA_bus\(30);
\Mult5~339\ <= \Mult5~mac_RESULTA_bus\(31);
\Mult5~8\ <= \Mult5~mac_RESULTA_bus\(32);
\Mult5~9\ <= \Mult5~mac_RESULTA_bus\(33);
\Mult5~10\ <= \Mult5~mac_RESULTA_bus\(34);
\Mult5~11\ <= \Mult5~mac_RESULTA_bus\(35);
\Mult5~12\ <= \Mult5~mac_RESULTA_bus\(36);
\Mult5~13\ <= \Mult5~mac_RESULTA_bus\(37);
\Mult5~14\ <= \Mult5~mac_RESULTA_bus\(38);
\Mult5~15\ <= \Mult5~mac_RESULTA_bus\(39);
\Mult5~16\ <= \Mult5~mac_RESULTA_bus\(40);
\Mult5~17\ <= \Mult5~mac_RESULTA_bus\(41);
\Mult5~18\ <= \Mult5~mac_RESULTA_bus\(42);
\Mult5~19\ <= \Mult5~mac_RESULTA_bus\(43);
\Mult5~20\ <= \Mult5~mac_RESULTA_bus\(44);
\Mult5~21\ <= \Mult5~mac_RESULTA_bus\(45);
\Mult5~22\ <= \Mult5~mac_RESULTA_bus\(46);
\Mult5~23\ <= \Mult5~mac_RESULTA_bus\(47);
\Mult5~24\ <= \Mult5~mac_RESULTA_bus\(48);
\Mult5~25\ <= \Mult5~mac_RESULTA_bus\(49);
\Mult5~26\ <= \Mult5~mac_RESULTA_bus\(50);
\Mult5~27\ <= \Mult5~mac_RESULTA_bus\(51);
\Mult5~28\ <= \Mult5~mac_RESULTA_bus\(52);
\Mult5~29\ <= \Mult5~mac_RESULTA_bus\(53);
\Mult5~30\ <= \Mult5~mac_RESULTA_bus\(54);
\Mult5~31\ <= \Mult5~mac_RESULTA_bus\(55);
\Mult5~32\ <= \Mult5~mac_RESULTA_bus\(56);
\Mult5~33\ <= \Mult5~mac_RESULTA_bus\(57);
\Mult5~34\ <= \Mult5~mac_RESULTA_bus\(58);
\Mult5~35\ <= \Mult5~mac_RESULTA_bus\(59);
\Mult5~36\ <= \Mult5~mac_RESULTA_bus\(60);
\Mult5~37\ <= \Mult5~mac_RESULTA_bus\(61);
\Mult5~38\ <= \Mult5~mac_RESULTA_bus\(62);
\Mult5~39\ <= \Mult5~mac_RESULTA_bus\(63);

\Mult4~mac_ACLR_bus\ <= (gnd & gnd);

\Mult4~mac_CLK_bus\ <= (gnd & \clock~inputCLKENA0_outclk\ & \clock~inputCLKENA0_outclk\);

\Mult4~mac_ENA_bus\ <= (vcc & \avgBuffer[5][0]~26_combout\ & \avgBuffer[14][0]~29_combout\);

\Mult4~mac_AX_bus\ <= (\avgBuffer[5][15]~SCLR_LUT_combout\ & \avgBuffer[5][15]~SCLR_LUT_combout\ & \avgBuffer[5][15]~SCLR_LUT_combout\ & \avgBuffer[5][14]~SCLR_LUT_combout\ & \avgBuffer[5][13]~SCLR_LUT_combout\ & \avgBuffer[5][12]~SCLR_LUT_combout\ & 
\avgBuffer[5][11]~SCLR_LUT_combout\ & \avgBuffer[5][10]~SCLR_LUT_combout\ & \avgBuffer[5][9]~SCLR_LUT_combout\ & \avgBuffer[5][8]~SCLR_LUT_combout\ & \avgBuffer[5][7]~SCLR_LUT_combout\ & \avgBuffer[5][6]~SCLR_LUT_combout\ & 
\avgBuffer[5][5]~SCLR_LUT_combout\ & \avgBuffer[5][4]~SCLR_LUT_combout\ & \avgBuffer[5][3]~SCLR_LUT_combout\ & \avgBuffer[5][2]~SCLR_LUT_combout\ & \avgBuffer[5][1]~SCLR_LUT_combout\ & \avgBuffer[5][0]~SCLR_LUT_combout\);

\Mult4~mac_AY_bus\ <= (\avgBuffer[14][15]~SCLR_LUT_combout\ & \avgBuffer[14][15]~SCLR_LUT_combout\ & \avgBuffer[14][15]~SCLR_LUT_combout\ & \avgBuffer[14][15]~SCLR_LUT_combout\ & \avgBuffer[14][14]~SCLR_LUT_combout\ & \avgBuffer[14][13]~SCLR_LUT_combout\
& \avgBuffer[14][12]~SCLR_LUT_combout\ & \avgBuffer[14][11]~SCLR_LUT_combout\ & \avgBuffer[14][10]~SCLR_LUT_combout\ & \avgBuffer[14][9]~SCLR_LUT_combout\ & \avgBuffer[14][8]~SCLR_LUT_combout\ & \avgBuffer[14][7]~SCLR_LUT_combout\ & 
\avgBuffer[14][6]~SCLR_LUT_combout\ & \avgBuffer[14][5]~SCLR_LUT_combout\ & \avgBuffer[14][4]~SCLR_LUT_combout\ & \avgBuffer[14][3]~SCLR_LUT_combout\ & \avgBuffer[14][2]~SCLR_LUT_combout\ & \avgBuffer[14][1]~SCLR_LUT_combout\ & 
\avgBuffer[14][0]~SCLR_LUT_combout\);

\Mult4~mac_BX_bus\ <= (\Mult3~339\ & \Mult3~339\ & \Mult3~339\ & \Mult3~339\ & \Mult3~339\ & \Mult3~338\ & \Mult3~337\ & \Mult3~336\ & \Mult3~335\ & \Mult3~334\ & \Mult3~333\ & \Mult3~332\ & \Mult3~331\ & \Mult3~330\ & \Mult3~329\ & \Mult3~328\ & 
\Mult3~327\ & \Mult3~326\);

\Mult4~mac_BY_bus\ <= (\Mult3~325\ & \Mult3~324\ & \Mult3~323\ & \Mult3~322\ & \Mult3~321\ & \Mult3~320\ & \Mult3~319\ & \Mult3~318\ & \Mult3~317\ & \Mult3~316\ & \Mult3~315\ & \Mult3~314\ & \Mult3~313\ & \Mult3~312\ & \Mult3~311\ & \Mult3~310\ & 
\Mult3~309\ & \Mult3~mac_resulta\);

\Mult4~mac_resulta\ <= \Mult4~mac_RESULTA_bus\(0);
\Mult4~309\ <= \Mult4~mac_RESULTA_bus\(1);
\Mult4~310\ <= \Mult4~mac_RESULTA_bus\(2);
\Mult4~311\ <= \Mult4~mac_RESULTA_bus\(3);
\Mult4~312\ <= \Mult4~mac_RESULTA_bus\(4);
\Mult4~313\ <= \Mult4~mac_RESULTA_bus\(5);
\Mult4~314\ <= \Mult4~mac_RESULTA_bus\(6);
\Mult4~315\ <= \Mult4~mac_RESULTA_bus\(7);
\Mult4~316\ <= \Mult4~mac_RESULTA_bus\(8);
\Mult4~317\ <= \Mult4~mac_RESULTA_bus\(9);
\Mult4~318\ <= \Mult4~mac_RESULTA_bus\(10);
\Mult4~319\ <= \Mult4~mac_RESULTA_bus\(11);
\Mult4~320\ <= \Mult4~mac_RESULTA_bus\(12);
\Mult4~321\ <= \Mult4~mac_RESULTA_bus\(13);
\Mult4~322\ <= \Mult4~mac_RESULTA_bus\(14);
\Mult4~323\ <= \Mult4~mac_RESULTA_bus\(15);
\Mult4~324\ <= \Mult4~mac_RESULTA_bus\(16);
\Mult4~325\ <= \Mult4~mac_RESULTA_bus\(17);
\Mult4~326\ <= \Mult4~mac_RESULTA_bus\(18);
\Mult4~327\ <= \Mult4~mac_RESULTA_bus\(19);
\Mult4~328\ <= \Mult4~mac_RESULTA_bus\(20);
\Mult4~329\ <= \Mult4~mac_RESULTA_bus\(21);
\Mult4~330\ <= \Mult4~mac_RESULTA_bus\(22);
\Mult4~331\ <= \Mult4~mac_RESULTA_bus\(23);
\Mult4~332\ <= \Mult4~mac_RESULTA_bus\(24);
\Mult4~333\ <= \Mult4~mac_RESULTA_bus\(25);
\Mult4~334\ <= \Mult4~mac_RESULTA_bus\(26);
\Mult4~335\ <= \Mult4~mac_RESULTA_bus\(27);
\Mult4~336\ <= \Mult4~mac_RESULTA_bus\(28);
\Mult4~337\ <= \Mult4~mac_RESULTA_bus\(29);
\Mult4~338\ <= \Mult4~mac_RESULTA_bus\(30);
\Mult4~339\ <= \Mult4~mac_RESULTA_bus\(31);
\Mult4~8\ <= \Mult4~mac_RESULTA_bus\(32);
\Mult4~9\ <= \Mult4~mac_RESULTA_bus\(33);
\Mult4~10\ <= \Mult4~mac_RESULTA_bus\(34);
\Mult4~11\ <= \Mult4~mac_RESULTA_bus\(35);
\Mult4~12\ <= \Mult4~mac_RESULTA_bus\(36);
\Mult4~13\ <= \Mult4~mac_RESULTA_bus\(37);
\Mult4~14\ <= \Mult4~mac_RESULTA_bus\(38);
\Mult4~15\ <= \Mult4~mac_RESULTA_bus\(39);
\Mult4~16\ <= \Mult4~mac_RESULTA_bus\(40);
\Mult4~17\ <= \Mult4~mac_RESULTA_bus\(41);
\Mult4~18\ <= \Mult4~mac_RESULTA_bus\(42);
\Mult4~19\ <= \Mult4~mac_RESULTA_bus\(43);
\Mult4~20\ <= \Mult4~mac_RESULTA_bus\(44);
\Mult4~21\ <= \Mult4~mac_RESULTA_bus\(45);
\Mult4~22\ <= \Mult4~mac_RESULTA_bus\(46);
\Mult4~23\ <= \Mult4~mac_RESULTA_bus\(47);
\Mult4~24\ <= \Mult4~mac_RESULTA_bus\(48);
\Mult4~25\ <= \Mult4~mac_RESULTA_bus\(49);
\Mult4~26\ <= \Mult4~mac_RESULTA_bus\(50);
\Mult4~27\ <= \Mult4~mac_RESULTA_bus\(51);
\Mult4~28\ <= \Mult4~mac_RESULTA_bus\(52);
\Mult4~29\ <= \Mult4~mac_RESULTA_bus\(53);
\Mult4~30\ <= \Mult4~mac_RESULTA_bus\(54);
\Mult4~31\ <= \Mult4~mac_RESULTA_bus\(55);
\Mult4~32\ <= \Mult4~mac_RESULTA_bus\(56);
\Mult4~33\ <= \Mult4~mac_RESULTA_bus\(57);
\Mult4~34\ <= \Mult4~mac_RESULTA_bus\(58);
\Mult4~35\ <= \Mult4~mac_RESULTA_bus\(59);
\Mult4~36\ <= \Mult4~mac_RESULTA_bus\(60);
\Mult4~37\ <= \Mult4~mac_RESULTA_bus\(61);
\Mult4~38\ <= \Mult4~mac_RESULTA_bus\(62);
\Mult4~39\ <= \Mult4~mac_RESULTA_bus\(63);

\Mult3~mac_ACLR_bus\ <= (gnd & gnd);

\Mult3~mac_CLK_bus\ <= (gnd & \clock~inputCLKENA0_outclk\ & \clock~inputCLKENA0_outclk\);

\Mult3~mac_ENA_bus\ <= (vcc & \avgBuffer[6][0]~31_combout\ & \avgBuffer[13][0]~33_combout\);

\Mult3~mac_AX_bus\ <= (\avgBuffer[6][15]~SCLR_LUT_combout\ & \avgBuffer[6][15]~SCLR_LUT_combout\ & \avgBuffer[6][15]~SCLR_LUT_combout\ & \avgBuffer[6][14]~SCLR_LUT_combout\ & \avgBuffer[6][13]~SCLR_LUT_combout\ & \avgBuffer[6][12]~SCLR_LUT_combout\ & 
\avgBuffer[6][11]~SCLR_LUT_combout\ & \avgBuffer[6][10]~SCLR_LUT_combout\ & \avgBuffer[6][9]~SCLR_LUT_combout\ & \avgBuffer[6][8]~SCLR_LUT_combout\ & \avgBuffer[6][7]~SCLR_LUT_combout\ & \avgBuffer[6][6]~SCLR_LUT_combout\ & 
\avgBuffer[6][5]~SCLR_LUT_combout\ & \avgBuffer[6][4]~SCLR_LUT_combout\ & \avgBuffer[6][3]~SCLR_LUT_combout\ & \avgBuffer[6][2]~SCLR_LUT_combout\ & \avgBuffer[6][1]~SCLR_LUT_combout\ & \avgBuffer[6][0]~SCLR_LUT_combout\);

\Mult3~mac_AY_bus\ <= (\avgBuffer[13][15]~SCLR_LUT_combout\ & \avgBuffer[13][15]~SCLR_LUT_combout\ & \avgBuffer[13][15]~SCLR_LUT_combout\ & \avgBuffer[13][15]~SCLR_LUT_combout\ & \avgBuffer[13][14]~SCLR_LUT_combout\ & \avgBuffer[13][13]~SCLR_LUT_combout\
& \avgBuffer[13][12]~SCLR_LUT_combout\ & \avgBuffer[13][11]~SCLR_LUT_combout\ & \avgBuffer[13][10]~SCLR_LUT_combout\ & \avgBuffer[13][9]~SCLR_LUT_combout\ & \avgBuffer[13][8]~SCLR_LUT_combout\ & \avgBuffer[13][7]~SCLR_LUT_combout\ & 
\avgBuffer[13][6]~SCLR_LUT_combout\ & \avgBuffer[13][5]~SCLR_LUT_combout\ & \avgBuffer[13][4]~SCLR_LUT_combout\ & \avgBuffer[13][3]~SCLR_LUT_combout\ & \avgBuffer[13][2]~SCLR_LUT_combout\ & \avgBuffer[13][1]~SCLR_LUT_combout\ & 
\avgBuffer[13][0]~SCLR_LUT_combout\);

\Mult3~mac_BX_bus\ <= (\Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~338\ & \Mult2~337\ & \Mult2~336\ & \Mult2~335\ & \Mult2~334\ & \Mult2~333\ & \Mult2~332\ & \Mult2~331\ & \Mult2~330\ & \Mult2~329\ & \Mult2~328\ & 
\Mult2~327\ & \Mult2~326\);

\Mult3~mac_BY_bus\ <= (\Mult2~325\ & \Mult2~324\ & \Mult2~323\ & \Mult2~322\ & \Mult2~321\ & \Mult2~320\ & \Mult2~319\ & \Mult2~318\ & \Mult2~317\ & \Mult2~316\ & \Mult2~315\ & \Mult2~314\ & \Mult2~313\ & \Mult2~312\ & \Mult2~311\ & \Mult2~310\ & 
\Mult2~309\ & \Mult2~mac_resulta\);

\Mult3~mac_resulta\ <= \Mult3~mac_RESULTA_bus\(0);
\Mult3~309\ <= \Mult3~mac_RESULTA_bus\(1);
\Mult3~310\ <= \Mult3~mac_RESULTA_bus\(2);
\Mult3~311\ <= \Mult3~mac_RESULTA_bus\(3);
\Mult3~312\ <= \Mult3~mac_RESULTA_bus\(4);
\Mult3~313\ <= \Mult3~mac_RESULTA_bus\(5);
\Mult3~314\ <= \Mult3~mac_RESULTA_bus\(6);
\Mult3~315\ <= \Mult3~mac_RESULTA_bus\(7);
\Mult3~316\ <= \Mult3~mac_RESULTA_bus\(8);
\Mult3~317\ <= \Mult3~mac_RESULTA_bus\(9);
\Mult3~318\ <= \Mult3~mac_RESULTA_bus\(10);
\Mult3~319\ <= \Mult3~mac_RESULTA_bus\(11);
\Mult3~320\ <= \Mult3~mac_RESULTA_bus\(12);
\Mult3~321\ <= \Mult3~mac_RESULTA_bus\(13);
\Mult3~322\ <= \Mult3~mac_RESULTA_bus\(14);
\Mult3~323\ <= \Mult3~mac_RESULTA_bus\(15);
\Mult3~324\ <= \Mult3~mac_RESULTA_bus\(16);
\Mult3~325\ <= \Mult3~mac_RESULTA_bus\(17);
\Mult3~326\ <= \Mult3~mac_RESULTA_bus\(18);
\Mult3~327\ <= \Mult3~mac_RESULTA_bus\(19);
\Mult3~328\ <= \Mult3~mac_RESULTA_bus\(20);
\Mult3~329\ <= \Mult3~mac_RESULTA_bus\(21);
\Mult3~330\ <= \Mult3~mac_RESULTA_bus\(22);
\Mult3~331\ <= \Mult3~mac_RESULTA_bus\(23);
\Mult3~332\ <= \Mult3~mac_RESULTA_bus\(24);
\Mult3~333\ <= \Mult3~mac_RESULTA_bus\(25);
\Mult3~334\ <= \Mult3~mac_RESULTA_bus\(26);
\Mult3~335\ <= \Mult3~mac_RESULTA_bus\(27);
\Mult3~336\ <= \Mult3~mac_RESULTA_bus\(28);
\Mult3~337\ <= \Mult3~mac_RESULTA_bus\(29);
\Mult3~338\ <= \Mult3~mac_RESULTA_bus\(30);
\Mult3~339\ <= \Mult3~mac_RESULTA_bus\(31);
\Mult3~8\ <= \Mult3~mac_RESULTA_bus\(32);
\Mult3~9\ <= \Mult3~mac_RESULTA_bus\(33);
\Mult3~10\ <= \Mult3~mac_RESULTA_bus\(34);
\Mult3~11\ <= \Mult3~mac_RESULTA_bus\(35);
\Mult3~12\ <= \Mult3~mac_RESULTA_bus\(36);
\Mult3~13\ <= \Mult3~mac_RESULTA_bus\(37);
\Mult3~14\ <= \Mult3~mac_RESULTA_bus\(38);
\Mult3~15\ <= \Mult3~mac_RESULTA_bus\(39);
\Mult3~16\ <= \Mult3~mac_RESULTA_bus\(40);
\Mult3~17\ <= \Mult3~mac_RESULTA_bus\(41);
\Mult3~18\ <= \Mult3~mac_RESULTA_bus\(42);
\Mult3~19\ <= \Mult3~mac_RESULTA_bus\(43);
\Mult3~20\ <= \Mult3~mac_RESULTA_bus\(44);
\Mult3~21\ <= \Mult3~mac_RESULTA_bus\(45);
\Mult3~22\ <= \Mult3~mac_RESULTA_bus\(46);
\Mult3~23\ <= \Mult3~mac_RESULTA_bus\(47);
\Mult3~24\ <= \Mult3~mac_RESULTA_bus\(48);
\Mult3~25\ <= \Mult3~mac_RESULTA_bus\(49);
\Mult3~26\ <= \Mult3~mac_RESULTA_bus\(50);
\Mult3~27\ <= \Mult3~mac_RESULTA_bus\(51);
\Mult3~28\ <= \Mult3~mac_RESULTA_bus\(52);
\Mult3~29\ <= \Mult3~mac_RESULTA_bus\(53);
\Mult3~30\ <= \Mult3~mac_RESULTA_bus\(54);
\Mult3~31\ <= \Mult3~mac_RESULTA_bus\(55);
\Mult3~32\ <= \Mult3~mac_RESULTA_bus\(56);
\Mult3~33\ <= \Mult3~mac_RESULTA_bus\(57);
\Mult3~34\ <= \Mult3~mac_RESULTA_bus\(58);
\Mult3~35\ <= \Mult3~mac_RESULTA_bus\(59);
\Mult3~36\ <= \Mult3~mac_RESULTA_bus\(60);
\Mult3~37\ <= \Mult3~mac_RESULTA_bus\(61);
\Mult3~38\ <= \Mult3~mac_RESULTA_bus\(62);
\Mult3~39\ <= \Mult3~mac_RESULTA_bus\(63);

\Mult2~mac_ACLR_bus\ <= (gnd & gnd);

\Mult2~mac_CLK_bus\ <= (gnd & \clock~inputCLKENA0_outclk\ & \clock~inputCLKENA0_outclk\);

\Mult2~mac_ENA_bus\ <= (vcc & \avgBuffer[7][0]~35_combout\ & \avgBuffer[12][0]~37_combout\);

\Mult2~mac_AX_bus\ <= (\avgBuffer[7][15]~SCLR_LUT_combout\ & \avgBuffer[7][15]~SCLR_LUT_combout\ & \avgBuffer[7][15]~SCLR_LUT_combout\ & \avgBuffer[7][14]~SCLR_LUT_combout\ & \avgBuffer[7][13]~SCLR_LUT_combout\ & \avgBuffer[7][12]~SCLR_LUT_combout\ & 
\avgBuffer[7][11]~SCLR_LUT_combout\ & \avgBuffer[7][10]~SCLR_LUT_combout\ & \avgBuffer[7][9]~SCLR_LUT_combout\ & \avgBuffer[7][8]~SCLR_LUT_combout\ & \avgBuffer[7][7]~SCLR_LUT_combout\ & \avgBuffer[7][6]~SCLR_LUT_combout\ & 
\avgBuffer[7][5]~SCLR_LUT_combout\ & \avgBuffer[7][4]~SCLR_LUT_combout\ & \avgBuffer[7][3]~SCLR_LUT_combout\ & \avgBuffer[7][2]~SCLR_LUT_combout\ & \avgBuffer[7][1]~SCLR_LUT_combout\ & \avgBuffer[7][0]~SCLR_LUT_combout\);

\Mult2~mac_AY_bus\ <= (\avgBuffer[12][15]~SCLR_LUT_combout\ & \avgBuffer[12][15]~SCLR_LUT_combout\ & \avgBuffer[12][15]~SCLR_LUT_combout\ & \avgBuffer[12][15]~SCLR_LUT_combout\ & \avgBuffer[12][14]~SCLR_LUT_combout\ & \avgBuffer[12][13]~SCLR_LUT_combout\
& \avgBuffer[12][12]~SCLR_LUT_combout\ & \avgBuffer[12][11]~SCLR_LUT_combout\ & \avgBuffer[12][10]~SCLR_LUT_combout\ & \avgBuffer[12][9]~SCLR_LUT_combout\ & \avgBuffer[12][8]~SCLR_LUT_combout\ & \avgBuffer[12][7]~SCLR_LUT_combout\ & 
\avgBuffer[12][6]~SCLR_LUT_combout\ & \avgBuffer[12][5]~SCLR_LUT_combout\ & \avgBuffer[12][4]~SCLR_LUT_combout\ & \avgBuffer[12][3]~SCLR_LUT_combout\ & \avgBuffer[12][2]~SCLR_LUT_combout\ & \avgBuffer[12][1]~SCLR_LUT_combout\ & 
\avgBuffer[12][0]~SCLR_LUT_combout\);

\Mult2~mac_BX_bus\ <= (\Add1~39\ & \Add1~39\ & \Add1~39\ & \Add1~39\ & \Add1~39\ & \Add1~38\ & \Add1~37\ & \Add1~36\ & \Add1~35\ & \Add1~34\ & \Add1~33\ & \Add1~32\ & \Add1~31\ & \Add1~30\ & \Add1~29\ & \Add1~28\ & \Add1~27\ & \Add1~26\);

\Mult2~mac_BY_bus\ <= (\Add1~25\ & \Add1~24\ & \Add1~23\ & \Add1~22\ & \Add1~21\ & \Add1~20\ & \Add1~19\ & \Add1~18\ & \Add1~17\ & \Add1~16\ & \Add1~15\ & \Add1~14\ & \Add1~13\ & \Add1~12\ & \Add1~11\ & \Add1~10\ & \Add1~9\ & \Add1~8_resulta\);

\Mult2~mac_resulta\ <= \Mult2~mac_RESULTA_bus\(0);
\Mult2~309\ <= \Mult2~mac_RESULTA_bus\(1);
\Mult2~310\ <= \Mult2~mac_RESULTA_bus\(2);
\Mult2~311\ <= \Mult2~mac_RESULTA_bus\(3);
\Mult2~312\ <= \Mult2~mac_RESULTA_bus\(4);
\Mult2~313\ <= \Mult2~mac_RESULTA_bus\(5);
\Mult2~314\ <= \Mult2~mac_RESULTA_bus\(6);
\Mult2~315\ <= \Mult2~mac_RESULTA_bus\(7);
\Mult2~316\ <= \Mult2~mac_RESULTA_bus\(8);
\Mult2~317\ <= \Mult2~mac_RESULTA_bus\(9);
\Mult2~318\ <= \Mult2~mac_RESULTA_bus\(10);
\Mult2~319\ <= \Mult2~mac_RESULTA_bus\(11);
\Mult2~320\ <= \Mult2~mac_RESULTA_bus\(12);
\Mult2~321\ <= \Mult2~mac_RESULTA_bus\(13);
\Mult2~322\ <= \Mult2~mac_RESULTA_bus\(14);
\Mult2~323\ <= \Mult2~mac_RESULTA_bus\(15);
\Mult2~324\ <= \Mult2~mac_RESULTA_bus\(16);
\Mult2~325\ <= \Mult2~mac_RESULTA_bus\(17);
\Mult2~326\ <= \Mult2~mac_RESULTA_bus\(18);
\Mult2~327\ <= \Mult2~mac_RESULTA_bus\(19);
\Mult2~328\ <= \Mult2~mac_RESULTA_bus\(20);
\Mult2~329\ <= \Mult2~mac_RESULTA_bus\(21);
\Mult2~330\ <= \Mult2~mac_RESULTA_bus\(22);
\Mult2~331\ <= \Mult2~mac_RESULTA_bus\(23);
\Mult2~332\ <= \Mult2~mac_RESULTA_bus\(24);
\Mult2~333\ <= \Mult2~mac_RESULTA_bus\(25);
\Mult2~334\ <= \Mult2~mac_RESULTA_bus\(26);
\Mult2~335\ <= \Mult2~mac_RESULTA_bus\(27);
\Mult2~336\ <= \Mult2~mac_RESULTA_bus\(28);
\Mult2~337\ <= \Mult2~mac_RESULTA_bus\(29);
\Mult2~338\ <= \Mult2~mac_RESULTA_bus\(30);
\Mult2~339\ <= \Mult2~mac_RESULTA_bus\(31);
\Mult2~8\ <= \Mult2~mac_RESULTA_bus\(32);
\Mult2~9\ <= \Mult2~mac_RESULTA_bus\(33);
\Mult2~10\ <= \Mult2~mac_RESULTA_bus\(34);
\Mult2~11\ <= \Mult2~mac_RESULTA_bus\(35);
\Mult2~12\ <= \Mult2~mac_RESULTA_bus\(36);
\Mult2~13\ <= \Mult2~mac_RESULTA_bus\(37);
\Mult2~14\ <= \Mult2~mac_RESULTA_bus\(38);
\Mult2~15\ <= \Mult2~mac_RESULTA_bus\(39);
\Mult2~16\ <= \Mult2~mac_RESULTA_bus\(40);
\Mult2~17\ <= \Mult2~mac_RESULTA_bus\(41);
\Mult2~18\ <= \Mult2~mac_RESULTA_bus\(42);
\Mult2~19\ <= \Mult2~mac_RESULTA_bus\(43);
\Mult2~20\ <= \Mult2~mac_RESULTA_bus\(44);
\Mult2~21\ <= \Mult2~mac_RESULTA_bus\(45);
\Mult2~22\ <= \Mult2~mac_RESULTA_bus\(46);
\Mult2~23\ <= \Mult2~mac_RESULTA_bus\(47);
\Mult2~24\ <= \Mult2~mac_RESULTA_bus\(48);
\Mult2~25\ <= \Mult2~mac_RESULTA_bus\(49);
\Mult2~26\ <= \Mult2~mac_RESULTA_bus\(50);
\Mult2~27\ <= \Mult2~mac_RESULTA_bus\(51);
\Mult2~28\ <= \Mult2~mac_RESULTA_bus\(52);
\Mult2~29\ <= \Mult2~mac_RESULTA_bus\(53);
\Mult2~30\ <= \Mult2~mac_RESULTA_bus\(54);
\Mult2~31\ <= \Mult2~mac_RESULTA_bus\(55);
\Mult2~32\ <= \Mult2~mac_RESULTA_bus\(56);
\Mult2~33\ <= \Mult2~mac_RESULTA_bus\(57);
\Mult2~34\ <= \Mult2~mac_RESULTA_bus\(58);
\Mult2~35\ <= \Mult2~mac_RESULTA_bus\(59);
\Mult2~36\ <= \Mult2~mac_RESULTA_bus\(60);
\Mult2~37\ <= \Mult2~mac_RESULTA_bus\(61);
\Mult2~38\ <= \Mult2~mac_RESULTA_bus\(62);
\Mult2~39\ <= \Mult2~mac_RESULTA_bus\(63);

\Add1~8_ACLR_bus\ <= (gnd & gnd);

\Add1~8_CLK_bus\ <= (\clock~inputCLKENA0_outclk\ & \clock~inputCLKENA0_outclk\ & \clock~inputCLKENA0_outclk\);

\Add1~8_ENA_bus\ <= (\avgBuffer[8][0]~40_combout\ & \avgBuffer[10][0]~46_combout\ & \avgBuffer[11][0]~42_combout\);

\Add1~8_AX_bus\ <= (\avgBuffer[8][15]~SCLR_LUT_combout\ & \avgBuffer[8][15]~SCLR_LUT_combout\ & \avgBuffer[8][15]~SCLR_LUT_combout\ & \avgBuffer[8][14]~SCLR_LUT_combout\ & \avgBuffer[8][13]~SCLR_LUT_combout\ & \avgBuffer[8][12]~SCLR_LUT_combout\ & 
\avgBuffer[8][11]~SCLR_LUT_combout\ & \avgBuffer[8][10]~SCLR_LUT_combout\ & \avgBuffer[8][9]~SCLR_LUT_combout\ & \avgBuffer[8][8]~SCLR_LUT_combout\ & \avgBuffer[8][7]~SCLR_LUT_combout\ & \avgBuffer[8][6]~SCLR_LUT_combout\ & 
\avgBuffer[8][5]~SCLR_LUT_combout\ & \avgBuffer[8][4]~SCLR_LUT_combout\ & \avgBuffer[8][3]~SCLR_LUT_combout\ & \avgBuffer[8][2]~SCLR_LUT_combout\ & \avgBuffer[8][1]~SCLR_LUT_combout\ & \avgBuffer[8][0]~SCLR_LUT_combout\);

\Add1~8_AY_bus\ <= (\avgBuffer[11][15]~SCLR_LUT_combout\ & \avgBuffer[11][15]~SCLR_LUT_combout\ & \avgBuffer[11][15]~SCLR_LUT_combout\ & \avgBuffer[11][15]~SCLR_LUT_combout\ & \avgBuffer[11][14]~SCLR_LUT_combout\ & \avgBuffer[11][13]~SCLR_LUT_combout\ & 
\avgBuffer[11][12]~SCLR_LUT_combout\ & \avgBuffer[11][11]~SCLR_LUT_combout\ & \avgBuffer[11][10]~SCLR_LUT_combout\ & \avgBuffer[11][9]~SCLR_LUT_combout\ & \avgBuffer[11][8]~SCLR_LUT_combout\ & \avgBuffer[11][7]~SCLR_LUT_combout\ & 
\avgBuffer[11][6]~SCLR_LUT_combout\ & \avgBuffer[11][5]~SCLR_LUT_combout\ & \avgBuffer[11][4]~SCLR_LUT_combout\ & \avgBuffer[11][3]~SCLR_LUT_combout\ & \avgBuffer[11][2]~SCLR_LUT_combout\ & \avgBuffer[11][1]~SCLR_LUT_combout\ & 
\avgBuffer[11][0]~SCLR_LUT_combout\);

\Add1~8_BX_bus\ <= (\avgBuffer[9][15]~q\ & \avgBuffer[9][15]~q\ & \avgBuffer[9][15]~q\ & \avgBuffer[9][14]~q\ & \avgBuffer[9][13]~q\ & \avgBuffer[9][12]~q\ & \avgBuffer[9][11]~q\ & \avgBuffer[9][10]~q\ & \avgBuffer[9][9]~q\ & \avgBuffer[9][8]~q\ & 
\avgBuffer[9][7]~q\ & \avgBuffer[9][6]~q\ & \avgBuffer[9][5]~q\ & \avgBuffer[9][4]~q\ & \avgBuffer[9][3]~q\ & \avgBuffer[9][2]~q\ & \avgBuffer[9][1]~q\ & \avgBuffer[9][0]~q\);

\Add1~8_BY_bus\ <= (\avgBuffer[10][15]~SCLR_LUT_combout\ & \avgBuffer[10][15]~SCLR_LUT_combout\ & \avgBuffer[10][15]~SCLR_LUT_combout\ & \avgBuffer[10][15]~SCLR_LUT_combout\ & \avgBuffer[10][14]~SCLR_LUT_combout\ & \avgBuffer[10][13]~SCLR_LUT_combout\ & 
\avgBuffer[10][12]~SCLR_LUT_combout\ & \avgBuffer[10][11]~SCLR_LUT_combout\ & \avgBuffer[10][10]~SCLR_LUT_combout\ & \avgBuffer[10][9]~SCLR_LUT_combout\ & \avgBuffer[10][8]~SCLR_LUT_combout\ & \avgBuffer[10][7]~SCLR_LUT_combout\ & 
\avgBuffer[10][6]~SCLR_LUT_combout\ & \avgBuffer[10][5]~SCLR_LUT_combout\ & \avgBuffer[10][4]~SCLR_LUT_combout\ & \avgBuffer[10][3]~SCLR_LUT_combout\ & \avgBuffer[10][2]~SCLR_LUT_combout\ & \avgBuffer[10][1]~SCLR_LUT_combout\ & 
\avgBuffer[10][0]~SCLR_LUT_combout\);

\Add1~8_resulta\ <= \Add1~8_RESULTA_bus\(0);
\Add1~9\ <= \Add1~8_RESULTA_bus\(1);
\Add1~10\ <= \Add1~8_RESULTA_bus\(2);
\Add1~11\ <= \Add1~8_RESULTA_bus\(3);
\Add1~12\ <= \Add1~8_RESULTA_bus\(4);
\Add1~13\ <= \Add1~8_RESULTA_bus\(5);
\Add1~14\ <= \Add1~8_RESULTA_bus\(6);
\Add1~15\ <= \Add1~8_RESULTA_bus\(7);
\Add1~16\ <= \Add1~8_RESULTA_bus\(8);
\Add1~17\ <= \Add1~8_RESULTA_bus\(9);
\Add1~18\ <= \Add1~8_RESULTA_bus\(10);
\Add1~19\ <= \Add1~8_RESULTA_bus\(11);
\Add1~20\ <= \Add1~8_RESULTA_bus\(12);
\Add1~21\ <= \Add1~8_RESULTA_bus\(13);
\Add1~22\ <= \Add1~8_RESULTA_bus\(14);
\Add1~23\ <= \Add1~8_RESULTA_bus\(15);
\Add1~24\ <= \Add1~8_RESULTA_bus\(16);
\Add1~25\ <= \Add1~8_RESULTA_bus\(17);
\Add1~26\ <= \Add1~8_RESULTA_bus\(18);
\Add1~27\ <= \Add1~8_RESULTA_bus\(19);
\Add1~28\ <= \Add1~8_RESULTA_bus\(20);
\Add1~29\ <= \Add1~8_RESULTA_bus\(21);
\Add1~30\ <= \Add1~8_RESULTA_bus\(22);
\Add1~31\ <= \Add1~8_RESULTA_bus\(23);
\Add1~32\ <= \Add1~8_RESULTA_bus\(24);
\Add1~33\ <= \Add1~8_RESULTA_bus\(25);
\Add1~34\ <= \Add1~8_RESULTA_bus\(26);
\Add1~35\ <= \Add1~8_RESULTA_bus\(27);
\Add1~36\ <= \Add1~8_RESULTA_bus\(28);
\Add1~37\ <= \Add1~8_RESULTA_bus\(29);
\Add1~38\ <= \Add1~8_RESULTA_bus\(30);
\Add1~39\ <= \Add1~8_RESULTA_bus\(31);
\Add1~40\ <= \Add1~8_RESULTA_bus\(32);
\Add1~41\ <= \Add1~8_RESULTA_bus\(33);
\Add1~42\ <= \Add1~8_RESULTA_bus\(34);
\Add1~43\ <= \Add1~8_RESULTA_bus\(35);
\Add1~44\ <= \Add1~8_RESULTA_bus\(36);
\Add1~45\ <= \Add1~8_RESULTA_bus\(37);
\Add1~46\ <= \Add1~8_RESULTA_bus\(38);
\Add1~47\ <= \Add1~8_RESULTA_bus\(39);
\Add1~48\ <= \Add1~8_RESULTA_bus\(40);
\Add1~49\ <= \Add1~8_RESULTA_bus\(41);
\Add1~50\ <= \Add1~8_RESULTA_bus\(42);
\Add1~51\ <= \Add1~8_RESULTA_bus\(43);
\Add1~52\ <= \Add1~8_RESULTA_bus\(44);
\Add1~53\ <= \Add1~8_RESULTA_bus\(45);
\Add1~54\ <= \Add1~8_RESULTA_bus\(46);
\Add1~55\ <= \Add1~8_RESULTA_bus\(47);
\Add1~56\ <= \Add1~8_RESULTA_bus\(48);
\Add1~57\ <= \Add1~8_RESULTA_bus\(49);
\Add1~58\ <= \Add1~8_RESULTA_bus\(50);
\Add1~59\ <= \Add1~8_RESULTA_bus\(51);
\Add1~60\ <= \Add1~8_RESULTA_bus\(52);
\Add1~61\ <= \Add1~8_RESULTA_bus\(53);
\Add1~62\ <= \Add1~8_RESULTA_bus\(54);
\Add1~63\ <= \Add1~8_RESULTA_bus\(55);
\Add1~64\ <= \Add1~8_RESULTA_bus\(56);
\Add1~65\ <= \Add1~8_RESULTA_bus\(57);
\Add1~66\ <= \Add1~8_RESULTA_bus\(58);
\Add1~67\ <= \Add1~8_RESULTA_bus\(59);
\Add1~68\ <= \Add1~8_RESULTA_bus\(60);
\Add1~69\ <= \Add1~8_RESULTA_bus\(61);
\Add1~70\ <= \Add1~8_RESULTA_bus\(62);
\Add1~71\ <= \Add1~8_RESULTA_bus\(63);
ALT_INV_index(15) <= NOT index(15);
ALT_INV_index(16) <= NOT index(16);
ALT_INV_index(17) <= NOT index(17);
ALT_INV_index(18) <= NOT index(18);
ALT_INV_index(19) <= NOT index(19);
ALT_INV_index(20) <= NOT index(20);
ALT_INV_index(21) <= NOT index(21);
ALT_INV_index(22) <= NOT index(22);
ALT_INV_index(23) <= NOT index(23);
ALT_INV_index(24) <= NOT index(24);
ALT_INV_index(25) <= NOT index(25);
ALT_INV_index(26) <= NOT index(26);
ALT_INV_index(27) <= NOT index(27);
ALT_INV_index(28) <= NOT index(28);
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
ALT_INV_index(29) <= NOT index(29);
ALT_INV_index(2) <= NOT index(2);
ALT_INV_index(3) <= NOT index(3);
ALT_INV_index(30) <= NOT index(30);
ALT_INV_index(31) <= NOT index(31);
\ALT_INV_Mult9~337\ <= NOT \Mult9~337\;
\ALT_INV_Mult9~336\ <= NOT \Mult9~336\;
\ALT_INV_Mult9~335\ <= NOT \Mult9~335\;
\ALT_INV_Mult9~334\ <= NOT \Mult9~334\;
\ALT_INV_Mult9~333\ <= NOT \Mult9~333\;
\ALT_INV_Mult9~332\ <= NOT \Mult9~332\;
\ALT_INV_Mult9~331\ <= NOT \Mult9~331\;
\ALT_INV_Mult9~330\ <= NOT \Mult9~330\;
\ALT_INV_Mult9~329\ <= NOT \Mult9~329\;
\ALT_INV_Mult9~328\ <= NOT \Mult9~328\;
\ALT_INV_Mult9~327\ <= NOT \Mult9~327\;
\ALT_INV_Mult9~326\ <= NOT \Mult9~326\;
\ALT_INV_Mult9~325\ <= NOT \Mult9~325\;
\ALT_INV_Mult9~324\ <= NOT \Mult9~324\;
\ALT_INV_Mult9~323\ <= NOT \Mult9~323\;
\ALT_INV_Mult9~322\ <= NOT \Mult9~322\;
\ALT_INV_Mult9~321\ <= NOT \Mult9~321\;
\ALT_INV_Mult9~320\ <= NOT \Mult9~320\;
\ALT_INV_Mult9~319\ <= NOT \Mult9~319\;
\ALT_INV_Mult9~318\ <= NOT \Mult9~318\;
\ALT_INV_Mult9~317\ <= NOT \Mult9~317\;
\ALT_INV_Mult9~316\ <= NOT \Mult9~316\;
\ALT_INV_Mult9~315\ <= NOT \Mult9~315\;
\ALT_INV_Mult9~314\ <= NOT \Mult9~314\;
\ALT_INV_Mult9~313\ <= NOT \Mult9~313\;
\ALT_INV_Mult9~312\ <= NOT \Mult9~312\;
\ALT_INV_Mult9~311\ <= NOT \Mult9~311\;
\ALT_INV_Mult9~310\ <= NOT \Mult9~310\;
\ALT_INV_Mult9~309\ <= NOT \Mult9~309\;
\ALT_INV_Mult9~mac_resulta\ <= NOT \Mult9~mac_resulta\;
\ALT_INV_flag~q\ <= NOT \flag~q\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_recv.data[15]~input_o\ <= NOT \recv.data[15]~input_o\;
\ALT_INV_recv.data[14]~input_o\ <= NOT \recv.data[14]~input_o\;
\ALT_INV_recv.data[13]~input_o\ <= NOT \recv.data[13]~input_o\;
\ALT_INV_recv.data[12]~input_o\ <= NOT \recv.data[12]~input_o\;
\ALT_INV_recv.data[11]~input_o\ <= NOT \recv.data[11]~input_o\;
\ALT_INV_recv.data[10]~input_o\ <= NOT \recv.data[10]~input_o\;
\ALT_INV_recv.data[9]~input_o\ <= NOT \recv.data[9]~input_o\;
\ALT_INV_recv.data[8]~input_o\ <= NOT \recv.data[8]~input_o\;
\ALT_INV_recv.data[7]~input_o\ <= NOT \recv.data[7]~input_o\;
\ALT_INV_recv.data[6]~input_o\ <= NOT \recv.data[6]~input_o\;
\ALT_INV_recv.data[5]~input_o\ <= NOT \recv.data[5]~input_o\;
\ALT_INV_recv.data[4]~input_o\ <= NOT \recv.data[4]~input_o\;
\ALT_INV_recv.data[3]~input_o\ <= NOT \recv.data[3]~input_o\;
\ALT_INV_recv.data[2]~input_o\ <= NOT \recv.data[2]~input_o\;
\ALT_INV_recv.data[1]~input_o\ <= NOT \recv.data[1]~input_o\;
\ALT_INV_recv.data[0]~input_o\ <= NOT \recv.data[0]~input_o\;
\ALT_INV_recv.data[17]~input_o\ <= NOT \recv.data[17]~input_o\;
\ALT_INV_recv.data[23]~input_o\ <= NOT \recv.data[23]~input_o\;
\ALT_INV_recv.data[22]~input_o\ <= NOT \recv.data[22]~input_o\;
\ALT_INV_recv.data[21]~input_o\ <= NOT \recv.data[21]~input_o\;
\ALT_INV_recv.data[31]~input_o\ <= NOT \recv.data[31]~input_o\;
\ALT_INV_recv.data[29]~input_o\ <= NOT \recv.data[29]~input_o\;
\ALT_INV_recv.data[30]~input_o\ <= NOT \recv.data[30]~input_o\;
\ALT_INV_recv.data[28]~input_o\ <= NOT \recv.data[28]~input_o\;
\ALT_INV_avgBuffer[10][0]~45_combout\ <= NOT \avgBuffer[10][0]~45_combout\;
\ALT_INV_avgBuffer[9][0]~43_combout\ <= NOT \avgBuffer[9][0]~43_combout\;
\ALT_INV_avgBuffer[11][0]~41_combout\ <= NOT \avgBuffer[11][0]~41_combout\;
\ALT_INV_avgBuffer[8][0]~39_combout\ <= NOT \avgBuffer[8][0]~39_combout\;
\ALT_INV_avgBuffer[8][0]~38_combout\ <= NOT \avgBuffer[8][0]~38_combout\;
\ALT_INV_avgBuffer[12][0]~36_combout\ <= NOT \avgBuffer[12][0]~36_combout\;
\ALT_INV_avgBuffer[7][0]~34_combout\ <= NOT \avgBuffer[7][0]~34_combout\;
\ALT_INV_avgBuffer[13][0]~32_combout\ <= NOT \avgBuffer[13][0]~32_combout\;
\ALT_INV_avgBuffer[6][0]~30_combout\ <= NOT \avgBuffer[6][0]~30_combout\;
\ALT_INV_avgBuffer[14][0]~28_combout\ <= NOT \avgBuffer[14][0]~28_combout\;
\ALT_INV_avgBuffer[14][0]~27_combout\ <= NOT \avgBuffer[14][0]~27_combout\;
\ALT_INV_avgBuffer[5][0]~25_combout\ <= NOT \avgBuffer[5][0]~25_combout\;
\ALT_INV_avgBuffer[5][0]~24_combout\ <= NOT \avgBuffer[5][0]~24_combout\;
\ALT_INV_avgBuffer[15][0]~22_combout\ <= NOT \avgBuffer[15][0]~22_combout\;
\ALT_INV_avgBuffer[15][0]~21_combout\ <= NOT \avgBuffer[15][0]~21_combout\;
\ALT_INV_avgBuffer[4][0]~19_combout\ <= NOT \avgBuffer[4][0]~19_combout\;
\ALT_INV_avgBuffer[4][0]~18_combout\ <= NOT \avgBuffer[4][0]~18_combout\;
\ALT_INV_avgBuffer[16][0]~16_combout\ <= NOT \avgBuffer[16][0]~16_combout\;
\ALT_INV_avgBuffer[3][0]~14_combout\ <= NOT \avgBuffer[3][0]~14_combout\;
\ALT_INV_avgBuffer[17][0]~12_combout\ <= NOT \avgBuffer[17][0]~12_combout\;
\ALT_INV_avgBuffer[2][0]~10_combout\ <= NOT \avgBuffer[2][0]~10_combout\;
\ALT_INV_avgBuffer[18][0]~8_combout\ <= NOT \avgBuffer[18][0]~8_combout\;
\ALT_INV_avgBuffer[1][0]~6_combout\ <= NOT \avgBuffer[1][0]~6_combout\;
\ALT_INV_avgBuffer[19][0]~4_combout\ <= NOT \avgBuffer[19][0]~4_combout\;
\ALT_INV_avgBuffer[19][0]~3_combout\ <= NOT \avgBuffer[19][0]~3_combout\;
\ALT_INV_avgBuffer[0][0]~1_combout\ <= NOT \avgBuffer[0][0]~1_combout\;
\ALT_INV_avgBuffer[0][0]~0_combout\ <= NOT \avgBuffer[0][0]~0_combout\;
ALT_INV_index(4) <= NOT index(4);
ALT_INV_index(0) <= NOT index(0);
ALT_INV_index(1) <= NOT index(1);
ALT_INV_corrVar(29) <= NOT corrVar(29);
\ALT_INV_corrVar~28_combout\ <= NOT \corrVar~28_combout\;
ALT_INV_corrVar(28) <= NOT corrVar(28);
\ALT_INV_corrVar~27_combout\ <= NOT \corrVar~27_combout\;
ALT_INV_corrVar(27) <= NOT corrVar(27);
ALT_INV_corrVar(26) <= NOT corrVar(26);
ALT_INV_corrVar(25) <= NOT corrVar(25);
ALT_INV_corrVar(24) <= NOT corrVar(24);
ALT_INV_corrVar(23) <= NOT corrVar(23);
ALT_INV_corrVar(22) <= NOT corrVar(22);
\ALT_INV_corrVar~21_combout\ <= NOT \corrVar~21_combout\;
ALT_INV_corrVar(21) <= NOT corrVar(21);
\ALT_INV_corrVar~20_combout\ <= NOT \corrVar~20_combout\;
ALT_INV_corrVar(20) <= NOT corrVar(20);
\ALT_INV_corrVar~19_combout\ <= NOT \corrVar~19_combout\;
ALT_INV_corrVar(19) <= NOT corrVar(19);
ALT_INV_corrVar(18) <= NOT corrVar(18);
ALT_INV_corrVar(17) <= NOT corrVar(17);
\ALT_INV_corrVar~16_combout\ <= NOT \corrVar~16_combout\;
ALT_INV_corrVar(16) <= NOT corrVar(16);
\ALT_INV_corrVar~15_combout\ <= NOT \corrVar~15_combout\;
ALT_INV_corrVar(15) <= NOT corrVar(15);
ALT_INV_corrVar(14) <= NOT corrVar(14);
ALT_INV_corrVar(13) <= NOT corrVar(13);
\ALT_INV_corrVar~12_combout\ <= NOT \corrVar~12_combout\;
ALT_INV_corrVar(12) <= NOT corrVar(12);
\ALT_INV_corrVar~11_combout\ <= NOT \corrVar~11_combout\;
ALT_INV_corrVar(11) <= NOT corrVar(11);
ALT_INV_corrVar(10) <= NOT corrVar(10);
ALT_INV_corrVar(9) <= NOT corrVar(9);
\ALT_INV_corrVar~8_combout\ <= NOT \corrVar~8_combout\;
ALT_INV_corrVar(8) <= NOT corrVar(8);
\ALT_INV_corrVar~7_combout\ <= NOT \corrVar~7_combout\;
ALT_INV_corrVar(7) <= NOT corrVar(7);
ALT_INV_corrVar(6) <= NOT corrVar(6);
\ALT_INV_corrVar~5_combout\ <= NOT \corrVar~5_combout\;
ALT_INV_corrVar(5) <= NOT corrVar(5);
\ALT_INV_corrVar~4_combout\ <= NOT \corrVar~4_combout\;
ALT_INV_corrVar(4) <= NOT corrVar(4);
\ALT_INV_corrVar~3_combout\ <= NOT \corrVar~3_combout\;
ALT_INV_corrVar(3) <= NOT corrVar(3);
\ALT_INV_corrVar~2_combout\ <= NOT \corrVar~2_combout\;
ALT_INV_corrVar(2) <= NOT corrVar(2);
ALT_INV_corrVar(1) <= NOT corrVar(1);
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_enable~q\ <= NOT \enable~q\;
ALT_INV_corrVar(0) <= NOT corrVar(0);
ALT_INV_index(5) <= NOT index(5);
ALT_INV_index(6) <= NOT index(6);
ALT_INV_index(7) <= NOT index(7);
ALT_INV_index(8) <= NOT index(8);
ALT_INV_index(9) <= NOT index(9);
ALT_INV_index(10) <= NOT index(10);
ALT_INV_index(11) <= NOT index(11);
ALT_INV_index(12) <= NOT index(12);
ALT_INV_index(13) <= NOT index(13);
ALT_INV_index(14) <= NOT index(14);

-- Location: IOOBUF_X54_Y0_N19
\send.data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(0));

-- Location: IOOBUF_X14_Y0_N53
\send.data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(1));

-- Location: IOOBUF_X64_Y0_N53
\send.data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(2));

-- Location: IOOBUF_X38_Y0_N19
\send.data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(3));

-- Location: IOOBUF_X54_Y0_N2
\send.data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(4));

-- Location: IOOBUF_X40_Y0_N53
\send.data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(5));

-- Location: IOOBUF_X52_Y0_N2
\send.data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(6));

-- Location: IOOBUF_X52_Y0_N53
\send.data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(7));

-- Location: IOOBUF_X40_Y0_N2
\send.data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[8]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(8));

-- Location: IOOBUF_X66_Y0_N93
\send.data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[9]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(9));

-- Location: IOOBUF_X50_Y0_N93
\send.data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[10]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(10));

-- Location: IOOBUF_X34_Y0_N59
\send.data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[11]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(11));

-- Location: IOOBUF_X38_Y0_N53
\send.data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[12]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(12));

-- Location: IOOBUF_X52_Y0_N36
\send.data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[13]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(13));

-- Location: IOOBUF_X32_Y0_N36
\send.data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[14]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(14));

-- Location: IOOBUF_X56_Y0_N36
\send.data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[15]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(15));

-- Location: IOOBUF_X14_Y0_N19
\send.data[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[16]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(16));

-- Location: IOOBUF_X54_Y0_N36
\send.data[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[17]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(17));

-- Location: IOOBUF_X38_Y0_N36
\send.data[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[18]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(18));

-- Location: IOOBUF_X30_Y0_N53
\send.data[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[19]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(19));

-- Location: IOOBUF_X10_Y0_N59
\send.data[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[20]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(20));

-- Location: IOOBUF_X30_Y0_N2
\send.data[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[21]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(21));

-- Location: IOOBUF_X26_Y0_N76
\send.data[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[22]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(22));

-- Location: IOOBUF_X54_Y0_N53
\send.data[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[23]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(23));

-- Location: IOOBUF_X36_Y0_N36
\send.data[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[24]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(24));

-- Location: IOOBUF_X36_Y0_N53
\send.data[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[25]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(25));

-- Location: IOOBUF_X36_Y0_N2
\send.data[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[26]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(26));

-- Location: IOOBUF_X64_Y0_N19
\send.data[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[27]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(27));

-- Location: IOOBUF_X28_Y0_N53
\send.data[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[28]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(28));

-- Location: IOOBUF_X32_Y0_N53
\send.data[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[29]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(29));

-- Location: IOOBUF_X24_Y0_N53
\send.data[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[30]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(30));

-- Location: IOOBUF_X6_Y0_N53
\send.data[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ww_send.data\(31));

-- Location: IOOBUF_X60_Y0_N2
\send.addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.addr[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.addr\(0));

-- Location: IOOBUF_X58_Y0_N42
\send.addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.addr[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.addr\(1));

-- Location: IOOBUF_X60_Y0_N36
\send.addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.addr[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.addr\(2));

-- Location: IOOBUF_X58_Y0_N76
\send.addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.addr[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.addr\(3));

-- Location: IOOBUF_X20_Y81_N19
\send.addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.addr\(4));

-- Location: IOOBUF_X4_Y81_N2
\send.addr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.addr\(5));

-- Location: IOOBUF_X30_Y81_N19
\send.addr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.addr\(6));

-- Location: IOOBUF_X68_Y0_N2
\send.addr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.addr\(7));

-- Location: IOOBUF_X34_Y0_N93
\sendCorr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(0),
	devoe => ww_devoe,
	o => ww_sendCorr(0));

-- Location: IOOBUF_X34_Y0_N42
\sendCorr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(1),
	devoe => ww_devoe,
	o => ww_sendCorr(1));

-- Location: IOOBUF_X34_Y0_N76
\sendCorr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(2),
	devoe => ww_devoe,
	o => ww_sendCorr(2));

-- Location: IOOBUF_X40_Y0_N19
\sendCorr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(3),
	devoe => ww_devoe,
	o => ww_sendCorr(3));

-- Location: IOOBUF_X56_Y0_N53
\sendCorr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(4),
	devoe => ww_devoe,
	o => ww_sendCorr(4));

-- Location: IOOBUF_X38_Y0_N2
\sendCorr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(5),
	devoe => ww_devoe,
	o => ww_sendCorr(5));

-- Location: IOOBUF_X50_Y0_N76
\sendCorr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(6),
	devoe => ww_devoe,
	o => ww_sendCorr(6));

-- Location: IOOBUF_X56_Y0_N19
\sendCorr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(7),
	devoe => ww_devoe,
	o => ww_sendCorr(7));

-- Location: IOOBUF_X32_Y0_N19
\sendCorr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(8),
	devoe => ww_devoe,
	o => ww_sendCorr(8));

-- Location: IOOBUF_X28_Y0_N19
\sendCorr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(9),
	devoe => ww_devoe,
	o => ww_sendCorr(9));

-- Location: IOOBUF_X32_Y81_N19
\sendCorr[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(10),
	devoe => ww_devoe,
	o => ww_sendCorr(10));

-- Location: IOOBUF_X56_Y0_N2
\sendCorr[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(11),
	devoe => ww_devoe,
	o => ww_sendCorr(11));

-- Location: IOOBUF_X40_Y0_N36
\sendCorr[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(12),
	devoe => ww_devoe,
	o => ww_sendCorr(12));

-- Location: IOOBUF_X66_Y0_N42
\sendCorr[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(13),
	devoe => ww_devoe,
	o => ww_sendCorr(13));

-- Location: IOOBUF_X24_Y0_N2
\sendCorr[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(14),
	devoe => ww_devoe,
	o => ww_sendCorr(14));

-- Location: IOOBUF_X52_Y0_N19
\sendCorr[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(15),
	devoe => ww_devoe,
	o => ww_sendCorr(15));

-- Location: IOOBUF_X26_Y0_N59
\sendCorr[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(16),
	devoe => ww_devoe,
	o => ww_sendCorr(16));

-- Location: IOOBUF_X32_Y81_N2
\sendCorr[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(17),
	devoe => ww_devoe,
	o => ww_sendCorr(17));

-- Location: IOOBUF_X58_Y0_N59
\sendCorr[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(18),
	devoe => ww_devoe,
	o => ww_sendCorr(18));

-- Location: IOOBUF_X36_Y0_N19
\sendCorr[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(19),
	devoe => ww_devoe,
	o => ww_sendCorr(19));

-- Location: IOOBUF_X14_Y0_N36
\sendCorr[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(20),
	devoe => ww_devoe,
	o => ww_sendCorr(20));

-- Location: IOOBUF_X28_Y0_N2
\sendCorr[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(21),
	devoe => ww_devoe,
	o => ww_sendCorr(21));

-- Location: IOOBUF_X12_Y0_N19
\sendCorr[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(22),
	devoe => ww_devoe,
	o => ww_sendCorr(22));

-- Location: IOOBUF_X30_Y0_N36
\sendCorr[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(23),
	devoe => ww_devoe,
	o => ww_sendCorr(23));

-- Location: IOOBUF_X30_Y0_N19
\sendCorr[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(24),
	devoe => ww_devoe,
	o => ww_sendCorr(24));

-- Location: IOOBUF_X50_Y0_N59
\sendCorr[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(25),
	devoe => ww_devoe,
	o => ww_sendCorr(25));

-- Location: IOOBUF_X24_Y0_N19
\sendCorr[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(26),
	devoe => ww_devoe,
	o => ww_sendCorr(26));

-- Location: IOOBUF_X26_Y0_N42
\sendCorr[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(27),
	devoe => ww_devoe,
	o => ww_sendCorr(27));

-- Location: IOOBUF_X12_Y0_N36
\sendCorr[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(28),
	devoe => ww_devoe,
	o => ww_sendCorr(28));

-- Location: IOOBUF_X50_Y0_N42
\sendCorr[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(29),
	devoe => ww_devoe,
	o => ww_sendCorr(29));

-- Location: IOOBUF_X32_Y0_N2
\sendCorr[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(30),
	devoe => ww_devoe,
	o => ww_sendCorr(30));

-- Location: IOOBUF_X28_Y0_N36
\sendCorr[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => correlation(31),
	devoe => ww_devoe,
	o => ww_sendCorr(31));

-- Location: IOIBUF_X89_Y25_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X22_Y0_N35
\recv.data[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(17),
	o => \recv.data[17]~input_o\);

-- Location: MLABCELL_X28_Y4_N6
\enable~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable~feeder_combout\ = ( \recv.data[17]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_recv.data[17]~input_o\,
	combout => \enable~feeder_combout\);

-- Location: IOIBUF_X12_Y0_N1
\recv.data[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(30),
	o => \recv.data[30]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\recv.data[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(28),
	o => \recv.data[28]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\recv.data[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(29),
	o => \recv.data[29]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\recv.data[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(31),
	o => \recv.data[31]~input_o\);

-- Location: LABCELL_X27_Y7_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \recv.data[31]~input_o\ & ( (\recv.data[30]~input_o\ & (\recv.data[28]~input_o\ & !\recv.data[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[30]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_recv.data[31]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: FF_X28_Y4_N8
enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \enable~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable~q\);

-- Location: LABCELL_X31_Y5_N15
\flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = ( \Add0~1_sumout\ & ( (!\enable~q\ & \flag~q\) ) ) # ( !\Add0~1_sumout\ & ( \flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable~q\,
	datad => \ALT_INV_flag~q\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \flag~0_combout\);

-- Location: MLABCELL_X25_Y6_N39
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \recv.data[31]~input_o\ & ( !\recv.data[28]~input_o\ & ( (!\recv.data[30]~input_o\ & !\recv.data[29]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[30]~input_o\,
	datac => \ALT_INV_recv.data[29]~input_o\,
	datae => \ALT_INV_recv.data[31]~input_o\,
	dataf => \ALT_INV_recv.data[28]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: FF_X31_Y5_N16
flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \flag~0_combout\,
	asdata => VCC,
	sload => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag~q\);

-- Location: LABCELL_X31_Y5_N12
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \flag~q\ & ( !\enable~q\ ) ) # ( !\flag~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable~q\,
	dataf => \ALT_INV_flag~q\,
	combout => \process_0~0_combout\);

-- Location: FF_X29_Y5_N35
\index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(31));

-- Location: LABCELL_X29_Y6_N0
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !index(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~22\ = CARRY(( !index(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(0),
	cin => GND,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X28_Y6_N39
\index~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \index~1_combout\ = ( \Add0~21_sumout\ & ( \process_0~0_combout\ ) ) # ( !\Add0~21_sumout\ & ( \process_0~0_combout\ ) ) # ( !\Add0~21_sumout\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \index~1_combout\);

-- Location: FF_X28_Y6_N41
\index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \index~1_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(0));

-- Location: LABCELL_X29_Y6_N3
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !index(1) ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( !index(1) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(1),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X30_Y6_N3
\index~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \index~0_combout\ = ( !\Add0~17_sumout\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \index~0_combout\);

-- Location: FF_X30_Y6_N5
\index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \index~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(1));

-- Location: LABCELL_X29_Y6_N6
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( index(2) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~34\ = CARRY(( index(2) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_index(2),
	cin => \Add0~18\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X29_Y6_N8
\index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(2));

-- Location: LABCELL_X29_Y6_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( index(3) ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( index(3) ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(3),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X29_Y6_N11
\index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(3));

-- Location: LABCELL_X29_Y6_N12
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !index(4) ) + ( VCC ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( !index(4) ) + ( VCC ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(4),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X28_Y6_N30
\index~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \index~2_combout\ = ( !\Add0~25_sumout\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \index~2_combout\);

-- Location: FF_X28_Y6_N32
\index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \index~2_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(4));

-- Location: LABCELL_X29_Y6_N15
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( index(5) ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~126\ = CARRY(( index(5) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(5),
	cin => \Add0~26\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X29_Y6_N17
\index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(5));

-- Location: LABCELL_X29_Y6_N18
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( index(6) ) + ( VCC ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( index(6) ) + ( VCC ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(6),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X29_Y6_N20
\index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(6));

-- Location: LABCELL_X29_Y6_N21
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( index(7) ) + ( VCC ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( index(7) ) + ( VCC ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(7),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X29_Y6_N23
\index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(7));

-- Location: LABCELL_X29_Y6_N24
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( index(8) ) + ( VCC ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( index(8) ) + ( VCC ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(8),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X29_Y6_N26
\index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(8));

-- Location: LABCELL_X29_Y6_N27
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( index(9) ) + ( VCC ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( index(9) ) + ( VCC ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(9),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X29_Y6_N29
\index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(9));

-- Location: LABCELL_X29_Y6_N30
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( index(10) ) + ( VCC ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( index(10) ) + ( VCC ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_index(10),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X29_Y6_N32
\index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(10));

-- Location: LABCELL_X29_Y6_N33
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( index(11) ) + ( VCC ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( index(11) ) + ( VCC ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(11),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X29_Y6_N35
\index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(11));

-- Location: LABCELL_X29_Y6_N36
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( index(12) ) + ( VCC ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( index(12) ) + ( VCC ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(12),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X29_Y6_N38
\index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(12));

-- Location: LABCELL_X29_Y6_N39
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( index(13) ) + ( VCC ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( index(13) ) + ( VCC ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(13),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X29_Y6_N41
\index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(13));

-- Location: LABCELL_X29_Y6_N42
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( index(14) ) + ( VCC ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( index(14) ) + ( VCC ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_index(14),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X29_Y6_N44
\index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(14));

-- Location: LABCELL_X29_Y6_N45
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( index(15) ) + ( VCC ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( index(15) ) + ( VCC ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(15),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X29_Y6_N47
\index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(15));

-- Location: LABCELL_X29_Y6_N48
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( index(16) ) + ( VCC ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( index(16) ) + ( VCC ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(16),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X29_Y6_N50
\index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(16));

-- Location: LABCELL_X29_Y6_N51
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( index(17) ) + ( VCC ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( index(17) ) + ( VCC ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(17),
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X29_Y6_N53
\index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(17));

-- Location: LABCELL_X29_Y6_N54
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( index(18) ) + ( VCC ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( index(18) ) + ( VCC ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(18),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X29_Y6_N56
\index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(18));

-- Location: LABCELL_X29_Y6_N57
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( index(19) ) + ( VCC ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( index(19) ) + ( VCC ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(19),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X29_Y6_N59
\index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(19));

-- Location: LABCELL_X29_Y5_N0
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( index(20) ) + ( VCC ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( index(20) ) + ( VCC ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(20),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X29_Y5_N2
\index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(20));

-- Location: LABCELL_X29_Y5_N3
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( index(21) ) + ( VCC ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( index(21) ) + ( VCC ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(21),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X29_Y5_N5
\index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(21));

-- Location: LABCELL_X29_Y5_N6
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( index(22) ) + ( VCC ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( index(22) ) + ( VCC ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_index(22),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X29_Y5_N8
\index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(22));

-- Location: LABCELL_X29_Y5_N9
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( index(23) ) + ( VCC ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( index(23) ) + ( VCC ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(23),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X29_Y5_N11
\index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(23));

-- Location: LABCELL_X29_Y5_N12
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( index(24) ) + ( VCC ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( index(24) ) + ( VCC ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_index(24),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X29_Y5_N14
\index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(24));

-- Location: LABCELL_X29_Y5_N15
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( index(25) ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( index(25) ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(25),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X29_Y5_N17
\index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(25));

-- Location: LABCELL_X29_Y5_N18
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( index(26) ) + ( VCC ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( index(26) ) + ( VCC ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(26),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X29_Y5_N20
\index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(26));

-- Location: LABCELL_X29_Y5_N21
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( index(27) ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( index(27) ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(27),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X29_Y5_N23
\index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(27));

-- Location: LABCELL_X29_Y5_N24
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( index(28) ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~14\ = CARRY(( index(28) ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(28),
	cin => \Add0~38\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X29_Y5_N26
\index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(28));

-- Location: LABCELL_X29_Y5_N27
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( index(29) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( index(29) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(29),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X29_Y5_N29
\index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(29));

-- Location: LABCELL_X29_Y5_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( index(30) ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( index(30) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_index(30),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X29_Y5_N32
\index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(30));

-- Location: LABCELL_X29_Y5_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( index(31) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(31),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X34_Y4_N23
\corrVar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~0_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(0));

-- Location: MLABCELL_X28_Y7_N0
\avgBuffer[19][0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[19][0]~3_combout\ = ( !index(2) & ( (!index(3) & (\enable~q\ & !index(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(3),
	datac => \ALT_INV_enable~q\,
	datad => ALT_INV_index(4),
	dataf => ALT_INV_index(2),
	combout => \avgBuffer[19][0]~3_combout\);

-- Location: MLABCELL_X28_Y7_N21
\avgBuffer[19][0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[19][0]~4_combout\ = ( index(1) & ( !\process_0~0_combout\ ) ) # ( !index(1) & ( (!\process_0~0_combout\ & ((!\avgBuffer[19][0]~3_combout\) # (index(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001000100110011000100010011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(0),
	datab => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_avgBuffer[19][0]~3_combout\,
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[19][0]~4_combout\);

-- Location: LABCELL_X27_Y7_N48
\avgBuffer[19][0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[19][0]~5_combout\ = ( !\recv.data[30]~input_o\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\avgBuffer[19][0]~4_combout\ & !\recv.data[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_avgBuffer[19][0]~4_combout\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_recv.data[30]~input_o\,
	combout => \avgBuffer[19][0]~5_combout\);

-- Location: MLABCELL_X28_Y7_N39
\avgBuffer[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][0]~0_combout\ = ( !index(2) & ( (!index(3) & (\enable~q\ & index(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(3),
	datac => \ALT_INV_enable~q\,
	datad => ALT_INV_index(4),
	dataf => ALT_INV_index(2),
	combout => \avgBuffer[0][0]~0_combout\);

-- Location: MLABCELL_X28_Y7_N30
\avgBuffer[0][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][0]~1_combout\ = ( \avgBuffer[0][0]~0_combout\ & ( (!\process_0~0_combout\ & ((!index(1)) # (!index(0)))) ) ) # ( !\avgBuffer[0][0]~0_combout\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_index(1),
	datad => ALT_INV_index(0),
	dataf => \ALT_INV_avgBuffer[0][0]~0_combout\,
	combout => \avgBuffer[0][0]~1_combout\);

-- Location: LABCELL_X27_Y7_N54
\avgBuffer[0][0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][0]~2_combout\ = ( !\avgBuffer[0][0]~1_combout\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[30]~input_o\ & !\recv.data[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[30]~input_o\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_avgBuffer[0][0]~1_combout\,
	combout => \avgBuffer[0][0]~2_combout\);

-- Location: IOIBUF_X16_Y0_N18
\recv.data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(0),
	o => \recv.data[0]~input_o\);

-- Location: LABCELL_X30_Y4_N30
\avgBuffer[0][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][0]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[0][0]~SCLR_LUT_combout\);

-- Location: IOIBUF_X16_Y0_N52
\recv.data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(1),
	o => \recv.data[1]~input_o\);

-- Location: LABCELL_X33_Y4_N3
\avgBuffer[0][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][1]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[1]~input_o\,
	combout => \avgBuffer[0][1]~SCLR_LUT_combout\);

-- Location: IOIBUF_X20_Y0_N1
\recv.data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(2),
	o => \recv.data[2]~input_o\);

-- Location: LABCELL_X31_Y4_N57
\avgBuffer[0][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][2]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[2]~input_o\,
	combout => \avgBuffer[0][2]~SCLR_LUT_combout\);

-- Location: IOIBUF_X22_Y0_N52
\recv.data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(3),
	o => \recv.data[3]~input_o\);

-- Location: LABCELL_X33_Y4_N45
\avgBuffer[0][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[0][3]~SCLR_LUT_combout\);

-- Location: IOIBUF_X22_Y0_N1
\recv.data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(4),
	o => \recv.data[4]~input_o\);

-- Location: LABCELL_X31_Y6_N45
\avgBuffer[0][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][4]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[4]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[0][4]~SCLR_LUT_combout\);

-- Location: IOIBUF_X22_Y0_N18
\recv.data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(5),
	o => \recv.data[5]~input_o\);

-- Location: LABCELL_X31_Y4_N6
\avgBuffer[0][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][5]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[5]~input_o\,
	combout => \avgBuffer[0][5]~SCLR_LUT_combout\);

-- Location: IOIBUF_X18_Y0_N75
\recv.data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(6),
	o => \recv.data[6]~input_o\);

-- Location: LABCELL_X31_Y4_N27
\avgBuffer[0][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[0][6]~SCLR_LUT_combout\);

-- Location: IOIBUF_X20_Y0_N35
\recv.data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(7),
	o => \recv.data[7]~input_o\);

-- Location: LABCELL_X33_Y4_N48
\avgBuffer[0][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][7]~SCLR_LUT_combout\ = ( \recv.data[7]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[7]~input_o\,
	combout => \avgBuffer[0][7]~SCLR_LUT_combout\);

-- Location: IOIBUF_X16_Y0_N35
\recv.data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(8),
	o => \recv.data[8]~input_o\);

-- Location: LABCELL_X31_Y4_N36
\avgBuffer[0][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][8]~SCLR_LUT_combout\ = ( \recv.data[8]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[0][8]~SCLR_LUT_combout\);

-- Location: IOIBUF_X20_Y0_N52
\recv.data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(9),
	o => \recv.data[9]~input_o\);

-- Location: LABCELL_X31_Y4_N45
\avgBuffer[0][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][9]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[9]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[0][9]~SCLR_LUT_combout\);

-- Location: IOIBUF_X16_Y0_N1
\recv.data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(10),
	o => \recv.data[10]~input_o\);

-- Location: LABCELL_X30_Y4_N9
\avgBuffer[0][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][10]~SCLR_LUT_combout\ = (\recv.data[10]~input_o\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[10]~input_o\,
	datac => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[0][10]~SCLR_LUT_combout\);

-- Location: IOIBUF_X20_Y0_N18
\recv.data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(11),
	o => \recv.data[11]~input_o\);

-- Location: LABCELL_X31_Y4_N3
\avgBuffer[0][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][11]~SCLR_LUT_combout\ = ( \recv.data[11]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[11]~input_o\,
	combout => \avgBuffer[0][11]~SCLR_LUT_combout\);

-- Location: IOIBUF_X18_Y0_N41
\recv.data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(12),
	o => \recv.data[12]~input_o\);

-- Location: LABCELL_X31_Y4_N30
\avgBuffer[0][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][12]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[0][12]~SCLR_LUT_combout\);

-- Location: IOIBUF_X18_Y0_N92
\recv.data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(13),
	o => \recv.data[13]~input_o\);

-- Location: LABCELL_X33_Y8_N21
\avgBuffer[0][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][13]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[13]~input_o\,
	combout => \avgBuffer[0][13]~SCLR_LUT_combout\);

-- Location: IOIBUF_X14_Y0_N1
\recv.data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(14),
	o => \recv.data[14]~input_o\);

-- Location: LABCELL_X31_Y4_N21
\avgBuffer[0][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][14]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[14]~input_o\,
	combout => \avgBuffer[0][14]~SCLR_LUT_combout\);

-- Location: IOIBUF_X18_Y0_N58
\recv.data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(15),
	o => \recv.data[15]~input_o\);

-- Location: LABCELL_X33_Y4_N9
\avgBuffer[0][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[0][15]~SCLR_LUT_combout\ = (\recv.data[15]~input_o\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[15]~input_o\,
	datab => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[0][15]~SCLR_LUT_combout\);

-- Location: MLABCELL_X28_Y7_N12
\avgBuffer[18][0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][0]~8_combout\ = ( index(1) & ( !\process_0~0_combout\ ) ) # ( !index(1) & ( (!\process_0~0_combout\ & ((!\avgBuffer[19][0]~3_combout\) # (!index(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_avgBuffer[19][0]~3_combout\,
	datad => ALT_INV_index(0),
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[18][0]~8_combout\);

-- Location: LABCELL_X27_Y7_N6
\avgBuffer[18][0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][0]~9_combout\ = ( !\avgBuffer[18][0]~8_combout\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[30]~input_o\ & !\recv.data[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[30]~input_o\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_avgBuffer[18][0]~8_combout\,
	combout => \avgBuffer[18][0]~9_combout\);

-- Location: MLABCELL_X28_Y7_N15
\avgBuffer[1][0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][0]~6_combout\ = ( index(1) & ( (!\process_0~0_combout\ & ((!\avgBuffer[0][0]~0_combout\) # (index(0)))) ) ) # ( !index(1) & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_avgBuffer[0][0]~0_combout\,
	datad => ALT_INV_index(0),
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[1][0]~6_combout\);

-- Location: LABCELL_X27_Y7_N51
\avgBuffer[1][0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][0]~7_combout\ = ( !\recv.data[30]~input_o\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[29]~input_o\ & !\avgBuffer[1][0]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[29]~input_o\,
	datad => \ALT_INV_avgBuffer[1][0]~6_combout\,
	dataf => \ALT_INV_recv.data[30]~input_o\,
	combout => \avgBuffer[1][0]~7_combout\);

-- Location: LABCELL_X31_Y6_N51
\avgBuffer[1][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][0]~SCLR_LUT_combout\ = ( \recv.data[0]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[1][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N51
\avgBuffer[1][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][1]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[1]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[1][1]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N18
\avgBuffer[1][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][2]~SCLR_LUT_combout\ = ( \recv.data[2]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[2]~input_o\,
	combout => \avgBuffer[1][2]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N36
\avgBuffer[1][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[1][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N57
\avgBuffer[1][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][4]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[1][4]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N57
\avgBuffer[1][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][5]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[5]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[1][5]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N21
\avgBuffer[1][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[1][6]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N18
\avgBuffer[1][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][7]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[7]~input_o\,
	combout => \avgBuffer[1][7]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N39
\avgBuffer[1][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][8]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[1][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N30
\avgBuffer[1][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][9]~SCLR_LUT_combout\ = ( \recv.data[9]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[9]~input_o\,
	combout => \avgBuffer[1][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N24
\avgBuffer[1][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][10]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[1][10]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N9
\avgBuffer[1][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][11]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_recv.data[11]~input_o\,
	combout => \avgBuffer[1][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X30_Y6_N27
\avgBuffer[1][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[1][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N33
\avgBuffer[1][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][13]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[13]~input_o\,
	combout => \avgBuffer[1][13]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N48
\avgBuffer[1][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][14]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[14]~input_o\,
	combout => \avgBuffer[1][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X30_Y6_N54
\avgBuffer[1][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[1][15]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[15]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[1][15]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N36
\avgBuffer[18][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][0]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[18][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N6
\avgBuffer[18][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][1]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[1]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[18][1]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N3
\avgBuffer[18][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][2]~SCLR_LUT_combout\ = ( \recv.data[2]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[2]~input_o\,
	combout => \avgBuffer[18][2]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N30
\avgBuffer[18][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[18][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N54
\avgBuffer[18][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][4]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[18][4]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N24
\avgBuffer[18][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][5]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[5]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[18][5]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N15
\avgBuffer[18][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[18][6]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N12
\avgBuffer[18][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][7]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[7]~input_o\,
	combout => \avgBuffer[18][7]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N42
\avgBuffer[18][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][8]~SCLR_LUT_combout\ = ( \recv.data[8]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[18][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N33
\avgBuffer[18][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][9]~SCLR_LUT_combout\ = ( \recv.data[9]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[9]~input_o\,
	combout => \avgBuffer[18][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N3
\avgBuffer[18][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][10]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[18][10]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N6
\avgBuffer[18][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][11]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_recv.data[11]~input_o\,
	combout => \avgBuffer[18][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X30_Y6_N48
\avgBuffer[18][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[18][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N12
\avgBuffer[18][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][13]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[13]~input_o\,
	combout => \avgBuffer[18][13]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N39
\avgBuffer[18][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][14]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[14]~input_o\,
	combout => \avgBuffer[18][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X30_Y6_N57
\avgBuffer[18][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[18][15]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[15]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[18][15]~SCLR_LUT_combout\);

-- Location: MLABCELL_X28_Y7_N51
\avgBuffer[17][0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][0]~12_combout\ = ( index(1) & ( (!\process_0~0_combout\ & ((!\avgBuffer[19][0]~3_combout\) # (index(0)))) ) ) # ( !index(1) & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_index(0),
	datad => \ALT_INV_avgBuffer[19][0]~3_combout\,
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[17][0]~12_combout\);

-- Location: LABCELL_X27_Y7_N12
\avgBuffer[17][0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][0]~13_combout\ = ( !\avgBuffer[17][0]~12_combout\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[30]~input_o\ & !\recv.data[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[30]~input_o\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_avgBuffer[17][0]~12_combout\,
	combout => \avgBuffer[17][0]~13_combout\);

-- Location: MLABCELL_X28_Y7_N57
\avgBuffer[2][0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][0]~10_combout\ = ( index(1) & ( !\process_0~0_combout\ ) ) # ( !index(1) & ( (!\process_0~0_combout\ & ((!\avgBuffer[0][0]~0_combout\) # (!index(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_avgBuffer[0][0]~0_combout\,
	datad => ALT_INV_index(0),
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[2][0]~10_combout\);

-- Location: LABCELL_X27_Y7_N9
\avgBuffer[2][0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][0]~11_combout\ = ( !\recv.data[30]~input_o\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\avgBuffer[2][0]~10_combout\ & !\recv.data[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_avgBuffer[2][0]~10_combout\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_recv.data[30]~input_o\,
	combout => \avgBuffer[2][0]~11_combout\);

-- Location: LABCELL_X31_Y8_N27
\avgBuffer[2][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][0]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[2][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N36
\avgBuffer[2][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][1]~SCLR_LUT_combout\ = ( \recv.data[1]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[1]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[2][1]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N30
\avgBuffer[2][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][2]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[2]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[2][2]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N21
\avgBuffer[2][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][3]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[3]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[2][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N27
\avgBuffer[2][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][4]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[2][4]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N3
\avgBuffer[2][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][5]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[5]~input_o\,
	combout => \avgBuffer[2][5]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N51
\avgBuffer[2][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[2][6]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N33
\avgBuffer[2][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][7]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_recv.data[7]~input_o\,
	combout => \avgBuffer[2][7]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N36
\avgBuffer[2][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][8]~SCLR_LUT_combout\ = ( \recv.data[8]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[8]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[2][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X29_Y8_N33
\avgBuffer[2][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][9]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[9]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[2][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N57
\avgBuffer[2][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][10]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[10]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[2][10]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N57
\avgBuffer[2][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][11]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[11]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[2][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X30_Y6_N9
\avgBuffer[2][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[2][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N45
\avgBuffer[2][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][13]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[13]~input_o\,
	combout => \avgBuffer[2][13]~SCLR_LUT_combout\);

-- Location: LABCELL_X29_Y8_N51
\avgBuffer[2][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][14]~SCLR_LUT_combout\ = ( \recv.data[14]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[14]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[2][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N24
\avgBuffer[2][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[2][15]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[15]~input_o\,
	combout => \avgBuffer[2][15]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N42
\avgBuffer[17][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][0]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[17][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N0
\avgBuffer[17][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][1]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[1]~input_o\,
	combout => \avgBuffer[17][1]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N18
\avgBuffer[17][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][2]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[2]~input_o\,
	combout => \avgBuffer[17][2]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N18
\avgBuffer[17][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][3]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[3]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[17][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N48
\avgBuffer[17][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][4]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[4]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[17][4]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N42
\avgBuffer[17][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][5]~SCLR_LUT_combout\ = ( \recv.data[5]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[5]~input_o\,
	combout => \avgBuffer[17][5]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N48
\avgBuffer[17][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[17][6]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N30
\avgBuffer[17][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][7]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_recv.data[7]~input_o\,
	combout => \avgBuffer[17][7]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N3
\avgBuffer[17][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][8]~SCLR_LUT_combout\ = ( \recv.data[8]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[8]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[17][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X29_Y8_N6
\avgBuffer[17][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][9]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[9]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[17][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N15
\avgBuffer[17][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][10]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[10]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[17][10]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N9
\avgBuffer[17][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][11]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[11]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[17][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X30_Y6_N12
\avgBuffer[17][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[17][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y6_N15
\avgBuffer[17][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][13]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[13]~input_o\,
	combout => \avgBuffer[17][13]~SCLR_LUT_combout\);

-- Location: LABCELL_X29_Y8_N24
\avgBuffer[17][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][14]~SCLR_LUT_combout\ = ( \recv.data[14]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[14]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[17][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y8_N9
\avgBuffer[17][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[17][15]~SCLR_LUT_combout\ = ( \recv.data[15]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[15]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[17][15]~SCLR_LUT_combout\);

-- Location: MLABCELL_X28_Y7_N33
\avgBuffer[16][0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][0]~16_combout\ = (!\process_0~0_combout\ & ((!index(1)) # ((!index(0)) # (!\avgBuffer[19][0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000110011001100100011001100110010001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(1),
	datab => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_index(0),
	datad => \ALT_INV_avgBuffer[19][0]~3_combout\,
	combout => \avgBuffer[16][0]~16_combout\);

-- Location: LABCELL_X27_Y7_N30
\avgBuffer[16][0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][0]~17_combout\ = ( !\recv.data[30]~input_o\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\avgBuffer[16][0]~16_combout\ & !\recv.data[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_avgBuffer[16][0]~16_combout\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_recv.data[30]~input_o\,
	combout => \avgBuffer[16][0]~17_combout\);

-- Location: MLABCELL_X28_Y7_N54
\avgBuffer[3][0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][0]~14_combout\ = ( \avgBuffer[0][0]~0_combout\ & ( (!\process_0~0_combout\ & ((index(0)) # (index(1)))) ) ) # ( !\avgBuffer[0][0]~0_combout\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_index(1),
	datad => ALT_INV_index(0),
	dataf => \ALT_INV_avgBuffer[0][0]~0_combout\,
	combout => \avgBuffer[3][0]~14_combout\);

-- Location: LABCELL_X27_Y7_N15
\avgBuffer[3][0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][0]~15_combout\ = ( !\recv.data[30]~input_o\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[29]~input_o\ & !\avgBuffer[3][0]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[29]~input_o\,
	datad => \ALT_INV_avgBuffer[3][0]~14_combout\,
	dataf => \ALT_INV_recv.data[30]~input_o\,
	combout => \avgBuffer[3][0]~15_combout\);

-- Location: LABCELL_X33_Y10_N48
\avgBuffer[3][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][0]~SCLR_LUT_combout\ = ( \recv.data[0]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[0]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[3][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X27_Y10_N30
\avgBuffer[3][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][1]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[1]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[3][1]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N27
\avgBuffer[3][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][2]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[2]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[3][2]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N30
\avgBuffer[3][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[3][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y10_N18
\avgBuffer[3][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][4]~SCLR_LUT_combout\ = ( \recv.data[4]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[4]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[3][4]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N33
\avgBuffer[3][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][5]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[5]~input_o\,
	combout => \avgBuffer[3][5]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N24
\avgBuffer[3][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[3][6]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y10_N12
\avgBuffer[3][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][7]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[7]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[3][7]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N21
\avgBuffer[3][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][8]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[3][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X29_Y8_N45
\avgBuffer[3][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][9]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[9]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[3][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N36
\avgBuffer[3][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][10]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[3][10]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N51
\avgBuffer[3][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][11]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[11]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[3][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X30_Y6_N18
\avgBuffer[3][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[3][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N6
\avgBuffer[3][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][13]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[13]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[3][13]~SCLR_LUT_combout\);

-- Location: LABCELL_X29_Y8_N3
\avgBuffer[3][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][14]~SCLR_LUT_combout\ = ( \recv.data[14]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[14]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[3][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y10_N45
\avgBuffer[3][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[3][15]~SCLR_LUT_combout\ = ( \recv.data[15]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[15]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[3][15]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y10_N36
\avgBuffer[16][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][0]~SCLR_LUT_combout\ = ( \recv.data[0]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[0]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[16][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X27_Y10_N3
\avgBuffer[16][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][1]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[1]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[16][1]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N3
\avgBuffer[16][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][2]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[2]~input_o\,
	combout => \avgBuffer[16][2]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N18
\avgBuffer[16][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[16][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y10_N54
\avgBuffer[16][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][4]~SCLR_LUT_combout\ = ( \recv.data[4]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[4]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[16][4]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N39
\avgBuffer[16][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][5]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[5]~input_o\,
	combout => \avgBuffer[16][5]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N45
\avgBuffer[16][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[16][6]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y10_N24
\avgBuffer[16][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][7]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[7]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[16][7]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N54
\avgBuffer[16][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][8]~SCLR_LUT_combout\ = ( \recv.data[8]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[16][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X29_Y8_N54
\avgBuffer[16][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][9]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[9]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[16][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N0
\avgBuffer[16][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][10]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[16][10]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N12
\avgBuffer[16][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][11]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[11]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[16][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X30_Y6_N36
\avgBuffer[16][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[16][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N42
\avgBuffer[16][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][13]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[13]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[16][13]~SCLR_LUT_combout\);

-- Location: LABCELL_X29_Y8_N39
\avgBuffer[16][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][14]~SCLR_LUT_combout\ = ( \recv.data[14]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[14]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[16][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y10_N33
\avgBuffer[16][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[16][15]~SCLR_LUT_combout\ = ( \recv.data[15]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[15]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[16][15]~SCLR_LUT_combout\);

-- Location: MLABCELL_X28_Y7_N36
\avgBuffer[15][0]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][0]~21_combout\ = ( index(2) & ( (index(3) & (\enable~q\ & index(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(3),
	datac => \ALT_INV_enable~q\,
	datad => ALT_INV_index(4),
	dataf => ALT_INV_index(2),
	combout => \avgBuffer[15][0]~21_combout\);

-- Location: LABCELL_X29_Y7_N12
\avgBuffer[15][0]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][0]~22_combout\ = ( index(0) & ( index(1) & ( !\process_0~0_combout\ ) ) ) # ( !index(0) & ( index(1) & ( !\process_0~0_combout\ ) ) ) # ( index(0) & ( !index(1) & ( !\process_0~0_combout\ ) ) ) # ( !index(0) & ( !index(1) & ( 
-- (!\avgBuffer[15][0]~21_combout\ & !\process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avgBuffer[15][0]~21_combout\,
	datac => \ALT_INV_process_0~0_combout\,
	datae => ALT_INV_index(0),
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[15][0]~22_combout\);

-- Location: LABCELL_X27_Y7_N36
\avgBuffer[15][0]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][0]~23_combout\ = ( !\recv.data[29]~input_o\ & ( !\avgBuffer[15][0]~22_combout\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & !\recv.data[30]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[30]~input_o\,
	datae => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_avgBuffer[15][0]~22_combout\,
	combout => \avgBuffer[15][0]~23_combout\);

-- Location: MLABCELL_X28_Y7_N9
\avgBuffer[4][0]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][0]~18_combout\ = ( index(1) & ( (index(4) & (index(2) & (\enable~q\ & index(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(4),
	datab => ALT_INV_index(2),
	datac => \ALT_INV_enable~q\,
	datad => ALT_INV_index(0),
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[4][0]~18_combout\);

-- Location: MLABCELL_X28_Y7_N27
\avgBuffer[4][0]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][0]~19_combout\ = ( index(3) & ( !\process_0~0_combout\ ) ) # ( !index(3) & ( (!\process_0~0_combout\ & !\avgBuffer[4][0]~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_avgBuffer[4][0]~18_combout\,
	dataf => ALT_INV_index(3),
	combout => \avgBuffer[4][0]~19_combout\);

-- Location: LABCELL_X27_Y7_N33
\avgBuffer[4][0]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][0]~20_combout\ = ( !\recv.data[30]~input_o\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[29]~input_o\ & !\avgBuffer[4][0]~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[29]~input_o\,
	datad => \ALT_INV_avgBuffer[4][0]~19_combout\,
	dataf => \ALT_INV_recv.data[30]~input_o\,
	combout => \avgBuffer[4][0]~20_combout\);

-- Location: MLABCELL_X21_Y10_N39
\avgBuffer[4][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][0]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[4][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X27_Y10_N9
\avgBuffer[4][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][1]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[1]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[4][1]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y10_N33
\avgBuffer[4][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][2]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[2]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[4][2]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y10_N21
\avgBuffer[4][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][3]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[3]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[4][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y10_N51
\avgBuffer[4][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][4]~SCLR_LUT_combout\ = ( \recv.data[4]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[4][4]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y10_N51
\avgBuffer[4][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][5]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[5]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[4][5]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N39
\avgBuffer[4][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[4][6]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y10_N6
\avgBuffer[4][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][7]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[7]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[4][7]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y10_N36
\avgBuffer[4][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][8]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[4][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N39
\avgBuffer[4][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][9]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[9]~input_o\,
	combout => \avgBuffer[4][9]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y10_N12
\avgBuffer[4][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][10]~SCLR_LUT_combout\ = ( \recv.data[10]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[4][10]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y10_N39
\avgBuffer[4][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][11]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[11]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[4][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X30_Y6_N33
\avgBuffer[4][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[4][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y10_N45
\avgBuffer[4][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][13]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[13]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[4][13]~SCLR_LUT_combout\);

-- Location: LABCELL_X29_Y8_N15
\avgBuffer[4][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][14]~SCLR_LUT_combout\ = ( \recv.data[14]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[14]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[4][14]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y10_N21
\avgBuffer[4][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[4][15]~SCLR_LUT_combout\ = ( \recv.data[15]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[15]~input_o\,
	combout => \avgBuffer[4][15]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y10_N15
\avgBuffer[15][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][0]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[15][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X27_Y10_N24
\avgBuffer[15][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][1]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[1]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][1]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y10_N42
\avgBuffer[15][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][2]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[2]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][2]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y10_N0
\avgBuffer[15][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][3]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[3]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y10_N54
\avgBuffer[15][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][4]~SCLR_LUT_combout\ = ( \recv.data[4]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[15][4]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y10_N24
\avgBuffer[15][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][5]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[5]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][5]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N15
\avgBuffer[15][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][6]~SCLR_LUT_combout\ = ( \recv.data[6]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[6]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][6]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y10_N12
\avgBuffer[15][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][7]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[7]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][7]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y10_N54
\avgBuffer[15][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][8]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[8]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y8_N33
\avgBuffer[15][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][9]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[9]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][9]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y10_N0
\avgBuffer[15][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][10]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[10]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][10]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y10_N30
\avgBuffer[15][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][11]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[11]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N39
\avgBuffer[15][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[15][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y10_N24
\avgBuffer[15][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][13]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[13]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][13]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N42
\avgBuffer[15][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][14]~SCLR_LUT_combout\ = ( \recv.data[14]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[14]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[15][14]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y10_N6
\avgBuffer[15][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[15][15]~SCLR_LUT_combout\ = ( \recv.data[15]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[15]~input_o\,
	combout => \avgBuffer[15][15]~SCLR_LUT_combout\);

-- Location: MLABCELL_X28_Y7_N42
\avgBuffer[14][0]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][0]~27_combout\ = ( !index(1) & ( (\enable~q\ & (index(2) & (index(0) & index(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~q\,
	datab => ALT_INV_index(2),
	datac => ALT_INV_index(0),
	datad => ALT_INV_index(4),
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[14][0]~27_combout\);

-- Location: MLABCELL_X28_Y7_N45
\avgBuffer[14][0]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][0]~28_combout\ = ( !\process_0~0_combout\ & ( (!\avgBuffer[14][0]~27_combout\) # (!index(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avgBuffer[14][0]~27_combout\,
	datad => ALT_INV_index(3),
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[14][0]~28_combout\);

-- Location: LABCELL_X27_Y7_N18
\avgBuffer[14][0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][0]~29_combout\ = ( !\avgBuffer[14][0]~28_combout\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[30]~input_o\ & !\recv.data[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[30]~input_o\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_avgBuffer[14][0]~28_combout\,
	combout => \avgBuffer[14][0]~29_combout\);

-- Location: MLABCELL_X28_Y7_N3
\avgBuffer[5][0]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][0]~24_combout\ = ( index(2) & ( (!index(3) & (\enable~q\ & index(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(3),
	datac => \ALT_INV_enable~q\,
	datad => ALT_INV_index(4),
	dataf => ALT_INV_index(2),
	combout => \avgBuffer[5][0]~24_combout\);

-- Location: LABCELL_X29_Y7_N6
\avgBuffer[5][0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][0]~25_combout\ = ( index(0) & ( !\process_0~0_combout\ ) ) # ( !index(0) & ( !\process_0~0_combout\ & ( (!\avgBuffer[5][0]~24_combout\) # (!index(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avgBuffer[5][0]~24_combout\,
	datac => ALT_INV_index(1),
	datae => ALT_INV_index(0),
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[5][0]~25_combout\);

-- Location: LABCELL_X27_Y7_N21
\avgBuffer[5][0]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][0]~26_combout\ = ( !\recv.data[30]~input_o\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[29]~input_o\ & !\avgBuffer[5][0]~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[29]~input_o\,
	datad => \ALT_INV_avgBuffer[5][0]~25_combout\,
	dataf => \ALT_INV_recv.data[30]~input_o\,
	combout => \avgBuffer[5][0]~26_combout\);

-- Location: LABCELL_X19_Y8_N27
\avgBuffer[5][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][0]~SCLR_LUT_combout\ = (\recv.data[0]~input_o\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[0]~input_o\,
	datab => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[5][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N6
\avgBuffer[5][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][1]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[1]~input_o\,
	combout => \avgBuffer[5][1]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N51
\avgBuffer[5][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][2]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[2]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[5][2]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N18
\avgBuffer[5][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[5][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N9
\avgBuffer[5][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][4]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[5][4]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N30
\avgBuffer[5][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][5]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[5]~input_o\,
	combout => \avgBuffer[5][5]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N6
\avgBuffer[5][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[5][6]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y8_N6
\avgBuffer[5][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][7]~SCLR_LUT_combout\ = ( \recv.data[7]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[7]~input_o\,
	combout => \avgBuffer[5][7]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N15
\avgBuffer[5][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][8]~SCLR_LUT_combout\ = (\recv.data[8]~input_o\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[8]~input_o\,
	datab => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[5][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y8_N27
\avgBuffer[5][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][9]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[9]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[5][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N42
\avgBuffer[5][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][10]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[10]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[5][10]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N54
\avgBuffer[5][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][11]~SCLR_LUT_combout\ = ( \recv.data[11]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[11]~input_o\,
	combout => \avgBuffer[5][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N33
\avgBuffer[5][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[5][12]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N21
\avgBuffer[5][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][13]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[13]~input_o\,
	combout => \avgBuffer[5][13]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N3
\avgBuffer[5][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][14]~SCLR_LUT_combout\ = ( \recv.data[14]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[14]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[5][14]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N27
\avgBuffer[5][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[5][15]~SCLR_LUT_combout\ = ( \recv.data[15]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[15]~input_o\,
	combout => \avgBuffer[5][15]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N24
\avgBuffer[14][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][0]~SCLR_LUT_combout\ = (\recv.data[0]~input_o\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[0]~input_o\,
	datab => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[14][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N57
\avgBuffer[14][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][1]~SCLR_LUT_combout\ = ( \recv.data[1]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[1]~input_o\,
	combout => \avgBuffer[14][1]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N36
\avgBuffer[14][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][2]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[2]~input_o\,
	combout => \avgBuffer[14][2]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N15
\avgBuffer[14][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][3]~SCLR_LUT_combout\ = ( \recv.data[3]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[3]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[14][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N18
\avgBuffer[14][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][4]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[4]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[14][4]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N9
\avgBuffer[14][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][5]~SCLR_LUT_combout\ = ( \recv.data[5]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[5]~input_o\,
	combout => \avgBuffer[14][5]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N51
\avgBuffer[14][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][6]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[6]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[14][6]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N33
\avgBuffer[14][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][7]~SCLR_LUT_combout\ = ( \recv.data[7]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[7]~input_o\,
	combout => \avgBuffer[14][7]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N12
\avgBuffer[14][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][8]~SCLR_LUT_combout\ = (\recv.data[8]~input_o\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[8]~input_o\,
	datab => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[14][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N30
\avgBuffer[14][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][9]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[9]~input_o\,
	combout => \avgBuffer[14][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N3
\avgBuffer[14][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][10]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[10]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[14][10]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y8_N33
\avgBuffer[14][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][11]~SCLR_LUT_combout\ = ( \recv.data[11]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[11]~input_o\,
	combout => \avgBuffer[14][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N30
\avgBuffer[14][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[14][12]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N39
\avgBuffer[14][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][13]~SCLR_LUT_combout\ = ( \recv.data[13]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[13]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[14][13]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N54
\avgBuffer[14][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][14]~SCLR_LUT_combout\ = ( \recv.data[14]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[14]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[14][14]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y8_N24
\avgBuffer[14][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[14][15]~SCLR_LUT_combout\ = ( \recv.data[15]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[15]~input_o\,
	combout => \avgBuffer[14][15]~SCLR_LUT_combout\);

-- Location: LABCELL_X29_Y7_N36
\avgBuffer[13][0]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][0]~32_combout\ = ( index(0) & ( index(1) & ( !\process_0~0_combout\ ) ) ) # ( !index(0) & ( index(1) & ( (!\avgBuffer[15][0]~21_combout\ & !\process_0~0_combout\) ) ) ) # ( index(0) & ( !index(1) & ( !\process_0~0_combout\ ) ) ) # ( 
-- !index(0) & ( !index(1) & ( !\process_0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avgBuffer[15][0]~21_combout\,
	datac => \ALT_INV_process_0~0_combout\,
	datae => ALT_INV_index(0),
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[13][0]~32_combout\);

-- Location: LABCELL_X27_Y7_N3
\avgBuffer[13][0]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][0]~33_combout\ = ( !\avgBuffer[13][0]~32_combout\ & ( (!\recv.data[30]~input_o\ & (!\recv.data[28]~input_o\ & (\recv.data[31]~input_o\ & !\recv.data[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[30]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[31]~input_o\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_avgBuffer[13][0]~32_combout\,
	combout => \avgBuffer[13][0]~33_combout\);

-- Location: MLABCELL_X28_Y7_N48
\avgBuffer[6][0]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][0]~30_combout\ = ( \avgBuffer[14][0]~27_combout\ & ( (!\process_0~0_combout\ & index(3)) ) ) # ( !\avgBuffer[14][0]~27_combout\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_index(3),
	dataf => \ALT_INV_avgBuffer[14][0]~27_combout\,
	combout => \avgBuffer[6][0]~30_combout\);

-- Location: LABCELL_X27_Y7_N27
\avgBuffer[6][0]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][0]~31_combout\ = ( !\recv.data[30]~input_o\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\avgBuffer[6][0]~30_combout\ & !\recv.data[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_avgBuffer[6][0]~30_combout\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_recv.data[30]~input_o\,
	combout => \avgBuffer[6][0]~31_combout\);

-- Location: MLABCELL_X21_Y6_N48
\avgBuffer[6][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][0]~SCLR_LUT_combout\ = ( \recv.data[0]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[6][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N36
\avgBuffer[6][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][1]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[1]~input_o\,
	combout => \avgBuffer[6][1]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N45
\avgBuffer[6][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][2]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[2]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[6][2]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N0
\avgBuffer[6][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[6][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y4_N15
\avgBuffer[6][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][4]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[6][4]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y6_N6
\avgBuffer[6][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][5]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[5]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[6][5]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N42
\avgBuffer[6][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][6]~SCLR_LUT_combout\ = ( \recv.data[6]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[6][6]~SCLR_LUT_combout\);

-- Location: MLABCELL_X25_Y6_N42
\avgBuffer[6][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][7]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[7]~input_o\,
	combout => \avgBuffer[6][7]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N54
\avgBuffer[6][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][8]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[6][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y8_N48
\avgBuffer[6][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][9]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[9]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[6][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N51
\avgBuffer[6][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][10]~SCLR_LUT_combout\ = ( \recv.data[10]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[6][10]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N15
\avgBuffer[6][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][11]~SCLR_LUT_combout\ = ( \recv.data[11]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[11]~input_o\,
	combout => \avgBuffer[6][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N48
\avgBuffer[6][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[6][12]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N33
\avgBuffer[6][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][13]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[13]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[6][13]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N21
\avgBuffer[6][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][14]~SCLR_LUT_combout\ = (\recv.data[14]~input_o\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[14]~input_o\,
	datab => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[6][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N15
\avgBuffer[6][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[6][15]~SCLR_LUT_combout\ = ( \recv.data[15]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[15]~input_o\,
	combout => \avgBuffer[6][15]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N0
\avgBuffer[13][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][0]~SCLR_LUT_combout\ = ( \recv.data[0]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[13][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N12
\avgBuffer[13][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][1]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[1]~input_o\,
	combout => \avgBuffer[13][1]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N21
\avgBuffer[13][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][2]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[2]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[13][2]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N27
\avgBuffer[13][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][3]~SCLR_LUT_combout\ = ( \recv.data[3]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[13][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N57
\avgBuffer[13][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][4]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[13][4]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y6_N15
\avgBuffer[13][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][5]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[5]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[13][5]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N57
\avgBuffer[13][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[13][6]~SCLR_LUT_combout\);

-- Location: MLABCELL_X25_Y6_N51
\avgBuffer[13][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][7]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[7]~input_o\,
	combout => \avgBuffer[13][7]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N36
\avgBuffer[13][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][8]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[13][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N3
\avgBuffer[13][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][9]~SCLR_LUT_combout\ = ( \recv.data[9]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[9]~input_o\,
	combout => \avgBuffer[13][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N6
\avgBuffer[13][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][10]~SCLR_LUT_combout\ = ( \recv.data[10]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[13][10]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N9
\avgBuffer[13][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][11]~SCLR_LUT_combout\ = ( \recv.data[11]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[11]~input_o\,
	combout => \avgBuffer[13][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N9
\avgBuffer[13][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[13][12]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N24
\avgBuffer[13][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][13]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[13]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[13][13]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y6_N18
\avgBuffer[13][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][14]~SCLR_LUT_combout\ = (\recv.data[14]~input_o\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[14]~input_o\,
	datab => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[13][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y6_N54
\avgBuffer[13][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[13][15]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[15]~input_o\,
	combout => \avgBuffer[13][15]~SCLR_LUT_combout\);

-- Location: MLABCELL_X28_Y7_N24
\avgBuffer[12][0]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][0]~36_combout\ = ( index(3) & ( (!\process_0~0_combout\ & !\avgBuffer[4][0]~18_combout\) ) ) # ( !index(3) & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_avgBuffer[4][0]~18_combout\,
	dataf => ALT_INV_index(3),
	combout => \avgBuffer[12][0]~36_combout\);

-- Location: LABCELL_X27_Y7_N42
\avgBuffer[12][0]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][0]~37_combout\ = ( !\avgBuffer[12][0]~36_combout\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[30]~input_o\ & !\recv.data[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[30]~input_o\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_avgBuffer[12][0]~36_combout\,
	combout => \avgBuffer[12][0]~37_combout\);

-- Location: LABCELL_X29_Y7_N57
\avgBuffer[7][0]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][0]~34_combout\ = ( index(0) & ( index(1) & ( !\process_0~0_combout\ ) ) ) # ( !index(0) & ( index(1) & ( !\process_0~0_combout\ ) ) ) # ( index(0) & ( !index(1) & ( !\process_0~0_combout\ ) ) ) # ( !index(0) & ( !index(1) & ( 
-- (!\process_0~0_combout\ & !\avgBuffer[5][0]~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_avgBuffer[5][0]~24_combout\,
	datae => ALT_INV_index(0),
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[7][0]~34_combout\);

-- Location: LABCELL_X27_Y7_N45
\avgBuffer[7][0]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][0]~35_combout\ = ( !\recv.data[30]~input_o\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[29]~input_o\ & !\avgBuffer[7][0]~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[29]~input_o\,
	datad => \ALT_INV_avgBuffer[7][0]~34_combout\,
	dataf => \ALT_INV_recv.data[30]~input_o\,
	combout => \avgBuffer[7][0]~35_combout\);

-- Location: LABCELL_X19_Y4_N24
\avgBuffer[7][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][0]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[0]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[7][0]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N39
\avgBuffer[7][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][1]~SCLR_LUT_combout\ = ( \recv.data[1]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[1]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[7][1]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N21
\avgBuffer[7][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][2]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[2]~input_o\,
	combout => \avgBuffer[7][2]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N15
\avgBuffer[7][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[7][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y4_N54
\avgBuffer[7][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][4]~SCLR_LUT_combout\ = ( \recv.data[4]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[7][4]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N18
\avgBuffer[7][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][5]~SCLR_LUT_combout\ = ( \recv.data[5]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[5]~input_o\,
	combout => \avgBuffer[7][5]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N33
\avgBuffer[7][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[7][6]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N0
\avgBuffer[7][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][7]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[7]~input_o\,
	combout => \avgBuffer[7][7]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y4_N6
\avgBuffer[7][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][8]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[7][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y4_N36
\avgBuffer[7][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][9]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[9]~input_o\,
	combout => \avgBuffer[7][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y4_N21
\avgBuffer[7][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][10]~SCLR_LUT_combout\ = ( \recv.data[10]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[7][10]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N48
\avgBuffer[7][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][11]~SCLR_LUT_combout\ = ( \recv.data[11]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[11]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[7][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y4_N48
\avgBuffer[7][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][12]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[7][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y4_N18
\avgBuffer[7][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][13]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[13]~input_o\,
	combout => \avgBuffer[7][13]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N54
\avgBuffer[7][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][14]~SCLR_LUT_combout\ = ( \recv.data[14]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[14]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[7][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y4_N9
\avgBuffer[7][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[7][15]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[15]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[7][15]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y4_N57
\avgBuffer[12][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][0]~SCLR_LUT_combout\ = ( \recv.data[0]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[12][0]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N12
\avgBuffer[12][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][1]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[1]~input_o\,
	combout => \avgBuffer[12][1]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N9
\avgBuffer[12][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][2]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[2]~input_o\,
	combout => \avgBuffer[12][2]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N3
\avgBuffer[12][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[12][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y4_N36
\avgBuffer[12][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][4]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_recv.data[4]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[12][4]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N42
\avgBuffer[12][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][5]~SCLR_LUT_combout\ = ( \recv.data[5]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[5]~input_o\,
	combout => \avgBuffer[12][5]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N45
\avgBuffer[12][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[12][6]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N6
\avgBuffer[12][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][7]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[7]~input_o\,
	combout => \avgBuffer[12][7]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y4_N27
\avgBuffer[12][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][8]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[12][8]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y4_N30
\avgBuffer[12][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][9]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[9]~input_o\,
	combout => \avgBuffer[12][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y4_N30
\avgBuffer[12][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][10]~SCLR_LUT_combout\ = ( \recv.data[10]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[12][10]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N27
\avgBuffer[12][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][11]~SCLR_LUT_combout\ = ( \recv.data[11]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[11]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[12][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y4_N12
\avgBuffer[12][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][12]~SCLR_LUT_combout\ = ( \recv.data[12]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[12][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X22_Y4_N15
\avgBuffer[12][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][13]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[13]~input_o\,
	combout => \avgBuffer[12][13]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y4_N30
\avgBuffer[12][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][14]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[14]~input_o\,
	combout => \avgBuffer[12][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y4_N45
\avgBuffer[12][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[12][15]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[15]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[12][15]~SCLR_LUT_combout\);

-- Location: MLABCELL_X28_Y7_N6
\avgBuffer[8][0]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][0]~38_combout\ = ( \enable~q\ & ( (index(4) & (!index(2) & index(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(4),
	datab => ALT_INV_index(2),
	datac => ALT_INV_index(3),
	dataf => \ALT_INV_enable~q\,
	combout => \avgBuffer[8][0]~38_combout\);

-- Location: MLABCELL_X28_Y7_N18
\avgBuffer[11][0]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][0]~41_combout\ = ( \avgBuffer[8][0]~38_combout\ & ( (!\process_0~0_combout\ & ((index(0)) # (index(1)))) ) ) # ( !\avgBuffer[8][0]~38_combout\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_index(1),
	datad => ALT_INV_index(0),
	dataf => \ALT_INV_avgBuffer[8][0]~38_combout\,
	combout => \avgBuffer[11][0]~41_combout\);

-- Location: LABCELL_X27_Y7_N24
\avgBuffer[11][0]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][0]~42_combout\ = ( !\avgBuffer[11][0]~41_combout\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[30]~input_o\ & !\recv.data[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[30]~input_o\,
	datad => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_avgBuffer[11][0]~41_combout\,
	combout => \avgBuffer[11][0]~42_combout\);

-- Location: LABCELL_X33_Y7_N15
\avgBuffer[10][0]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][0]~45_combout\ = ( \avgBuffer[8][0]~38_combout\ & ( index(1) & ( !\process_0~0_combout\ ) ) ) # ( !\avgBuffer[8][0]~38_combout\ & ( index(1) & ( !\process_0~0_combout\ ) ) ) # ( \avgBuffer[8][0]~38_combout\ & ( !index(1) & ( (!index(0) & 
-- !\process_0~0_combout\) ) ) ) # ( !\avgBuffer[8][0]~38_combout\ & ( !index(1) & ( !\process_0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110000001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_index(0),
	datac => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_avgBuffer[8][0]~38_combout\,
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[10][0]~45_combout\);

-- Location: LABCELL_X27_Y7_N57
\avgBuffer[10][0]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][0]~46_combout\ = ( !\recv.data[30]~input_o\ & ( (\recv.data[31]~input_o\ & (!\recv.data[28]~input_o\ & (!\recv.data[29]~input_o\ & !\avgBuffer[10][0]~45_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[31]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[29]~input_o\,
	datad => \ALT_INV_avgBuffer[10][0]~45_combout\,
	dataf => \ALT_INV_recv.data[30]~input_o\,
	combout => \avgBuffer[10][0]~46_combout\);

-- Location: MLABCELL_X28_Y6_N12
\avgBuffer[8][0]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][0]~39_combout\ = ( index(1) & ( (!\process_0~0_combout\ & ((!\avgBuffer[8][0]~38_combout\) # (!index(0)))) ) ) # ( !index(1) & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_avgBuffer[8][0]~38_combout\,
	datad => ALT_INV_index(0),
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[8][0]~39_combout\);

-- Location: MLABCELL_X25_Y6_N15
\avgBuffer[8][0]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][0]~40_combout\ = ( \recv.data[31]~input_o\ & ( !\avgBuffer[8][0]~39_combout\ & ( (!\recv.data[30]~input_o\ & (!\recv.data[28]~input_o\ & !\recv.data[29]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[30]~input_o\,
	datab => \ALT_INV_recv.data[28]~input_o\,
	datac => \ALT_INV_recv.data[29]~input_o\,
	datae => \ALT_INV_recv.data[31]~input_o\,
	dataf => \ALT_INV_avgBuffer[8][0]~39_combout\,
	combout => \avgBuffer[8][0]~40_combout\);

-- Location: LABCELL_X19_Y2_N18
\avgBuffer[8][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][0]~SCLR_LUT_combout\ = ( \recv.data[0]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[8][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X18_Y2_N57
\avgBuffer[8][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][1]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[1]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[8][1]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N42
\avgBuffer[8][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][2]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[2]~input_o\,
	combout => \avgBuffer[8][2]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N24
\avgBuffer[8][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[8][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N6
\avgBuffer[8][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][4]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[8][4]~SCLR_LUT_combout\);

-- Location: MLABCELL_X25_Y2_N48
\avgBuffer[8][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][5]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[5]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[8][5]~SCLR_LUT_combout\);

-- Location: LABCELL_X18_Y2_N12
\avgBuffer[8][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][6]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[6]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[8][6]~SCLR_LUT_combout\);

-- Location: MLABCELL_X25_Y2_N21
\avgBuffer[8][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][7]~SCLR_LUT_combout\ = ( \recv.data[7]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[7]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[8][7]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N48
\avgBuffer[8][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][8]~SCLR_LUT_combout\ = ( \recv.data[8]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[8][8]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N18
\avgBuffer[8][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][9]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[9]~input_o\,
	combout => \avgBuffer[8][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N0
\avgBuffer[8][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][10]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[8][10]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N36
\avgBuffer[8][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][11]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[11]~input_o\,
	combout => \avgBuffer[8][11]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N21
\avgBuffer[8][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][12]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[8][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N45
\avgBuffer[8][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][13]~SCLR_LUT_combout\ = ( \recv.data[13]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[13]~input_o\,
	combout => \avgBuffer[8][13]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N27
\avgBuffer[8][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][14]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[14]~input_o\,
	combout => \avgBuffer[8][14]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N57
\avgBuffer[8][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[8][15]~SCLR_LUT_combout\ = ( \recv.data[15]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[15]~input_o\,
	combout => \avgBuffer[8][15]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N21
\avgBuffer[11][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][0]~SCLR_LUT_combout\ = ( \recv.data[0]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[11][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X18_Y2_N36
\avgBuffer[11][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][1]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[1]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[11][1]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N15
\avgBuffer[11][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][2]~SCLR_LUT_combout\ = ( \recv.data[2]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[2]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[11][2]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N54
\avgBuffer[11][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[11][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N36
\avgBuffer[11][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][4]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[11][4]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N24
\avgBuffer[11][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][5]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[5]~input_o\,
	combout => \avgBuffer[11][5]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N51
\avgBuffer[11][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][6]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[6]~input_o\,
	combout => \avgBuffer[11][6]~SCLR_LUT_combout\);

-- Location: MLABCELL_X25_Y2_N12
\avgBuffer[11][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][7]~SCLR_LUT_combout\ = ( \recv.data[7]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[7]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[11][7]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N3
\avgBuffer[11][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][8]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[8]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[11][8]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N33
\avgBuffer[11][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][9]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[9]~input_o\,
	combout => \avgBuffer[11][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N12
\avgBuffer[11][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][10]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[11][10]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N3
\avgBuffer[11][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][11]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[11]~input_o\,
	combout => \avgBuffer[11][11]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N51
\avgBuffer[11][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][12]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[11][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N9
\avgBuffer[11][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][13]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[13]~input_o\,
	combout => \avgBuffer[11][13]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N39
\avgBuffer[11][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][14]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[14]~input_o\,
	combout => \avgBuffer[11][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y4_N3
\avgBuffer[11][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[11][15]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[15]~input_o\,
	datae => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[11][15]~SCLR_LUT_combout\);

-- Location: MLABCELL_X28_Y6_N45
\avgBuffer[9][0]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[9][0]~43_combout\ = ( index(1) & ( (!\process_0~0_combout\ & ((!\avgBuffer[8][0]~38_combout\) # (index(0)))) ) ) # ( !index(1) & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avgBuffer[8][0]~38_combout\,
	datab => ALT_INV_index(0),
	datac => \ALT_INV_process_0~0_combout\,
	dataf => ALT_INV_index(1),
	combout => \avgBuffer[9][0]~43_combout\);

-- Location: MLABCELL_X25_Y6_N6
\avgBuffer[9][0]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[9][0]~44_combout\ = ( \recv.data[31]~input_o\ & ( !\recv.data[28]~input_o\ & ( (!\avgBuffer[9][0]~43_combout\ & (!\recv.data[29]~input_o\ & !\recv.data[30]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avgBuffer[9][0]~43_combout\,
	datab => \ALT_INV_recv.data[29]~input_o\,
	datac => \ALT_INV_recv.data[30]~input_o\,
	datae => \ALT_INV_recv.data[31]~input_o\,
	dataf => \ALT_INV_recv.data[28]~input_o\,
	combout => \avgBuffer[9][0]~44_combout\);

-- Location: FF_X19_Y2_N40
\avgBuffer[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[0]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][0]~q\);

-- Location: FF_X19_Y2_N46
\avgBuffer[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[1]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][1]~q\);

-- Location: FF_X19_Y2_N7
\avgBuffer[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[2]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][2]~q\);

-- Location: FF_X19_Y2_N28
\avgBuffer[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[3]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][3]~q\);

-- Location: FF_X19_Y2_N58
\avgBuffer[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[4]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][4]~q\);

-- Location: FF_X19_Y2_N13
\avgBuffer[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[5]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][5]~q\);

-- Location: FF_X19_Y2_N19
\avgBuffer[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[6]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][6]~q\);

-- Location: FF_X19_Y2_N16
\avgBuffer[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[7]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][7]~q\);

-- Location: FF_X19_Y2_N1
\avgBuffer[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[8]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][8]~q\);

-- Location: FF_X19_Y2_N25
\avgBuffer[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[9]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][9]~q\);

-- Location: FF_X19_Y2_N52
\avgBuffer[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[10]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][10]~q\);

-- Location: FF_X19_Y2_N4
\avgBuffer[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[11]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][11]~q\);

-- Location: FF_X19_Y2_N38
\avgBuffer[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[12]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][12]~q\);

-- Location: FF_X19_Y2_N31
\avgBuffer[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[13]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][13]~q\);

-- Location: FF_X19_Y2_N34
\avgBuffer[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[14]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][14]~q\);

-- Location: FF_X19_Y2_N56
\avgBuffer[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[15]~input_o\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \avgBuffer[9][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avgBuffer[9][15]~q\);

-- Location: LABCELL_X19_Y2_N42
\avgBuffer[10][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][0]~SCLR_LUT_combout\ = ( \recv.data[0]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[0]~input_o\,
	combout => \avgBuffer[10][0]~SCLR_LUT_combout\);

-- Location: LABCELL_X18_Y2_N6
\avgBuffer[10][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][1]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[1]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[10][1]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N6
\avgBuffer[10][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][2]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[2]~input_o\,
	combout => \avgBuffer[10][2]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N9
\avgBuffer[10][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][3]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[3]~input_o\,
	combout => \avgBuffer[10][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N57
\avgBuffer[10][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][4]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[4]~input_o\,
	combout => \avgBuffer[10][4]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N33
\avgBuffer[10][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][5]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[5]~input_o\,
	combout => \avgBuffer[10][5]~SCLR_LUT_combout\);

-- Location: LABCELL_X18_Y2_N0
\avgBuffer[10][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][6]~SCLR_LUT_combout\ = ( !\process_0~0_combout\ & ( \recv.data[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_recv.data[6]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[10][6]~SCLR_LUT_combout\);

-- Location: MLABCELL_X25_Y2_N33
\avgBuffer[10][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][7]~SCLR_LUT_combout\ = ( \recv.data[7]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_recv.data[7]~input_o\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \avgBuffer[10][7]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N39
\avgBuffer[10][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][8]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[8]~input_o\,
	combout => \avgBuffer[10][8]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N45
\avgBuffer[10][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][9]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_recv.data[9]~input_o\,
	combout => \avgBuffer[10][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N30
\avgBuffer[10][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][10]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[10]~input_o\,
	combout => \avgBuffer[10][10]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N30
\avgBuffer[10][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][11]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[11]~input_o\,
	combout => \avgBuffer[10][11]~SCLR_LUT_combout\);

-- Location: MLABCELL_X21_Y2_N27
\avgBuffer[10][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][12]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[12]~input_o\,
	combout => \avgBuffer[10][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N48
\avgBuffer[10][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][13]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[13]~input_o\,
	combout => \avgBuffer[10][13]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N15
\avgBuffer[10][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][14]~SCLR_LUT_combout\ = (!\process_0~0_combout\ & \recv.data[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[14]~input_o\,
	combout => \avgBuffer[10][14]~SCLR_LUT_combout\);

-- Location: LABCELL_X19_Y2_N54
\avgBuffer[10][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \avgBuffer[10][15]~SCLR_LUT_combout\ = ( \recv.data[15]~input_o\ & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_recv.data[15]~input_o\,
	combout => \avgBuffer[10][15]~SCLR_LUT_combout\);

-- Location: DSP_X20_Y2_N0
\Add1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "2",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "1",
	by_use_scan_in => "false",
	by_width => 19,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "true",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Add1~8_ACLR_bus\,
	clk => \Add1~8_CLK_bus\,
	ena => \Add1~8_ENA_bus\,
	ax => \Add1~8_AX_bus\,
	ay => \Add1~8_AY_bus\,
	bx => \Add1~8_BX_bus\,
	by => \Add1~8_BY_bus\,
	resulta => \Add1~8_RESULTA_bus\);

-- Location: DSP_X20_Y4_N0
\Mult2~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult2~mac_ACLR_bus\,
	clk => \Mult2~mac_CLK_bus\,
	ena => \Mult2~mac_ENA_bus\,
	ax => \Mult2~mac_AX_bus\,
	ay => \Mult2~mac_AY_bus\,
	bx => \Mult2~mac_BX_bus\,
	by => \Mult2~mac_BY_bus\,
	resulta => \Mult2~mac_RESULTA_bus\);

-- Location: DSP_X20_Y6_N0
\Mult3~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult3~mac_ACLR_bus\,
	clk => \Mult3~mac_CLK_bus\,
	ena => \Mult3~mac_ENA_bus\,
	ax => \Mult3~mac_AX_bus\,
	ay => \Mult3~mac_AY_bus\,
	bx => \Mult3~mac_BX_bus\,
	by => \Mult3~mac_BY_bus\,
	resulta => \Mult3~mac_RESULTA_bus\);

-- Location: DSP_X20_Y8_N0
\Mult4~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult4~mac_ACLR_bus\,
	clk => \Mult4~mac_CLK_bus\,
	ena => \Mult4~mac_ENA_bus\,
	ax => \Mult4~mac_AX_bus\,
	ay => \Mult4~mac_AY_bus\,
	bx => \Mult4~mac_BX_bus\,
	by => \Mult4~mac_BY_bus\,
	resulta => \Mult4~mac_RESULTA_bus\);

-- Location: DSP_X20_Y10_N0
\Mult5~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult5~mac_ACLR_bus\,
	clk => \Mult5~mac_CLK_bus\,
	ena => \Mult5~mac_ENA_bus\,
	ax => \Mult5~mac_AX_bus\,
	ay => \Mult5~mac_AY_bus\,
	bx => \Mult5~mac_BX_bus\,
	by => \Mult5~mac_BY_bus\,
	resulta => \Mult5~mac_RESULTA_bus\);

-- Location: DSP_X32_Y10_N0
\Mult6~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult6~mac_ACLR_bus\,
	clk => \Mult6~mac_CLK_bus\,
	ena => \Mult6~mac_ENA_bus\,
	ax => \Mult6~mac_AX_bus\,
	ay => \Mult6~mac_AY_bus\,
	bx => \Mult6~mac_BX_bus\,
	by => \Mult6~mac_BY_bus\,
	resulta => \Mult6~mac_RESULTA_bus\);

-- Location: DSP_X32_Y8_N0
\Mult7~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult7~mac_ACLR_bus\,
	clk => \Mult7~mac_CLK_bus\,
	ena => \Mult7~mac_ENA_bus\,
	ax => \Mult7~mac_AX_bus\,
	ay => \Mult7~mac_AY_bus\,
	bx => \Mult7~mac_BX_bus\,
	by => \Mult7~mac_BY_bus\,
	resulta => \Mult7~mac_RESULTA_bus\);

-- Location: DSP_X32_Y6_N0
\Mult8~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult8~mac_ACLR_bus\,
	clk => \Mult8~mac_CLK_bus\,
	ena => \Mult8~mac_ENA_bus\,
	ax => \Mult8~mac_AX_bus\,
	ay => \Mult8~mac_AY_bus\,
	bx => \Mult8~mac_BX_bus\,
	by => \Mult8~mac_BY_bus\,
	resulta => \Mult8~mac_RESULTA_bus\);

-- Location: DSP_X32_Y4_N0
\Mult9~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult9~mac_ACLR_bus\,
	clk => \Mult9~mac_CLK_bus\,
	ena => \Mult9~mac_ENA_bus\,
	ax => \Mult9~mac_AX_bus\,
	ay => \Mult9~mac_AY_bus\,
	bx => \Mult9~mac_BX_bus\,
	by => \Mult9~mac_BY_bus\,
	resulta => \Mult9~mac_RESULTA_bus\);

-- Location: LABCELL_X33_Y4_N33
\corrVar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~0_combout\ = ( \Mult9~mac_resulta\ & ( ((\Add0~1_sumout\ & !\process_0~0_combout\)) # (corrVar(0)) ) ) # ( !\Mult9~mac_resulta\ & ( (corrVar(0) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_corrVar(0),
	dataf => \ALT_INV_Mult9~mac_resulta\,
	combout => \corrVar~0_combout\);

-- Location: FF_X34_Y4_N40
\send.data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~0_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[0]~reg0_q\);

-- Location: FF_X31_Y4_N50
\corrVar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~1_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(1));

-- Location: LABCELL_X31_Y4_N48
\corrVar~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~1_combout\ = ( \Mult9~309\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(1)) ) ) # ( !\Mult9~309\ & ( (corrVar(1) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => ALT_INV_corrVar(1),
	dataf => \ALT_INV_Mult9~309\,
	combout => \corrVar~1_combout\);

-- Location: FF_X31_Y4_N52
\send.data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~1_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[1]~reg0_q\);

-- Location: MLABCELL_X34_Y4_N30
\corrVar[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar[2]~feeder_combout\ = ( \corrVar~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~2_combout\,
	combout => \corrVar[2]~feeder_combout\);

-- Location: FF_X34_Y4_N32
\corrVar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar[2]~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(2));

-- Location: LABCELL_X33_Y4_N30
\corrVar~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~2_combout\ = (!\Add0~1_sumout\ & (((corrVar(2))))) # (\Add0~1_sumout\ & ((!\process_0~0_combout\ & ((\Mult9~310\))) # (\process_0~0_combout\ & (corrVar(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101101001111000010110100111100001011010011110000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_corrVar(2),
	datad => \ALT_INV_Mult9~310\,
	combout => \corrVar~2_combout\);

-- Location: FF_X33_Y4_N32
\send.data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~2_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[2]~reg0_q\);

-- Location: MLABCELL_X34_Y4_N12
\corrVar[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar[3]~feeder_combout\ = ( \corrVar~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~3_combout\,
	combout => \corrVar[3]~feeder_combout\);

-- Location: FF_X34_Y4_N13
\corrVar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar[3]~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(3));

-- Location: LABCELL_X33_Y4_N12
\corrVar~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~3_combout\ = ( \Mult9~311\ & ( ((\Add0~1_sumout\ & !\process_0~0_combout\)) # (corrVar(3)) ) ) # ( !\Mult9~311\ & ( (corrVar(3) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_corrVar(3),
	dataf => \ALT_INV_Mult9~311\,
	combout => \corrVar~3_combout\);

-- Location: MLABCELL_X34_Y4_N57
\send.data[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[3]~reg0feeder_combout\ = ( \corrVar~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~3_combout\,
	combout => \send.data[3]~reg0feeder_combout\);

-- Location: FF_X34_Y4_N58
\send.data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[3]~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[3]~reg0_q\);

-- Location: FF_X33_Y4_N26
\corrVar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~4_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(4));

-- Location: LABCELL_X33_Y4_N24
\corrVar~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~4_combout\ = ( \Mult9~312\ & ( ((\Add0~1_sumout\ & !\process_0~0_combout\)) # (corrVar(4)) ) ) # ( !\Mult9~312\ & ( (corrVar(4) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datad => ALT_INV_corrVar(4),
	dataf => \ALT_INV_Mult9~312\,
	combout => \corrVar~4_combout\);

-- Location: MLABCELL_X34_Y4_N24
\send.data[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[4]~reg0feeder_combout\ = ( \corrVar~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~4_combout\,
	combout => \send.data[4]~reg0feeder_combout\);

-- Location: FF_X34_Y4_N25
\send.data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[4]~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[4]~reg0_q\);

-- Location: FF_X33_Y4_N20
\corrVar[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~5_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(5));

-- Location: LABCELL_X33_Y4_N0
\corrVar~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~5_combout\ = ( \Mult9~313\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(5)) ) ) # ( !\Mult9~313\ & ( (corrVar(5) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010101000101011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_corrVar(5),
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_Mult9~313\,
	combout => \corrVar~5_combout\);

-- Location: MLABCELL_X34_Y4_N45
\send.data[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[5]~reg0feeder_combout\ = ( \corrVar~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~5_combout\,
	combout => \send.data[5]~reg0feeder_combout\);

-- Location: FF_X34_Y4_N46
\send.data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[5]~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[5]~reg0_q\);

-- Location: FF_X33_Y4_N56
\corrVar[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~6_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(6));

-- Location: LABCELL_X33_Y4_N54
\corrVar~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~6_combout\ = ( corrVar(6) & ( \Mult9~314\ ) ) # ( !corrVar(6) & ( \Mult9~314\ & ( (!\process_0~0_combout\ & \Add0~1_sumout\) ) ) ) # ( corrVar(6) & ( !\Mult9~314\ & ( (!\Add0~1_sumout\) # (\process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100001100000011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datae => ALT_INV_corrVar(6),
	dataf => \ALT_INV_Mult9~314\,
	combout => \corrVar~6_combout\);

-- Location: FF_X33_Y4_N58
\send.data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~6_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[6]~reg0_q\);

-- Location: MLABCELL_X34_Y4_N42
\corrVar[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar[7]~feeder_combout\ = ( \corrVar~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~7_combout\,
	combout => \corrVar[7]~feeder_combout\);

-- Location: FF_X34_Y4_N43
\corrVar[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar[7]~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(7));

-- Location: LABCELL_X33_Y4_N18
\corrVar~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~7_combout\ = ( \Mult9~315\ & ( ((\Add0~1_sumout\ & !\process_0~0_combout\)) # (corrVar(7)) ) ) # ( !\Mult9~315\ & ( (corrVar(7) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_corrVar(7),
	dataf => \ALT_INV_Mult9~315\,
	combout => \corrVar~7_combout\);

-- Location: MLABCELL_X34_Y4_N15
\send.data[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[7]~reg0feeder_combout\ = ( \corrVar~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~7_combout\,
	combout => \send.data[7]~reg0feeder_combout\);

-- Location: FF_X34_Y4_N16
\send.data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[7]~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[7]~reg0_q\);

-- Location: FF_X33_Y4_N14
\corrVar[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~8_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(8));

-- Location: LABCELL_X33_Y4_N39
\corrVar~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~8_combout\ = ( \Mult9~316\ & ( ((\Add0~1_sumout\ & !\process_0~0_combout\)) # (corrVar(8)) ) ) # ( !\Mult9~316\ & ( (corrVar(8) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_corrVar(8),
	dataf => \ALT_INV_Mult9~316\,
	combout => \corrVar~8_combout\);

-- Location: MLABCELL_X34_Y4_N27
\send.data[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[8]~reg0feeder_combout\ = ( \corrVar~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~8_combout\,
	combout => \send.data[8]~reg0feeder_combout\);

-- Location: FF_X34_Y4_N28
\send.data[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[8]~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[8]~reg0_q\);

-- Location: FF_X31_Y5_N44
\corrVar[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~9_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(9));

-- Location: LABCELL_X31_Y5_N42
\corrVar~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~9_combout\ = ( corrVar(9) & ( \Mult9~317\ ) ) # ( !corrVar(9) & ( \Mult9~317\ & ( (\Add0~1_sumout\ & !\process_0~0_combout\) ) ) ) # ( corrVar(9) & ( !\Mult9~317\ & ( (!\Add0~1_sumout\) # (\process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100001111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_process_0~0_combout\,
	datae => ALT_INV_corrVar(9),
	dataf => \ALT_INV_Mult9~317\,
	combout => \corrVar~9_combout\);

-- Location: FF_X31_Y5_N46
\send.data[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~9_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[9]~reg0_q\);

-- Location: FF_X31_Y5_N56
\corrVar[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~10_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(10));

-- Location: LABCELL_X31_Y5_N54
\corrVar~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~10_combout\ = ( corrVar(10) & ( \Mult9~318\ ) ) # ( !corrVar(10) & ( \Mult9~318\ & ( (\Add0~1_sumout\ & !\process_0~0_combout\) ) ) ) # ( corrVar(10) & ( !\Mult9~318\ & ( (!\Add0~1_sumout\) # (\process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100001111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_process_0~0_combout\,
	datae => ALT_INV_corrVar(10),
	dataf => \ALT_INV_Mult9~318\,
	combout => \corrVar~10_combout\);

-- Location: FF_X31_Y5_N59
\send.data[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~10_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[10]~reg0_q\);

-- Location: MLABCELL_X34_Y4_N18
\corrVar[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar[11]~feeder_combout\ = ( \corrVar~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~11_combout\,
	combout => \corrVar[11]~feeder_combout\);

-- Location: FF_X34_Y4_N19
\corrVar[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar[11]~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(11));

-- Location: LABCELL_X33_Y4_N21
\corrVar~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~11_combout\ = ( \Mult9~319\ & ( ((\Add0~1_sumout\ & !\process_0~0_combout\)) # (corrVar(11)) ) ) # ( !\Mult9~319\ & ( (corrVar(11) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_corrVar(11),
	dataf => \ALT_INV_Mult9~319\,
	combout => \corrVar~11_combout\);

-- Location: FF_X33_Y4_N23
\send.data[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~11_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[11]~reg0_q\);

-- Location: FF_X33_Y4_N53
\corrVar[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~12_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(12));

-- Location: LABCELL_X33_Y4_N51
\corrVar~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~12_combout\ = ( \Mult9~320\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(12)) ) ) # ( !\Mult9~320\ & ( (corrVar(12) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => ALT_INV_corrVar(12),
	dataf => \ALT_INV_Mult9~320\,
	combout => \corrVar~12_combout\);

-- Location: MLABCELL_X34_Y4_N33
\send.data[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[12]~reg0feeder_combout\ = ( \corrVar~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~12_combout\,
	combout => \send.data[12]~reg0feeder_combout\);

-- Location: FF_X34_Y4_N34
\send.data[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[12]~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[12]~reg0_q\);

-- Location: FF_X33_Y4_N8
\corrVar[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~13_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(13));

-- Location: LABCELL_X33_Y4_N6
\corrVar~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~13_combout\ = ( \Mult9~321\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(13)) ) ) # ( !\Mult9~321\ & ( (corrVar(13) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => ALT_INV_corrVar(13),
	dataf => \ALT_INV_Mult9~321\,
	combout => \corrVar~13_combout\);

-- Location: FF_X33_Y4_N10
\send.data[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~13_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[13]~reg0_q\);

-- Location: FF_X30_Y4_N13
\corrVar[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~14_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(14));

-- Location: LABCELL_X31_Y4_N42
\corrVar~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~14_combout\ = ( \Mult9~322\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(14)) ) ) # ( !\Mult9~322\ & ( (corrVar(14) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => ALT_INV_corrVar(14),
	dataf => \ALT_INV_Mult9~322\,
	combout => \corrVar~14_combout\);

-- Location: FF_X31_Y4_N13
\send.data[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~14_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[14]~reg0_q\);

-- Location: FF_X33_Y4_N38
\corrVar[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~15_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(15));

-- Location: LABCELL_X33_Y4_N36
\corrVar~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~15_combout\ = ( \Mult9~323\ & ( ((\Add0~1_sumout\ & !\process_0~0_combout\)) # (corrVar(15)) ) ) # ( !\Mult9~323\ & ( (corrVar(15) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datad => ALT_INV_corrVar(15),
	dataf => \ALT_INV_Mult9~323\,
	combout => \corrVar~15_combout\);

-- Location: MLABCELL_X34_Y4_N54
\send.data[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[15]~reg0feeder_combout\ = ( \corrVar~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~15_combout\,
	combout => \send.data[15]~reg0feeder_combout\);

-- Location: FF_X34_Y4_N55
\send.data[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[15]~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[15]~reg0_q\);

-- Location: LABCELL_X30_Y4_N15
\corrVar[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar[16]~feeder_combout\ = ( \corrVar~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~16_combout\,
	combout => \corrVar[16]~feeder_combout\);

-- Location: FF_X30_Y4_N16
\corrVar[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar[16]~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(16));

-- Location: LABCELL_X31_Y4_N24
\corrVar~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~16_combout\ = ( \Mult9~324\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(16)) ) ) # ( !\Mult9~324\ & ( (corrVar(16) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => ALT_INV_corrVar(16),
	dataf => \ALT_INV_Mult9~324\,
	combout => \corrVar~16_combout\);

-- Location: LABCELL_X30_Y4_N0
\send.data[16]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[16]~reg0feeder_combout\ = ( \corrVar~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~16_combout\,
	combout => \send.data[16]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N1
\send.data[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[16]~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[16]~reg0_q\);

-- Location: FF_X31_Y5_N2
\corrVar[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~17_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(17));

-- Location: LABCELL_X31_Y5_N0
\corrVar~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~17_combout\ = ( corrVar(17) & ( \Mult9~325\ ) ) # ( !corrVar(17) & ( \Mult9~325\ & ( (\Add0~1_sumout\ & !\process_0~0_combout\) ) ) ) # ( corrVar(17) & ( !\Mult9~325\ & ( (!\Add0~1_sumout\) # (\process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100001111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_process_0~0_combout\,
	datae => ALT_INV_corrVar(17),
	dataf => \ALT_INV_Mult9~325\,
	combout => \corrVar~17_combout\);

-- Location: FF_X31_Y5_N5
\send.data[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~17_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[17]~reg0_q\);

-- Location: FF_X33_Y4_N50
\corrVar[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~18_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(18));

-- Location: LABCELL_X33_Y4_N42
\corrVar~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~18_combout\ = ( \Mult9~326\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(18)) ) ) # ( !\Mult9~326\ & ( (corrVar(18) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010101000101011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_corrVar(18),
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_Mult9~326\,
	combout => \corrVar~18_combout\);

-- Location: FF_X33_Y4_N41
\send.data[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~18_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[18]~reg0_q\);

-- Location: LABCELL_X30_Y4_N36
\corrVar[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar[19]~feeder_combout\ = ( \corrVar~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~19_combout\,
	combout => \corrVar[19]~feeder_combout\);

-- Location: FF_X30_Y4_N37
\corrVar[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar[19]~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(19));

-- Location: LABCELL_X31_Y4_N51
\corrVar~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~19_combout\ = ( corrVar(19) & ( ((!\Add0~1_sumout\) # (\process_0~0_combout\)) # (\Mult9~327\) ) ) # ( !corrVar(19) & ( (\Mult9~327\ & (!\process_0~0_combout\ & \Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010011110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult9~327\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	dataf => ALT_INV_corrVar(19),
	combout => \corrVar~19_combout\);

-- Location: LABCELL_X30_Y4_N54
\send.data[19]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[19]~reg0feeder_combout\ = ( \corrVar~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~19_combout\,
	combout => \send.data[19]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N56
\send.data[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[19]~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[19]~reg0_q\);

-- Location: LABCELL_X30_Y4_N18
\corrVar[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar[20]~feeder_combout\ = ( \corrVar~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~20_combout\,
	combout => \corrVar[20]~feeder_combout\);

-- Location: FF_X30_Y4_N19
\corrVar[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar[20]~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(20));

-- Location: LABCELL_X31_Y4_N33
\corrVar~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~20_combout\ = (!\process_0~0_combout\ & ((!\Add0~1_sumout\ & (corrVar(20))) # (\Add0~1_sumout\ & ((\Mult9~328\))))) # (\process_0~0_combout\ & (((corrVar(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001101001011110000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => ALT_INV_corrVar(20),
	datad => \ALT_INV_Mult9~328\,
	combout => \corrVar~20_combout\);

-- Location: FF_X31_Y4_N32
\send.data[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~20_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[20]~reg0_q\);

-- Location: FF_X31_Y4_N41
\corrVar[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~21_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(21));

-- Location: LABCELL_X31_Y4_N39
\corrVar~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~21_combout\ = ( \Mult9~329\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(21)) ) ) # ( !\Mult9~329\ & ( (corrVar(21) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => ALT_INV_corrVar(21),
	dataf => \ALT_INV_Mult9~329\,
	combout => \corrVar~21_combout\);

-- Location: LABCELL_X30_Y4_N3
\send.data[21]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[21]~reg0feeder_combout\ = ( \corrVar~21_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~21_combout\,
	combout => \send.data[21]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N4
\send.data[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[21]~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[21]~reg0_q\);

-- Location: FF_X31_Y4_N34
\corrVar[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~22_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(22));

-- Location: LABCELL_X31_Y4_N9
\corrVar~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~22_combout\ = ( \Mult9~330\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(22)) ) ) # ( !\Mult9~330\ & ( (corrVar(22) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => ALT_INV_corrVar(22),
	dataf => \ALT_INV_Mult9~330\,
	combout => \corrVar~22_combout\);

-- Location: FF_X31_Y4_N16
\send.data[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~22_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[22]~reg0_q\);

-- Location: FF_X31_Y5_N38
\corrVar[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~23_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(23));

-- Location: LABCELL_X31_Y5_N36
\corrVar~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~23_combout\ = ( corrVar(23) & ( \Mult9~331\ ) ) # ( !corrVar(23) & ( \Mult9~331\ & ( (\Add0~1_sumout\ & !\process_0~0_combout\) ) ) ) # ( corrVar(23) & ( !\Mult9~331\ & ( (!\Add0~1_sumout\) # (\process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100001111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_process_0~0_combout\,
	datae => ALT_INV_corrVar(23),
	dataf => \ALT_INV_Mult9~331\,
	combout => \corrVar~23_combout\);

-- Location: FF_X31_Y5_N40
\send.data[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~23_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[23]~reg0_q\);

-- Location: FF_X33_Y4_N29
\corrVar[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~24_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(24));

-- Location: LABCELL_X33_Y4_N27
\corrVar~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~24_combout\ = ( \Mult9~332\ & ( ((\Add0~1_sumout\ & !\process_0~0_combout\)) # (corrVar(24)) ) ) # ( !\Mult9~332\ & ( (corrVar(24) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datad => ALT_INV_corrVar(24),
	dataf => \ALT_INV_Mult9~332\,
	combout => \corrVar~24_combout\);

-- Location: FF_X33_Y4_N35
\send.data[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~24_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[24]~reg0_q\);

-- Location: FF_X30_Y4_N10
\corrVar[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~25_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(25));

-- Location: LABCELL_X31_Y4_N15
\corrVar~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~25_combout\ = ( \Mult9~333\ & ( ((\Add0~1_sumout\ & !\process_0~0_combout\)) # (corrVar(25)) ) ) # ( !\Mult9~333\ & ( (corrVar(25) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011010011110100111100001011000010110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_corrVar(25),
	datae => \ALT_INV_Mult9~333\,
	combout => \corrVar~25_combout\);

-- Location: FF_X30_Y4_N58
\send.data[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~25_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[25]~reg0_q\);

-- Location: FF_X31_Y4_N2
\corrVar[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~26_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(26));

-- Location: LABCELL_X31_Y4_N0
\corrVar~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~26_combout\ = ( \Mult9~334\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(26)) ) ) # ( !\Mult9~334\ & ( (corrVar(26) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => ALT_INV_corrVar(26),
	dataf => \ALT_INV_Mult9~334\,
	combout => \corrVar~26_combout\);

-- Location: FF_X31_Y4_N5
\send.data[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~26_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[26]~reg0_q\);

-- Location: MLABCELL_X34_Y4_N36
\corrVar[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar[27]~feeder_combout\ = ( \corrVar~27_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~27_combout\,
	combout => \corrVar[27]~feeder_combout\);

-- Location: FF_X34_Y4_N38
\corrVar[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar[27]~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(27));

-- Location: LABCELL_X33_Y4_N15
\corrVar~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~27_combout\ = ( \Mult9~335\ & ( ((\Add0~1_sumout\ & !\process_0~0_combout\)) # (corrVar(27)) ) ) # ( !\Mult9~335\ & ( (corrVar(27) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => ALT_INV_corrVar(27),
	dataf => \ALT_INV_Mult9~335\,
	combout => \corrVar~27_combout\);

-- Location: FF_X33_Y4_N17
\send.data[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar~27_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[27]~reg0_q\);

-- Location: LABCELL_X30_Y4_N21
\corrVar[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar[28]~feeder_combout\ = ( \corrVar~28_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~28_combout\,
	combout => \corrVar[28]~feeder_combout\);

-- Location: FF_X30_Y4_N22
\corrVar[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \corrVar[28]~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(28));

-- Location: LABCELL_X31_Y4_N18
\corrVar~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~28_combout\ = ( \Mult9~336\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(28)) ) ) # ( !\Mult9~336\ & ( (corrVar(28) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => ALT_INV_corrVar(28),
	dataf => \ALT_INV_Mult9~336\,
	combout => \corrVar~28_combout\);

-- Location: LABCELL_X30_Y4_N39
\send.data[28]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[28]~reg0feeder_combout\ = ( \corrVar~28_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_corrVar~28_combout\,
	combout => \send.data[28]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N41
\send.data[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[28]~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[28]~reg0_q\);

-- Location: FF_X31_Y4_N38
\corrVar[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~29_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrVar(29));

-- Location: LABCELL_X31_Y4_N54
\corrVar~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrVar~29_combout\ = ( \Mult9~337\ & ( ((!\process_0~0_combout\ & \Add0~1_sumout\)) # (corrVar(29)) ) ) # ( !\Mult9~337\ & ( (corrVar(29) & ((!\Add0~1_sumout\) # (\process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => ALT_INV_corrVar(29),
	dataf => \ALT_INV_Mult9~337\,
	combout => \corrVar~29_combout\);

-- Location: FF_X30_Y4_N7
\send.data[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \corrVar~29_combout\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[29]~reg0_q\);

-- Location: MLABCELL_X28_Y4_N3
\validCor~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \validCor~0_combout\ = ( \enable~q\ & ( \Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_enable~q\,
	combout => \validCor~0_combout\);

-- Location: FF_X28_Y4_N4
\send.data[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \validCor~0_combout\,
	sclr => \process_0~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[30]~reg0_q\);

-- Location: IOIBUF_X62_Y0_N18
\recv.data[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(20),
	o => \recv.data[20]~input_o\);

-- Location: FF_X56_Y2_N49
\send.addr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[20]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.addr[0]~reg0_q\);

-- Location: IOIBUF_X58_Y0_N92
\recv.data[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(21),
	o => \recv.data[21]~input_o\);

-- Location: LABCELL_X56_Y2_N45
\send.addr[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.addr[1]~reg0feeder_combout\ = ( \recv.data[21]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_recv.data[21]~input_o\,
	combout => \send.addr[1]~reg0feeder_combout\);

-- Location: FF_X56_Y2_N46
\send.addr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.addr[1]~reg0feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.addr[1]~reg0_q\);

-- Location: IOIBUF_X62_Y0_N35
\recv.data[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(22),
	o => \recv.data[22]~input_o\);

-- Location: LABCELL_X56_Y2_N36
\send.addr[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.addr[2]~reg0feeder_combout\ = ( \recv.data[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_recv.data[22]~input_o\,
	combout => \send.addr[2]~reg0feeder_combout\);

-- Location: FF_X56_Y2_N37
\send.addr[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.addr[2]~reg0feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.addr[2]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N18
\recv.data[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(23),
	o => \recv.data[23]~input_o\);

-- Location: LABCELL_X56_Y2_N57
\send.addr[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.addr[3]~reg0feeder_combout\ = ( \recv.data[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_recv.data[23]~input_o\,
	combout => \send.addr[3]~reg0feeder_combout\);

-- Location: FF_X56_Y2_N58
\send.addr[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.addr[3]~reg0feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.addr[3]~reg0_q\);

-- Location: MLABCELL_X25_Y6_N54
\correlation[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[0]~0_combout\ = ( !\recv.data[29]~input_o\ & ( !\recv.data[28]~input_o\ & ( (\Add0~1_sumout\ & (!\process_0~0_combout\ & (!\recv.data[30]~input_o\ & \recv.data[31]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_recv.data[30]~input_o\,
	datad => \ALT_INV_recv.data[31]~input_o\,
	datae => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_recv.data[28]~input_o\,
	combout => \correlation[0]~0_combout\);

-- Location: FF_X31_Y3_N28
\correlation[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~mac_resulta\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(0));

-- Location: MLABCELL_X34_Y4_N3
\correlation[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[1]~feeder_combout\ = ( \Mult9~309\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~309\,
	combout => \correlation[1]~feeder_combout\);

-- Location: FF_X34_Y4_N4
\correlation[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[1]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(1));

-- Location: FF_X33_Y4_N44
\correlation[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~310\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(2));

-- Location: MLABCELL_X34_Y4_N0
\correlation[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[3]~feeder_combout\ = ( \Mult9~311\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~311\,
	combout => \correlation[3]~feeder_combout\);

-- Location: FF_X34_Y4_N1
\correlation[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[3]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(3));

-- Location: MLABCELL_X34_Y4_N6
\correlation[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[4]~feeder_combout\ = ( \Mult9~312\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~312\,
	combout => \correlation[4]~feeder_combout\);

-- Location: FF_X34_Y4_N7
\correlation[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[4]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(4));

-- Location: FF_X33_Y4_N46
\correlation[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~313\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(5));

-- Location: FF_X31_Y4_N22
\correlation[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~314\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(6));

-- Location: MLABCELL_X34_Y4_N51
\correlation[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[7]~feeder_combout\ = ( \Mult9~315\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~315\,
	combout => \correlation[7]~feeder_combout\);

-- Location: FF_X34_Y4_N52
\correlation[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[7]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(7));

-- Location: FF_X31_Y4_N29
\correlation[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~316\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(8));

-- Location: LABCELL_X30_Y4_N27
\correlation[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[9]~feeder_combout\ = ( \Mult9~317\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~317\,
	combout => \correlation[9]~feeder_combout\);

-- Location: FF_X30_Y4_N29
\correlation[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[9]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(9));

-- Location: FF_X30_Y4_N31
\correlation[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~318\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(10));

-- Location: MLABCELL_X34_Y4_N48
\correlation[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[11]~feeder_combout\ = ( \Mult9~319\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~319\,
	combout => \correlation[11]~feeder_combout\);

-- Location: FF_X34_Y4_N49
\correlation[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[11]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(11));

-- Location: LABCELL_X30_Y4_N51
\correlation[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[12]~feeder_combout\ = ( \Mult9~320\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~320\,
	combout => \correlation[12]~feeder_combout\);

-- Location: FF_X30_Y4_N52
\correlation[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[12]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(12));

-- Location: FF_X31_Y4_N59
\correlation[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~321\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(13));

-- Location: LABCELL_X30_Y4_N48
\correlation[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[14]~feeder_combout\ = ( \Mult9~322\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~322\,
	combout => \correlation[14]~feeder_combout\);

-- Location: FF_X30_Y4_N49
\correlation[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[14]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(14));

-- Location: MLABCELL_X34_Y4_N9
\correlation[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[15]~feeder_combout\ = ( \Mult9~323\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~323\,
	combout => \correlation[15]~feeder_combout\);

-- Location: FF_X34_Y4_N10
\correlation[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[15]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(15));

-- Location: FF_X31_Y4_N55
\correlation[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~324\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(16));

-- Location: FF_X31_Y4_N10
\correlation[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~325\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(17));

-- Location: LABCELL_X31_Y3_N18
\correlation[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[18]~feeder_combout\ = ( \Mult9~326\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~326\,
	combout => \correlation[18]~feeder_combout\);

-- Location: FF_X31_Y3_N19
\correlation[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[18]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(18));

-- Location: FF_X33_Y4_N4
\correlation[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~327\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(19));

-- Location: LABCELL_X31_Y3_N3
\correlation[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[20]~feeder_combout\ = ( \Mult9~328\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~328\,
	combout => \correlation[20]~feeder_combout\);

-- Location: FF_X31_Y3_N5
\correlation[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[20]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(20));

-- Location: FF_X30_Y4_N34
\correlation[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~329\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(21));

-- Location: LABCELL_X31_Y5_N48
\correlation[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[22]~feeder_combout\ = ( \Mult9~330\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~330\,
	combout => \correlation[22]~feeder_combout\);

-- Location: FF_X31_Y5_N50
\correlation[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[22]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(22));

-- Location: LABCELL_X30_Y4_N42
\correlation[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[23]~feeder_combout\ = ( \Mult9~331\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~331\,
	combout => \correlation[23]~feeder_combout\);

-- Location: FF_X30_Y4_N44
\correlation[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[23]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(23));

-- Location: LABCELL_X30_Y4_N24
\correlation[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[24]~feeder_combout\ = ( \Mult9~332\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~332\,
	combout => \correlation[24]~feeder_combout\);

-- Location: FF_X30_Y4_N26
\correlation[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[24]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(24));

-- Location: FF_X31_Y4_N19
\correlation[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~333\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(25));

-- Location: FF_X31_Y4_N7
\correlation[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~334\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(26));

-- Location: FF_X33_Y4_N2
\correlation[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~335\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(27));

-- Location: LABCELL_X30_Y4_N45
\correlation[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[28]~feeder_combout\ = ( \Mult9~336\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult9~336\,
	combout => \correlation[28]~feeder_combout\);

-- Location: FF_X30_Y4_N46
\correlation[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[28]~feeder_combout\,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(28));

-- Location: FF_X31_Y4_N46
\correlation[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~337\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(29));

-- Location: FF_X31_Y4_N25
\correlation[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~338\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(30));

-- Location: FF_X31_Y4_N43
\correlation[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mult9~339\,
	sload => VCC,
	ena => \correlation[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(31));

-- Location: IOIBUF_X72_Y0_N52
\recv.data[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(16),
	o => \recv.data[16]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\recv.data[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(18),
	o => \recv.data[18]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\recv.data[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(19),
	o => \recv.data[19]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\recv.data[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(24),
	o => \recv.data[24]~input_o\);

-- Location: IOIBUF_X12_Y81_N35
\recv.data[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(25),
	o => \recv.data[25]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\recv.data[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(26),
	o => \recv.data[26]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\recv.data[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(27),
	o => \recv.data[27]~input_o\);

-- Location: IOIBUF_X74_Y0_N58
\recv.addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(0),
	o => \recv.addr[0]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\recv.addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(1),
	o => \recv.addr[1]~input_o\);

-- Location: IOIBUF_X18_Y81_N92
\recv.addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(2),
	o => \recv.addr[2]~input_o\);

-- Location: IOIBUF_X24_Y81_N52
\recv.addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(3),
	o => \recv.addr[3]~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\recv.addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(4),
	o => \recv.addr[4]~input_o\);

-- Location: IOIBUF_X6_Y81_N18
\recv.addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(5),
	o => \recv.addr[5]~input_o\);

-- Location: IOIBUF_X30_Y81_N52
\recv.addr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(6),
	o => \recv.addr[6]~input_o\);

-- Location: IOIBUF_X34_Y81_N41
\recv.addr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(7),
	o => \recv.addr[7]~input_o\);

-- Location: IOIBUF_X14_Y81_N52
\avgVal[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(0),
	o => \avgVal[0]~input_o\);

-- Location: IOIBUF_X22_Y81_N52
\avgVal[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(1),
	o => \avgVal[1]~input_o\);

-- Location: IOIBUF_X10_Y81_N75
\avgVal[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(2),
	o => \avgVal[2]~input_o\);

-- Location: IOIBUF_X36_Y81_N1
\avgVal[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(3),
	o => \avgVal[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\avgVal[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(4),
	o => \avgVal[4]~input_o\);

-- Location: IOIBUF_X38_Y81_N52
\avgVal[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(5),
	o => \avgVal[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\avgVal[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(6),
	o => \avgVal[6]~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\avgVal[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(7),
	o => \avgVal[7]~input_o\);

-- Location: IOIBUF_X24_Y81_N35
\avgVal[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(8),
	o => \avgVal[8]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\avgVal[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(9),
	o => \avgVal[9]~input_o\);

-- Location: IOIBUF_X88_Y0_N2
\avgVal[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(10),
	o => \avgVal[10]~input_o\);

-- Location: IOIBUF_X22_Y81_N35
\avgVal[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(11),
	o => \avgVal[11]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\avgVal[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(12),
	o => \avgVal[12]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\avgVal[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(13),
	o => \avgVal[13]~input_o\);

-- Location: IOIBUF_X89_Y13_N55
\avgVal[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(14),
	o => \avgVal[14]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\avgVal[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avgVal(15),
	o => \avgVal[15]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\calc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_calc,
	o => \calc~input_o\);

-- Location: LABCELL_X45_Y53_N0
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


