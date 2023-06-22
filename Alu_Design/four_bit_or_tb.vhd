
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY four_bit_or_tb IS
END four_bit_or_tb;
 
ARCHITECTURE behavior OF four_bit_or_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_or
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
   uut: four_bit_or PORT MAP (
          x => x,
          y => y,
          Zout => Zout
        );


   -- Stimulus process
   stim_proc: process
   begin		
     
   x<= "1000";
   y<= "1111";
      wait for 100 ns;	

    

      -- insert stimulus here 

      wait;
   end process;

END;
