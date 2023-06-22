----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:38 11/23/2022 
-- Design Name: 
-- Module Name:    increment - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity increment is
    Port ( x : in  STD_LOGIC_vector(3 downto 0);
			carry : out std_logic;
			Zout : out  STD_LOGIC_vector(3 downto 0)
			  );
			  
end increment;

architecture Behavioral of increment is
signal k : signed( 3 downto 0);
signal z: signed (4 downto 0);

begin
k<= signed(x);
z<= ('0' & k) + 1;
Zout<= std_logic_vector(z(3 downto 0));
carry <= z(4);
end Behavioral;

