----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:35:01 02/01/2018 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
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

entity Decoder is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder;

architecture Func of Decoder is
	component andGate is
		Port ( A,B : in STD_LOGIC;
					F : out STD_LOGIC);
	end component;
	
	component notGate is
		Port ( inPort : in STD_LOGIC;
				 outPort : out STD_LOGIC);
	end component;
	
	signal invOut0,invOut1: STD_LOGIC;
begin
	L1: notGate port map(I(0),invOut0);
	L2: notGate port map(I(1),invOut1);
	
	L3: andGate port map(invOut0,invOut1,Y(0));
	L4: andGate port map(I(0),invOut1,Y(1));
	L5: andGate port map(I(1),invOut0,Y(2));
	L6: andGate port map(I(0),I(1),Y(3));
end Func;

