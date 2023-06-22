
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity universal_counter is Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC; 
    enable : in STD_LOGIC;
    clock_out : out std_logic);
end universal_counter;

architecture Behavioral of universal_counter is
signal count : unsigned (31 downto 0) := x"00000000";
signal new_clock : std_logic;
begin
process (clk, rst, enable)
begin
    if (clk = '1' and clk'event) then
        if (rst = '1') then
            count <= (others => '0');
        elsif (enable = '1') then
           count <= count + 1;
			  
         if(count="00000101111101011110000100000001") then
                count <= (others => '0');
            elsif(count<"00000010111110101111000010000000") then
                new_clock <='0';
            else
                new_clock <='1';
            end if;
        end if ;
    end if;
end process;

clock_out<= new_clock;
end Behavioral;