
-- VHDL Instantiation Created from source file conversor_bin_to_hex.vhd -- 01:27:01 11/11/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT conversor_bin_to_hex
	PORT(
		BIN : IN std_logic_vector(3 downto 0);          
		RESULT : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_conversor_bin_to_hex: conversor_bin_to_hex PORT MAP(
		BIN => ,
		RESULT => 
	);


