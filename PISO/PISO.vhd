----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:39:23 04/19/2018 
-- Design Name: 
-- Module Name:    PISO - Behavioral 
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

entity PISO is
    Port ( PIN : in  STD_LOGIC_VECTOR (3 downto 0);
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           PRE : in  STD_LOGIC;
			  LOAD : in STD_LOGIC;
           SOUT : out  STD_LOGIC);
end PISO;


architecture Behavioral of PISO is
begin
	process(CLK,PRE,CLR,LOAD,PIN)
		variable temp : STD_LOGIC_VECTOR(3 downto 0):="0000";
	begin
		if(PRE = '0' and CLR = '1') then
			temp := "1111";
		elsif(PRE = '0' and CLR = '0') then
			report "illegal";
		elsif(PRE = '1' and CLR = '0') then
			temp := "0000";
		elsif(CLK'event and CLK = '0') then
			if (LOAD='1') then
				temp := PIN;
			elsif(LOAD = '0') then
				temp :=PIN(3)&temp(3 downto 1);
			else
				NULL;
			end if;
		else
			NULL;
		end if;
		SOUT <= temp(0);
	end process;
end Behavioral;