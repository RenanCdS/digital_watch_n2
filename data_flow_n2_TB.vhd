LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY data_flow_n2_TB IS
END data_flow_n2_TB;
 
ARCHITECTURE behavior OF data_flow_n2_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT data_flow_n2
    PORT(
         clk : IN  std_logic;
         rst_n : IN  std_logic;
         Data : IN  std_logic_vector(3 downto 0);
         Enable_H_in1 : IN  std_logic;
         Enable_H_in0 : IN  std_logic;
         Enable_M_in1 : IN  std_logic;
         Enable_M_in0 : IN  std_logic;
         Clear : IN  std_logic;
         H_out1 : OUT  std_logic_vector(6 downto 0);
         H_out0 : OUT  std_logic_vector(6 downto 0);
         M_out1 : OUT  std_logic_vector(6 downto 0);
         M_out0 : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst_n : std_logic := '0';
   signal Data : std_logic_vector(3 downto 0) := (others => '0');
   signal Enable_H_in1 : std_logic := '0';
   signal Enable_H_in0 : std_logic := '0';
   signal Enable_M_in1 : std_logic := '0';
   signal Enable_M_in0 : std_logic := '0';
   signal Clear : std_logic := '0';

 	--Outputs
   signal H_out1 : std_logic_vector(6 downto 0);
   signal H_out0 : std_logic_vector(6 downto 0);
   signal M_out1 : std_logic_vector(6 downto 0);
   signal M_out0 : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: data_flow_n2 PORT MAP (
          clk => clk,
          rst_n => rst_n,
          Data => Data,
          Enable_H_in1 => Enable_H_in1,
          Enable_H_in0 => Enable_H_in0,
          Enable_M_in1 => Enable_M_in1,
          Enable_M_in0 => Enable_M_in0,
          Clear => Clear,
          H_out1 => H_out1,
          H_out0 => H_out0,
          M_out1 => M_out1,
          M_out0 => M_out0
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		rst_n <= '0';
      wait for 100 ns;
		Enable_H_in0 <= '1';
		Data <= "0100";
      wait for clk_period*10;
		Enable_H_in0 <= '0';
		rst_n <= '1';
      wait for 300 ns;
		rst_n <= '0';
		Clear <= '1';
      wait;
   end process;

END;
