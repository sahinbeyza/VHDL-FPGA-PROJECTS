----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:52:05 11/23/2022 
-- Design Name: 
-- Module Name:    decrement - Behavioral 
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

entity decrement is
    Port ( x : in  STD_LOGIC_vector(3 downto 0);
           Zout : out  STD_LOGIC_vector(3 downto 0)
			  );
end decrement;

architecture Behavioral of decrement is
signal k : signed( 3 downto 0);
signal z: signed (3 downto 0);

begin
k<= signed(x);
z<= k - 1;
Zout<= std_logic_vector(z);


end Behavioral;

