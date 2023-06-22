----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:01:04 11/04/2022 
-- Design Name: 
-- Module Name:    Find_Y - Behavioral 
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

entity Find_Y is
    Port ( y_in : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           y_out : out  STD_LOGIC);
end Find_Y;

architecture Behavioral of Find_Y is

begin

y_out <= '1' when ( y_in="0001") else
			'1' when ( y_in="0100") else
			'1' when ( y_in="0101") else
			'1' when ( y_in="1001") else
			'1' when ( y_in="1011") else
			'1' when ( y_in="1111") else
			'0' ;
			
			

end Behavioral;

