
-- VHDL Instantiation Created from source file two_bits_regs.vhd -- 03:52:47 11/12/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT two_bits_regs
	PORT(
		CLOCK : IN std_logic;
		DATA : IN std_logic_vector(1 downto 0);
		ENABLE : IN std_logic;
		CLEAR : IN std_logic;          
		Q_OUT : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_two_bits_regs: two_bits_regs PORT MAP(
		CLOCK => ,
		DATA => ,
		ENABLE => ,
		CLEAR => ,
		Q_OUT => 
	);


