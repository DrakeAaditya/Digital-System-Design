----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:33:27 04/12/2018 
-- Design Name: 
-- Module Name:    3BitUpDown - Behavioral 
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

entity UpDownCounter is
    Port ( PRE : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           A : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end UpDownCounter;

architecture Behavioral of UpDownCounter is

begin
	process(PRE,CLR,CLK)
		variable t: STD_LOGIC_VECTOR (2 downto 0);
	begin
		if (PRE = '0' and CLR = '1') then
			t := "111";
		elsif (PRE = '1' and CLR = '0') then
			t := "000";
		elsif (PRE = '1' and CLR = '1') then
			if (rising_edge(CLK)) then
				if (A = '0') then
					t := t+1;
				elsif (A = '1') then
					t := t - 1;
				end if;
			end if;
		end if;
		Y <= t;
	end process;
end Behavioral;

