----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:41:42 01/30/2018 
-- Design Name: 
-- Module Name:    Structural - Behavioral 
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

entity Structural is
   port(        E : in STD_LOGIC; 
           S0, S1 : in STD_LOGIC; 
   D0, D1, D2, D3 : out STD_LOGIC);
end Structural;

architecture Func of Structural is

   component andGate is       	
      port(	A, B, C : in STD_LOGIC;
                  F : out STD_LOGIC);
   end component;

   component notGate is          
      port( inPort : in STD_LOGIC;
           outPort : out STD_LOGIC);
   end component;

   signal invOut0, invOut1 : STD_LOGIC;

begin
   
   GI1: notGate  port map(S0, invOut0);
   GI2: notGate  port map(S1, invOut1);

   GA1: andGate  port map(E, invOut1, invOut0, D0); -- D0
   GA2: andGate  port map(E, S0, invOut1, D1);      -- D1
   GA3: andGate  port map(E, invOut0, S1,  D2);     -- D2
   GA4: andGate  port map(E, S0, S1, D3);           -- D3

end Func;

architecture func of andGate is 
begin
   F <= A and B and C; 
end func;

architecture func of notGate is 
begin
   outPort <= not inPort; 
end func;