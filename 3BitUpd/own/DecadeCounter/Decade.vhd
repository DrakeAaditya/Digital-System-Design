----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:12:14 04/12/2018 
-- Design Name: 
-- Module Name:    Decade - Behavioral 
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

entity Decade is
    Port ( PRE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           A : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end Decade;

architecture Behavioral of Decade is
begin
	process(CLK,PRE,CLR)
		variable t : STD_LOGIC_VECTOR(3 downto 0);
	begin
		if (PRE = '0' and CLR = '1') then
			t := "1111";
		elsif (PRE = '1' and CLR = '0') then
			t := "0000";
		elsif (PRE = '1' and CLR = '1') then
			if (rising_edge(CLK)) then
				if (t="1001") then
					t := "0000";
				else
					t := t + "0001";
				end if;
			end if;
		end if;
		Y <= t;
	end process;
end Behavioral;

