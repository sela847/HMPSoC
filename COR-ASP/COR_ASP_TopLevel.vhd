library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity COR_ASP_TopLevel is
    generic (
        ports : positive :=5 
    );
    port (
        clock   : in std_logic;
        avgVal  : in std_logic_vector(15 downto 0);
        calc    : in std_logic;
	flag	: in std_logic;
	pd_flag : in std_logic;
	avg_flag : in std_logic;
	reset : in std_logic;
        sendCorr: out std_logic_vector(31 downto 0)
    );
end entity;

architecture sim of COR_ASP_TopLevel is

    signal send_port : tdma_min_ports(0 to ports-1);
    signal recv_port : tdma_min_ports(0 to ports-1);

begin

    tdma_min: entity work.TdmaMin
        generic map (
            ports => ports
        )
        port map (
            clock => clock,
            sends => send_port,
            recvs => recv_port
        );
		 

    cor_asp: entity work.CORASP
        port map(
            clock    => clock,
            send     => send_port(2),
            recv     => recv_port(2),
            avgVal   => avgVal,
            calc     => calc,
            sendCorr => sendCorr
        );

    test_cor: entity work.testCor
	port map(
	    clock => clock,
	    flag => flag,
		 pd_flag => pd_flag,
		 avg_flag => avg_flag,
	    send => send_port(1),
	    recv => recv_port(1)
	);
	PD_ASP: entity work.PD_ASP
	port map(
		clk => clock,
		recv => recv_port(3),
		send => send_port(3)
	);
    avg_asp: entity work.AverageCalculator
	port map(
		  clk=>clock,
        reset=> reset,
        recv=> recv_port(0),
        send=> send_port(0)
	);
	adc_asp: entity work.nodeadc
	port map(
	clock => clock,
	recv => recv_port(4),
	send => send_port(4)
	);
end architecture;
