----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:53:57 01/25/2018 
-- Design Name: 
-- Module Name:    beh41 - Behavioral 
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

entity beh41 is
    Port ( y : out  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           a : in  STD_LOGIC_VECTOR (3 downto 0));
end beh41;

architecture Behavioral of beh41 is

begin
process(a,s) is

begin
y<=((not s(0)) and (not s(1)) and a(0)) or ((not s(1)) and s(0) and a(1)) or (s(1) and (not s(0)) and a(2)) or (s(1) and s(0) and a(3)); 
end process;
end Behavioral;

