LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

library work;
use work.TdmaMinTypes.all;

ENTITY PD_ASP_TopLevel_tb IS
END ENTITY;

ARCHITECTURE tb OF PD_ASP_TopLevel_tb IS

    SIGNAL clock : STD_LOGIC := '0';
    SIGNAL correlation : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL correlation_count_read : STD_LOGIC := '0';
   -- SIGNAL sendCorr : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL enable_config : STD_LOGIC := '1';
	 SIGNAL flag			 : STD_LOGIC := '0';

    TYPE sine_wave_array IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    CONSTANT sine_wave_lut : sine_wave_array := (
        0 	=> "0111111111111111", 
        1 	=> "1001100011111000",
        2 	=> "1011000011111011",
        3 	=> "1100011100011100",
        4 	=> "1101101010000001",
        5 	=> "1110101001101100",
        6 	=> "1111011001000000",
        7 	=> "1111110110001001",
        8 	=> "1111111111111111",
        9 	=> "1111110110001001",
        10 	=> "1111011001000000",
        11 	=> "1110101001101100",
        12 	=> "1101101010000001",
        13 	=> "1100011100011100",
        14 	=> "1011000011111011",
        15 	=> "1001100011111000",
        16 	=> "0111111111111111",
        17 	=> "0110011100000110",
        18 	=> "0100111100000011",
        19 	=> "0011100011100010",
        20 	=> "0010010101111101",
        21 	=> "0001010110010010",
        22 	=> "0000100110111110",
        23 	=> "0000001001110101",
        24 	=> "0000000000000000",
        25 	=> "0000001001110101",
        26 	=> "0000100110111110",
        27 	=> "0001010110010010",
        28 	=> "0010010101111101",
        29 	=> "0011100011100010",
        30 	=> "0100111100000011",
        31 	=> "0110011100000110"
    );
    SIGNAL lut_index : INTEGER := 0;

BEGIN

    in_PD : ENTITY work.PD_ASP_TopLevel
        GENERIC MAP(
            ports => 4
        )
        PORT MAP(
            clock => clock,
            correlation => correlation,
				--correlation_count_read => correlation_count_read,	
				enable_config => enable_config,
				flag => flag
				
        );

    -- Clock generation process
    clock_process : PROCESS
    BEGIN
        WHILE True LOOP
            clock <= '0';
            WAIT FOR 10 ns;
            clock <= '1';
            WAIT FOR 10 ns;
        END LOOP;
    END PROCESS clock_process;

    -- Stimulus process
    stimulus_process : PROCESS
    BEGIN
        WHILE True LOOP
				WAIT FOR 180 ns; -- Total wait time per iteration
				flag <= flag xor '1';
            correlation <= sine_wave_lut(lut_index);
				WAIT FOR 20 ns;
				flag <= flag xor '1';
				
            lut_index <= (lut_index + 1) MOD 32; -- Cycle through LUT values
            enable_config <= NOT enable_config AFTER 1 ms; -- Toggle count_read every 200 ns, which should expect 
				--WAIT FOR 180 ns; -- Total wait time per iteration
        END LOOP;
    END PROCESS stimulus_process;

END ARCHITECTURE;
