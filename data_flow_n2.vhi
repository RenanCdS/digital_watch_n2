
-- VHDL Instantiation Created from source file data_flow_n2.vhd -- 22:09:09 11/13/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_data_flow_n2: data_flow_n2 PORT MAP(
		CLK => ,
		RST_N => ,
		DATA => ,
		ENABLE_H_IN1 => ,
		ENABLE_H_IN0 => ,
		ENABLE_M_IN1 => ,
		ENABLE_M_IN0 => ,
		CLEAR => ,
		SEVEN_SEGMENTS_DISPLAY => ,
		ANODES => 
	);


