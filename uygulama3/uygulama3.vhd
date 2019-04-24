library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uygulama3 is
	Port(	clk     : in	std_logic;
			rst	: in	std_logic;
			LEDR	: out	std_logic_vector(15 downto 0));
	end uygulama3;

architecture behavioral of uygulama3 is
begin
	process(rst,clk)
		variable	counter:integer;
		variable	counter2:integer;
	begin
	
		if (rst='0') then
		LEDR<=x"0000";
		counter:=0;
		counter2:=0;
		else
		if rising_edge(clk) then
		counter:=counter+1;
		if (counter>1000000) then
		counter:=0;
		if (counter2<320) then
		counter2:=counter2+1;
		else
		counter2:=0;
		end if;
		end if;

   case counter2 is
   when 20 => LEDR <=x"8001";
   when 40=>  LEDR <=x"4002";
   when 60=>  LEDR <=x"2004";
   when 80=>  LEDR <=x"1008";
   when 100=> LEDR <=x"0810";
   when 120=> LEDR <=x"0420";
   when 140=> LEDR <=x"0240";
   when 160=> LEDR <=x"0180";
   when 180=> LEDR <=x"0240";
   when 200=> LEDR <=x"0420";
   when 220=> LEDR <=x"0810";
   when 240=> LEDR <=x"1008";
   when 260=> LEDR <=x"2004";
   when 280=> LEDR <=x"4002";
   when 300=> LEDR <=x"8001";

   when others =>
   end case;
   end if;
   end if;
 end process;
end Behavioral;