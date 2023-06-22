--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:11:39 11/04/2022
-- Design Name:   
-- Module Name:   C:/Users/lenovo/Documents/ise proje/lab3/ytb.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Find_Y
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
 
ENTITY ytb IS
END ytb;
 
ARCHITECTURE behavior OF ytb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Find_Y
    PORT(
         y_in : IN  std_logic_vector (3 downto 0);
         y_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal y_in : std_logic_vector (3 downto 0) := "0000"; 

 	--Outputs
   signal y_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Find_Y PORT MAP (
          y_in => y_in,
          y_out => y_out
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		y_in <= "1011";
		
		wait for 100 ns;
		y_in <= "1001";
		
		wait for 100 ns;
		y_in <= "1000";
		
		wait for 100 ns;
		y_in <= "1110";
		
		wait for 100 ns;
		y_in <= "1111";
		
		
		

      -- insert stimulus here 

      wait;
   end process;

END;
