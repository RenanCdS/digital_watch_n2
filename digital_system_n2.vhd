
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity digital_system_n2 is
	Port ( 
			  CLK_UC : in  STD_LOGIC;
           RST_UC : in  STD_LOGIC;
			  DATA : in STD_LOGIC_VECTOR(3 downto 0);
			  RST_WATCH : in STD_LOGIC;
			  CLEAR : in STD_LOGIC;
			  BTN_H1 : in  STD_LOGIC;
           BTN_H0 : in  STD_LOGIC;
           BTN_M1 : in  STD_LOGIC;
           BTN_M0 : in  STD_LOGIC;
			  SEVEN_SEGMENTS_DISPLAY: out STD_LOGIC_VECTOR (6 downto 0);
			  ANODES : out STD_LOGIC_VECTOR(3 downto 0)
			 );
end digital_system_n2;

architecture Behavioral of digital_system_n2 is

	COMPONENT data_flow_n2
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		Data : IN std_logic_vector(3 downto 0);
		Enable_H_in1 : IN std_logic;
		Enable_H_in0 : IN std_logic;
		Enable_M_in1 : IN std_logic;
		Enable_M_in0 : IN std_logic;
		Clear : IN std_logic;          
		Seven_segments_display: out std_logic_vector(6 downto 0);
		Anodes: out std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT control_unit_n2
	PORT(
		CLK_UC : IN std_logic;
		RST_UC : IN std_logic;
		CLEAR : IN std_logic;
		RST_WATCH : IN std_logic;
		BTN_H1 : IN std_logic;
		BTN_H0 : IN std_logic;
		BTN_M1 : IN std_logic;
		BTN_M0 : IN std_logic;          
		ENABLE_H1 : OUT std_logic;
		ENABLE_H0 : OUT std_logic;
		ENABLE_M1 : OUT std_logic;
		ENABLE_M0 : OUT std_logic;
		CLEAR_OUT : OUT std_logic;
		RST_WATCH_OUT : OUT std_logic
		);
	END COMPONENT;
	
	signal ENH1_Enable_H_in1, ENH0_Enable_H_in0, ENM1_Enable_M_in1, ENM0_Enable_M_in0, Clear_UC_Clear_DF, RST_WATCH_UC_RST_WATCH_DF : STD_LOGIC;
begin

	data_flow: data_flow_n2 PORT MAP(
		clk => CLK_UC,
		rst_n => RST_WATCH,
		Data => DATA,
		Enable_H_in1 => ENH1_Enable_H_in1,
		Enable_H_in0 => ENH0_Enable_H_in0,
		Enable_M_in1 => ENM1_Enable_M_in1,
		Enable_M_in0 => ENM0_Enable_M_in0,
		Clear => Clear_UC_Clear_DF,
		Seven_segments_display => SEVEN_SEGMENTS_DISPLAY,
		Anodes => ANODES
	);
	
	control_unit: control_unit_n2 PORT MAP(
		CLK_UC => CLK_UC,
		RST_UC => RST_UC,
		CLEAR => CLEAR,
		RST_WATCH => RST_WATCH,
		BTN_H1 => BTN_H1,
		BTN_H0 => BTN_H0,
		BTN_M1 => BTN_M1,
		BTN_M0 => BTN_M0,
		ENABLE_H1 => ENH1_Enable_H_in1,
		ENABLE_H0 => ENH0_Enable_H_in0,
		ENABLE_M1 => ENM1_Enable_M_in1,
		ENABLE_M0 => ENM0_Enable_M_in0,
		CLEAR_OUT => Clear_UC_Clear_DF,
		RST_WATCH_OUT => RST_WATCH_UC_RST_WATCH_DF
	);

end Behavioral;

