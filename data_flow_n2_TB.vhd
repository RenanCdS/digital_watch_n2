LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY data_flow_n2_TB IS
END data_flow_n2_TB;
 
ARCHITECTURE behavior OF data_flow_n2_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT data_flow_n2
    PORT(
         CLK : IN  std_logic;
         RST_N : IN  std_logic;
         DATA : IN  std_logic_vector(3 downto 0);
         ENABLE_H_IN1 : IN  std_logic;
         ENABLE_H_IN0 : IN  std_logic;
         ENABLE_M_IN1 : IN  std_logic;
         ENABLE_M_IN0 : IN  std_logic;
         CLEAR : IN  std_logic;
         SEVEN_SEGMENTS_DISPLAY : OUT  std_logic_vector(6 downto 0);
         ANODES : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST_N : std_logic := '0';
   signal DATA : std_logic_vector(3 downto 0) := (others => '0');
   signal ENABLE_H_IN1 : std_logic := '0';
   signal ENABLE_H_IN0 : std_logic := '0';
   signal ENABLE_M_IN1 : std_logic := '0';
   signal ENABLE_M_IN0 : std_logic := '0';
   signal CLEAR : std_logic := '0';

 	--Outputs
   signal SEVEN_SEGMENTS_DISPLAY : std_logic_vector(6 downto 0);
   signal ANODES : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: data_flow_n2 PORT MAP (
          CLK => CLK,
          RST_N => RST_N,
          DATA => DATA,
          ENABLE_H_IN1 => ENABLE_H_IN1,
          ENABLE_H_IN0 => ENABLE_H_IN0,
          ENABLE_M_IN1 => ENABLE_M_IN1,
          ENABLE_M_IN0 => ENABLE_M_IN0,
          CLEAR => CLEAR,
          SEVEN_SEGMENTS_DISPLAY => SEVEN_SEGMENTS_DISPLAY,
          ANODES => ANODES
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

	-- Testbench que valida a insercao dos valores H1, H0, M1, M0 e se o relogio
	-- e incrementado corretamente
   stim_proc: process
   begin		
		RST_N <= '0';
      wait for 100 ns;	
		DATA <= "0001";
		ENABLE_H_IN1 <= '1';
		wait for 100 ns;
		ENABLE_H_IN1 <= '0';
		DATA <= "0011";
		ENABLE_H_IN0 <= '1';
		wait for 100 ns;
		ENABLE_H_IN0 <= '0';
		DATA <= "0101";
		ENABLE_M_IN1 <= '1';
		wait for 100 ns;
		ENABLE_M_IN1 <= '0';
		DATA <= "0111";
		ENABLE_M_IN0 <= '1';
		wait for 100 ns;
		RST_N <= '1';
      wait;
   end process;

END;
