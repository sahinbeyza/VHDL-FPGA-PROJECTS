LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY four_bit_adder_tb IS
END four_bit_adder_tb;
 
ARCHITECTURE behavior OF four_bit_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bid_adder
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic;
			Overflow: out STD_LOGIC );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
	signal Overflow : std_logic;

  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bid_adder PORT MAP (
          X => X,
          Y => Y,
          S => S,
          Cout => Cout,
			 Overflow => Overflow
        );


   -- Stimulus process
   stim_proc: process
   begin		
      x <= "0110";
      y <= "1100";
      wait for 100 ns;	

      x <= "1111";
      y <= "1100";
      wait for 100 ns;	
		
		x <= "0110";
      y <= "0111";
      wait for 100 ns;
      

      -- insert stimulus here 

      wait;
   end process;

END;
