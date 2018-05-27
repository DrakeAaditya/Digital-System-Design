----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:31:53 03/21/2018 
-- Design Name: 
-- Module Name:    SR - Behavioral 
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

entity SR is
    Port ( CLK : in  STD_LOGIC;
           S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end SR;

architecture Behavioral of SR is

begin
	process(s,r,clk) is
		variable t: STD_LOGIC:='0';
	begin
		if(clk='1' and clk' event) then -- or use if(rising_edge(clk))
			if(s='0' and r='0') then
				report "No change";
				t:=t;
			elsif(s='1' and r='0') then
				t:='1';
			elsif(s='0' and r='1') then
				t:='0';
			elsif(s='1' and r='1') then
				report "Illegal";
			end if;
end if;
q<=t;
end process;


end Behavioral;

