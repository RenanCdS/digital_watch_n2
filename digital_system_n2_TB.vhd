LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY digital_system_n2_TB IS
END digital_system_n2_TB;
 
ARCHITECTURE behavior OF digital_system_n2_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT digital_system_n2
    PORT(
         CLK : IN  std_logic;
         RST_UC : IN  std_logic;
         DATA : IN  std_logic_vector(3 downto 0);
         RST_WATCH : IN  std_logic;
         CLEAR : IN  std_logic;
         BTN_H1 : IN  std_logic;
         BTN_H0 : IN  std_logic;
         BTN_M1 : IN  std_logic;
         BTN_M0 : IN  std_logic;
         SEVEN_SEGMENTS_DISPLAY : OUT  std_logic_vector(6 downto 0);
         ANODES : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST_UC : std_logic := '0';
   signal DATA : std_logic_vector(3 downto 0) := (others => '0');
   signal RST_WATCH : std_logic := '0';
   signal CLEAR : std_logic := '0';
   signal BTN_H1 : std_logic := '0';
   signal BTN_H0 : std_logic := '0';
   signal BTN_M1 : std_logic := '0';
   signal BTN_M0 : std_logic := '0';

 	--Outputs
   signal SEVEN_SEGMENTS_DISPLAY : std_logic_vector(6 downto 0);
   signal ANODES : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: digital_system_n2 PORT MAP (
          CLK => CLK,
          RST_UC => RST_UC,
          DATA => DATA,
          RST_WATCH => RST_WATCH,
          CLEAR => CLEAR,
          BTN_H1 => BTN_H1,
          BTN_H0 => BTN_H0,
          BTN_M1 => BTN_M1,
          BTN_M0 => BTN_M0,
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
 

   -- Stimulus process
   stim_proc: process
   begin		
		RST_WATCH <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		DATA <= "0001";
		BTN_H1 <= '1';
		wait for 100 ns;
		BTN_H1 <= '0';
		DATA <= "0011";
		BTN_H0 <= '1';
		wait for 100 ns;
		BTN_H0 <= '0';
		DATA <= "0101";
		BTN_M1 <= '1';
		wait for 100 ns;
		BTN_M1 <= '0';
		DATA <= "0111";
		BTN_M0 <= '1';
		wait for 200 ns;
		BTN_M0 <= '0';
		RST_WATCH <= '1';
		wait for 100 ns;
		CLEAR <= '1';
		RST_WATCH <= '0';
		wait for 100 ns;
		CLEAR <= '0';
		RST_WATCH <= '1';
		
      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
