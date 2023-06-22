--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:31:35 11/23/2022
-- Design Name:   
-- Module Name:   C:/Users/lenovo/Documents/ise proje/dne/four_bit_subtract_tb.vhd
-- Project Name:  dne
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_subtract
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
 
ENTITY four_bit_subtract_tb IS
END four_bit_subtract_tb;
 
ARCHITECTURE behavior OF four_bit_subtract_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_subtract
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         --borrow : OUT  std_logic;
         diff : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
  -- signal borrow : std_logic;
   signal diff : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_subtract PORT MAP (
          X => X,
          Y => Y,
          --borrow => borrow,
          diff => diff
        );


   -- Stimulus process
   stim_proc: process
   begin		
      x <= "1101";
      y <= "0011";
      wait for 100 ns;
		
      x <= "1111";
      y <= "1111";
      wait for 100 ns;	
		
		x <= "1001";
      y <= "0110";
      wait for 100 ns;


      wait;
   end process;

END;
