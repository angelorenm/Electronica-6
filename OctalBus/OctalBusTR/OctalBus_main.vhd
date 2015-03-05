------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:55:22 02/28/2015 
-- Design Name: 
-- Module Name:    OctalBus_main - Behavioral 
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

entity OctalBus_main is
port( 
			CS : in STD_LOGIC_VECTOR(0 downto 0);
			DIR : in STD_LOGIC_VECTOR(0 downto 0);
			Oto7_bus : inout STD_LOGIC_VECTOR(7 downto 0);
			datos_a : inout STD_LOGIC_VECTOR(7 downto 0);
			datos_b : inout STD_LOGIC_VECTOR(7 downto 0));

end OctalBus_main;

architecture Behavioral of OctalBus_main is

	signal AtoB : STD_LOGIC_VECTOR(0 downto 0);
	signal BtoA : STD_LOGIC_VECTOR(0 downto 0);

	--COMPORTAMIENTO DEL BUS OCTAL
begin

	AtoB(0) <= (not CS(0)) and DIR(0);
	BtoA(0) <= (not DIR(0)) and (not CS(0));
	
	with AtoB select
			datos_b <= datos_a when "1";
			--datos_b <= Oto7_bus when "1"; 
						  

	with BtoA select
			datos_a <= datos_b when "1";
		--	datos_a <= Oto7_bus when "1";
	
	with CS select
			Oto7_bus <= "ZZZZZZZZ" when "1";

end Behavioral;
