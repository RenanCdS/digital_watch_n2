-- EC8 - Arquitetura de Computadores II - N2 2 Bimestre
-- Rachel Moreira 081180045
-- Renan Castro dos Santos 081180029
-- Wellison Sousa 081180040
-- Wesley Rogerio 081180035

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit_n2 is
	 Port ( 
			  CLK_UC : in  STD_LOGIC;
           RST_UC : in  STD_LOGIC;
			  CLEAR : in STD_LOGIC;
			  RST_WATCH : in STD_LOGIC;
			  BTN_H1 : in  STD_LOGIC;
           BTN_H0 : in  STD_LOGIC;
           BTN_M1 : in  STD_LOGIC;
           BTN_M0 : in  STD_LOGIC;
           ENABLE_H1, ENABLE_H0, ENABLE_M1, ENABLE_M0 : out STD_LOGIC;
           CLEAR_OUT : out STD_LOGIC;
			  RST_WATCH_OUT : out STD_LOGIC);
end control_unit_n2;

architecture Behavioral of control_unit_n2 is

	type STATE_TYPE is (e0, e1, e2, e3, e4, e5, e6, e7, e8); -- todos os estados devem ser declarados!
	signal current_state, next_state : STATE_TYPE;
	
begin
	
	sincronism: process (CLK_UC, RST_UC)
	begin
		if (RST_UC='1') then
		
			current_state <= e0;
		
		elsif (CLK_UC' event and CLK_UC='1') then
			
			current_state <= next_state;
		
		end if;
	end process;
	
	fsm_progress: process (current_state, BTN_H1, BTN_H0, BTN_M1, BTN_M0, RST_WATCH, CLEAR)
	begin
				
		next_state <= current_state;
		
		case (current_state) is
		
			when e0 =>
				RST_WATCH_OUT <= '0';
				ENABLE_H1 <= '0';
				ENABLE_H0 <= '0';
				ENABLE_M1 <= '0';
				ENABLE_M0 <= '0';
				CLEAR_OUT <= '0';
				
				if (RST_WATCH = '1') then
					next_state <= e1;
				elsif (BTN_H1 = '1') then
					next_state <= e2;
				elsif (BTN_H0 = '1') then
					next_state <= e3;
				elsif (BTN_M1 = '1') then
					next_state <= e4;
				elsif (BTN_M0 = '1') then
					next_state <= e5;
				elsif (CLEAR = '1') then
					next_state <= e6;
				else 
					next_state <= e0;
				end if;
			
			when e1 =>
				RST_WATCH_OUT <= '1';
				ENABLE_H1 <= '0';
				ENABLE_H0 <= '0';
				ENABLE_M1 <= '0';
				ENABLE_M0 <= '0';
				CLEAR_OUT <= '0';
				
				next_state <= e8;
				
			when e2 => 
				RST_WATCH_OUT <= '0';
				ENABLE_H1 <= '1';
				ENABLE_H0 <= '0';
				ENABLE_M1 <= '0';
				ENABLE_M0 <= '0';
				CLEAR_OUT <= '0';
				
				next_state <= e7;
				
			when e3 => 
				RST_WATCH_OUT <= '0';
				ENABLE_H1 <= '0';
				ENABLE_H0 <= '1';
				ENABLE_M1 <= '0';
				ENABLE_M0 <= '0';
				CLEAR_OUT <= '0';
				
				next_state <= e7;
				
			when e4 => 
				RST_WATCH_OUT <= '0';
				ENABLE_H1 <= '0';
				ENABLE_H0 <= '0';
				ENABLE_M1 <= '1';
				ENABLE_M0 <= '0';
				CLEAR_OUT <= '0';
				
				next_state <= e7;
				
			when e5 => 
				CLEAR_OUT <= '0';
				RST_WATCH_OUT <= '0';
				ENABLE_H1 <= '0';
				ENABLE_H0 <= '0';
				ENABLE_M1 <= '0';
				ENABLE_M0 <= '1';
				
				next_state <= e7;
				
			when e6 =>
				ENABLE_H1 <= '0';
				ENABLE_H0 <= '0';
				ENABLE_M1 <= '0';
				ENABLE_M0 <= '0';
				CLEAR_OUT <= '1';
				RST_WATCH_OUT <= '0';
				
				next_state <= e7;
				
				
			when e7 => 
				ENABLE_H1 <= '0';
				ENABLE_H0 <= '0';
				ENABLE_M1 <= '0';
				ENABLE_M0 <= '0';
				CLEAR_OUT <= '0';
				RST_WATCH_OUT <= '0';
				
				if (RST_WATCH = '1') then
					next_state <= e1;
				elsif (BTN_H1 = '1') then
					next_state <= e2;
				elsif (BTN_H0 = '1') then
					next_state <= e3;
				elsif (BTN_M1 = '1') then
					next_state <= e4;
				elsif (BTN_M0 = '1') then
					next_state <= e5;
				elsif (CLEAR = '1') then
					next_state <= e6;
				else 
					next_state <= e0;
				end if;
				
		 when e8 => 
				ENABLE_H1 <= '0';
				ENABLE_H0 <= '0';
				ENABLE_M1 <= '0';
				ENABLE_M0 <= '0';
				CLEAR_OUT <= '0';
				RST_WATCH_OUT <= '1';
				
				if (RST_WATCH = '1') then
					next_state <= e1;
				elsif (BTN_H1 = '1') then
					next_state <= e2;
				elsif (BTN_H0 = '1') then
					next_state <= e3;
				elsif (BTN_M1 = '1') then
					next_state <= e4;
				elsif (BTN_M0 = '1') then
					next_state <= e5;
				elsif (CLEAR = '1') then
					next_state <= e6;
				else 
					next_state <= e7;
				end if;
				
		end case;
	
	end process;

end Behavioral;

