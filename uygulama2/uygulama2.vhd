LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY uygulama2 IS PORT ( 

clk_in : IN STD_LOGIC;
reset : in std_logic;
clk_out : out std_logic
);
END uygulama2;

ARCHITECTURE Behavior OF uygulama2 IS
BEGIN

process (clk_in,reset)
variable count : integer:=0;
variable temp : std_logic:='0';
begin

	if reset='1' then
		count:=0;
		temp:='1';
	
	elsif rising_edge(clk_in) then
		count:= count+1;
		if count=2 then
			temp := not temp;
			count:=0;
		end if;
	end if;
	clk_out <= temp;

END PROCESS;

END Behavior;