----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:33:55 11/23/2022 
-- Design Name: 
-- Module Name:    four_bit_xor - Behavioral 
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

entity four_bit_xor is
    Port ( X : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Y : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Zout : out  STD_LOGIC_VECTOR (3 DOWNTO 0)
			  );
end four_bit_xor;

architecture Behavioral of four_bit_xor is

begin
Zout<= X xor Y ;

end Behavioral;

