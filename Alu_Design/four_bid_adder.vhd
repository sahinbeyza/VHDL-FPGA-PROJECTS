
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

entity four_bid_adder is
    Port ( X : in  STD_LOGIC_vector (3 downto 0);
           Y : in  STD_LOGIC_vector(3 downto 0);
           S : out  STD_LOGIC_vector (3 downto 0);
           Cout : out  STD_LOGIC);
end four_bid_adder;

architecture Behavioral of four_bid_adder is
 --Full Adder VHDL Code Component Decalaration
component full_adder
Port ( X : in STD_LOGIC;
Y : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC);
end component;

signal c1,c2,c3: STD_LOGIC;

begin
 --Port Mapping Full Adder 4 times
FA1: full_adder port map( X(0), Y(0), '0' , S(0), c1);
FA2: full_adder port map( X(1), Y(1), c1, S(1), c2);
FA3: full_adder port map( X(2), Y(2), c2, S(2), c3);
FA4: full_adder port map( X(3), Y(3), c3, S(3), Cout);



end Behavioral;

