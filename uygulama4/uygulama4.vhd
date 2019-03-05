library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

	entity uygulama4 is
	port(
	rst	: in	std_logic;
	clk     : in	std_logic;
	LEDR : out std_logic_vector(17 downto 0));
	
	end uygulama4;
	
	architecture behavior of uygulama4 is
	begin
	
		process(rst,clk)
			variable	counter:integer;
			variable	counter2:integer;
		begin 
	
		if (rst='0') then
			LEDR<=b"000000000000000000";
			counter:=0;
			counter2:=0;
		else
		if rising_edge(clk) then 
			counter:= counter+1;
			
		if (counter > 1000000) then
			counter:= 0;
	
		if (counter2 < 262144) then
			counter2:= counter2+1;
	
		else
			counter2:=0;
		
		end if;
		end if;
		end if;
		end if;
 		
		LEDR <= conv_std_logic_vector(counter2,18);
		
		end process;
	end behavior;