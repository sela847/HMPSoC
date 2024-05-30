LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

entity adc is
    generic (
        data_size : INTEGER := 12  -- total width of data = 12 bits
    );
    port (
        enable  : in STD_LOGIC;   
        clock   : in STD_LOGIC; 
		  sd		 : in INTEGER;
        q  : out STD_LOGIC_VECTOR (data_size - 1 downto 0)  -- output
    );
end adc;

architecture beh of adc is

    signal mif_count    : STD_LOGIC_VECTOR (10 downto 0) := (others => '0');
    signal sub_wire0  	: STD_LOGIC_VECTOR (data_size - 1 downto 0);
    signal clk_sample  	: STD_LOGIC := '0';
    signal counter    	: INTEGER := 0;

begin
    q <= sub_wire0(data_size - 1 downto 0);

    altsyncram_component : altsyncram
    generic map (
        clock_enable_input_a => "BYPASS",
        clock_enable_output_a => "BYPASS",
		  init_file => "H:\ipadc\ipadc\12bit.mif",
        intended_device_family => "Cyclone V",
        lpm_hint => "ENABLE_RUNTIME_MOD=NO",
        lpm_type => "altsyncram",
        numwords_a => 1601,
        operation_mode => "ROM",
        outdata_aclr_a => "NONE",
        outdata_reg_a => "CLOCK0",
        widthad_a => 11,
        width_a => 12,
        width_byteena_a => 1
    )
	
    port map (
        address_a => mif_count,
        clock0 => clk_sample,
        q_a => sub_wire0
    );

    -- Clock divider process
    process (clock)
    begin
        if (clock'EVENT AND clock = '1') then
            if (counter = (sd-1)) then -- For 100MHz clock convert to 16KHz 100M/16K = 6250/2 = 3125
                counter <= 0;
                clk_sample <= NOT clk_sample;
            else
                counter <= counter + 1;
            end if;
        end if;
    end PROCESS;

    -- incrementing mif counter 
    process (clk_sample)
    begin
        if (clk_sample'event AND clk_sample = '1') then
            if (enable = '1') then
                mif_count <= mif_count + 1;
            end if;
            if (mif_count = "11000111111") then
                mif_count <= (others => '0');
            end if;
        end if;
    end process;

end beh;
