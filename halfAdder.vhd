Entity halfAdder is
  Port ( A : in STD_LOGIC;
        B : in STD_LOGIC;
        Cout : out STD_LOGIC;
        S : out STD_LOGIC);
end halfAdder;

architecture work of halfAdder is
begin
  Cout <= A and B;
  S <= A xor B;
end component;
