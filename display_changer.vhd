library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display_changer is
	 Port ( CLK: in std_logic; 
			 H1_OUT, H0_OUT, M1_OUT, M0_OUT : in std_logic_vector(6 downto 0);
			 SEVEN_SEGMENTS_DISPLAY: out std_logic_vector(6 downto 0);
			 ANODES: out std_logic_vector(3 downto 0)
	 );

end display_changer;

architecture Behavioral of display_changer is
	signal anodes_count: natural range 0 to 3 := 0;
begin
	process (CLK)
		begin
			case anodes_count is
			when 0 => 
				ANODES <= "0111";
				SEVEN_SEGMENTS_DISPLAY <= H1_OUT;
				anodes_count <= anodes_count + 1;
			when 1 => 
				ANODES <= "1011";
				SEVEN_SEGMENTS_DISPLAY <= H0_OUT;
				anodes_count <= anodes_count + 1;
			when 2 => 
				ANODES <= "1101";
				SEVEN_SEGMENTS_DISPLAY <= M1_OUT;
				anodes_count <= anodes_count + 1;
			when 3 => 
				ANODES <= "1110";
				SEVEN_SEGMENTS_DISPLAY <= M0_OUT;
				anodes_count <= 0;
		end case;
	end process;

end Behavioral;

