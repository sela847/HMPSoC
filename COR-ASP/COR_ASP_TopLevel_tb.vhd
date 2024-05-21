library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity COR_ASP_TopLevel_tb is
end entity;

architecture tb of COR_ASP_TopLevel_tb is

    signal clock   : std_logic := '0';
    signal avgVal  : std_logic_vector(15 downto 0) := (others => '0');
    signal calc    : std_logic := '0';
    signal sendCorr: std_logic_vector(31 downto 0);

begin

    uut: entity work.COR_ASP_TopLevel
        generic map (
            ports => 8
        )
        port map (
            clock    => clock,
            avgVal   => avgVal,
            calc     => calc,
            sendCorr => sendCorr
        );

    -- Clock generation process
    clock_process: process
    begin
        while True loop
            clock <= '0';
            wait for 10 ns;
            clock <= '1';
            wait for 10 ns;
        end loop;
    end process clock_process;

    -- Stimulus process
    stimulus_process: process
    begin
        while True loop
            wait for 10 ns;
            avgVal <= std_logic_vector(signed(avgVal) + 10); -- Increment avgVal by 10
            calc <= not calc after 200 ns; -- Toggle calc every 200 ns
            wait for 10 ns;
        end loop;
    end process stimulus_process;

end architecture;
