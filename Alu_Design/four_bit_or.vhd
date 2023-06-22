----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:32:32 11/23/2022 
-- Design Name: 
-- Module Name:    four_bit_or - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_or is
    Port ( x : in  STD_LOGIC_vector(3 downto 0);
           y : in  STD_LOGIC_vector ( 3 downto 0);
           Zout : out  STD_LOGIC_vector ( 3 downto 0)
			  );
end four_bit_or;

architecture Behavioral of four_bit_or is
begin
Zout <= X or Y;

end Behavioral;

