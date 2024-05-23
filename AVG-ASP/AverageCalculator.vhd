library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.TdmaMinTypes.all;


entity AverageCalculator is
    Port (
        adc_data    : in  STD_LOGIC_VECTOR(15 downto 0);
        adc_data_rdy: in  STD_LOGIC;
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        L_sel       : in  STD_LOGIC;  -- '0' for L=4 and '1' for L=8
        avg_result  : out STD_LOGIC_VECTOR(15 downto 0);
        avg_rdy     : out STD_LOGIC;
        recv     	  : in  tdma_min_port;    -- Config mode from tdamin, possibly from Avg-Asp, still have to sus out
		  enable_out  : out STD_LOGIC
    );
end AverageCalculator;

architecture Behavioral of AverageCalculator is
    type bit15Array is array(0 to 7) of signed(15 downto 0);
    signal fifo : bit15Array:=(others => (others => '0')); -- FIFO buffer
    signal enable: std_logic:='0';
begin

	 process(clk, enable, recv)
	 begin
	if rising_edge(clk) then
            if recv.data(31 downto 28) = "1100" then
                if recv.data(17) = '1' then
                    enable <= '1';
                else
                    enable <= '0';
                end if;
	   end if;
            
        end if;
	 
	 end process;
	 
    process(clk, reset, enable)
        variable fifo_var : bit15Array; -- Use a variable for immediate updates
		  variable size: integer:=0;
variable sum : signed(15 downto 0):= x"0000"; -- 16-bit signed
    begin
		if(enable = '1') then
        if reset = '1' then
            sum := (others => '0');
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
                sum := sum - fifo_var(size);

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
                sum := sum + signed(adc_data);

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
		 end if;
		 enable_out<=enable;
    end process;
end Behavioral;
