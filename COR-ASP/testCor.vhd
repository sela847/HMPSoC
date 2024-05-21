library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity testCor is
	port (
		clock : in  std_logic;

		send  : out tdma_min_port;
		recv  : in  tdma_min_port
	);
end entity;

architecture rtl of testCor is

begin

	process(clock)

	begin
		if rising_edge(clock) then
			
			send.addr <= x"02";
			send.data <= "10000000000000000000000000000000";

		end if;
	end process;


end architecture;
