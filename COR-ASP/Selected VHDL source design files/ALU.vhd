-- Zoran Salcic

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.recop_types.all;
use work.opcodes.all;
use work.various_constants.all;


entity alu is
	port (
		clk				: in bit_1;
		z_flag			: out bit_1;
		-- ALU operation selection
		alu_operation	: in bit_3;

		operand_1: in bit_16;
		operand_2: in bit_16;
		alu_carry		: in bit_1;  --WARNING: carry in currently is not used
		alu_result		: out bit_16 := X"0000";
		-- flag control signal
		clr_z_flag		: in bit_1;
		reset : in bit_1
	);
end alu;

architecture combined of alu is
	signal result		: bit_16;
	signal temp_val   : bit_16;
begin
	--MUX selecting first operand
	--op1_select: process (alu_op1_sel, rx, rz, ir_operand)
--	begin
--		case alu_op1_sel is
--			when "00" =>
--				operand_1 <= rx;
--			when "01" =>
--				operand_1 <= ir_operand;
--			when "10" => --not used currently
--				operand_1 <= rz;
--			when others =>
--				operand_1 <= X"0000";
--		end case;
--	end process op1_select;
--	
--	--MUX selecting second operand
--	op2_select: process (alu_op2_sel, rx, rz, ir_operand)
--	begin
--		case alu_op2_sel is
--			when "00" =>
--				operand_1 <= rx;
--			when "01" =>
--				operand_1 <= ir_operand;
--			when "10" => --not used currently
--				operand_1 <= rz;
--			when others =>
--				operand_1 <= X"0000";
--		end case;
	--end process op2_select;
	
	-- perform ALU operation
	alu: process (alu_operation, operand_1, operand_2,temp_val)
	begin
		case alu_operation is
			when alu_add =>
				result <= operand_2 + operand_1;
			when alu_sub =>
				result <= operand_2 - operand_1;
			when alu_and =>
				result <= operand_2 and operand_1;
			when alu_or =>
				result <= operand_2 or operand_1;
			when alu_idle =>
				result <= temp_val;
			
			when alu_checkZero =>
				result <= operand_2;
				
			when others =>
				result <= X"0000";
		end case;
	end process alu;
	alu_result <= result;
	temp_val <= result;

	-- zero flag
	z1gen: process (clk)
	begin
		if reset = '1' then
			z_flag <= '0';
		elsif rising_edge(clk) then
			if clr_z_flag = '1' then
				z_flag <= '0';
			-- if alu is working (operation is valid)
			elsif ((alu_operation(2) = '0') or (alu_operation = alu_checkZero)) then
				if result = X"0000" then
					z_flag <= '1';
				else
					z_flag <= '0';
				end if;
			end if;
		end if;
	end process z1gen;

end combined;