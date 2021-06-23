library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity example is
    Port ( input1 : in STD_LOGIC;
           input2 : in STD_LOGIC;
           input3 : in STD_LOGIC;
           output1 : out STD_LOGIC);
end example;

architecture Behavioral of example is
-- define signals
   signal temp1 : STD_LOGIC;
   signal temp2 : STD_LOGIC;
begin
   temp1 <= input1 AND input2;
   temp2 <= input2 OR (NOT input3);
   output1 <= temp1 OR temp2;

end Behavioral;
