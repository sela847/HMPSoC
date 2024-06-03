	component Nios_System_2A is
		port (
			addr_external_connection_export  : out std_logic_vector(7 downto 0);                     -- export
			clk_clk                          : in  std_logic                     := 'X';             -- clk
			recv_external_connection_export  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- export
			send_external_connection_export  : out std_logic_vector(31 downto 0);                    -- export
			seg_0_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
			seg_1_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
			seg_2_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
			seg_3_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
			seg_4_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
			seg_5_external_connection_export : out std_logic_vector(7 downto 0)                      -- export
		);
	end component Nios_System_2A;

	u0 : component Nios_System_2A
		port map (
			addr_external_connection_export  => CONNECTED_TO_addr_external_connection_export,  --  addr_external_connection.export
			clk_clk                          => CONNECTED_TO_clk_clk,                          --                       clk.clk
			recv_external_connection_export  => CONNECTED_TO_recv_external_connection_export,  --  recv_external_connection.export
			send_external_connection_export  => CONNECTED_TO_send_external_connection_export,  --  send_external_connection.export
			seg_0_external_connection_export => CONNECTED_TO_seg_0_external_connection_export, -- seg_0_external_connection.export
			seg_1_external_connection_export => CONNECTED_TO_seg_1_external_connection_export, -- seg_1_external_connection.export
			seg_2_external_connection_export => CONNECTED_TO_seg_2_external_connection_export, -- seg_2_external_connection.export
			seg_3_external_connection_export => CONNECTED_TO_seg_3_external_connection_export, -- seg_3_external_connection.export
			seg_4_external_connection_export => CONNECTED_TO_seg_4_external_connection_export, -- seg_4_external_connection.export
			seg_5_external_connection_export => CONNECTED_TO_seg_5_external_connection_export  -- seg_5_external_connection.export
		);

