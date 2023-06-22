
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY increment_new_tb IS
END increment_new_tb;
 
ARCHITECTURE behavior OF increment_new_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT increment
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         carry : OUT  std_logic;
         Zout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal carry : std_logic;
   signal Zout : std_logic_vector(3 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: increment PORT MAP (
          x => x,
          carry => carry,
          Zout => Zout
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		 x<= "1000";
      wait for 100 ns;	
		
		 x<= "1111";
      wait for 100 ns;	
		
		x<= "0111";
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
