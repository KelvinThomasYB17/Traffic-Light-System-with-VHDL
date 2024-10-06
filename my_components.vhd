library ieee;
use ieee.std_logic_1164.all;

package my_components is
	
	component divisor_freq is
	generic (N         : natural := 50000000;        
           BUS_WIDTH : natural := 26);
	port( signal reset_n :  in std_logic;
        signal clk     :  in std_logic;
        signal clk_o   : out std_logic);
	end component divisor_freq;
	
  
	component rebote_pulsador is
	port( signal clk     :  in std_logic;
        signal input       :  in std_logic;  
		  signal q       : out std_logic);
	end component rebote_pulsador;
	
	
	component traffic_light is
	generic (n     : natural := 36;        
            width : natural := 8);
	port( signal reset_n :  in std_logic;
        signal clk     :  in std_logic;
        signal en      :  in std_logic;
        signal red, green       : out std_logic;
        signal counter,counter_red,counter_green :  out std_logic_vector(width-1 downto 0));
	end component traffic_light;
	
	component bintobcd is
	port(signal a  :  in std_logic_vector(5 downto 0);
	   signal f  : out std_logic_vector(7 downto 0));
	end component bintobcd;
	
	component hexa is
	port(signal a  :  in std_logic_vector(3 downto 0);
	    signal f  : out std_logic_vector(6 downto 0));
	end component hexa;	
	

end my_components;