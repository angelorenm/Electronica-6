----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:39:14 02/26/2015 
-- Design Name: 
-- Module Name:    Decodificador7SegHex - Behavioral 
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

entity Decodificador7SegHex is
	
		port(ABCD: in STD_LOGIC_VECTOR(3 downto 0);		--x alojara los valores de 4 bits a ser convertidos
		despliegue: out STD_LOGIC_VECTOR(6 downto 0));   --despliegue se encargara de desplegar los digitos a utilizar en el Display
		
end Decodificador7SegHex;


architecture Behavioral of Decodificador7SegHex is

begin
	--inicio de la sentencia concurrente(no conlleva proceso)
	
		with ABCD select
			despliegue <= 	"1001111" when "0001",  --Digito decimal 1
								"0010010" when "0010", 	--Digito decimal 2
								"0000110" when "0011",	--Digito decimal 3
								"1001100" when "0100", 	--Digito decimal 4
								"0100100" when "0101", 	--Digito decimal 5
								"0100000" when "0110", 	--Digito decimal 6
								"0001111" when "0111",  --Digito decimal 7
								"0000000" when "1000", 	--Digito decimal 8
								"0000100" when "1001",	--Digito decimal 9
								"0001000" when "1010", 	--Digito Hexadecimal A
								"1100000" when "1011", 	--Digito Hexadecimal b
								"0110001" when "1100", 	--Digito Hexadecimal C
								"1000010" when "1101", 	--Digito Hexadecimal d
								"0110000" when "1110", 	--Digito Hexadecimal E
								"0111000" when "1111", 	--Digito Hexadecimal F
								"0000001" when others;	--Cuando ABCD no sea ninguna de las anteriores,
																--El display deberá mostrar un Cero

end Behavioral;

