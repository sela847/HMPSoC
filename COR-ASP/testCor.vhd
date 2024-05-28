library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity testCor is
	port (
		clock : in  std_logic;
		flag 	: in std_logic;
		pd_flag : in std_logic;
		send  : out tdma_min_port;
		recv  : in  tdma_min_port
	);
end entity;

architecture rtl of testCor is
 signal avgVal : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
type sine_wave_array is array (0 to 31) of STD_LOGIC_VECTOR(15 downto 0);
    constant sine_wave_lut : sine_wave_array := (
        0 => "0111111111111111",
        1 => "1001100011111000",
        2 => "1011000011111011",
        3 => "1100011100011100",
        4 => "1101101010000001",
        5 => "1110101001101100",
        6 => "1111011001000000",
        7 => "1111110110001001",
        8 => "1111111111111111",
        9 => "1111110110001001",
        10 => "1111011001000000",
        11 => "1110101001101100",
        12 => "1101101010000001",
        13 => "1100011100011100",
        14 => "1011000011111011",
        15 => "1001100011111000",
        16 => "0111111111111111",
        17 => "0110011100000110",
        18 => "0100111100000011",
        19 => "0011100011100010",
        20 => "0010010101111101",
        21 => "0001010110010010",
        22 => "0000100110111110",
        23 => "0000001001110101",
        24 => "0000000000000000",
        25 => "0000001001110101",
        26 => "0000100110111110",
        27 => "0001010110010010",
        28 => "0010010101111101",
        29 => "0011100011100010",
        30 => "0100111100000011",
        31 => "0110011100000110"
    );

	 signal delay_count: integer := 0;
    signal lut_index : INTEGER := 0;
begin
	
	process(clock,flag,pd_flag,delay_count)
	begin
		if rising_edge(clock) then
			
			if flag = '0' then
				--send.data <= "11010000000000100000000000000000"; -- enabling
				send.addr <= x"02";
				send.data <= x"D0320000"; -- enabling
			elsif pd_flag = '0' then
				send.addr <= x"03";
				send.data <= x"F0120000"; -- enabling pd
			elsif delay_count < 15 then
				delay_count <= delay_count + 1; -- delay for 150 clock cycles
		
			else
				--avgVal <= sine_wave_lut(lut_index);
				avgVal <= std_logic_vector(shift_right(unsigned(sine_wave_lut(lut_index)),8)); --If user wants to test with a sine wave, they can uncomment this line and comment out the line underneath
				delay_count <= 0;
				--avgVal <= std_logic_vector((unsigned(avgVal) + 1) MOD 255);
				
				lut_index <= (lut_index + 1) MOD 32; -- Cycle through LUT valuesl <= std_logic_vector(signed(avgVal) + 1); -- Increment avgVal by 1
				send.addr <= x"02";
				send.data <= "1000" & x"000" & avgVal;
				--wait for 300 ns; -- likkle delay
			end if;
		end if;
	end process;


end architecture;
