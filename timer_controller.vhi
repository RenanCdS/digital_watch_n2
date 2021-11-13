
-- VHDL Instantiation Created from source file timer_controller.vhd -- 21:37:49 11/13/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_timer_controller: timer_controller PORT MAP(
		CLK_1s => ,
		RST_N => ,
		H_IN1 => ,
		H_IN0 => ,
		M_IN1 => ,
		M_IN0 => ,
		H_OUT1_BIN => ,
		H_OUT0_BIN => ,
		M_OUT1_BIN => ,
		M_OUT0_BIN => 
	);


