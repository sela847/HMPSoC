library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity testAVG is
end entity;

architecture tb of testAVG is

   signal adc_data    : STD_LOGIC_VECTOR(15 downto 0):= x"0000";
   signal adc_data_rdy: STD_LOGIC:='1';
   signal clk         : STD_LOGIC;
   signal reset       : STD_LOGIC:='0';
   signal L_sel       : STD_LOGIC:= '0';  -- '0' for L=4 and '1' for L=8
   signal avg_result  : STD_LOGIC_VECTOR(15 downto 0);
   signal avg_rdy     : STD_LOGIC;
	signal flag			 : STD_LOGIC:= '0';
	signal enable_out  : STD_LOGIC;

begin

    uut: entity work.AVGASP_Wave_Test
        generic map (
            ports => 8
        )
        port map (
           adc_data    => adc_data,
			  adc_data_rdy=> adc_data_rdy,
			  clk         => clk,
			  reset       => reset,
			  L_sel       => L_sel,
			  avg_result  => avg_result,
			  avg_rdy     => avg_rdy,
			  enable_out  => enable_out,
			  flag 		  => flag
        );

    -- Clock generation process
    clock_process: process
    begin
        while True loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process clock_process;

    -- Stimulus process
    stimulus_process: process
    begin
        while True loop
            wait for 10 ns;
            adc_data <= std_logic_vector(signed(adc_data) + 1); -- Increment adc_data by 10
            adc_data_rdy <= '1'; -- Toggle calc every  ns
            L_sel<= '0';
            wait for 10 ns;
        end loop;
    end process stimulus_process;

end architecture;