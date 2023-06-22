
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity ALU_TOP is
    Port ( clk : in STD_LOGIC;
			  X : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Y : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           op_sel : in STD_LOGIC_VECTOR(2 downto 0);
			  flag_out : out STD_LOGIC_VECTOR(2 downto 0);
          -- final: out  STD_LOGIC_VECTOR(3 DOWNTO 0);
			  seg_out: out STD_LOGIC_VECTOR(7 downto 0);
			  seg_sel: out STD_LOGIC_VECTOR(7 downto 0)
			  );
			  
end ALU_TOP;

architecture Behavioral of ALU_TOP is

component four_bid_adder 
Port ( X : in  STD_LOGIC_vector (3 downto 0);
           Y : in  STD_LOGIC_vector(3 downto 0);
           S : out  STD_LOGIC_vector (3 downto 0);
           Cout : out  STD_LOGIC);
end component;

component four_bit_subtract
Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
           Y : in  STD_LOGIC_VECTOR(3 downto 0);
           diff : out  STD_LOGIC_VECTOR(3 downto 0)
			  );
end component;

component decrement
Port ( x : in  STD_LOGIC_vector(3 downto 0);
           Zout : out  STD_LOGIC_vector(3 downto 0)
			  );
end component;

component increment
Port ( x : in  STD_LOGIC_vector(3 downto 0);
           Zout : out  STD_LOGIC_vector(3 downto 0);
			  carry : out std_logic
			  );
			  
end component;

component NOTA 
Port ( X : in  STD_LOGIC_vector(3 downto 0);
           Zout : out  STD_LOGIC_vector( 3 downto 0)
			  );
end component;

component four_bit_or
Port ( x : in  STD_LOGIC_vector( 3 downto 0);
           y : in  STD_LOGIC_vector (3 downto 0);
           Zout : out  STD_LOGIC_vector (3 downto 0)
			  );
end component;

component four_bit_xor 
 Port ( X : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Y : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Zout : out  STD_LOGIC_VECTOR (3 DOWNTO 0)
			  );
end component;

component four_bit_and 
Port ( x : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           y : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           Zout : out  STD_LOGIC_VECTOR (3 DOWNTO 0)
			  );
end component;
component seven_four
Port ( in1 : in STD_LOGIC_VECTOR (3 downto 0);
in2 : in STD_LOGIC_VECTOR (3 downto 0);
in3 : in STD_LOGIC_VECTOR (3 downto 0);
in4 : in STD_LOGIC_VECTOR (3 downto 0);
clk : in STD_LOGIC;
dp : out STD_LOGIC;
sel : out STD_LOGIC_VECTOR (3 downto 0);
segment : out STD_LOGIC_VECTOR (6 downto 0));

end component;
signal add_out,sub_out,and_out,or_out:STD_LOGIC_VECTOR(3 downto 0);
signal xor_out,inc_out,dec_out,not_out,final_out, carry_show: STD_LOGIC_VECTOR(3 downto 0);
signal add_carry,inc_carry: STD_LOGIC;
signal Z, V, C : STD_LOGIC; --Flagbits
signal dp :STD_LOGIC;
signal seg_out_7 : STD_LOGIC_VECTOR(6 downto 0);
signal seg_sel_4 :STD_LOGIC_VECTOR(3 downto 0);
signal temp1, temp3 : STD_LOGIC;
signal temp2: STD_LOGIC_VECTOR(4 downto 0);

begin
carry_show<= "000" & C; 

unit1: four_bid_adder 
port map ( 	x=> x, y=> y, cout=> add_carry, s => add_out);

unit2: four_bit_subtract
port map ( x=> x, y=> y, diff =>sub_out);

unit3: decrement
port map ( 	x=> x, zout => dec_out);

unit4: increment
port map ( x=> x, carry => inc_carry, zout=> inc_out);

unit5: NOTA 
port map (x=> x, zout=>not_out);

unit6: four_bit_or
port map (x=> x ,y=> y, zout=> or_out);

unit7: four_bit_xor 
port map (x=> x, y=> y, zout=> xor_out);

unit8: four_bit_and 
port map (x=> x, y=> y, zout=> and_out);

unit9: seven_four
port map (final_out, carry_show, "0000", "0000",clk, dp,seg_sel_4,seg_out_7);
seg_out<= (seg_out_7 & dp);
seg_sel<= "1111" & seg_sel_4;

temp1 <= '1' when Y>X else
'0';

temp3 <= '1' when X = "0000" else
'0';

V <= temp1 when op_sel = "001" else

temp3 when op_sel = "010" else
'0';

C <= add_carry when op_sel = "000" else

inc_carry when op_sel = "011" else
'0';

temp2 <= final_out & C;

Z <= '1' when temp2 = "00000" else
'0';

flag_out <= Z & C & V; -- concatenation flags.   flag(0)=overflow flag(1)=Carry flag(2)=Zero

--final<=final_out;

process (add_out,sub_out,dec_out,inc_out, and_out,or_out,not_out, xor_out, op_sel) is
begin
		
  if (op_sel = "000") then --000
     final_out <= add_out;
  elsif (op_sel = "001") then --001
     final_out  <= sub_out;
  elsif (op_sel = "010") then  --010
      final_out  <= dec_out;
  elsif (op_sel = "011") then  --011
      final_out  <= inc_out;
	elsif (op_sel = "100") then  --100
      final_out  <= and_out; 
	elsif (op_sel = "101") then  --101
     final_out  <= or_out;
	elsif (op_sel = "110") then --110
      final_out  <= not_out;
	else --111
      final_out  <= xor_out;
	
  end if;
  
  end process;
	
end Behavioral;

