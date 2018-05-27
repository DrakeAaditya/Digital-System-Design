
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:38:46 04/26/2018
-- Design Name:   VHDLFullAdder
-- Module Name:   VHDLTestBench.vhd
-- Project Name:  FullAdderVHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VHDLFullAdder
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY VHDLTestBench_vhd IS
END VHDLTestBench_vhd;

ARCHITECTURE behavior OF VHDLTestBench_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT VHDLFullAdder
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		C : IN std_logic;          
		Sum : OUT std_logic;
		Carry : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL A :  std_logic := '0';
	SIGNAL B :  std_logic := '0';
	SIGNAL C :  std_logic := '0';

	--Outputs
	SIGNAL Sum :  std_logic;
	SIGNAL Carry :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: VHDLFullAdder PORT MAP(
		A => A,
		B => B,
		C => C,
		Sum => Sum,
		Carry => Carry
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		C <= '0','1' after 50ns,'0' after 100ns,'1' after 150ns,'0' after 200ns,'1' after 250ns,'0' after 300ns,'1' after 350ns;
		B <= '0','1' after 100ns,'0' after 200ns,'1' after 300ns;
		A <= '0','1' after 200ns;

		wait; -- will wait forever
	END PROCESS;

END;
