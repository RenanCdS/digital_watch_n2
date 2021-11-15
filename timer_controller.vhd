library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity timer_controller is
	Port ( CLK_1s: in std_logic; 
			 RST_N: in std_logic; 
			 H_IN1 : in std_logic_vector(1 downto 0);
			 H_IN0 : in std_logic_vector(3 downto 0);
			 M_IN1 : in std_logic_vector(3 downto 0);
			 M_IN0 : in std_logic_vector(3 downto 0);
			 H_OUT1_BIN: out std_logic_vector(3 downto 0);
			 H_OUT0_BIN: out std_logic_vector(3 downto 0);
			 M_OUT1_BIN: out std_logic_vector(3 downto 0);
			 M_OUT0_BIN: out std_logic_vector(3 downto 0)
	);
end timer_controller;

architecture Behavioral of timer_controller is

	-- Contadores usados para controlar segundos, minutos e horas
	signal counter_hour, counter_minute, counter_second: integer;
	
	signal h_out1_bin_signal, h_out0_bin_signal,
		m_out1_bin_signal, m_out0_bin_signal : std_logic_vector(3 downto 0);
	
begin

	process(CLK_1s,RST_N) begin 
		 if(RST_N = '0') then
		 counter_hour <= to_integer(unsigned(H_IN1))*10 + to_integer(unsigned(H_IN0));
		 counter_minute <= to_integer(unsigned(M_IN1))*10 + to_integer(unsigned(M_IN0));
		 counter_second <= 0;
		 elsif(rising_edge(clk_1s)) then
		 counter_second <= counter_second + 1;
		 if(counter_second >=59) then
		 counter_minute <= counter_minute + 1;
		 counter_second <= 0;
		 if(counter_minute >=59) then
		 counter_minute <= 0;
		 counter_hour <= counter_hour + 1;
		 if(counter_hour >= 23) then -- Validar com 24 
		 counter_hour <= 0;
		 end if;
		 end if;
		 end if;
		 end if;
	 end process;
	 
	 h_out1_bin_signal <= x"2" when counter_hour >=20 else
	 x"1" when counter_hour >=10 else
	 x"0";
	 
	 h_out0_bin_signal <= std_logic_vector(to_unsigned((counter_hour - to_integer(unsigned(h_out1_bin_signal))*10),4));
	 
	 m_out1_bin_signal <= x"5" when counter_minute >=50 else
	 x"4" when counter_minute >=40 else
	 x"3" when counter_minute >=30 else
	 x"2" when counter_minute >=20 else
	 x"1" when counter_minute >=10 else
	 x"0";
	 
	 m_out0_bin_signal <= std_logic_vector(to_unsigned((counter_minute - to_integer(unsigned(m_out1_bin_signal))*10),4));
	 
	 H_OUT1_BIN <= h_out1_bin_signal;
	 H_OUT0_BIN <= h_out0_bin_signal;
	 M_OUT1_BIN <= m_out1_bin_signal;
	 M_OUT0_BIN <= m_out0_bin_signal;
	 
end Behavioral;

