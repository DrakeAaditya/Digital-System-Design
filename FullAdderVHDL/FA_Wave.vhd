--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:17:20 01/18/2018
-- Design Name:   
-- Module Name:   F:/College/6th Sem/DSD/DSD LAB/FullAdderVHDL/FA_Wave.vhd
-- Project Name:  FullAdderVHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FullAdder
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY FA_Wave IS
END FA_Wave;
 
ARCHITECTURE behavior OF FA_Wave IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FullAdder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         CARRY : OUT  std_logic;
         SUM : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal CARRY : std_logic;
   signal SUM : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FullAdder PORT MAP (
          A => A,
          B => B,
          C => C,
          CARRY => CARRY,
          SUM => SUM
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      A <= '0','1' after 200 ns;
		B <= '0','1' after 100 ns,'0' after 200 ns,'1' after 300 ns;
		C <= '0','1' after 50 ns,'0' after 100 ns,'1' after 150 ns,'0' after 200 ns,'1' after 250 ns,'0' after 300 ns,'1' after 350 ns;

      wait;
   end process;

END;
