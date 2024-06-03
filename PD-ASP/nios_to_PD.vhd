library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity nios_to_PD is
	port (
		clk 				: in std_logic;
		send				: out tdma_min_port;
		recv				: in tdma_min_port;
		enable_config 	: in std_logic
	);
	
end entity nios_to_PD;

architecture behaviour of nios_to_PD is
	signal in_PD_Data : std_logic_vector(31 downto 0);
	signal empty : integer := 50000;
begin
	
	send.addr <= x"02";
	
	process(clk)
	begin
		if rising_edge(clk) then
			if empty = 0 then
				send.data <= x"00000000";
				empty <= empty + 1;
			elsif empty < 50000 then --Should be equal to 1ms which by then enable_config is flipped. 
				send.data <= x"00000000";
				empty <= empty + 1;
			elsif enable_config = '1' then
				send.data <= x"F0120000";
				empty <= 0;
			else
				send.data <= x"F0100000";
				empty <= 0;
			end if;						
		end if;
	end process;
	
end architecture;