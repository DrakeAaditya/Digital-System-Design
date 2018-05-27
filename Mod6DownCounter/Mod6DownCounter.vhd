----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:48:11 05/03/2018 
-- Design Name: 
-- Module Name:    Mod6DownCounter - Behavioral 
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

entity Mod6DownCounter is
    Port ( CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           PRE : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR(2 downto 0));
end Mod6DownCounter;

architecture Behavioral of Mod6DownCounter is

begin
	process(CLK,CLR,PRE)
		variable t: STD_LOGIC_VECTOR(2 downto 0);
	begin
		if(CLR = '1' and PRE = '0') then
			t := "111";
		elsif(CLR = '0' and PRE = '1') then
			t := "010";
		elsif(CLR = '0' and PRE = '0') then
			NULL;
		elsif(CLK = '1' and CLK'event) then
			if(t = "010") then
				t := "111";
			else
				t := t - "001";
			end if;
		end if;
		Y <= t;
	end process;
end Behavioral;

