library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity testCor is
	port (
		clock : in  std_logic;
		flag 	: in std_logic;
		send  : out tdma_min_port;
		recv  : in  tdma_min_port
	);
end entity;

architecture rtl of testCor is
 signal avgVal : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
begin
	send.addr <= x"02";
	process(clock,flag)
	begin
		if rising_edge(clock) then
			
			if flag = '0' then
				--send.data <= "11010000000000100000000000000000"; -- enabling
				send.data <= x"D0120000"; -- enabling
			else
				avgVal <= std_logic_vector(signed(avgVal) + 1); -- Increment avgVal by 1
				send.data <= "1000" & x"000" & avgVal;
			end if;
		end if;
	end process;


end architecture;
