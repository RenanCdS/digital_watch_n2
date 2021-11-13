
-- VHDL Instantiation Created from source file display_changer.vhd -- 22:01:35 11/13/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_display_changer: display_changer PORT MAP(
		CLK => ,
		H1_OUT => ,
		H0_OUT => ,
		M1_OUT => ,
		M0_OUT => ,
		SEVEN_SEGMENTS_DISPLAY => ,
		ANODES => 
	);


