library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity COR_ASP_TopLevel is
    generic (
        ports : positive := 6
    );
    port (
        clock   : in std_logic;
        avgVal  : in std_logic_vector(15 downto 0);
        calc    : in std_logic;
        flag    : in std_logic;
        pd_flag : in std_logic;
        avg_flag : in std_logic;
        reset   : in std_logic;
        sendCorr : out std_logic_vector(31 downto 0);
        HEX0    : out std_logic_vector(6 downto 0);
        HEX1    : out std_logic_vector(6 downto 0);
        HEX2    : out std_logic_vector(6 downto 0);
        HEX3    : out std_logic_vector(6 downto 0);
        HEX4    : out std_logic_vector(6 downto 0);
        HEX5    : out std_logic_vector(6 downto 0)
    );
end entity;

architecture sim of COR_ASP_TopLevel is
    signal send_port : tdma_min_ports(0 to ports - 1);
    signal recv_port : tdma_min_ports(0 to ports - 1);
    
    component Nios_System_2A is
        port (
            addr_external_connection_export  : out std_logic_vector(7 downto 0);                     -- export
            clk_clk                          : in  std_logic                     := 'X';             -- clk
            recv_external_connection_export  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- export
            send_external_connection_export  : out std_logic_vector(31 downto 0);                    -- export
            seg_0_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
            seg_1_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
            seg_2_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
            seg_3_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
            seg_4_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
            seg_5_external_connection_export : out std_logic_vector(7 downto 0)                      -- export
        );
    end component Nios_System_2A;
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
            clk => clock,
            reset => reset,
            recv => recv_port(0),
            send => send_port(0)
        );
   
    adc_asp: entity work.nodeadc
        port map(
            clock => clock,
            recv => recv_port(4),
            send => send_port(4)
        );
   
    nios_example: Nios_System_2A
        port map (
            clk_clk => clock,
            seg_0_external_connection_export(6 downto 0) => HEX0(6 downto 0),
            seg_1_external_connection_export(6 downto 0) => HEX1(6 downto 0),
            seg_2_external_connection_export(6 downto 0) => HEX2(6 downto 0),
            seg_3_external_connection_export(6 downto 0) => HEX3(6 downto 0),
            seg_4_external_connection_export(6 downto 0) => HEX4(6 downto 0),
            seg_5_external_connection_export(6 downto 0) => HEX5(6 downto 0),
            send_external_connection_export  => send_port(5).data,
            recv_external_connection_export  => recv_port(5).data,
            addr_external_connection_export  => send_port(5).addr
        );
end architecture;
