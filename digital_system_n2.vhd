
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity digital_system_n2 is
	Port ( 
			  CLK : in  STD_LOGIC;
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
		CLK : IN std_logic;
		RST_N : IN std_logic;
		DATA : IN std_logic_vector(3 downto 0);
		ENABLE_H_IN1 : IN std_logic;
		ENABLE_H_IN0 : IN std_logic;
		ENABLE_M_IN1 : IN std_logic;
		ENABLE_M_IN0 : IN std_logic;
		CLEAR : IN std_logic;          
		SEVEN_SEGMENTS_DISPLAY : OUT std_logic_vector(6 downto 0);
		ANODES : OUT std_logic_vector(3 downto 0)
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
	
	signal enh1_enable_h_in1, enh0_enable_h_in0, enm1_enable_m_in1, enm0_enable_m_in0, clear_uc_clear_df, rst_watch_uc_rst_watch_df : STD_LOGIC;
begin

	data_flow: data_flow_n2 PORT MAP(
		CLK => CLK,
		RST_N => rst_watch_uc_rst_watch_df,
		DATA => DATA,
		ENABLE_H_IN1 => enh1_enable_h_in1,
		ENABLE_H_IN0 => enh0_enable_h_in0,
		ENABLE_M_IN1 => enm1_enable_m_in1,
		ENABLE_M_IN0 => enm0_enable_m_in0,
		CLEAR => clear_uc_clear_df,
		SEVEN_SEGMENTS_DISPLAY => SEVEN_SEGMENTS_DISPLAY,
		ANODES => ANODES
	);
	
	control_unit: control_unit_n2 PORT MAP(
		CLK_UC => CLK,
		RST_UC => RST_UC,
		CLEAR => CLEAR,
		RST_WATCH => RST_WATCH,
		BTN_H1 => BTN_H1,
		BTN_H0 => BTN_H0,
		BTN_M1 => BTN_M1,
		BTN_M0 => BTN_M0,
		ENABLE_H1 => enh1_enable_h_in1,
		ENABLE_H0 => enh0_enable_h_in0,
		ENABLE_M1 => enm1_enable_m_in1,
		ENABLE_M0 => enm0_enable_m_in0,
		CLEAR_OUT => clear_uc_clear_df,
		RST_WATCH_OUT => rst_watch_uc_rst_watch_df
	);

end Behavioral;

