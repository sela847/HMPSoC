library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AVG-ASP is
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        data_in  : in  STD_LOGIC_VECTOR(15 downto 0);
        data_out : out  STD_LOGIC_VECTOR(15 downto 0);
        L_sel    : in  STD_LOGIC  -- '0' for L=4, '1' for L=8
    );
end AVG-ASP;

architecture behavior of AVG-ASP is


end architecture behavior;