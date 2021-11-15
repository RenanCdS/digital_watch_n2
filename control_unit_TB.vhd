LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY control_unit_TB IS
END control_unit_TB;
 
ARCHITECTURE behavior OF control_unit_TB IS 
 
    COMPONENT control_unit_n2
    PORT(
         CLK_UC : IN  std_logic;
         RST_UC : IN  std_logic;
         CLEAR : IN  std_logic;
         RST_WATCH : IN  std_logic;
         BTN_H1 : IN  std_logic;
         BTN_H0 : IN  std_logic;
         BTN_M1 : IN  std_logic;
         BTN_M0 : IN  std_logic;
         ENABLE_H1 : OUT  std_logic;
         ENABLE_H0 : OUT  std_logic;
         ENABLE_M1 : OUT  std_logic;
         ENABLE_M0 : OUT  std_logic;
         CLEAR_OUT : OUT  std_logic;
         RST_WATCH_OUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_UC : std_logic := '0';
   signal RST_UC : std_logic := '0';
   signal CLEAR : std_logic := '0';
   signal RST_WATCH : std_logic := '0';
   signal BTN_H1 : std_logic := '0';
   signal BTN_H0 : std_logic := '0';
   signal BTN_M1 : std_logic := '0';
   signal BTN_M0 : std_logic := '0';

 	--Outputs
   signal ENABLE_H1 : std_logic;
   signal ENABLE_H0 : std_logic;
   signal ENABLE_M1 : std_logic;
   signal ENABLE_M0 : std_logic;
   signal CLEAR_OUT : std_logic;
   signal RST_WATCH_OUT : std_logic;

   -- Clock period definitions
   constant CLK_UC_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit_n2 PORT MAP (
          CLK_UC => CLK_UC,
          RST_UC => RST_UC,
          CLEAR => CLEAR,
          RST_WATCH => RST_WATCH,
          BTN_H1 => BTN_H1,
          BTN_H0 => BTN_H0,
          BTN_M1 => BTN_M1,
          BTN_M0 => BTN_M0,
          ENABLE_H1 => ENABLE_H1,
          ENABLE_H0 => ENABLE_H0,
          ENABLE_M1 => ENABLE_M1,
          ENABLE_M0 => ENABLE_M0,
          CLEAR_OUT => CLEAR_OUT,
          RST_WATCH_OUT => RST_WATCH_OUT
        );

   -- Clock process definitions
   CLK_UC_process :process
   begin
		CLK_UC <= '0';
		wait for CLK_UC_period/2;
		CLK_UC <= '1';
		wait for CLK_UC_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      RST_UC <= '1';
      wait for 100 ns;	
		RST_UC <= '0';
		BTN_H1 <= '1';
		wait for 100 ns;	
		BTN_H1 <= '0';
		BTN_H0 <= '1';
		wait for 100 ns;	
		BTN_H0 <= '0';
		BTN_M1 <= '1';
		wait for 100 ns;	
		BTN_M1 <= '0';
		BTN_M0 <= '1';
		wait for 100 ns;	
		BTN_M0 <= '0';
		CLEAR <= '1';
		wait for 100 ns;	
		CLEAR <= '0';
		RST_WATCH <= '1';
		

      wait for CLK_UC_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
