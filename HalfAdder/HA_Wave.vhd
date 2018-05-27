-- Vhdl test bench created from schematic F:\College\6th Sem\DSD\DSD LAB\HalfAdder\HalfAdder.sch - Thu Jan 18 09:06:30 2018
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY HalfAdder_HalfAdder_sch_tb IS
END HalfAdder_HalfAdder_sch_tb;
ARCHITECTURE behavioral OF HalfAdder_HalfAdder_sch_tb IS 

   COMPONENT HalfAdder
   PORT( A	:	IN	STD_LOGIC; 
          B	:	IN	STD_LOGIC; 
          SUM	:	OUT	STD_LOGIC; 
          CARRY	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL A	:	STD_LOGIC;
   SIGNAL B	:	STD_LOGIC;
   SIGNAL SUM	:	STD_LOGIC;
   SIGNAL CARRY	:	STD_LOGIC;

BEGIN

   UUT: HalfAdder PORT MAP(
		A => A, 
		B => B, 
		SUM => SUM, 
		CARRY => CARRY
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		wait for 100 ns;
      A <= '0','1' after 100ns;
		B <= '0','1' after 50ns,'0' after 100ns,'1' after 150ns;
		wait;
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
