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
BEGIN 


b2v_inst : pc_test
PORT MAP(reset_in => SYNTHESIZED_WIRE_0,
		 CLOCK_50 => clock,
		 sip => SIP,
		 dpcr => DPCR,
		 sop_out => SOP);

LEDR <= SOP(9 downto 0);
SYNTHESIZED_WIRE_0 <= NOT(KEY(0));

process(clock,SOP_32,sendFlag) 
	variable delay : integer := 0;
begin
	if rising_edge(clock) then
		if SW(9) = '1' and KEY(3) = '0' then
		--Send SOP through tdma-min to ADC
			SIP(9 DOWNTO 0) <= SW;
			SIP(15 downto 10) <= "000000";
		end if;
	end if;
	
	sop_32 <= SOP(9 downto 6) & x"0" & SOP(5 downto 2) & '0' & SOP(1 downto 0) & '0' & x"0000";
	if sendFlag = '1' then
		delay := delay + 1;
		if delay > 100 then
			delay := 0;
			sendFlag <= '0';
			send.addr <= x"05";
			send.data <= SOP_32;
		end if;
		
	else
		delay := delay + 1;
		if delay > 100 then
			delay := 0;
			--sendFlag <= '0';
			--send.addr <= x"05";
			--send.data <= SOP_32;
		else
		case SOP_32(31 downto 28) is
		

			when x"A" =>
				send.addr <= x"04";
				send.data <= SOP_32;
			when x"C" =>
				send.addr <= x"00";
				send.data <= SOP_32;
				sendFlag <= '1';
			when x"D" =>
				send.addr <= x"02";
				send.data <= SOP_32;
				sendFlag <= '1';

			when x"F" =>
				send.addr <= x"03";
				send.data <= SOP_32;
			when others =>
			
		end case;
		end if;
	
	end if;
	
	

end process;
END ARCHITECTURE bdf_type;