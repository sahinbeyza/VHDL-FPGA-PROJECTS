
----------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY decrement_tb IS
END decrement_tb;
 
ARCHITECTURE behavior OF decrement_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decrement
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         Zout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Zout : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decrement PORT MAP (
          x => x,
          Zout => Zout
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		x<= "1001";
      wait for 100 ns;	

      

      -- insert stimulus here 

      wait;
   end process;

END;
