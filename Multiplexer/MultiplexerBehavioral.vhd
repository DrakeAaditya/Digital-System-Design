----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:19:33 01/30/2018 
-- Design Name: 
-- Module Name:    MultiplexerBehavioral - Behavioral 
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

entity MultiplexerBehavioral is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end MultiplexerBehavioral;

architecture Behavioral of MultiplexerBehavioral is

begin
	process(A,B,C) is
		begin
			Y <=((NOT S0) AND (NOT S1) AND A) OR ((NOT S0) AND S1 AND B) OR (S0 AND (NOT S1) AND C) OR (S0 AND S1 AND D);
	end process;

end Behavioral;

