library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity in_PD is
	port (
		clk 	: in std_logic;
		flag 	: in std_logic;
		send	: out tdma_min_port;
		recv 	: in tdma_min_port;
		correlation : in std_logic_vector(15 downto 0)
	);
	
end entity in_PD;

--architecture behaviour of in_PD is
--	signal delay : integer := 5;
--begin
--	send.addr <= x"02";
--	process(clk)
--	begin
--		if rising_edge(clk) then
--			if delay = 0 then
--				send.data <= "1000" & x"000" & correlation;
--				delay <= delay + 1;
--			elsif delay < 6 then --delay for 4 clock cycles
--				--send.data <= "1000" & x"000" & correlation;
--				delay <= delay + 1;
--			elsif flag = '1' and delay = 5 then
--				send.data <= "1100" & x"000" & correlation;
--				delay <= 0;
--			end if;
--		end if;
--		
--	end process;
--end architecture;

architecture rtl of in_PD is
 --signal avgVal : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
 signal delay : integer := 10;
 
begin
	send.addr <= x"02";
	process(clk,flag)
	begin
		if rising_edge(clk) then
			
			if flag = '0' then
				send.data <= "1000" & x"000" & correlation;
			else
				if delay = 10 then
					--avgVal <= std_logic_vector(signed(avgVal) + 1); -- Increment avgVal by 1
					send.data <= "1100" & x"000" & correlation;
				else 
					delay <= delay + 1;
				end if;
				
				
			end if;
		end if;
	end process;


end architecture;
		