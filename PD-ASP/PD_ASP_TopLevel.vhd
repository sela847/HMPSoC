library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity PD_ASP_TopLevel is
	generic (
		ports : positive := 4
	);
	port (
		clock 						: in std_logic;
		correlation					: in std_logic_vector(15 downto 0);
		--correlation_count_read 	: in std_logic;
		enable_config				: in std_logic;
		flag 							: in std_logic
		
	);
end entity PD_ASP_TopLevel;

architecture rtl of PD_ASP_TopLevel is


	signal send_port : tdma_min_ports(0 to ports-1);
	signal recv_port : tdma_min_ports(0 to ports-1);
	
	
begin

	tdma_min : entity work.TdmaMin
	generic map (
		ports => ports
	)
	port map (
		clock => clock,
		sends => send_port,
		recvs => recv_port
	);

	PD_ASP: entity work.PD_ASP
		port map(
			clk 	=> clock,
			correlation_count_read => '0',
			send 	=> send_port(2),
			--state_is => state_is,
			recv => recv_port(2)			
		);
		
	--Mimics what is going to be inputted into PD_ASP
	in_PD: entity work.in_PD
		port map(
			clk => clock,
			flag => flag,
			correlation => correlation,
			send => send_port(1),
			recv => recv_port(1)
		);
		
	nios_to_PD: entity work. nios_to_PD
		port map(
			clk => clock,
			enable_config => enable_config,--'1',
			send => send_port(3),
			recv => recv_port(3)
		);
	

end architecture rtl;