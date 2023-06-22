--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:11:06 06/21/2023
-- Design Name:   
-- Module Name:   C:/Users/lenovo/Documents/ise proje/lab1/four_adder_tb.vhd
-- Project Name:  lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_adder
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
 
ENTITY four_adder_tb IS
END four_adder_tb;
 
ARCHITECTURE behavior OF four_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_adder
    PORT(
         in1 : IN  std_logic_vector(3 downto 0);
         in2 : IN  std_logic_vector(3 downto 0);
         sout : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(3 downto 0) := (others => '0');
   signal in2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal sout : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_adder PORT MAP (
          in1 => in1,
          in2 => in2,
          sout => sout,
          cout => cout
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
    
      -- insert stimulus here 
		in1<= "0000";
      in2<= "1111";
		wait for 10 ns;
		
		in1<= "1100";
      in2<= "0011";
		wait for 10 ns;
		
		in1<= "1110";
      in2<= "1011";
		wait for 10 ns;
		

      wait;
   end process;

END;
