-- Code downloaded from: https://en.wikipedia.org/wiki/Double_dabble

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use work.Conv_Package.all;



entity Converter is
    Port ( Bin : in  STD_LOGIC_VECTOR (11 downto 0);
           BCD : out  STD_LOGIC_VECTOR (15 downto 0));
end Bin_BCD;

architecture Behavioral of Converter is

begin
	
	BCD <= Double_Dabble(Bin);

end Behavioral;