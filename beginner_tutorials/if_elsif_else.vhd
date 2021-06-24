library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity statements is
    Port ( enabled :  in STD_LOGIC;
           input1 : in STD_LOGIC_VECTOR(7 downto 0);
           selector : in STD_LOGIC_VECTOR(2 downto 0);
           output1 : out STD_LOGIC);
end statements;

architecture Behavioral of statements is

begin
   process(input1, selector)
   begin
      if enabled = '0' then
         output1 <= '0'; -- when switch is off
      else
         if input1 = "000" then
            output1 <= input1(0);
         elsif input1 = "001" then
            output1 <= input1(1);
         elsif input1 = "010" then
            output1 <= input1(2);
         elsif input1 = "011" then
            output1 <= input1(3);
         elsif input1 = "100" then
            output1 <= input1(4);
         elsif input1 = "101" then
            output1 <= input1(5);
         elsif input1 = "110" then
            output1 <= input1(6);
         elsif input1 <= "111" then
            output1 <= input1(7);
         else
            output1 <= '0';
         end if;
      end if;
   end process;

end Behavioral;
