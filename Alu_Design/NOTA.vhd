----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:38 11/23/2022 
-- Design Name: 
-- Module Name:    NOTA - Behavioral 
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

entity NOTA is
    Port ( X : in  STD_LOGIC_vector(3 downto 0);
           Zout : out  STD_LOGIC_vector( 3 downto 0)
			  );
end NOTA;

architecture Behavioral of NOTA is

begin
Zout<= (not x) ;

end Behavioral;

