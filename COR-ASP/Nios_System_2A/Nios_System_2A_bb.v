
module Nios_System_2A (
	addr_external_connection_export,
	clk_clk,
	recv_external_connection_export,
	send_external_connection_export,
	seg_0_external_connection_export,
	seg_1_external_connection_export,
	seg_2_external_connection_export,
	seg_3_external_connection_export,
	seg_4_external_connection_export,
	seg_5_external_connection_export);	

	output	[7:0]	addr_external_connection_export;
	input		clk_clk;
	input	[31:0]	recv_external_connection_export;
	output	[31:0]	send_external_connection_export;
	output	[7:0]	seg_0_external_connection_export;
	output	[7:0]	seg_1_external_connection_export;
	output	[7:0]	seg_2_external_connection_export;
	output	[7:0]	seg_3_external_connection_export;
	output	[7:0]	seg_4_external_connection_export;
	output	[7:0]	seg_5_external_connection_export;
endmodule
