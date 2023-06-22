--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:35:43 11/23/2022
-- Design Name:   
-- Module Name:   C:/Users/lenovo/Documents/ise proje/dne/alu_top_tb.vhd
-- Project Name:  dne
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_TOP
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
 
ENTITY alu_top_tb IS
END alu_top_tb;
 
ARCHITECTURE behavior OF alu_top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_TOP
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         S2 : IN  std_logic;
         S1 : IN  std_logic;
         S0 : IN  std_logic;
         F : OUT  std_logic_vector(3 downto 0);
         Z : OUT  std_logic;
         C : OUT  std_logic;
         B : OUT  std_logic;
         V : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');
   signal S2 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S0 : std_logic := '0';

 	--Outputs
   signal F : std_logic_vector(3 downto 0);
   signal Z : std_logic;
   signal C : std_logic;
   signal B : std_logic;
   signal V : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_TOP PORT MAP (
          X => X,
          Y => Y,
          S2 => S2,
          S1 => S1,
          S0 => S0,
          F => F,
          Z => Z,
          C => C,
          B => B,
          V => V
        );


   -- Stimulus process
   stim_proc: process
   begin	
	
	X<= "1000";
   Y<= "0100";
   S2<= '1';
   S1<= '0';
   S0<= '0';
	 
      wait for 100 ns;	

     

      wait;
   end process;

END;
