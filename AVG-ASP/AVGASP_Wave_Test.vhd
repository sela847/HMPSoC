library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity AVGASP_Wave_Test is
    generic (
        ports : positive := 8
    );
    port (
        adc_data    : in  STD_LOGIC_VECTOR(15 downto 0);
        adc_data_rdy: in  STD_LOGIC;
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        L_sel       : in  STD_LOGIC;  -- '0' for L=4 and '1' for L=8
		  flag		  : in STD_LOGIC;
        avg_result  : out STD_LOGIC_VECTOR(15 downto 0);
        avg_rdy     : out STD_LOGIC;
		  enable_out  : out STD_LOGIC
    );
end entity;

architecture sim of AVGASP_Wave_Test is

    signal send_port : tdma_min_ports(0 to ports-1);
    signal recv_port : tdma_min_ports(0 to ports-1);

begin

    tdma_min: entity work.TdmaMin
        generic map (
            ports => ports
        )
        port map (
            clock => clk	,
            sends => send_port,
            recvs => recv_port
        );

    cor_asp: entity work.AverageCalculator
        port map(
           adc_data    => adc_data,
			  adc_data_rdy=> adc_data_rdy,
			  clk         => clk,
			  reset       => reset,
			  L_sel       => L_sel,
			  avg_result  => avg_result,
			  avg_rdy     => avg_rdy,
			  recv 		  => recv_port(2),
			  enable_out  => enable_out
        );
		  
	avgdumb: entity work.sendAVG
        port map(
			  clock => clk,
			  flag  => flag,
			  send  => send_port(1),
			  recv  => recv_port(1)
        );
	 
end architecture;