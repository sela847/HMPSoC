library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity PD_ASP is
	port (
		clk 							: in std_logic;
		recv 							: in tdma_min_port; --Address will contain either from COR_ASP or from NIOS. Data, 31st is always set to 1, 30th is correlation rdy, 29 - 0 is the correlation value itself
		send 							: out tdma_min_port --Data is 32 bits, addr is 8 bits. Also used to send out the correlation count. 
--		state_is						: out std_logic_vector(1 downto 0) --0 for rising, 1 for falling	
	);
end PD_ASP;

architecture PD_RTL of PD_ASP is
--	type STATE is (start,rising, falling);
--	signal current_state 		: STATE := start;
--	signal next_state 			: STATE := start;
	signal counter_sig 			: unsigned(19 downto 0) := x"00000";
	signal counter_T			:unsigned(19 downto 0) := x"00000";

	signal enable 					: std_logic;
	signal switch					: std_logic; --Flag for when it detects a change from rising to falling
	--signal correlation_count 	: std_logic_vector(31 downto 0); 
	signal corre_curr 			: std_logic_vector(29 downto 0) := (others => '0'); --Buffer for curr correlation val
	signal corre_prev				: std_logic_vector(29 downto 0) := (others => '0'); --Buffer for prev correlation val
	signal first 					: std_logic := '1';
begin

	process(clk) 
		variable counter : unsigned(19 downto 0) := x"00000";
		variable validBit : std_logic := '0';
	begin
		if rising_edge(clk) then
			case recv.addr is 
				when x"01" => --from port 0, assume it to be from NIOS. 
					if recv.data(31 downto 28) = "1111" then --Can configure the PD_RTL
						--Will add configuration features here
						--|Identify (4)| no clue (4) | Next Des (4) | No clue (2)| Enable (1) | no clue (16)|
						if recv.data(17) = '1' then
							enable <= '1';
						else 
							enable <= '0';
						end if;
						send.addr <= x"0" & recv.data(23 downto 20); --Go to address 1 
					end if;
				when x"02" =>  --From port 1, assume it to be from COR_ASP
					if enable = '1' then
						validBit := '0';
						if recv.data(31 downto 30) = "11" then --first correlation value received
							corre_prev <= corre_curr; 
							corre_curr <= recv.data(29 downto 0); --1st cycle will be first correlation compared with 0, then next cycle is the 2nd correlation compared with 1st correlation
																		  --, then the cycle after would be third with 2nd.
							if corre_prev /= "00" & x"0000000" and first = '0' then						
								if corre_curr >= corre_prev then
									counter := counter + 1;
									switch <= '1';
									validBit := '0';
									--send.data <= x"800"& std_logic_vector(counter);
								elsif (corre_curr <= corre_prev) and (switch = '1') then
									counter := counter + 1;
									counter_sig <= counter;
									switch <= '0';
									--Format: |Valid (1)|Empty (11)| Counter (20)|
									--send.addr <= x"01";
									send.data <= x"880"& std_logic_vector(counter);
									validBit := '1';
									counter := x"00000"; --Reset counter
								elsif corre_curr <= corre_prev then
									counter := counter + 1;
									validBit := '0';
									--send.data <= x"800"& std_logic_vector(counter);
								end if;
							end if;		
							first <= '0';
						end if;
					end if;
				when others =>				
			end case; 						
		end if;
	counter_T <= counter;
	--send.data <= x"8"& validBit & "000" & x"0" & std_logic_vector(counter);
	--send.data <= x"800"& corre_curr(19 downto 0);
	end process;
		
end architecture PD_RTL;
					
					

				
	
					
				
			
	
	
					
						
						
						
						
				
	 
				
					
		