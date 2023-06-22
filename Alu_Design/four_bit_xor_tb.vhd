-------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY four_bit_xor_tb IS
END four_bit_xor_tb;
 
ARCHITECTURE behavior OF four_bit_xor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_xor
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         Zout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Zout : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_xor PORT MAP (
          X => X,
          Y => Y,
          Zout => Zout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		x<= "1000";
      y<= "1111";
      wait for 100 ns;	

     

      -- insert stimulus here 

      wait;
   end process;

END;
