----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:10:55 01/14/2018 
-- Design Name: 
-- Module Name:    FullSubtractor - Behavioral 
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

entity FullSubtractor is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  C : in  STD_LOGIC;
           DIFFERENCE : out  STD_LOGIC;
           BORROW : out  STD_LOGIC);
end FullSubtractor;

architecture Behavioral of FullSubtractor is

begin
	DIFFERENCE <= A XOR B XOR C;
	BORROW <= (NOT A AND C) OR (NOT A AND B) OR (B AND C);
end Behavioral;

