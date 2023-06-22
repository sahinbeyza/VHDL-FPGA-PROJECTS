library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration
entity FSM is
  Port ( clk : in  STD_LOGIC;
         inp : in  STD_LOGIC;
         en  : in  STD_LOGIC;
         reset : in  STD_LOGIC;
         seq : out  STD_LOGIC_VECTOR (7 downto 0);
         count : out  STD_LOGIC_VECTOR (3 downto 0));
end FSM;

-- Architecture declaration
architecture Behavioral of FSM is

component universal_counter
Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC; 
    enable : in STD_LOGIC;
    clock_out : out std_logic);
end component;

-- Define the states of the FSM
type state_type is (init, search, match, skip, end1);
signal curr_state, next_state : state_type;
signal seq_sig : STD_LOGIC_VECTOR (7 downto 0):="00000000";
signal count_sig :STD_LOGIC_VECTOR (3 downto 0):="0000";
signal clock_out_sig : std_logic;
begin

-- State transition logic
state_transition : process (clock_out_sig, reset)
begin
  if reset = '1' then
    curr_state <= init;
  elsif rising_edge(clock_out_sig) then
    curr_state <= next_state;
  end if;
end process;
-- Next state logic
next_state_logic : process (curr_state, inp, en, clock_out_sig,reset)
begin
  case curr_state is
    when init =>
      if en = '1' then
        next_state <= search;
      else
        next_state <= init;
      end if;
    when search =>
      if inp = '1' then
        next_state <= match;
      else
        next_state <= init;
      end if;
    when match =>
      if inp = '1' then
        next_state <= match;
      else
        next_state <= skip;
      end if;
    when skip =>
      if inp = '0' then
        next_state <= init;
      else
        next_state <= end1;
      end if;
    when end1 =>
      if en = '0' then
        next_state <= init;
      else
        next_state <= match;
      end if;
  end case;
end process;

-- Output logic
 output_logic : process (curr_state, inp,clock_out_sig,reset)
begin
if rising_edge(clock_out_sig) then 
case curr_state is
	when init =>
      seq_sig <= seq_sig(6 downto 0) & inp ;
      count_sig  <= (others => '0');
   when search =>
      seq_sig <= seq_sig(6 downto 0) & inp ;
     count_sig  <= count_sig ;
   when match =>
      seq_sig <= seq_sig(6 downto 0) & inp;
      count_sig  <= count_sig ;
   when skip =>
      seq_sig <= seq_sig(6 downto 0) & inp;
      count_sig  <= count_sig ;
   when end1 =>
      seq_sig <= seq_sig(6 downto 0) & inp;
      count_sig  <= count_sig  + 1;
 end case;
 end if;
end process;
U1: universal_counter port map(clk,reset,en,clock_out_sig);
count <= count_sig;
seq<= seq_sig;

end Behavioral;
