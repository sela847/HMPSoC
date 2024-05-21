library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity CORASP is
    port (
        clock   : in  std_logic;
        send    : out tdma_min_port;    -- Sending data straight to peak detect
        recv    : in  tdma_min_port;    -- Config mode from tdamin, possibly from Avg-Asp, still have to sus out
        avgVal  : in std_logic_vector(15 downto 0); -- Data from memory (RAM)
        calc    : in std_logic -- Input from outside 'Calculate Correlation' block, that takes in input from Avg-Asp
        sendCorr: out std_logic_vector(31 downto 0);
    );
end CORASP;

architecture rtl of CORASP is
constant N : integer := 10;
signal correlation: signed(31 downto 0) := (others => '0'); -- Correlation result
signal addr_0   : std_logic_vector(3 downto 0) := "0010"; -- Change to whatever Peak Detector would be
signal addr_1   : std_logic_vector(3 downto 0) := "0010"; -- Change to whatever Peak Detector would be
signal flag     : std_logic := '0'; -- Flag for knowing to clear the buffer
signal avgBuffer  : array(2*N-1 downto 0) of std_logic_vector(15 downto 0); -- Buffer containing all the vals we need
signal index    : integer := 2*N-1; -- Index for the buffer
begin
    send.addr<=x"01";
    process(clock, flag,calc)
        variable readPacket : std_logic_vector(15 downto 0);
        variable casted : std_logic_vector(15 downto 0);
        variable recvdata: signed(15 downto 0);
        variable corrVar : signed(31 downto 0);
    begin
        if rising_edge(clock) then

            if recv.data(31 downto 28) = "1000" then -- Is a valid data packet // e.g. is ready
                recvdata := signed(avgVal(15 downto 0));
                if (calc = '0' and flag = '0') then
                    flag <= '1';
                    avgBuffer <= ((others => (others => '0')) );
                    index = 2*N-1;
                end if;
                avgBuffer(index) <= avgVal;
                index <= index -1;
                if (calc = '1') then
                    flag <= '1';
                    if (index < 1) then
                        corrVar := 0;
                        for i in 0 to N-1 loop
                            corrVar := corrVar + (signed(avgBuffer(N + i)) * signed(avgBuffer(N - (i+1))));
                        end loop;
                        correlation <= corrVar;
                    end if;

                end if;
                -- Below is previous capping and doubling ability, no longer implemented

                -- if (recvdata > to_signed(2048,16)) then
                --     recvdata := to_signed(4096,16);
                -- elsif (recvdata < to_signed(-2048,16)) then
                --     recvdata := to_signed(-4096,16);
                

                -- else
                --     recvdata := shift_left(signed(recv.data(15 downto 0)),1);
                -- end if;

                -- Passing regular values through, as well as correlation concurrently
                if recv.data(16) = '0' then -- Send to channel 0
                    send.data<= x"8000" & std_logic_vector(recvdata);
                    
                else -- Send to channel 1
                    send.data <= x"8001" & std_logic_vector(recvdata);
                end if;     
            end if;
        end if;
    end process;
    sendCorr <= correlation;
end architecture;