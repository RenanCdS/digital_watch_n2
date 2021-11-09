
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity data_flow_n2 is
    Port ( CLK_IN : in  STD_LOGIC;
           MINUTES : out  STD_LOGIC_VECTOR (5 downto 0);
           HOURS : out  STD_LOGIC_VECTOR (4 downto 0));
end data_flow_n2;

architecture Behavioral of data_flow_n2 is
	signal sec,min,hour : integer range 0 to 60 :=0;
	signal count : integer :=1;
	signal clk : std_logic :='0';
begin

  MINUTES <= conv_std_logic_vector(min,6);
  HOURS   <= conv_std_logic_vector(hour,5);
  
  -- processo utilizado para ter o clock de 1 segundo
  process(CLK_IN)
  begin
	 if(CLK_IN'event and CLK_IN='1') then
		count <=count+1;
		if(count = 50000000) then
		  clk <= not clk;
		  count <=1;
		end if;
	 end if;
  end process;
  
  -- O periodo de clk foi convertido acima e equivale a 1 segundo
  process(clk)
  begin
    if(clk'event and clk='1') then
    sec <= sec+ 1;
      if(sec = 59) then
        sec<=0;
        min <= min + 1;
        if(min = 59) then
          hour <= hour + 1;
          min <= 0;
          if(hour = 23) then
            hour <= 0;
          end if;
        end if;
      end if;
    end if;
  end process;


end Behavioral;

