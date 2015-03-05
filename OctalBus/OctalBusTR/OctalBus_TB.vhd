--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:03:18 03/01/2015
-- Design Name:   
-- Module Name:   C:/Users/Angel/PracticasE6/Tarea1/Decodificador7Seg/OctalBus/OctalBusTR/OctalBus_TB.vhd
-- Project Name:  OctalBusTR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: OctalBus
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
 
ENTITY OctalBus_TB IS
END OctalBus_TB;
 
ARCHITECTURE behavior OF OctalBus_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OctalBus
    PORT(
         CS : IN  std_logic;
         DIR : IN  std_logic;
         datos_a : INOUT  std_logic_vector(7 downto 0) := (others => 'Z');
         datos_b : INOUT  std_logic_vector(7 downto 0) := (others => 'Z') 
        );
    END COMPONENT;
    

   --Inputs
   signal CS : std_logic := '0';
   signal DIR : std_logic := '0';

	--BiDirs
   signal datos_a : std_logic_vector(7 downto 0) := (others => 'Z');
   signal datos_b : std_logic_vector(7 downto 0) := (others => 'Z');

   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OctalBus PORT MAP (
          CS => CS,
          DIR => DIR,
          datos_a => datos_a,
          datos_b => datos_b
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
stim_proc: process
begin

CS <= '0' ;
DIR <= '0' ;
datos_b <= "11110011";
datos_a <= "ZZZZZZZZ";
wait for 100 ns;

CS <= '0' ;
DIR <= '1' ;
datos_b <= "ZZZZZZZZ";
datos_a <= "11111111";
wait for 100 ns;

CS <= '1' ;
DIR <= '0' ;
datos_b <= "11110011";
datos_a <= "11111111";
wait for 100 ns;

CS <= '1' ;
DIR <= '1' ;
datos_b <= "11110011";
datos_a <= "11111111";
wait for 100 ns;


end process;


END;
