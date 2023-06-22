--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:44:29 11/23/2022
-- Design Name:   
-- Module Name:   C:/Users/lenovo/Documents/ise proje/dne/not_a_tb.vhd
-- Project Name:  dne
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: NOTA
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
 
ENTITY not_a_tb IS
END not_a_tb;
 
ARCHITECTURE behavior OF not_a_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NOTA
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Zout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Zout : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NOTA PORT MAP (
          X => X,
          Zout => Zout
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
     
	  x<= "0010";
      wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
