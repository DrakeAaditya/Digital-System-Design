----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:45:07 29/03/2018 
-- Design Name: 
-- Module Name:    BCD7Seg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD7Seg is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (6 downto 0));
end BCD7Seg;

architecture Behavioral of BCD7Seg is

begin
	process (I)
		begin
		case I is
			when "0000" => Y <= "1111110";
			when "0001" => Y <= "0110000";
			when "0010" => Y <= "1101101";
			when "0011" => Y <= "1111001";
			when "0100" => Y <= "0110011";
			when "0101" => Y <= "1011011";
			when "0110" => Y <= "1011111";
			when "0111" => Y <= "1110000";
			when "1000" => Y <= "1111111";
			when "1001" => Y <= "1111011";
			when others => Y <= "0000000";
		end case;
	end process;
end Behavioral;

