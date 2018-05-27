--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:48:08 01/18/2018
-- Design Name:   
-- Module Name:   F:/College/6th Sem/DSD/DSD LAB/AllGates/as.vhd
-- Project Name:  AllGates
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AllGates
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
 
ENTITY as IS
END as;
 
ARCHITECTURE behavior OF as IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AllGates
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         AND_OUT : OUT  std_logic;
         OR_OUT : OUT  std_logic;
         NAND_OUT : OUT  std_logic;
         NOR_OUT : OUT  std_logic;
         NOT_OUT : OUT  std_logic;
         XOR_OUT : OUT  std_logic;
         XNOR_OUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal AND_OUT : std_logic;
   signal OR_OUT : std_logic;
   signal NAND_OUT : std_logic;
   signal NOR_OUT : std_logic;
   signal NOT_OUT : std_logic;
   signal XOR_OUT : std_logic;
   signal XNOR_OUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AllGates PORT MAP (
          A => A,
          B => B,
          AND_OUT => AND_OUT,
          OR_OUT => OR_OUT,
          NAND_OUT => NAND_OUT,
          NOR_OUT => NOR_OUT,
          NOT_OUT => NOT_OUT,
          XOR_OUT => XOR_OUT,
          XNOR_OUT => XNOR_OUT
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

      -- insert stimulus here 

      wait;
   end process;

END;
