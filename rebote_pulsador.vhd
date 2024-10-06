Library ieee;
use ieee.std_logic_1164.all;

entity rebote_pulsador is 
  port (signal clk     :  in std_logic;
        signal input       :  in std_logic;  
		  signal q       : out std_logic
        ); 
end rebote_pulsador;

architecture structural of rebote_pulsador is
  signal q_int   : std_logic_vector(2 downto 0) := "000";

begin  

  seq: process(clk,input)
  begin
    if rising_edge(clk) then
      q_int(0) <= input;
		q_int(1) <= q_int(0);
		q_int(2) <= q_int(1);
  
    end if;
  end process seq;
	
q <= q_int(0) and q_int(1) and q_int(2);

end structural; 