----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:44:10 03/29/2018 
-- Design Name: 
-- Module Name:    7seg - Behavioral 
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

entity 7seg is
    Port ( B : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end 7seg;

architecture Behavioral of 7seg is

begin
	process (B) is
	begin 
		case B is
			when "0000" => Y <= "1111110";
			when "0001" => Y <= "0001100";
			when "0010" => Y <= "0110111";
			when "0011" => Y <= "0011111";
			when "0100" => Y <= "1011101";
			when "0101" => Y <= "1001111";
			when "0110" => Y <= "1101111";
			when "0111" => Y <= "0011100";
			when "1000" => Y <= "1111111";
			when "1001" => Y <= "1011101";
			when others => Y <= NULL;
		end case;
	end process;
end Behavioral;