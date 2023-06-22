--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:31:03 11/23/2022
-- Design Name:   
-- Module Name:   C:/Users/lenovo/Documents/ise proje/dne/four_bit_and_tb.vhd
-- Project Name:  dne
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_and
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
 
ENTITY four_bit_and_tb IS
END four_bit_and_tb;
 
ARCHITECTURE behavior OF four_bit_and_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_and
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         y : IN  std_logic_vector(3 downto 0);
         Zout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');
   signal y : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Zout : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_and PORT MAP (
          x => x,
          y => y,
          Zout => Zout
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      x<= "1011";
		y<= "1001";
      wait for 100 ns;	

    
 

      wait;
   end process;

END;
