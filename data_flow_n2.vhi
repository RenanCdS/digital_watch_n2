
-- VHDL Instantiation Created from source file data_flow_n2.vhd -- 17:33:22 11/12/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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
		H_out1 : OUT std_logic_vector(6 downto 0);
		H_out0 : OUT std_logic_vector(6 downto 0);
		M_out1 : OUT std_logic_vector(6 downto 0);
		M_out0 : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_data_flow_n2: data_flow_n2 PORT MAP(
		clk => ,
		rst_n => ,
		Data => ,
		Enable_H_in1 => ,
		Enable_H_in0 => ,
		Enable_M_in1 => ,
		Enable_M_in0 => ,
		Clear => ,
		H_out1 => ,
		H_out0 => ,
		M_out1 => ,
		M_out0 => 
	);


