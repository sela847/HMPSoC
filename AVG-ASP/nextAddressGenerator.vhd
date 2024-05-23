library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity nextAddressGenerator is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in STD_LOGIC;
        result_rdy: in  STD_LOGIC;
        write_addr: out  INTEGER range 0 to 1023 -- 10 bits
    );
end entity nextAddressGenerator;

architecture behavior of nextAddressGenerator is
    signal address: INTEGER range 0 to 1023 := 0; -- 10 bits
begin
    process(clk, reset)
    begin
        if reset = '1' then
            address <= 0;
        elsif rising_edge(clk) then
            if result_rdy = '1' then
                write_addr <= address;
                if address = 1023 then
                    address <= 0;
                else
                    address <= address + 1;
                end if;
				else
					address<=address;
            end if;
        end if;
    end process;
end architecture behavior;
