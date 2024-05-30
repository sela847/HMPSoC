library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_signed.all;

library work;
use work.TdmaMinTypes.all;

entity AverageCalculator is
    Port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        recv        : in  tdma_min_port;    
        send        : out tdma_min_port
    );
end AverageCalculator;

architecture Behavioral of AverageCalculator is
    type bit15Array is array(0 to 7) of signed(15 downto 0);
    signal fifo : bit15Array := (others => (others => '0')); -- FIFO buffer
    signal dataSent: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal enable_T: std_logic:= '0';

begin

    process(clk, reset)
        variable fifo_var : bit15Array := (others => (others => '0')); -- Use a variable for immediate updates
        variable size: integer := 0;
        variable adc_data : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
        variable sum : signed(15 downto 0) := (others => '0'); -- 16-bit signed
        variable avg_result  : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
        variable count: integer := 0;
        variable enable: std_logic := '0';
        variable L_sel : STD_LOGIC := '0'; -- '0' for L=4 and '1' for L=8
        variable nextAddr: std_logic_vector(3 downto 0) := (others => '0');
    begin
        if reset = '1' then
            sum := (others => '0');
            for i in 0 to 7 loop
                fifo(i) <= (others => '0');
            end loop;
            avg_result := (others => '0');
            dataSent <= (others => '0');
        elsif rising_edge(clk) then
            if recv.data(31 downto 28) = "1100" then
                enable := recv.data(17);
                L_sel := recv.data(18);
                nextAddr := recv.data(23 downto 20);    
            end if;

            if enable = '1' then
                if recv.data(31 downto 28) = "1000" then
                    count := 0;
                    adc_data := recv.data(15 downto 0);
                    if L_sel = '0' then
                        size := 3;
                    else
                        size := 7;
                    end if;

                    -- Copy fifo to fifo_var for immediate update
                    fifo_var := fifo;

                    -- Subtract the oldest sample (last element of the FIFO) from the sum
                    sum := sum - fifo_var(size);

                    -- Shift the FIFO to the right
                    for i in 7 downto 0 loop
                        if i <= size then
                            if i = 0 then
                                fifo_var(0) := signed(adc_data);
                            else
                                fifo_var(i) := fifo_var(i - 1);
                            end if;
                        end if;
                    end loop;

                    -- Update fifo with the new values from fifo_var
                    for i in 0 to 7 loop
                        if i <= size then
                            fifo(i) <= fifo_var(i);
                        end if;
                        if i <= size then
                            if fifo_var(i) /= x"0000" then
                                count := count + 1;
                            end if;
                        end if;
                    end loop;

                    -- Add the new sample to the sum
                    sum := sum + signed(adc_data);

                    -- Calculate the average
                    if count /= 0 then
                        avg_result := std_logic_vector(resize(sum / to_signed(count, sum'length), avg_result'length));
                        dataSent <= avg_result;
                    end if;
                end if;
            end if;
        end if;
   	send.addr <= x"0" & nextAddr;
	send.data <= x"8000" & dataSent;
	enable_T <= enable;
    end process;
end Behavioral;
