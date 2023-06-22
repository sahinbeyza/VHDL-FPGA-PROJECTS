--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:02:11 11/04/2022
-- Design Name:   
-- Module Name:   C:/Users/lenovo/Documents/ise proje/lab3/ztb.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Find_Z
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
 
ENTITY ztb IS
END ztb;
 
ARCHITECTURE behavior OF ztb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Find_Z
    PORT(
         z_in : IN  std_logic_vector(3 downto 0);
         z_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal z_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal z_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Find_Z PORT MAP (
          z_in => z_in,
          z_out => z_out
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      z_in <= "0011";
		
		wait for 100 ns;	
      z_in <= "1111";
		
	   wait for 100 ns;	
      z_in <= "1100";
		
		wait for 100 ns;	
      z_in <= "0111";
		
     

      -- insert stimulus here 

      wait;
   end process;

END;
