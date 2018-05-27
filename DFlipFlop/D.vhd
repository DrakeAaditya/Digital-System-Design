----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:54:57 03/22/2018 
-- Design Name: 
-- Module Name:    D - Behavioral 
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

entity D is
    Port ( clk : in  STD_LOGIC;
           DF : in  STD_LOGIC;
           pr : in  STD_LOGIC;
           cr : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end D;

architecture Behavioral of D is
	begin
	process(clk,pr,cr)
		variable p: STD_LOGIC:='0';
	begin
		if (pr='0' and cr='1')then
			p := '1';
			
		elsif(pr='1'and cr='0')then
			p :='0';
		
		elsif(pr='1' and cr='1' and clk='0' and clk' event)then
			p := DF;
		end if;
		Q <= p;
	end process;
end Behavioral;
