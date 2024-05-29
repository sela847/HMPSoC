library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity COR_ASP_TopLevel_tb is
end entity;

architecture tb of COR_ASP_TopLevel_tb is

    signal clock : STD_LOGIC := '0';
    signal avgVal : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal calc : STD_LOGIC := '0';
    signal sendCorr : STD_LOGIC_VECTOR(31 downto 0);
    signal flag : STD_LOGIC := '0';
	 signal pd_flag : std_logic := '0';
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


    signal lut_index : INTEGER := 0;

begin

    uut : entity work.COR_ASP_TopLevel
        GENERIC MAP(
            ports => 8
        )
        port map(
            clock => clock,
            avgVal => avgVal,
            calc => calc,
            flag => flag,
				pd_flag => pd_flag,
            sendCorr => sendCorr
        );

    -- Clock generation process
    clock_process : process
    begin
        while True loop
            clock <= '0';
            wait for 10 ns;
            clock <= '1';
            wait for 10 ns;
        end loop;
    end process clock_process;

    -- Stimulus process
    stimulus_process : process
    begin
        while True loop
            wait for 20 ns; -- Total wait time per iteration
            avgVal <= sine_wave_lut(lut_index); --If user wants to test with a sine wave, they can uncomment this line and comment out the line underneath
--	    avgVal <= std_logic_vector(signed(avgVal) + 1); -- Increment avgVal by 1
            lut_index <= (lut_index + 1) MOD 32; -- Cycle through LUT values
            calc <= NOT calc after 200 ns; -- Toggle calc every 200 ns
	    flag <= '1';
			if pd_flag = '0' then
				wait for 20 ns;
				pd_flag <= '1';
			end if;
        end loop;
    end process stimulus_process;

END ARCHITECTURE;
