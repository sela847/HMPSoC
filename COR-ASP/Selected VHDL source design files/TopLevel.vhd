LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;
use work.TdmaMinTypes.all;

ENTITY TopLevel IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		KEY :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW :  IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		recv : IN tdma_min_port;
		send : OUT tdma_min_port;
		LEDR :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END TopLevel;

ARCHITECTURE bdf_type OF TopLevel IS 

COMPONENT pc_test
	PORT(reset_in : IN STD_LOGIC;
		 CLOCK_50 : IN STD_LOGIC;
		 sip : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dpcr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 sop_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	DPCR :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SIP :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SOP :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL 	SOP_32 : STD_LOGIC_VECTOR(31 downto 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
signal sendFlag : std_logic := '0';
SIGNAL SOP_TOP_BITS : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Signal for top 4 bits of SOP_32
BEGIN 


b2v_inst : pc_test
PORT MAP(reset_in => SYNTHESIZED_WIRE_0,
		 CLOCK_50 => clock,
		 sip => SIP,
		 dpcr => DPCR,
		 sop_out => SOP);

--LEDR <= SOP(9 downto 0);

LEDR(9 downto 6) <= SOP_32(31 downto 28);
LEDR(5 downto 2) <= SOP_32(23 downto 20);
LEDR(1 downto 0) <= SOP_32(18 downto 17);
SYNTHESIZED_WIRE_0 <= NOT(KEY(0));

process(clock,SOP_32,sendFlag) 
	variable delay : integer := 0;
	variable sendPacket: std_logic := '0';
	variable sendConfig: std_logic := '0';
begin
--	if rising_edge(clock) then
--		if SW(9) = '1' and KEY(3) = '0' then
--		--Send SOP through tdma-min to ADC
--			SIP(9 DOWNTO 0) <= SW;
--			SIP(15 downto 10) <= "000000";
--			sendPacket := '1';
--		end if;
--	
--	-- 0000 0000 0000 0000 0000 0000 0000 0000
--	sop_32 <= SOP(9 downto 6) & x"0" & SOP(5 downto 2) & '0' & SOP(1 downto 0) & '0' & x"0000";
--	SOP_TOP_BITS <= SOP_32(31 DOWNTO 28); -- Extract top 4 bits of SOP_32
--	if sendFlag = '1' then
--		delay := delay + 1;
--		if delay > 100 then
--			delay := 0;
--			sendFlag <= '0';
--			send.addr <= x"05";
--			send.data <= SOP_32;
--			sendPacket := '0';
--		end if;
--		
--	else
--		
--		if delay > 100 then
--			delay := 0;
----			case SOP_32 is
----				when x"A0220000" =>
----					send.addr <= x"04";
----					send.data <= SOP_32;
----					sendFlag <= '1';
----				when x"C0260000" =>
----					send.addr <= x"00";
----					send.data <= SOP_32;
----					sendFlag <= '1';
----				when x"C0226000" =>
----					send.addr <= x"00";
----					send.data <= SOP_32;
----					sendFlag <= '1';
----				when x"D0360000" =>
----					send.addr <= x"02";
----					send.data <= SOP_32;
----					sendFlag <= '1';
----				when x"D0320000" =>
----					send.addr <= x"02";
----					send.data <= SOP_32;
----					sendFlag <= '1';
----				when x"F0520000" =>
----					send.addr <= x"03";
----					send.data <= SOP_32;
----					sendFlag <= '1';
----				when others =>
----				
----			end case;
--			if sendPacket = '1' then
--			case SOP_TOP_BITS is -- Use the top 4 bits for case statement
--				when "1010" => -- 0xA
--					send.addr <= x"04";
--					send.data <= SOP_32;
--					sendFlag <= '1';
--				when "1100" => -- 0xC
--					send.addr <= x"00";
--					send.data <= SOP_32;
--					sendFlag <= '1';
--				when "1101" => -- 0xD
--					send.addr <= x"02";
--					send.data <= SOP_32;
--					sendFlag <= '1';
--				when "1111" => -- 0xF
--					send.addr <= x"03";
--					send.data <= SOP_32;
--					sendFlag <= '1';
--				when others =>
--					-- Do nothing for other cases
--			end case;
--		end if;
--		else
--			delay := delay + 1;
--
--		end if;
--	
--	end if;
--end if;
	sop_32 <= SOP(9 downto 6) & x"0" & SOP(5 downto 2) & '0' & SOP(1 downto 0) & '0' & x"0000";
	SOP_TOP_BITS <= SOP_32(31 DOWNTO 28); -- Extract top 4 bits of SOP_32
if rising_edge(clock) then
	if SW(9) = '1' and KEY(3) = '0' then
		--Send SOP through tdma-min to ADC
			SIP(9 DOWNTO 0) <= SW;
			SIP(15 downto 10) <= "000000";
			sendPacket := '1';
	end if;
	
	if sendPacket = '1' then
		send.addr <= x"05";
		send.data <= SOP_32;
		sendPacket := '0';
		sendConfig := '1';
		delay := 0;
	elsif sendConfig = '1' then
		delay := delay + 1;
		if delay > 300 then
		
			if SOP_TOP_BITS = "1100" then -- AVG
				send.addr <= x"03";
				send.data <= SOP_32;
				sendConfig := '0';
				sendPacket := '0';
			elsif SOP_TOP_BITS = "1101" then --corasp
				send.addr <= x"02";
				send.data <= SOP_32;
				sendConfig := '0';
				sendPacket := '0';
			elsif SOP_TOP_BITS = "1111" then --corasp
				send.addr <= x"03";
				send.data <= SOP_32;
				sendConfig := '0';
				sendPacket := '0';
			else -- adc
				send.addr <= x"04";
				send.data <= SOP_32;
				sendConfig := '0';
				sendPacket := '0';
			end if;
			delay:= 0;
		end if;
	else
		delay:= delay + 1;
		
		if delay > 300 then
			send.addr <= x"05";
			send.data <= x"00000000";
		end if;
	end if;
end if;

end process;
END ARCHITECTURE bdf_type;