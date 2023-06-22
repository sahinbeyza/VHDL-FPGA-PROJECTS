
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY alu_top_new_tb IS
END alu_top_new_tb;
 
ARCHITECTURE behavior OF alu_top_new_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_TOP
    PORT(
         clk : IN  std_logic;
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         op_sel : IN  std_logic_vector(2 downto 0);
			--final : OUT  std_logic_vector(3 DOWNTO 0);
         flag_out : OUT  std_logic_vector(2 downto 0);
         seg_out : OUT  std_logic_vector(7 downto 0);
         seg_sel : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');
   signal op_sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal flag_out : std_logic_vector(2 downto 0);
   signal seg_out : std_logic_vector(7 downto 0);
   signal seg_sel : std_logic_vector(7 downto 0);
	--signal final: std_logic_vector(3 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_TOP PORT MAP (
          clk => clk,
          X => X,
          Y => Y,
          op_sel => op_sel,
          flag_out => flag_out,
          seg_out => seg_out,
          seg_sel => seg_sel
			--final => final
        );

   stim_proc: process
   begin		
	
	x<= "1000";
   y<= "1111";
	op_sel<= "000";  --0011 sonuc carry=1
	wait for 100 ns;	
	
	x<= "1000";
   y<= "1111";
	op_sel<= "001";  --overflow var, sonuc -7 1001
	wait for 100 ns;	
	
	x<= "1001";
   y<= "1011";
	op_sel<= "010";  --1000
	wait for 100 ns;	
	
	x<= "1111";
   y<= "1011";
	op_sel<= "011";  --0000 carry 1
	wait for 100 ns;	

      wait;
   end process;

END;
