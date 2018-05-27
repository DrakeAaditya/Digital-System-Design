----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:36:10 03/21/2018 
-- Design Name: 
-- Module Name:    JK - Behavioral 
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

entity JK is
    Port ( CLK : in  STD_LOGIC;
           J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end JK;

architecture Behavioral of JK is

begin
	process(j,k,clk) is
		variable t: STD_LOGIC:='0';
	begin
		if(clk='1' and clk' event) then --or use if(rising_edge(clk))
			if(j='0' and k='0') then
				report "No change";
				t:=t;
			elsif(j='1' and k='0') then
				t:='1';
			elsif(j='0' and k='1') then
				t:='0';
			elsif(j='1' and k='1') then
				t:=not t;
			end if;
		end if;
		q<=t;
	end process;
end Behavioral;

