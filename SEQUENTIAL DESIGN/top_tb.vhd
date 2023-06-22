LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testtop IS
END testtop;
 
ARCHITECTURE behavior OF testtop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         up_down : IN  std_logic;
         enable : IN  std_logic;
         c1 : OUT  std_logic_vector(3 downto 0);
         c2 : OUT  std_logic_vector(3 downto 0);
         c3 : OUT  std_logic_vector(3 downto 0);
         c4 : OUT  std_logic_vector(3 downto 0);
         seg_out : OUT  std_logic_vector(7 downto 0);
         seg_sel : OUT  std_logic_vector(7 downto 0);
         countercik : out  integer
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal up_down : std_logic := '1';
   signal enable : std_logic := '1';
   signal countercik : integer;

 	--Outputs
   signal c1 : std_logic_vector(3 downto 0);
   signal c2 : std_logic_vector(3 downto 0);
   signal c3 : std_logic_vector(3 downto 0);
   signal c4 : std_logic_vector(3 downto 0);
   signal seg_out : std_logic_vector(7 downto 0);
   signal seg_sel : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 0.01 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          clk => clk,
          reset => reset,
          up_down => up_down,
          enable => enable,
          c1 => c1,
          c2 => c2,
          c3 => c3,
          c4 => c4,
          seg_out => seg_out,
          seg_sel => seg_sel,
          countercik => countercik
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
			
		reset <='0';
		enable<='1';
		up_down<='1';
		wait for 1 sec;

      wait;
   end process;

END;
