library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logicvector is
    Port ( input1 : in STD_LOGIC_VECTOR(2 downto 0);
           output1 : out STD_LOGIC_VECTOR(1 downto 0));
end logicvector;

architecture Behavioral of logicvector is

begin
   output1(0) <= input1(0) AND input1(1) AND input1(2); -- three inputs in a vector
   output1(1) <= NOT (input1(0) AND input1(1) AND input1(2));

end Behavioral;
