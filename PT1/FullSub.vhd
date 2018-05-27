----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:58:49 02/22/2018 
-- Design Name: 
-- Module Name:    FullSub - Behavioral 
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

entity FullSub is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           Borrow : out  STD_LOGIC);
end FullSub;

architecture Behavioral of FullSub is

	component XOR_3 is
		port(A,B,C:in bit;
				Diff: out bit);
	end component XOR_3;
	
	component AND_2 is
		port(A,B:in bit;
				C: out bit);
	end component AND_2;
	
	component NOT_1 is
		port(A,B,C:in bit;
				Diff: out bit);
	end component NOT_1;

	component OR_3 is
		port(A,B,C: in bit;
				Borrow: out bit);
	end component OR_3;
	
	Signal D,E,F,G: bit;
begin
	L1: XOR_3 port map(A,B,C,Diff);
	L2: NOT_1 port map(A,D);
	L3: AND_2 port map(D,C,E);
	L4: AND_2 port map(D,B,F);
	L5: AND_2 port map(B,C,G);
	L6: AND_2 port map(E,F,G,Borrow);
end Behavioral;

