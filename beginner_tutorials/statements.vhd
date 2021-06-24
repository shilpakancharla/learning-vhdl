library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity statements is
    Port ( selector : in STD_LOGIC_VECTOR(1 downto 0);
           input1 : in STD_LOGIC;
           input2 : in STD_LOGIC;
           input3 : in STD_LOGIC;
           input4 : in STD_LOGIC;
           output1 : out STD_LOGIC);
end statements;

architecture Behavioral of statements is

begin
--  output1 <= input1 AND input2 AND input3;
   output1 <= input1 when selector = "00" else
              input2 when selector = "01" else
              input3 when selector = "00" else
              input4;

--   with input1 select
--      output1 <= "00" when "0000" | "0001" | "0010",
--               "01" when "0011" | "0100" | "0101",
--               "10" when others;

end Behavioral;
