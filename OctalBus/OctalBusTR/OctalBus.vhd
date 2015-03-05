----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:55:22 02/28/2015 
-- Design Name: 
-- Module Name:    OctalBus - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OctalBus is
port( 
			CS : in STD_LOGIC;
			DIR : in STD_LOGIC;

			datos_a : inout STD_LOGIC_VECTOR(7 downto 0);
			datos_b : inout STD_LOGIC_VECTOR(7 downto 0));

end OctalBus;

architecture Behavioral of OctalBus is



	--COMPORTAMIENTO DEL BUS OCTAL
begin

--	AtoB(0) <= (not CS(0)) and DIR(0);
--	BtoA(0) <= (not DIR(0)) and (not CS(0)); 

	datos_a <= datos_b WHEN (DIR = '0' and CS = '0') ELSE
				  "ZZZZZZZZ";
				  
	datos_b <= datos_a WHEN (DIR = '1' and CS = '0') ELSE
				  "ZZZZZZZZ";
		  
			

end Behavioral;
