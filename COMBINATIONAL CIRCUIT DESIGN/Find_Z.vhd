----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:52:54 11/04/2022 
-- Design Name: 
-- Module Name:    Find_Z - Behavioral 
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

entity Find_Z is
    Port ( z_in : in  STD_LOGIC_VECTOR (3 downto 0);
           z_out : out  STD_LOGIC);
end Find_Z;

architecture Behavioral of Find_Z is

begin

with z_in select

z_out <= '1' when "0000",
			'1' when "0010",
			'1' when "0011",
			'1' when "0111",
			'1' when "1100",
			'1' when "1110",
			'0' when others;

end Behavioral;

