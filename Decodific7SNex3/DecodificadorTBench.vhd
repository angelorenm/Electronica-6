--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:40:15 02/26/2015
-- Design Name:   
-- Module Name:   C:/Users/Angel/PracticasE6/Tarea1/Decodificador7Seg/Decodific7SNex3/DecodificadorTBench.vhd
-- Project Name:  Decodific7SNex3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decodificador7SegHex
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
 
ENTITY DecodificadorTBench IS
END DecodificadorTBench;
 
ARCHITECTURE behavior OF DecodificadorTBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decodificador7SegHex
    PORT(
         ABCD : IN  std_logic_vector(3 downto 0);
         despliegue : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ABCD : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal despliegue : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decodificador7SegHex PORT MAP (
          ABCD => ABCD,
          despliegue => despliegue
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
