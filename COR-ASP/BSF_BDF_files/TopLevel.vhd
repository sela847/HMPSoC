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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Mon Jun 03 20:35:50 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;
use work.TdmaMinTypes.all;

ENTITY TopLevel IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		KEY :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW :  IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		recv : IN tdma_min_port;
		send : OUT tdma_min_port;
		LEDR :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END TopLevel;

ARCHITECTURE bdf_type OF TopLevel IS 

COMPONENT pc_test
	PORT(reset_in : IN STD_LOGIC;
		 CLOCK_50 : IN STD_LOGIC;
		 sip : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dpcr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 sop_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	DPCR :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SIP :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SOP :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL 	SOP_32 : STD_LOGIC_VECTOR(31 downto 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;

BEGIN 


b2v_inst : pc_test
PORT MAP(reset_in => SYNTHESIZED_WIRE_0,
		 CLOCK_50 => clock,
		 sip => SIP,
		 dpcr => DPCR,
		 sop_out => SOP);

LEDR <= SOP(9 downto 0);
SYNTHESIZED_WIRE_0 <= NOT(KEY(0));

process(clock) 
	variable delay : integer := 0;
begin
	if rising_edge(clock) then
		if SW(9) = '1' and KEY(3) = '0' then
		--Send SOP through tdma-min to ADC
			SIP(9 DOWNTO 0) <= SW;
			SIP(15 downto 10) <= "000000";
		end if;
	end if;
	
	 SOP_32 <= SOP(9 downto 2) & "0" & SOP(1 downto 0) & "0" & x"00000";
	case SOP_32 is
		when x"A0020000" =>
			send.addr <= x"04";
			send.data <= SOP_32;
		when x"C0260000" =>
			send.addr <= x"00";
			send.data <= SOP_32;
			if delay = 100 then
				send.addr <= x"05";
				send.data <= SOP_32;
			else
				delay := delay + 1;
			end if;
		when x"C0246000" =>
			send.addr <= x"00";
			send.data <= SOP_32;
			if delay = 100 then
				send.addr <= x"05";
				send.data <= SOP_32;
			else
				delay := delay + 1;
			end if;
		when x"D0360000" =>
			send.addr <= x"02";
			send.data <= SOP_32;
			if delay = 100 then
				send.addr <= x"05";
				send.data <= SOP_32;
			else
				delay := delay + 1;
			end if;
		when x"D0340000" =>
			send.addr <= x"02";
			send.data <= SOP_32;
			if delay = 100 then
				send.addr <= x"05";
				send.data <= SOP_32;
			else
				delay := delay + 1;
			end if;
		when x"F0520000" =>
			send.addr <= x"03";
			send.data <= SOP_32;
		when others =>
		
	end case;

end process;
END ARCHITECTURE bdf_type;