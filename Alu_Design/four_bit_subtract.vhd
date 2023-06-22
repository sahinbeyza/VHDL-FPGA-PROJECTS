
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity four_bit_subtract is

    Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
           Y : in  STD_LOGIC_VECTOR(3 downto 0);
          -- borrow : out  STD_LOGIC;
           diff : out  STD_LOGIC_VECTOR(3 downto 0)
			  );
end four_bit_subtract;

architecture Behavioral of four_bit_subtract is

component full_adder
Port ( X: in STD_LOGIC;
	Y: in STD_LOGIC;
	Cin : in STD_LOGIC;
	S : out STD_LOGIC;
	Cout : out STD_LOGIC);
end component;

signal s1,s2,s3 : std_logic;
signal k : std_logic_vector(3 downto 0);

begin

 k<= not Y;
    u0 : full_adder port map (X(0),k(0),'1',diff(0),s1);
    u1 : full_adder port map (X(1),k(1),s1,diff(1),s2);
    u2 : full_adder port map (X(2),k(2),s2,diff(2),s3);
    ue : full_adder port map (X(3),k(3),s3,diff(3));    
	 
end Behavioral;

