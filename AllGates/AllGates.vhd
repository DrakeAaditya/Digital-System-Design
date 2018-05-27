----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:53:41 01/14/2018 
-- Design Name: 
-- Module Name:    AllGates - Behavioral 
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

entity AllGates is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           AND_OUT : out  STD_LOGIC;
           OR_OUT : out  STD_LOGIC;
           NAND_OUT : out  STD_LOGIC;
           NOR_OUT : out  STD_LOGIC;
           NOT_OUT : out  STD_LOGIC;
           XOR_OUT : out  STD_LOGIC;
           XNOR_OUT : out  STD_LOGIC);
end AllGates;

architecture Behavioral of AllGates is

begin
	AND_OUT <= A AND B;
	OR_OUT <= A OR B;
	NAND_OUT <= A NAND B;
	NOR_OUT <= A NOR B;
	NOT_OUT <= NOT B;
	XOR_OUT <= A XOR B;
	XNOR_OUT <= A XNOR B;	
end Behavioral;

