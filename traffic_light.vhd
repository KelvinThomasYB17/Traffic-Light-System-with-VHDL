Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity traffic_light is
  generic (n     : natural := 36;        
           width : natural :=7);
  port (signal reset_n :  in std_logic;
        signal clk     :  in std_logic;
        signal en      :  in std_logic;
        signal red, green       : out std_logic;
		  signal counter,counter_red,counter_green :  out std_logic_vector(width-1 downto 0));
end traffic_light;

architecture structural of traffic_light is

  signal q_reg         : unsigned(width-1 downto 0);
  signal q_next        : unsigned(width-1 downto 0);
  signal q_reg_green   : unsigned(width-1 downto 0);
  signal q_next_green  : unsigned(width-1 downto 0);
  signal q_reg_red     : unsigned(width-1 downto 0);
  signal q_next_red    : unsigned(width-1 downto 0);
 
begin

  seq: process(reset_n,clk)
  begin
    if (reset_n = '0') then
			q_reg       <= (others => '0');
			q_reg_red   <= (others => '0');
			q_reg_green <= (others => '0');
    elsif rising_edge(clk) then
		if (en = '1') then 
			q_reg 			<= q_next;
			q_reg_green	   <= q_next_green;
			q_reg_red	   <= q_next_red;			
		end if;
    end if;
  end process seq;

  comb: process(en, q_reg,q_reg_red,q_reg_green)
  begin
    if (en = '1') then
	 
		if (q_reg = (n-1)) then
			q_next <= (others => '0');
		else	
			q_next <= q_reg + 1;
		end if; 	
	  
		if (q_reg < 15) then
			q_next_red <= q_reg_red + 1;
		else	
			q_next_red <= (others => '0');
		end if; 		  
	  
		if (q_reg >= 15) then
			q_next_green <= q_reg_green + 1;
		else	
			q_next_green <= (others => '0');
		end if; 	
	  
	else
	   q_next	    	 <= q_reg;
	   q_next_red    <= q_reg_red;
	   q_next_green  <= q_reg_green;
   end if;
  end process comb;
  
  comb2: process(q_reg)
  begin
	if (q_reg < 9 or q_reg = 10 or q_reg = 12 or q_reg = 14) then
		red <= '1';
	else
		red <= '0';
	end if;
  end process comb2;
 
  comb3: process(q_reg)
  begin
	if ((q_reg > 14 and q_reg <= 29 ) or q_reg = 35 or q_reg = 33 or q_reg = 31) then
		green <= '1';
	else
		green <= '0';
	end if;
  end process comb3;
 

  counter <= std_logic_vector(q_reg);
  counter_green <= std_logic_vector(q_reg_green);  
  counter_red <= std_logic_vector(q_reg_red);   
  
end structural;
