LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity adc_tb is
end adc_tb;

architecture behavior of adc_tb is     
    -- connect signals to UUT
    signal enable 	: std_logic := '0';
	 signal sd			: integer:=0;
    signal q    		: std_logic_vector(11 downto 0);
	 signal clk 		: STD_LOGIC := '0';
 
begin
	 clk <= not clk after 5 ns;  -- 5 ns
    enable <= '1';
    -- UUT
    uut: entity work.adc 
	 port map (
          enable => enable,
			 clock => clk,
			 sd=>3125,
          q => q
        );

end;
