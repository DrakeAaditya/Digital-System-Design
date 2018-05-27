----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:24:33 03/22/2018 
-- Design Name: 
-- Module Name:    T - Behavioral 
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

entity T is
    Port ( clk : in  STD_LOGIC;
           TF : in  STD_LOGIC;
			  pr : in STD_LOGIC;
			  cr : in STD_LOGIC;
           Q : out  STD_LOGIC);
end T;

architecture Behavioral of T is
	
begin
	process(clk,pr,cr)
		variable p: STD_LOGIC := '0';
	begin
		if (pr='0' and cr='1')then
			p :='1';
			
		elsif(pr='1'and cr='0')then
			p :='0';
		
		elsif(pr='1' and cr='1' and clk='0' and clk' event)then
			p :=(not TF and p) or (not p and TF);
		end if;
		Q <= p;
	end process;
end Behavioral;

