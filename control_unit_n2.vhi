
-- VHDL Instantiation Created from source file control_unit_n2.vhd -- 17:33:44 11/12/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_control_unit_n2: control_unit_n2 PORT MAP(
		CLK_UC => ,
		RST_UC => RST_UC,
		CLEAR => ,
		RST_WATCH => ,
		BTN_H1 => ,
		BTN_H0 => ,
		BTN_M1 => ,
		BTN_M0 => ,
		ENABLE_H1 => ,
		ENABLE_H0 => ,
		ENABLE_M1 => ,
		ENABLE_M0 => ,
		CLEAR_OUT => ,
		RST_WATCH_OUT => 
	);


