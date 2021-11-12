library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity clk_division is
    Port ( CLK_50 : in  STD_LOGIC;
           CLK_1s : out  STD_LOGIC);
end clk_division;

architecture Behavioral of clk_division is
	signal counter: std_logic_vector(27 downto 0):=(others =>'0');
begin

	process(CLK_50)
	begin
	 if(rising_edge(CLK_50)) then
		counter <= counter + x"0000001";
		--if(counter>=x"2FAF080") then -- Comentar quando simular no Testbench
		if(counter>=x"0000004") then -- Comentar quando for testar na placa
			counter <= x"0000000";
		end if;
	 end if;
	 
	end process;
	CLK_1s <= '0' when counter < x"0000002" else '1';
	-- CLK_1s <= '0' when counter < x"17D7840" else '1';

end Behavioral;

