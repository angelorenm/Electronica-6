--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:22:13 02/27/2015
-- Design Name:   
-- Module Name:   C:/Users/Angel/PracticasE6/Tarea1/Decodificador7Seg/Decodific7SNex3/SevenSegTBench.vhd
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
 
ENTITY SevenSegTBench IS
END SevenSegTBench;
 
ARCHITECTURE behavior OF SevenSegTBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decodificador7SegHex
    PORT(
         ABCD : IN  std_logic_vector(3 downto 0);
			--CLK : IN  std_logic;
         despliegue : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ABCD : std_logic_vector(3 downto 0) := (others => '0');
	--signal CLK : std_logic := '0';

 	--Outputs
   signal despliegue : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace CLK below with 
   -- appropriate port name 
 
   constant CLK_period : time := 5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decodificador7SegHex PORT MAP (
          ABCD => ABCD,
		--	  CLK => CLK,
          despliegue => despliegue
        );

   --Clock process definitions
--   CLK_process :process
--   begin
--		CLK <= '0';
--		wait for CLK_period/2;
--		CLK <= '1';
--		wait for CLK_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
  
	
	ABCD	<= "0000";
    wait for CLK_period*10;

     -- insert stimulus here 

	ABCD <= "0001";
	wait for CLK_period*10;
	
	ABCD <= "0010";
	wait for CLK_period*10;
	
	ABCD <= "0011";
	wait for CLK_period*10;
	
	ABCD <= "0100";
	wait for CLK_period*10;
   
	ABCD <= "0101";
	wait for CLK_period*10;
	
	ABCD <= "0110";
	wait for CLK_period*10;

	ABCD <= "0111";
	wait for CLK_period*10;
	
	ABCD <= "1000";
	wait for CLK_period*10;
	
	ABCD <= "1001";
	wait for CLK_period*10;
	
	ABCD <= "1010";
	wait for CLK_period*10;
	
	ABCD <= "1011";
	wait for CLK_period*10;
	
	ABCD <= "1100";
	wait for CLK_period*10;
	
	ABCD <= "1101";
	wait for CLK_period*10;
	
	ABCD <= "1110";
	wait for CLK_period*10;
	
	ABCD <= "1111";
	wait for CLK_period*10;
	
	ABCD <= "0000";
	wait;

   end process;

END;
