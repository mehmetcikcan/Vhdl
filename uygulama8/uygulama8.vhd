library ieee;
use ieee.std_logic_1164.all;

	entity uygulama8 is 
	port(
	
	SW  : in std_logic_vector(0 to 3);
	
	HEX0 : out std_logic_vector(6 downto 0));
	end uygulama8;
	
	architecture behavior of uygulama8 is 
	begin
	
	HEX0(0) <= not(SW(0) or SW(2) or (SW(1) and SW(3)) or (not(SW(1)) and not(SW(3))));
	HEX0(1) <= not(not(SW(1)) or (not(SW(2)) and not(SW(3))) or (SW(2) and SW(3)));
	HEX0(2) <= not(SW(1) or not(SW(2)) or SW(3));
	HEX0(3) <= not((not(SW(1)) and not(SW(3))) or (SW(2) and not(SW(3))) or (SW(1) and not(SW(2)) and SW(3)) or (not(SW(1)) and SW(2)) or SW(0));
	HEX0(4) <= not((not(SW(1)) and not(SW(3))) or (SW(2) and not(SW(3))));
	HEX0(5) <= not(SW(0) or (not(SW(2)) and not(SW(3))) or (SW(1) and not(SW(2))) or (SW(1) and not(SW(3))));
	HEX0(6) <= not(SW(0) or (SW(1) and not(SW(2))) or (not(SW(1)) and SW(2)) or (SW(2) and not(SW(3))));
	
	end behavior;