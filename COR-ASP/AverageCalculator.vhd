LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE ieee.std_logic_signed.ALL;

LIBRARY work;
USE work.TdmaMinTypes.ALL;

ENTITY AverageCalculator IS
    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        recv : IN tdma_min_port;
        send : OUT tdma_min_port
    );
END AverageCalculator;

ARCHITECTURE Behavioral OF AverageCalculator IS
    TYPE bit15Array IS ARRAY(0 TO 7) OF signed(15 DOWNTO 0);
    SIGNAL fifo : bit15Array := (OTHERS => (OTHERS => '0')); -- FIFO buffer
    SIGNAL dataSent : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL enable_T : STD_LOGIC := '0';
    SIGNAL prevVal : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL olddata : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');

BEGIN

    PROCESS (clk, reset)
        VARIABLE fifo_var : bit15Array := (OTHERS => (OTHERS => '0')); -- Use a variable for immediate updates
        VARIABLE size : INTEGER := 0;
        VARIABLE adc_data : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
        VARIABLE sum : signed(15 DOWNTO 0) := (OTHERS => '0'); -- 16-bit signed
        VARIABLE avg_result : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
        VARIABLE count : INTEGER := 0;
        VARIABLE enable : STD_LOGIC := '0';
        VARIABLE L_sel : STD_LOGIC := '0'; -- '0' for L=4 and '1' for L=8
        VARIABLE nextAddr : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    BEGIN
        IF reset = '1' THEN
            sum := (OTHERS => '0');
            FOR i IN 0 TO 7 LOOP
                fifo(i) <= (OTHERS => '0');
            END LOOP;
            avg_result := (OTHERS => '0');
            dataSent <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            IF recv.data(31 DOWNTO 28) = "1100" THEN
                enable := recv.data(17);
                L_sel := recv.data(18);
                nextAddr := recv.data(23 DOWNTO 20);
            END IF;

            IF enable = '1' THEN
                IF recv.data(31 DOWNTO 28) = "1000" THEN
                    count := 0;
                    adc_data := recv.data(15 DOWNTO 0);
                    IF prevVal /= (adc_data) THEN
                        IF L_sel = '0' THEN
                            size := 3;
                        ELSE
                            size := 7;
                        END IF;

                        -- Copy fifo to fifo_var for immediate update
                        fifo_var := fifo;

                        -- Subtract the oldest sample (last element of the FIFO) from the sum
                        sum := sum - fifo_var(size);

                        -- Shift the FIFO to the right
                        FOR i IN 7 DOWNTO 0 LOOP

                            IF i <= size THEN
                                IF i = 0 THEN
                                    fifo_var(0) := signed(adc_data);
                                ELSE
                                    fifo_var(i) := fifo_var(i - 1);
                                END IF;
                            END IF;
                        END LOOP;

                        -- Update fifo with the new values from fifo_var
                        FOR i IN 0 TO 7 LOOP
                            IF i <= size THEN
                                fifo(i) <= fifo_var(i);
                            END IF;
                            IF i <= size THEN
                                IF fifo_var(i) /= x"0000" THEN
                                    count := count + 1;
                                END IF;
                            END IF;
                        END LOOP;

                        -- Add the new sample to the sum
                        sum := sum + signed(adc_data);

                        -- Calculate the average
                        IF count /= 0 THEN
                            avg_result := STD_LOGIC_VECTOR(resize(sum / to_signed(count, sum'length), avg_result'length));
                            dataSent <= avg_result;
                        END IF;
                    END IF;

                END IF;
            END IF;
        END IF;

        send.addr <= x"0" & nextAddr;
        send.data <= x"8000" & dataSent;
		 oldData <= dataSent;
		 enable_T <= enable;
		 prevVal <= adc_data;
END PROCESS;
END Behavioral;