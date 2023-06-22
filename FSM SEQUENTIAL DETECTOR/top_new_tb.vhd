
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY lutfen_tb IS
END lutfen_tb;
 
ARCHITECTURE behavior OF lutfen_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM
    PORT(
         clk : IN  std_logic;
         inp : IN  std_logic;
         en : IN  std_logic;
         reset : IN  std_logic;
         seq : OUT  std_logic_vector(7 downto 0);
         count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal inp : std_logic := '0';
   signal en : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal seq : std_logic_vector(7 downto 0);
   signal count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM PORT MAP (
          clk => clk,
          inp => inp,
          en => en,
          reset => reset,
          seq => seq,
          count => count
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
    reset <= '1';
		
      wait for 1 sec;	
		reset <='0';
		en<='1';
		inp <='1';
      wait for 1 sec;	
		
		inp <='1';
      wait for 1 sec;	
		
		inp <='0';
      wait for 1 sec;	
		
		inp <='1';
      wait for 1 sec;	
		
		inp <='1';
      wait for 1 sec;	
		
		inp <='0';
      wait for 1 sec;	
		
		inp <='1';
      wait for 1 sec;	
		
		inp <='1';
      wait for 1 sec;	
		
		inp <='0';
      wait for 1 sec;	
		
		inp <='1';
      wait for 1 sec;
		
      wait;
   end process;

END;
