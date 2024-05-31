library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity nodeadc is
    port (
        clock : in  std_logic;
        send  : out tdma_min_port;
		  recv  : in  tdma_min_port
    );
end entity;

architecture rtl of nodeadc is
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT adc
    PORT(
         enable 		: in  std_logic;
         clock  		: in  std_logic;
			sd		 		: in INTEGER;
         q      		: out std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    
    -- Signals to connect to the UUT
    signal enable 		: std_logic := '1';
    signal q      		: std_logic_vector(11 downto 0);
    signal prev_q 		: std_logic_vector(11 downto 0):= (OTHERS => '0');
	 signal pacwidth		: std_logic_vector(1 downto 0):= (OTHERS => '0');
	 signal sd 				: integer := 3125;
    signal sent : std_logic := '0';
signal counter : integer := 0;
begin
    uut: adc port map (
		 enable => enable,	
		 clock => clock,
		 sd => sd,
		 q => q
	  );

    process(clock)
	--variable prev_q : std_logic_vector(11 downto 0) := (others => '0');
	variable q_out : std_logic_vector(11 downto 0) := (others => '0');

    begin
        if rising_edge(clock) then
			
			  if (recv.data(31 downto 28)="1000") then
					pacwidth <= recv.data(27 downto 26);
					if(recv.data(25 downto 22)="1000")then
						sd <= 6250;
					end if;
			  end if;
					
            				send.addr <= x"00"; --  send adress to be --> DAC
            				if q_out = q then
						if counter < 100 then
						counter <= counter + 1;
						else
						send.data<= "1001"&"0000"&"0000"&"0000"&"0000"&"0000"&q(11 downto 4); -- Sending the new data
						end if;
					else
						if pacwidth ="00"then
							 send.data <= "1000"&"0000"&"0000"&"0000"&"0000"&"0000"&q(11 downto 4); -- Sending the new data
							-- prev_q <= q; -- save previous value
						 elsif pacwidth="01"then
							send.data <= "1000"&"0000"&"0000"&"0000"&"0000"&"00"&q(11 downto 2);
							-- prev_q <= q; -- save previous value
						 elsif pacwidth="10"then
							send.data <= "1000"&"0000"&"0000"&"0000"&"0000"&q(11 downto 0);
							-- prev_q <= q; -- save previous value
						end if;
						counter <= 0;
					 end if;
	prev_q <= q_out;			
           q_out:= q;

        end if;
	
    end process;
	
end architecture;