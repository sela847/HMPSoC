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
-- CREATED		"Mon Jun 03 20:11:46 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY pc_test IS 
	PORT
	(
		reset_in :  IN  STD_LOGIC;
		CLOCK_50 :  IN  STD_LOGIC;
		sip :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		write_pc :  OUT  STD_LOGIC;
		pc_mux_sel :  OUT  STD_LOGIC;
		reset_pc :  OUT  STD_LOGIC;
		ir_wr :  OUT  STD_LOGIC;
		ir_reset :  OUT  STD_LOGIC;
		ir_operand_set :  OUT  STD_LOGIC;
		load_reg :  OUT  STD_LOGIC;
		op1_wr :  OUT  STD_LOGIC;
		op2_wr :  OUT  STD_LOGIC;
		z_flag :  OUT  STD_LOGIC;
		alu_op_sel :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		alu_outputpin :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		AM :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		currentState :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		dm_out :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		dpcr :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		dprr :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		incrAddr :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		instAddr :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		instruction :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		op1OUT :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		op2OUT :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		OPCode :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		Operand :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		prog_mem_instruct :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		r7_outputData :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		reg4_output :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		Rx :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		rx_outputData :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		Rz :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		rz_outputData :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		sop_out :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END pc_test;

ARCHITECTURE bdf_type OF pc_test IS 

COMPONENT memory_model
	PORT(clk : IN STD_LOGIC;
		 dm_wr : IN STD_LOGIC;
		 dm_address : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dm_indata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 pm_address : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dm_outdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 pm_outdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT control_unit
	PORT(clk : IN STD_LOGIC;
		 z_flag : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 am : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 Opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 write_pc : OUT STD_LOGIC;
		 reset : OUT STD_LOGIC;
		 pc_mux_sel : OUT STD_LOGIC;
		 ir_wr : OUT STD_LOGIC;
		 ir_reset : OUT STD_LOGIC;
		 ir_operand_set : OUT STD_LOGIC;
		 alu_carry : OUT STD_LOGIC;
		 clr_z_flag : OUT STD_LOGIC;
		 data_mem_wren : OUT STD_LOGIC;
		 init : OUT STD_LOGIC;
		 ld_r : OUT STD_LOGIC;
		 dprr_res : OUT STD_LOGIC;
		 dprr_res_reg : OUT STD_LOGIC;
		 dprr_wren : OUT STD_LOGIC;
		 op1_wr : OUT STD_LOGIC;
		 op2_wr : OUT STD_LOGIC;
		 dpcr_lsb_sel : OUT STD_LOGIC;
		 dpcr_wr : OUT STD_LOGIC;
		 sop_wr : OUT STD_LOGIC;
		 irq_wr : OUT STD_LOGIC;
		 irq_clr : OUT STD_LOGIC;
		 result_wren : OUT STD_LOGIC;
		 result : OUT STD_LOGIC;
		 alu_op : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 alu_op1_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 alu_op2_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 currentSignal : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 rf_input_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux2_16
	PORT(mux_sel : IN STD_LOGIC;
		 input_a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 input_b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 output_signal : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT alu
	PORT(clk : IN STD_LOGIC;
		 alu_carry : IN STD_LOGIC;
		 clr_z_flag : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 alu_operation : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 operand_1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 operand_2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 z_flag : OUT STD_LOGIC;
		 alu_result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT regfile
	PORT(clk : IN STD_LOGIC;
		 init : IN STD_LOGIC;
		 ld_r : IN STD_LOGIC;
		 dprr_res : IN STD_LOGIC;
		 dprr_res_reg : IN STD_LOGIC;
		 dprr_wren : IN STD_LOGIC;
		 aluout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dm_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 ir_operand : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 op1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 op2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rf_input_sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 rz_max : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sel_x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 sel_z : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 sip_hold : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 r7 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 regFour : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rz : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT data_mem
	PORT(clock : IN STD_LOGIC;
		 wren : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT registers
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 dpcr_lsb_sel : IN STD_LOGIC;
		 dpcr_wr : IN STD_LOGIC;
		 er_wr : IN STD_LOGIC;
		 er_clr : IN STD_LOGIC;
		 eot_wr : IN STD_LOGIC;
		 eot_clr : IN STD_LOGIC;
		 svop_wr : IN STD_LOGIC;
		 sop_wr : IN STD_LOGIC;
		 irq_wr : IN STD_LOGIC;
		 irq_clr : IN STD_LOGIC;
		 result_wen : IN STD_LOGIC;
		 result : IN STD_LOGIC;
		 ir_operand : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rz : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sip : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 er : OUT STD_LOGIC;
		 eot : OUT STD_LOGIC;
		 dpcr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 dprr : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 sip_r : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sop : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 svop : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT instruction_reg
	PORT(clk : IN STD_LOGIC;
		 ir_write : IN STD_LOGIC;
		 ir_reset : IN STD_LOGIC;
		 ir_operand_set : IN STD_LOGIC;
		 ir_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 AM : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 OP : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 Operand : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 Rx : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Rz : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg_16
	PORT(clk : IN STD_LOGIC;
		 wr : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 reg_input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 reg_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux4_16
	PORT(input_a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 input_b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 input_c : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 input_d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 mux_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 output_signal : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT prog_mem
	PORT(clock : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT pc
	PORT(write_pc : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 inputAddress : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 instAddress : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 instAddressIncremented : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	alu_carry :  STD_LOGIC;
SIGNAL	alu_op :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	alu_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	AM_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	cl_z_flag :  STD_LOGIC;
SIGNAL	clk :  STD_LOGIC;
SIGNAL	dm_outdata :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	dm_outdataTest :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	dm_wr :  STD_LOGIC;
SIGNAL	dpcr_lsb_sel :  STD_LOGIC;
SIGNAL	dpcr_wr :  STD_LOGIC;
SIGNAL	dprr_res :  STD_LOGIC;
SIGNAL	dprr_res_reg :  STD_LOGIC;
SIGNAL	dprr_wren :  STD_LOGIC;
SIGNAL	init :  STD_LOGIC;
SIGNAL	instAddr_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	ir_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	ir_inTest :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	ir_operand_set_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	ir_reset_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	ir_wr_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	irq_clr :  STD_LOGIC;
SIGNAL	irq_wr :  STD_LOGIC;
SIGNAL	ld_r :  STD_LOGIC;
SIGNAL	op1_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	op1_reg :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	op1_sel :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	op1_wr_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	op2_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	op2_reg :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	op2_sel :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	op2_wr_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	OPCode_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	Operand_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	pc_address :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	pc_mux_sel_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	r7_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	reset_pc_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	result :  STD_LOGIC;
SIGNAL	result_wen :  STD_LOGIC;
SIGNAL	rf_input_sel :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	Rx_in :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	rx_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	Rz_in :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	rz_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	rzMax :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	sip_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	sop_wr :  STD_LOGIC;
SIGNAL	write_pc_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	z_flag_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL 	sop_out_sig			 :  STD_LOGIC_VECTOR(31 downto 0);
SIGNAL	er_wr :  STD_LOGIC;
SIGNAL	er_clr :  STD_LOGIC;
SIGNAL	eot_wr :  STD_LOGIC;
SIGNAL	eot_clr :  STD_LOGIC;
SIGNAL	svop_wr :  STD_LOGIC;


BEGIN 
incrAddr <= SYNTHESIZED_WIRE_0;



b2v_inst : memory_model
PORT MAP(clk => clk,
		 dm_wr => dm_wr,
		 dm_address => op2_out,
		 dm_indata => op1_out,
		 pm_address => instAddr_ALTERA_SYNTHESIZED,
		 pm_outdata => ir_inTest);


b2v_inst1 : control_unit
PORT MAP(clk => clk,
		 z_flag => z_flag_ALTERA_SYNTHESIZED,
		 rst => reset_in,
		 am => AM_ALTERA_SYNTHESIZED,
		 Opcode => OPCode_ALTERA_SYNTHESIZED,
		 write_pc => write_pc_ALTERA_SYNTHESIZED,
		 reset => reset_pc_ALTERA_SYNTHESIZED,
		 pc_mux_sel => pc_mux_sel_ALTERA_SYNTHESIZED,
		 ir_wr => ir_wr_ALTERA_SYNTHESIZED,
		 ir_reset => ir_reset_ALTERA_SYNTHESIZED,
		 ir_operand_set => ir_operand_set_ALTERA_SYNTHESIZED,
		 alu_carry => alu_carry,
		 clr_z_flag => cl_z_flag,
		 data_mem_wren => dm_wr,
		 init => init,
		 ld_r => ld_r,
		 dprr_res => dprr_res,
		 dprr_res_reg => dprr_res_reg,
		 dprr_wren => dprr_wren,
		 op1_wr => op1_wr_ALTERA_SYNTHESIZED,
		 op2_wr => op2_wr_ALTERA_SYNTHESIZED,
		 dpcr_lsb_sel => dpcr_lsb_sel,
		 dpcr_wr => dpcr_wr,
		 sop_wr => sop_wr,
		 irq_wr => irq_wr,
		 irq_clr => irq_clr,
		 result_wren => result_wen,
		 result => result,
		 alu_op => alu_op,
		 alu_op1_sel => op1_sel,
		 alu_op2_sel => op2_sel,
		 currentSignal => currentState,
		 rf_input_sel => rf_input_sel);


b2v_inst2 : mux2_16
PORT MAP(mux_sel => pc_mux_sel_ALTERA_SYNTHESIZED,
		 input_a => op1_out,
		 input_b => SYNTHESIZED_WIRE_0,
		 output_signal => pc_address);


b2v_inst3 : alu
PORT MAP(clk => clk,
		 alu_carry => alu_carry,
		 clr_z_flag => cl_z_flag,
		 reset => reset_pc_ALTERA_SYNTHESIZED,
		 alu_operation => alu_op,
		 operand_1 => op1_out,
		 operand_2 => op2_out,
		 z_flag => z_flag_ALTERA_SYNTHESIZED,
		 alu_result => alu_out);


b2v_inst5 : regfile
PORT MAP(clk => clk,
		 init => init,
		 ld_r => ld_r,
		 dprr_res => dprr_res,
		 dprr_res_reg => dprr_res_reg,
		 dprr_wren => dprr_wren,
		 aluout => alu_out,
		 dm_out => dm_outdata,
		 ir_operand => Operand_ALTERA_SYNTHESIZED,
		 rf_input_sel => rf_input_sel,
		 rz_max => rzMax,
		 sel_x => Rx_in,
		 sel_z => Rz_in,
		 sip_hold => sip_out,
		 r7 => r7_out,
		 regFour => reg4_output,
		 rx => rx_out,
		 rz => rz_out,
		 op1 => op1_out,
		 op2 => op2_out);


b2v_inst7 : data_mem
PORT MAP(clock => SYNTHESIZED_WIRE_1,
		 wren => dm_wr,
		 address => op2_out(11 DOWNTO 0),
		 data => op1_out,
		 q => dm_outdata);


b2v_inst9 : registers
PORT MAP(clk => clk,
		 reset => reset_pc_ALTERA_SYNTHESIZED,
		 dpcr_lsb_sel => dpcr_lsb_sel,
		 dpcr_wr => dpcr_wr,
		 sop_wr => sop_wr,
		 irq_wr => irq_wr,
		 irq_clr => irq_clr,
		 result_wen => result_wen,
		 result => result,
		 ir_operand => Operand_ALTERA_SYNTHESIZED,
		 rx => rx_out,
		 rz => rz_out,
		 sip => sip,
		 dpcr => dpcr,
		 dprr => dprr,
		 sip_r => sip_out,
		 sop => sop_out,
		 er_wr => er_wr,
		 er_clr => er_clr,
		 eot_wr => eot_wr,
		 eot_clr => eot_clr,
		 svop_wr => svop_wr);


b2v_instruction_r : instruction_reg
PORT MAP(clk => clk,
		 ir_write => ir_wr_ALTERA_SYNTHESIZED,
		 ir_reset => ir_reset_ALTERA_SYNTHESIZED,
		 ir_operand_set => ir_operand_set_ALTERA_SYNTHESIZED,
		 ir_in => ir_in,
		 AM => AM_ALTERA_SYNTHESIZED,
		 OP => OPCode_ALTERA_SYNTHESIZED,
		 Operand => Operand_ALTERA_SYNTHESIZED,
		 Rx => Rx_in,
		 Rz => Rz_in);

SYNTHESIZED_WIRE_2 <= NOT(clk);



SYNTHESIZED_WIRE_1 <= NOT(clk);



b2v_op1 : reg_16
PORT MAP(clk => clk,
		 wr => op1_wr_ALTERA_SYNTHESIZED,
		 rst => reset_pc_ALTERA_SYNTHESIZED,
		 reg_input => op1_reg,
		 reg_out => op1_out);


b2v_op1mux : mux4_16
PORT MAP(input_a => rx_out,
		 input_b => Operand_ALTERA_SYNTHESIZED,
		 input_c => rz_out,
		 input_d => pc_address,
		 mux_sel => op1_sel,
		 output_signal => op1_reg);


b2v_op2 : reg_16
PORT MAP(clk => clk,
		 wr => op2_wr_ALTERA_SYNTHESIZED,
		 rst => reset_pc_ALTERA_SYNTHESIZED,
		 reg_input => op2_reg,
		 reg_out => op2_out);


b2v_op2mux : mux4_16
PORT MAP(input_a => rx_out,
		 input_b => Operand_ALTERA_SYNTHESIZED,
		 input_c => rz_out,
		 input_d => pc_address,
		 mux_sel => op2_sel,
		 output_signal => op2_reg);


b2v_prog_mem_inst : prog_mem
PORT MAP(clock => SYNTHESIZED_WIRE_2,
		 address => instAddr_ALTERA_SYNTHESIZED(14 DOWNTO 0),
		 q => ir_in);


b2v_program_counter : pc
PORT MAP(write_pc => write_pc_ALTERA_SYNTHESIZED,
		 rst => reset_pc_ALTERA_SYNTHESIZED,
		 clk => clk,
		 inputAddress => pc_address,
		 instAddress => instAddr_ALTERA_SYNTHESIZED,
		 instAddressIncremented => SYNTHESIZED_WIRE_0);

write_pc <= write_pc_ALTERA_SYNTHESIZED;
clk <= CLOCK_50;
pc_mux_sel <= pc_mux_sel_ALTERA_SYNTHESIZED;
reset_pc <= reset_pc_ALTERA_SYNTHESIZED;
ir_wr <= ir_wr_ALTERA_SYNTHESIZED;
ir_reset <= ir_reset_ALTERA_SYNTHESIZED;
ir_operand_set <= ir_operand_set_ALTERA_SYNTHESIZED;
load_reg <= ld_r;
op1_wr <= op1_wr_ALTERA_SYNTHESIZED;
op2_wr <= op2_wr_ALTERA_SYNTHESIZED;
z_flag <= z_flag_ALTERA_SYNTHESIZED;
alu_op_sel <= alu_op;
alu_outputpin <= alu_out;
AM <= AM_ALTERA_SYNTHESIZED;
dm_out <= dm_outdata;
instAddr <= instAddr_ALTERA_SYNTHESIZED;
instruction <= ir_inTest;
op1OUT <= op1_out;
op2OUT <= op2_out;
OPCode <= OPCode_ALTERA_SYNTHESIZED;
Operand <= Operand_ALTERA_SYNTHESIZED;
prog_mem_instruct <= ir_in;
r7_outputData <= r7_out;
Rx <= Rx_in;
rx_outputData <= rx_out;
Rz <= Rz_in;
rz_outputData <= rz_out;

END ARCHITECTURE bdf_type;