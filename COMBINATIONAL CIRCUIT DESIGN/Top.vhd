----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:21:22 11/04/2022 
-- Design Name: 
-- Module Name:    Top - Behavioral 
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

entity Top is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           F : out  STD_LOGIC);
end Top;



architecture Behavioral of Top is

component Find_X
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           X : out  STD_LOGIC);
	        end component;
	

component Find_Y
    Port ( y_in : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
			 y_out : out STD_LOGIC);
          end component;

component Find_Z
    Port ( z_in : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
				 z_out : out STD_LOGIC);
           end component;


	signal sig1,sig2,sig3 : std_logic;
	
begin
unit1: Find_X
port map ( A=> A, B=> B, C=> C, D=>D, X =>sig1);

unit2: Find_Y 
port map ( y_in => A & B & C & D, y_out=>sig2);

unit3: Find_Z
port map ( z_in => A & B & C & D, z_out=>sig3);

 process (sig1,sig2,sig3,S0,S1) is
begin
  if (S0 ='0' and S1 = '0') then
      F <= sig1;
  elsif (S0 ='1' and S1 = '0') then
      F <= sig2;
  elsif (S0 ='0' and S1 = '1') then
      F <= sig3;
  elsif (S0 ='1' and S1 = '1') then
      F <= '0';
	else
  end if;
 
end process;

 
 
end Behavioral;

