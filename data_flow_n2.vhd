
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity data_flow_n2 is
    Port ( clk: in std_logic; 
	 -- clock 50 MHz
	 rst_n: in std_logic; 
	 -- Active low reset pulse, to set the time to the input hour and minute (as 
	 -- defined by the H_in1, H_in0, M_in1, and M_in0 inputs) and the second to 00.
	 -- For normal operation, this input pin should be 1.
	 Data: in std_logic_vector(3 downto 0); -- Valor das horas ou minutos dependendo do bot'ao selecionado
	 -- 4-bit input used to set the least significant minute digit of the clock 
	 -- Valid values are 0 to 9.  
	 Enable_H_in1: in std_logic;
	 Enable_H_in0: in std_logic;
	 Enable_M_in1: in std_logic;
	 Enable_M_in0: in std_logic;
	 Clear: in std_logic;
	 H_out1: out std_logic_vector(6 downto 0);
	 -- The most significant digit of the hour. Valid values are 0 to 2 ( Hexadecimal value on 7-segment LED)
	 H_out0: out std_logic_vector(6 downto 0);
	 -- The most significant digit of the hour. Valid values are 0 to 9 ( Hexadecimal value on 7-segment LED)
	 M_out1: out std_logic_vector(6 downto 0);
	 -- The most significant digit of the minute. Valid values are 0 to 9 ( Hexadecimal value on 7-segment LED)
	 M_out0: out std_logic_vector(6 downto 0)
	 -- The most significant digit of the minute. Valid values are 0 to 9 ( Hexadecimal value on 7-segment LED)
);
end data_flow_n2;

architecture Behavioral of data_flow_n2 is
	COMPONENT clk_division
	PORT(
		CLK_50 : IN std_logic;          
		CLK_1s : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT conversor_bin_to_hex
	PORT(
		BIN : IN std_logic_vector(3 downto 0);          
		RESULT : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
	COMPONENT two_bits_regs
	PORT(
		CLOCK : IN std_logic;
		DATA : IN std_logic_vector(1 downto 0);
		ENABLE : IN std_logic;
		CLEAR : IN std_logic;          
		Q_OUT : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT four_bits_regs
	PORT(
		CLOCK : IN std_logic;
		DATA : IN std_logic_vector(3 downto 0);
		ENABLE : IN std_logic;
		CLEAR : IN std_logic;          
		Q_OUT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	signal H_in1_regs_signal: std_logic_vector(1 downto 0);
	signal H_in0_regs_signal, M_in1_regs_signal, M_in0_regs_signal: std_logic_vector(3 downto 0);
	
	signal clk_1s: std_logic; -- 1-s clock
	signal counter_hour, counter_minute, counter_second: integer;
	-- counter using for create time
	signal H_out1_bin: std_logic_vector(3 downto 0); --The most significant digit of the hour
	signal H_out0_bin: std_logic_vector(3 downto 0);--The least significant digit of the hour
	signal M_out1_bin: std_logic_vector(3 downto 0);--The most significant digit of the minute
	signal M_out0_bin: std_logic_vector(3 downto 0);--The least significant digit of the minute
begin

	
	one_second_clock: clk_division port map (CLK_50 => clk, CLK_1s => clk_1s); 
	
	-- Registradores responsaveis por guardar valores dos digitos referentes a HH:MM
	H_in1_regs: two_bits_regs PORT MAP(
		CLOCK => clk,
		DATA => Data(1 downto 0),
		ENABLE => Enable_H_in1,
		CLEAR => Clear,
		Q_OUT => H_in1_regs_signal
	);
	
	H_in0_regs: four_bits_regs PORT MAP(
		CLOCK => clk,
		DATA => Data,
		ENABLE => Enable_H_in0,
		CLEAR => Clear,
		Q_OUT => H_in0_regs_signal
	);
	
	M_in1_regs: four_bits_regs PORT MAP(
		CLOCK => clk,
		DATA => Data,
		ENABLE => Enable_M_in1,
		CLEAR => Clear,
		Q_OUT => M_in1_regs_signal
	);
	
	M_in0_regs: four_bits_regs PORT MAP(
		CLOCK => clk,
		DATA => Data,
		ENABLE => Enable_M_in0,
		CLEAR => Clear,
		Q_OUT => M_in0_regs_signal
	);
	
	-- Fim dos Registradore --
	
--	process (clk) begin
--		if (counter_display = 0)
--			display <= "0111";
--			saida <= saida_H1;
--		elsif (counter_display = 1)
--			display <= "1011";
--			saida <= saida_H0;
--		elsif (counter_display = 2)
--			display <= "1101";
--			saida <= saida_M1;
--		elsif (counter_display = 3)
--			display <= "1110";
--			saida <= saida_M0;
--		end if;
--		end if;
--		end if;
--		end if;
--	end process;
	
	process(clk_1s,rst_n) begin 
	 
		 if(rst_n = '0') then
		 counter_hour <= to_integer(unsigned(H_in1_regs_signal))*10 + to_integer(unsigned(H_in0_regs_signal));
		 counter_minute <= to_integer(unsigned(M_in1_regs_signal))*10 + to_integer(unsigned(M_in0_regs_signal));
		 counter_second <= 0;
		 elsif(rising_edge(clk_1s)) then
		 counter_second <= counter_second + 1;
		 if(counter_second >=59) then -- second > 59 then minute increases
		 counter_minute <= counter_minute + 1;
		 counter_second <= 0;
		 if(counter_minute >=59) then -- minute > 59 then hour increases
		 counter_minute <= 0;
		 counter_hour <= counter_hour + 1;
		 if(counter_hour >= 24) then -- hour > 24 then set hour to 0
		 counter_hour <= 0;
		 end if;
		 end if;
		 end if;
		 end if;
	 end process;

	 H_out1_bin <= x"2" when counter_hour >=20 else
	 x"1" when counter_hour >=10 else
	 x"0";
	-- 7-Segment LED display of H_out1
	convert_hex_H_out1: conversor_bin_to_hex port map (BIN => H_out1_bin, RESULT => H_out1); 
	-- H_out0 binary value
	 H_out0_bin <= std_logic_vector(to_unsigned((counter_hour - to_integer(unsigned(H_out1_bin))*10),4));
	-- 7-Segment LED display of H_out0
	convert_hex_H_out0: conversor_bin_to_hex port map (BIN => H_out0_bin, RESULT => H_out0); 
	-- M_out1 binary value
	 M_out1_bin <= x"5" when counter_minute >=50 else
	 x"4" when counter_minute >=40 else
	 x"3" when counter_minute >=30 else
	 x"2" when counter_minute >=20 else
	 x"1" when counter_minute >=10 else
	 x"0";
	-- 7-Segment LED display of M_out1
	convert_hex_M_out1: conversor_bin_to_hex port map (BIN => M_out1_bin, RESULT => M_out1); 
	-- M_out0 binary value
	 M_out0_bin <= std_logic_vector(to_unsigned((counter_minute - to_integer(unsigned(M_out1_bin))*10),4));
	-- 7-Segment LED display of M_out0
	convert_hex_M_out0: conversor_bin_to_hex port map (BIN => M_out0_bin, RESULT => M_out0); 
end Behavioral;

