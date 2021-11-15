-- EC8 - Arquitetura de Computadores II - N2 2 Bimestre
-- Rachel Moreira 081180045
-- Renan Castro dos Santos 081180029
-- Wellison Sousa 081180040
-- Wesley Rogerio 081180035

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity data_flow_n2 is
    Port (CLK: in std_logic; 
	 RST_N: in std_logic; 
	 -- Para operar normalmente, essa entrada deve ser 1.
	 -- Para utlizar os valores definidos pelos registradores de horas e minutos essa entrada deve ser 0
	 DATA: in std_logic_vector(3 downto 0); -- Valor das horas ou minutos dependendo do bot'ao selecionado
	 ENABLE_H_IN1 : in std_logic;
	 ENABLE_H_IN0 : in std_logic;
	 ENABLE_M_IN1 : in std_logic;
	 ENABLE_M_IN0 : in std_logic;
	 CLEAR: in std_logic;
	 SEVEN_SEGMENTS_DISPLAY: out std_logic_vector(6 downto 0);
	 ANODES: out std_logic_vector(3 downto 0)
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
	
	COMPONENT timer_controller
	PORT(
		CLK_1s : IN std_logic;
		RST_N : IN std_logic;
		H_IN1 : IN std_logic_vector(1 downto 0);
		H_IN0 : IN std_logic_vector(3 downto 0);
		M_IN1 : IN std_logic_vector(3 downto 0);
		M_IN0 : IN std_logic_vector(3 downto 0);          
		H_OUT1_BIN : OUT std_logic_vector(3 downto 0);
		H_OUT0_BIN : OUT std_logic_vector(3 downto 0);
		M_OUT1_BIN : OUT std_logic_vector(3 downto 0);
		M_OUT0_BIN : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT display_changer
	PORT(
		CLK : IN std_logic;
		H1_OUT : IN std_logic_vector(6 downto 0);
		H0_OUT : IN std_logic_vector(6 downto 0);
		M1_OUT : IN std_logic_vector(6 downto 0);
		M0_OUT : IN std_logic_vector(6 downto 0);          
		SEVEN_SEGMENTS_DISPLAY : OUT std_logic_vector(6 downto 0);
		ANODES : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	signal h1_out_signal, h0_out_signal, m1_out_signal, m0_out_signal: std_logic_vector(6 downto 0);
	
	signal h_in1_regs_signal: std_logic_vector(1 downto 0);
	signal h_in0_regs_signal, m_in1_regs_signal, m_in0_regs_signal: std_logic_vector(3 downto 0);
	
	signal h1_bin_signal, h0_bin_signal, m1_bin_signal, m0_bin_signal : std_logic_vector(3 downto 0);
	
	signal clk_1s: std_logic; -- 1-s clock

begin

	-- Componente responsavel por alternar os minutos e horas no display de 7 segmentos
	display_changer_inst: display_changer PORT MAP(
		CLK => CLK,
		H1_OUT => h1_out_signal,
		H0_OUT => h0_out_signal,
		M1_OUT => m1_out_signal,
		M0_OUT => m0_out_signal,
		SEVEN_SEGMENTS_DISPLAY => SEVEN_SEGMENTS_DISPLAY,
		ANODES => ANODES
	);
	
	-- Componente responsavel pela conversao de clock de 1 segundo
	one_second_clock: clk_division port map (CLK_50 => CLK, CLK_1s => clk_1s); 
	
	-- Registradores responsaveis por guardar valores dos digitos referentes a HH:MM
	h_in1_regs: two_bits_regs PORT MAP(
		CLOCK => CLK,
		DATA => DATA(1 downto 0),
		ENABLE => ENABLE_H_IN1,
		CLEAR => CLEAR,
		Q_OUT => h_in1_regs_signal
	);
	
	h_in0_regs: four_bits_regs PORT MAP(
		CLOCK => CLK,
		DATA => DATA,
		ENABLE => ENABLE_H_IN0,
		CLEAR => CLEAR,
		Q_OUT => h_in0_regs_signal
	);
	
	m_in1_regs: four_bits_regs PORT MAP(
		CLOCK => CLK,
		DATA => DATA,
		ENABLE => ENABLE_M_IN1,
		CLEAR => CLEAR,
		Q_OUT => m_in1_regs_signal
	);
	
	m_in0_regs: four_bits_regs PORT MAP(
		CLOCK => CLK,
		DATA => DATA,
		ENABLE => ENABLE_M_IN0,
		CLEAR => CLEAR,
		Q_OUT => m_in0_regs_signal
	);
	
	-- Fim dos Registradores --
	
	-- Componente responsavel por realizar a logica de contagem de segundos, minutos e horas
	timer_controller_Inst : timer_controller PORT MAP(
		CLK_1s => clk_1s,
		RST_N => RST_N,
		H_IN1 => h_in1_regs_signal,
		H_IN0 => h_in0_regs_signal,
		M_IN1 => m_in1_regs_signal,
		M_IN0 => m_in0_regs_signal,
		H_OUT1_BIN => h1_bin_signal,
		H_OUT0_BIN => h0_bin_signal,
		M_OUT1_BIN => m1_bin_signal,
		M_OUT0_BIN => m0_bin_signal 
	);
	 
	-- Display de 7 segmentos para H1
	convert_hex_H_out1: conversor_bin_to_hex port map (BIN => h1_bin_signal, RESULT => h1_out_signal); 
	 
	-- Display de 7 segmentos para H0
	convert_hex_H_out0: conversor_bin_to_hex port map (BIN => h0_bin_signal, RESULT => h0_out_signal); 
	 
	-- Display de 7 segmentos para M1
	convert_hex_M_out1: conversor_bin_to_hex port map (BIN => m1_bin_signal, RESULT => m1_out_signal); 
	 
	-- Display de 7 segmentos para M0
	convert_hex_M_out0: conversor_bin_to_hex port map (BIN => m0_bin_signal, RESULT => m0_out_signal); 
end Behavioral;

