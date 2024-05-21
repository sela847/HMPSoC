library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AverageFilteredDataRAM is
    Port (
        clk       : in  STD_LOGIC;
		  data_in   : in  STD_LOGIC_VECTOR(15 downto 0);
        write_en  : in  STD_LOGIC;
        write_addr: in  INTEGER range 0 to 1023; --10 bits
        read_addr : in  INTEGER range 0 to 1023; --10 bits 
        data_out  : out STD_LOGIC_VECTOR(15 downto 0)
    );
end AverageFilteredDataRAM;

architecture Behavioral of AverageFilteredDataRAM is
    type ram_type is array (0 to 1023) of STD_LOGIC_VECTOR(15 downto 0);
    signal ram : ram_type := (others => (others => '0'));
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if write_en = '1' then
                ram(write_addr) <= data_in;
            end if;
            data_out <= ram(read_addr);
        end if;
    end process;
end Behavioral;
