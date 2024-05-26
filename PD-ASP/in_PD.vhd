library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity in_PD is
	port (
		clk 	: in std_logic;
		send	: out tdma_min_port;
		recv 	: in tdma_min_port;
		correlation : in std_logic_vector(15 downto 0)
	);
	
end entity in_PD;

architecture behaviour of in_PD is
	
begin
	send.addr <= x"02";
	process(clk)
	begin
		if rising_edge(clk) then
			send.data <= "1100" & x"000" & correlation;
			
		end if;
	end process;
end architecture;


		