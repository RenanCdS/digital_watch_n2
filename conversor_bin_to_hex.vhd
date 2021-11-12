library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity conversor_bin_to_hex is
    Port ( BIN : in  STD_LOGIC_VECTOR (3 downto 0);
           RESULT : out  STD_LOGIC_VECTOR (6 downto 0));
end conversor_bin_to_hex;

architecture Behavioral of conversor_bin_to_hex is

begin
	process(Bin)
 begin
  case(Bin) is
   when "0000" =>  RESULT <= "1000000"; --0--
   when "0001" =>  RESULT <= "1111001"; --1--
   when "0010" =>  RESULT <= "0100100"; --2--
   when "0011" =>  RESULT <= "0110000"; --3--
   when "0100" =>  RESULT <= "0011001"; --4-- 
   when "0101" =>  RESULT <= "0010010"; --5--    
   when "0110" =>  RESULT <= "0000010"; --6--
   when "0111" =>  RESULT <= "1111000"; --7--   
   when "1000" =>  RESULT <= "0000000"; --8--
   when "1001" =>  RESULT <= "0010000"; --9--
   when "1010" =>  RESULT <= "0001000"; --a--
   when "1011" =>  RESULT <= "0000011"; --b--
   when "1100" =>  RESULT <= "1000110"; --c--
   when "1101" =>  RESULT <= "0100001"; --d--
   when "1110" =>  RESULT <= "0000110"; --e--
   when others =>  RESULT <= "0001110"; 
   end case;
 end process;

end Behavioral;

