--library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

			
ENTITY Bin_BCD_TB IS
END Bin_BCD_TB;
 
ARCHITECTURE behavior OF Bin_BCD_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Bin_BCD
    PORT(
         Bin : IN  std_logic_vector(11 downto 0);
         BCD : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Bin : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal BCD : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Bin_BCD PORT MAP (
          Bin => Bin,
          BCD => BCD
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      -- insert stimulus here 
		Bin <= conv_std_logic_vector(183,12);--"10110111";
		      wait for 100 ns;	
		Bin <= conv_std_logic_vector(129,12);--"10000001";
		      wait for 100 ns;	
		Bin <= conv_std_logic_vector(57,12);--"00111001";
				wait for 100 ns;	
		Bin <= conv_std_logic_vector(123,12);--"01111011";
		      wait for 100 ns;	


      wait;
   end process;

