library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity COR_ASP_TopLevel is
    generic (
        ports : positive := 8
    );
    port (
        clock   : in std_logic;
        avgVal  : in std_logic_vector(15 downto 0);
        calc    : in std_logic;
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
end architecture;
