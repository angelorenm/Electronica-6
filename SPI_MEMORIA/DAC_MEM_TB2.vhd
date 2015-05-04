--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:31:22 05/01/2015
-- Design Name:   
-- Module Name:   C:/Users/Angel/PracticasE6/Tarea1/archivos tarea1/SPI_MEMORIA/DAC_MEM_TB2.vhd
-- Project Name:  SPI_MEMORIA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DAC_MEM
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
 
ENTITY DAC_MEM_TB2 IS
END DAC_MEM_TB2;
 
ARCHITECTURE behavior OF DAC_MEM_TB2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DAC_MEM
    PORT(
         CLK : IN  std_logic;
         CHSEL : IN  std_logic;
         DONE : IN  std_logic;
         RESET : IN  std_logic;
         DATA1 : OUT  std_logic_vector(11 downto 0);
         DATA2 : OUT  std_logic_vector(11 downto 0);
         START : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CHSEL : std_logic := '0';
   signal DONE : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal DATA1 : std_logic_vector(11 downto 0);
   signal DATA2 : std_logic_vector(11 downto 0);
   signal START : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DAC_MEM PORT MAP (
          CLK => CLK,
          CHSEL => CHSEL,
          DONE => DONE,
          RESET => RESET,
          DATA1 => DATA1,
          DATA2 => DATA2,
          START => START
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
--      -- hold reset state for 100 ns.
------      wait for 100 ns;	
------
------      wait for CLK_period*10;
--
--      -- insert stimulus here 
		--CHSEL <= '0';
		DONE <= '1' after CLK_period;
		--CHSEL <= '1';
		DONE <= not DONE after CLK_period;
		
		DONE <= '1';
		--CHSEL <= '1';
		wait for CLK_period;
		DONE <= not DONE;
		--CHSEL <= '0';
		wait for CLK_period;
		
		
		DONE <= not DONE;
		--CHSEL <= '0';
		wait for CLK_period;
		DONE <= not DONE;
		--CHSEL <= '1';
		wait for CLK_period;
		
		DONE <= not DONE;
		--CHSEL <= '1';
		RESET <= '1';
		wait for CLK_period;
		--CHSEL <= '0';
		DONE <= not DONE;
		RESET <= not RESET;
		wait for CLK_period;
		
		DONE <= NOT DONE; 
		WAIT FOR CLK_period;


      wait;
   end process;

END;
