
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity four_bits_regs is
    Port ( CLOCK : in  STD_LOGIC;
			  DATA : in  STD_LOGIC_VECTOR (3 downto 0);
           ENABLE : in  STD_LOGIC;
           CLEAR : in  STD_LOGIC;
           Q_OUT : out  STD_LOGIC_VECTOR (3 downto 0));
end four_bits_regs;

architecture Behavioral of four_bits_regs is

	signal q_out_temp : STD_LOGIC_VECTOR (3 downto 0);
begin
	
	process (CLOCK, CLEAR)
	begin
		if CLEAR = '1' then
			q_out_temp <= "0000"; -- Caso o clear esteja ativo a saida recebera 0000
		elsif CLOCK'EVENT and CLOCK = '1' then -- Aguarda a borda de subida do clock
			if ENABLE = '1' then
				q_out_temp <= DATA;
			else
				q_out_temp <= q_out_temp;
			end if;
		end if;
	end process;
	Q_OUT <= q_out_temp;
end Behavioral;

