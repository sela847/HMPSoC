library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity tdma_tb is
	generic (
		ports : positive := 8
	);
end entity;

architecture sim of tdma_tb is

	signal clock : std_logic := '1';

	signal send_port : tdma_min_ports(0 to ports-1);
	signal recv_port : tdma_min_ports(0 to ports-1);

begin

	clock <= not clock after 5 ns;

	asp_adc : entity work.nodeadc
	port map (
		clock => clock,
		send  => send_port(0),
		recv  => recv_port(0)
	);

end architecture;
