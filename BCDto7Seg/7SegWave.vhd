
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:15:07 02/08/2018
-- Design Name:   BCD7Seg
-- Module Name:   7SegWave.vhd
-- Project Name:  BCDto7Seg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCD7Seg
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

ENTITY 7SegWave_vhd IS
END 7SegWave_vhd;

ARCHITECTURE behavior OF 7SegWave_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT BCD7Seg
	PORT(
		I : IN std_logic_vector(3 downto 0);          
		Y : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL I :  std_logic_vector(3 downto 0) := (others=>'0');

	--Outputs
	SIGNAL Y :  std_logic_vector(6 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: BCD7Seg PORT MAP(
		I => I,
		Y => Y
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
