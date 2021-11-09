
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY data_flow_n2_TB IS
END data_flow_n2_TB;
 
ARCHITECTURE behavior OF data_flow_n2_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT data_flow_n2
    PORT(
         CLK_IN : IN  std_logic;
         MINUTES : OUT  std_logic_vector(5 downto 0);
         HOURS : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_IN : std_logic := '0';

 	--Outputs
   signal MINUTES : std_logic_vector(5 downto 0);
   signal HOURS : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant CLK_IN_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: data_flow_n2 PORT MAP (
          CLK_IN => CLK_IN,
          MINUTES => MINUTES,
          HOURS => HOURS
        );

   -- Clock process definitions
   CLK_IN_process :process
   begin
		CLK_IN <= '0';
		wait for CLK_IN_period/2;
		CLK_IN <= '1';
		wait for CLK_IN_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_IN_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
