library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity DPASP is
    port (
        clock : in  std_logic;

        send  : out tdma_min_port;
        recv  : in  tdma_min_port
    );
end entity;

architecture rtl of DPASP is
begin
    process(clock)
        variable temp    : std_logic_vector(15 downto 0) := x"0000";
        variable double_value   : integer;
        variable clipped_value : std_logic_vector(15 downto 0);
    begin
        if rising_edge(clock) then
            send.addr <= x"01"; -- Setting the send address to DAC-ASP
            
            -- Checking if the incoming packet is audio data
            if recv.data(31 downto 28) = "1000" then -- "1000" indicates audio data
                temp := recv.data(15 downto 0);
                double_value := to_integer(signed(temp)) * 2; -- Doubling the value

                -- Clipping the value to max |4096|
                if double_value > 4096 then
                    clipped_value := std_logic_vector(to_signed(4096, 16));
                elsif double_value < -4096 then
                    clipped_value := std_logic_vector(to_signed(-4096, 16));
                else
                    clipped_value := std_logic_vector(to_signed(double_value, 16));
                end if;
                    
                -- Sending the new clipped value
                send.data <= "100000000000000" & recv.data(16) & clipped_value(15 downto 0);
            end if;
        end if;
    end process;
end architecture;
