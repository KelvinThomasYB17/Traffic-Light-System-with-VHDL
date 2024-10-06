Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_components.all;

entity traffic_light_system is

  port (signal reset_n 		 :  in std_logic;
        signal clk     		 :  in std_logic;
        signal red    		 :  out std_logic;
		  signal green     	 :  out std_logic;
		  signal u_7seg 		 :  out std_logic_vector(6 downto 0);
		  signal d_7seg 		 :  out std_logic_vector(6 downto 0);
		  signal u_7seg_red 	 :  out std_logic_vector(6 downto 0);
		  signal d_7seg_red 	 :  out std_logic_vector(6 downto 0);		  
		  signal u_7seg_green :  out std_logic_vector(6 downto 0);
		  signal d_7seg_green :  out std_logic_vector(6 downto 0)		  
		  
		  );
		  
end traffic_light_system;

architecture structural of traffic_light_system is
	
	signal hexa_display   		 : std_logic_vector(7 downto 0);
	signal hexa_display_red   	 : std_logic_vector(7 downto 0);
	signal hexa_display_green   : std_logic_vector(7 downto 0);
	signal counter1		 		 : std_logic_vector(7 downto 0);
	signal counter2		 		 : std_logic_vector(7 downto 0);
	signal counter3		 		 : std_logic_vector(7 downto 0);
	signal counter_red	 		 : std_logic_vector(7 downto 0);
	signal counter_green	 		 : std_logic_vector(7 downto 0);
	signal reset_rebote   		 : std_logic;
	signal enable         		 : std_logic;  
	signal counter_cut    		 : std_logic_vector(5 downto 0);
	signal counter_red_cut      : std_logic_vector(5 downto 0);
	signal counter_green_cut    : std_logic_vector(5 downto 0);
	
	begin
	
	counter_cut<= counter1(5 downto 0);
	counter_red_cut<= counter2(5 downto 0);
	counter_green_cut<= counter3(5 downto 0);	
	
  	B1: divisor_freq 
							generic map( N => 50000000,
											 BUS_WIDTH => 26)
							port map   (reset_n => reset_n,
											clk => clk,
											clk_o   =>  enable);
											
											
  	B2: rebote_pulsador 
							port map   (input => reset_n,
											clk => clk,
											q  =>  reset_rebote);
											
  	B3: traffic_light 
							generic map( n      =>  36,
											 width  =>  8)
							port map   (reset_n =>  reset_rebote,
											clk     =>  clk,
											en      =>  enable,
										   green   =>  green,
											red     =>	red,
											counter =>  counter1,
											counter_red => counter2,
											counter_green => counter3);		
		
  	B4: bintobcd 
							port map   (a       =>  counter_cut,
											f       =>  hexa_display);

  	B5: hexa
							port map   (a       =>  hexa_display(7 downto 4),
											f       =>  d_7seg);
											
  	B6: hexa 
							port map   (a       =>  hexa_display(3 downto 0),
											f       =>  u_7seg);		
  	B7: bintobcd 
							port map   (a       =>  counter_red_cut,
											f       =>  hexa_display_red);

  	B8: hexa
							port map   (a       =>  hexa_display_red(7 downto 4),
											f       =>  d_7seg_red);
											
  	B9: hexa 
							port map   (a       =>  hexa_display_red(3 downto 0),
											f       =>  u_7seg_red);												
									
  	B10: bintobcd 
							port map   (a       =>  counter_green_cut,
											f       =>  hexa_display_green);

  	B11: hexa
							port map   (a       =>  hexa_display_green(7 downto 4),
											f       =>  d_7seg_green);
											
  	B12: hexa 
							port map   (a       =>  hexa_display_green(3 downto 0),
											f       =>  u_7seg_green);									
							
						
					
					
end structural;