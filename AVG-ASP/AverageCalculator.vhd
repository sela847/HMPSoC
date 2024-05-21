library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AverageCalculator is
    Port (
        adc_data    : in  STD_LOGIC_VECTOR(15 downto 0);
        adc_data_rdy: in  STD_LOGIC;
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        L_sel       : in  STD_LOGIC;  -- '0' for L=4 and '1' for L=8
        avg_result  : out STD_LOGIC_VECTOR(15 downto 0);
        avg_rdy     : out STD_LOGIC;
        fifo_out_0  : out STD_LOGIC_VECTOR(15 downto 0);  -- Output the FIFO buffer
        fifo_out_1  : out STD_LOGIC_VECTOR(15 downto 0);  -- Output the FIFO buffer
        fifo_out_2  : out STD_LOGIC_VECTOR(15 downto 0);  -- Output the FIFO buffer
        fifo_out_3  : out STD_LOGIC_VECTOR(15 downto 0);  -- Output the FIFO buffer
        fifo_out_4  : out STD_LOGIC_VECTOR(15 downto 0)   -- Output the FIFO buffer
    );
end AverageCalculator;

architecture Behavioral of AverageCalculator is
    signal sum : signed(15 downto 0); -- 16-bit signed
    type bit15Array is array(0 to 7) of signed(15 downto 0);
    signal fifo : bit15Array; -- FIFO buffer
begin
    -- Convert signed to std_logic_vector for FIFO output
    fifo_out_0 <= std_logic_vector(fifo(0));
    fifo_out_1 <= std_logic_vector(fifo(1));
    fifo_out_2 <= std_logic_vector(fifo(2));
    fifo_out_3 <= std_logic_vector(fifo(3));
    fifo_out_4 <= std_logic_vector(fifo(4));

    process(clk, reset)
        variable fifo_var : bit15Array; -- Use a variable for immediate updates
		  variable size: integer:=0;
    begin
        if reset = '1' then
            sum <= (others => '0');
            for i in 0 to 7 loop
                fifo(i) <= (others => '0');
            end loop;
            avg_result <= (others => '0');
            avg_rdy <= '0';
        elsif rising_edge(clk) then
            if adc_data_rdy = '1' then
                if L_sel = '0' then
						  size:=3;
                else
						  size:=7;
                end if;

                -- Copy fifo to fifo_var for immediate update
                fifo_var := fifo;

                -- Subtract the oldest sample (last element of the FIFO) from the sum
                sum <= sum - fifo_var(size);

                -- Shift the FIFO to the right
                for i in 7 downto 0 loop
						if(i<=size) then
							if(i = 0) then
								fifo_var(0) := signed(adc_data);
							else
							  fifo_var(i) := fifo_var(i-1);
							end if;
						end if;
                end loop;


                -- Update fifo with the new values from fifo_var
                for i in 0 to 7 loop
						if(i<=size) then
                    fifo(i) <= fifo_var(i);
						end if;
                end loop;

                -- Add the new sample to the sum
                sum <= sum + signed(adc_data);

                -- Output the current average
                if L_sel = '0' then
                    avg_result <= std_logic_vector(shift_right(sum, 2));  -- Divide by 4 (shift right by 2)
                    avg_rdy <= '1';
                else
                    avg_result <= std_logic_vector(shift_right(sum, 3));  -- Divide by 8 (shift right by 3)
                    avg_rdy <= '1';
                end if;
            else
                avg_rdy <= '0';
					  for i in 7 downto 0 loop
						 if(i<=size) then
                    fifo_var(i) := fifo_var(i);
						  fifo(i)<=fifo(i);
						 end if;
                end loop;
            end if;
        end if;
    end process;
end Behavioral;
