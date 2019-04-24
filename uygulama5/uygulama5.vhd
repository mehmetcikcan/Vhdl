LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

	entity uygulama5 is
	port(
	rst: in	std_logic;
	clk: in	std_logic;
	
	HEX0: out std_logic_vector(0 to 6);
	HEX1: out std_logic_vector(0 to 6);
	HEX2: out std_logic_vector(0 to 6);
	HEX3: out std_logic_vector(0 to 6);
	HEX4: out std_logic_vector(0 to 6);
	HEX5: out std_logic_vector(0 to 6);
	HEX6: out std_logic_vector(0 to 6);
	HEX7: out std_logic_vector(0 to 6));
	
	end uygulama5;
	
	architecture behavior of uygulama5 is
	
	signal LED_BCD0: STD_LOGIC_VECTOR (3 downto 0);
	signal LED_BCD1: STD_LOGIC_VECTOR (3 downto 0);
	signal LED_BCD2: STD_LOGIC_VECTOR (3 downto 0);
	signal LED_BCD3: STD_LOGIC_VECTOR (3 downto 0);
	signal LED_BCD4: STD_LOGIC_VECTOR (3 downto 0);
	signal LED_BCD5: STD_LOGIC_VECTOR (3 downto 0);
	signal LED_BCD6: STD_LOGIC_VECTOR (3 downto 0);
	signal LED_BCD7: STD_LOGIC_VECTOR (3 downto 0);
	
	begin
	
		process(LED_BCD0, LED_BCD1, LED_BCD2, LED_BCD3, LED_BCD4, LED_BCD5, LED_BCD6, LED_BCD7)
begin
    case LED_BCD0 is
    when "0000" => HEX0 <= "0000001"; -- "0"     
    when "0001" => HEX0 <= "1001111"; -- "1" 
    when "0010" => HEX0 <= "0010010"; -- "2" 
    when "0011" => HEX0 <= "0000110"; -- "3" 
    when "0100" => HEX0 <= "1001100"; -- "4" 
    when "0101" => HEX0 <= "0100100"; -- "5" 
    when "0110" => HEX0 <= "0100000"; -- "6" 
    when "0111" => HEX0 <= "0001111"; -- "7" 
    when "1000" => HEX0 <= "0000000"; -- "8"     
    when "1001" => HEX0 <= "0000100"; -- "9" 
    when "1010" => HEX0 <= "0000010"; -- a
    when "1011" => HEX0 <= "1100000"; -- b
    when "1100" => HEX0 <= "0110001"; -- C
    when "1101" => HEX0 <= "1000010"; -- d
    when "1110" => HEX0 <= "0110000"; -- E
    when "1111" => HEX0 <= "0111000"; -- F
    end case;
end process;	 
	 
	 process(LED_BCD1)
begin
	 case LED_BCD1 is
	 when "0000" => HEX1 <= "0000001"; -- "0"     
    when "0001" => HEX1 <= "1001111"; -- "1" 
    when "0010" => HEX1 <= "0010010"; -- "2" 
    when "0011" => HEX1 <= "0000110"; -- "3" 
    when "0100" => HEX1 <= "1001100"; -- "4" 
    when "0101" => HEX1 <= "0100100"; -- "5" 
    when "0110" => HEX1 <= "0100000"; -- "6" 
    when "0111" => HEX1 <= "0001111"; -- "7" 
    when "1000" => HEX1 <= "0000000"; -- "8"     
    when "1001" => HEX1 <= "0000100"; -- "9" 
    when "1010" => HEX1 <= "0000010"; -- a
    when "1011" => HEX1 <= "1100000"; -- b
    when "1100" => HEX1 <= "0110001"; -- C
    when "1101" => HEX1 <= "1000010"; -- d
    when "1110" => HEX1 <= "0110000"; -- E
    when "1111" => HEX1 <= "0111000"; -- F
	 end case;
end process;	 
	 
	 process(LED_BCD2)
begin
	 case LED_BCD2 is
	 when "0000" => HEX2 <= "0000001"; -- "0"     
    when "0001" => HEX2 <= "1001111"; -- "1" 
    when "0010" => HEX2 <= "0010010"; -- "2" 
    when "0011" => HEX2 <= "0000110"; -- "3" 
    when "0100" => HEX2<= "1001100"; -- "4" 
    when "0101" => HEX2 <= "0100100"; -- "5" 
    when "0110" => HEX2 <= "0100000"; -- "6" 
    when "0111" => HEX2 <= "0001111"; -- "7" 
    when "1000" => HEX2 <= "0000000"; -- "8"     
    when "1001" => HEX2 <= "0000100"; -- "9" 
    when "1010" => HEX2 <= "0000010"; -- a
    when "1011" => HEX2 <= "1100000"; -- b
    when "1100" => HEX2 <= "0110001"; -- C
    when "1101" => HEX2 <= "1000010"; -- d
    when "1110" => HEX2 <= "0110000"; -- E
    when "1111" => HEX2 <= "0111000"; -- F
	 end case;
end process;	 
	 
	 process(LED_BCD3)
begin
	 case LED_BCD3 is
	 when "0000" => HEX3 <= "0000001"; -- "0"     
    when "0001" => HEX3 <= "1001111"; -- "1" 
    when "0010" => HEX3 <= "0010010"; -- "2" 
    when "0011" => HEX3 <= "0000110"; -- "3" 
    when "0100" => HEX3 <= "1001100"; -- "4" 
    when "0101" => HEX3 <= "0100100"; -- "5" 
    when "0110" => HEX3 <= "0100000"; -- "6" 
    when "0111" => HEX3 <= "0001111"; -- "7" 
    when "1000" => HEX3 <= "0000000"; -- "8"     
    when "1001" => HEX3 <= "0000100"; -- "9" 
    when "1010" => HEX3 <= "0000010"; -- a
    when "1011" => HEX3 <= "1100000"; -- b
    when "1100" => HEX3 <= "0110001"; -- C
    when "1101" => HEX3 <= "1000010"; -- d
    when "1110" => HEX3 <= "0110000"; -- E
    when "1111" => HEX3 <= "0111000"; -- F
	 end case;
end process;	 
	 
	 process(LED_BCD4)
begin
	 case LED_BCD4 is
	 when "0000" => HEX4 <= "0000001"; -- "0"     
    when "0001" => HEX4 <= "1001111"; -- "1" 
    when "0010" => HEX4 <= "0010010"; -- "2" 
    when "0011" => HEX4 <= "0000110"; -- "3" 
    when "0100" => HEX4 <= "1001100"; -- "4" 
    when "0101" => HEX4 <= "0100100"; -- "5" 
    when "0110" => HEX4 <= "0100000"; -- "6" 
    when "0111" => HEX4 <= "0001111"; -- "7" 
    when "1000" => HEX4 <= "0000000"; -- "8"     
    when "1001" => HEX4 <= "0000100"; -- "9" 
    when "1010" => HEX4 <= "0000010"; -- a
    when "1011" => HEX4 <= "1100000"; -- b
    when "1100" => HEX4 <= "0110001"; -- C
    when "1101" => HEX4 <= "1000010"; -- d
    when "1110" => HEX4 <= "0110000"; -- E
    when "1111" => HEX4 <= "0111000"; -- F
	 end case;
end process;	 
	 
	 process(LED_BCD5)
begin
	 case LED_BCD5 is
	 when "0000" => HEX5 <= "0000001"; -- "0"     
    when "0001" => HEX5 <= "1001111"; -- "1" 
    when "0010" => HEX5 <= "0010010"; -- "2" 
    when "0011" => HEX5 <= "0000110"; -- "3" 
    when "0100" => HEX5 <= "1001100"; -- "4" 
    when "0101" => HEX5 <= "0100100"; -- "5" 
    when "0110" => HEX5 <= "0100000"; -- "6" 
    when "0111" => HEX5 <= "0001111"; -- "7" 
    when "1000" => HEX5 <= "0000000"; -- "8"     
    when "1001" => HEX5 <= "0000100"; -- "9" 
    when "1010" => HEX5 <= "0000010"; -- a
    when "1011" => HEX5 <= "1100000"; -- b
    when "1100" => HEX5 <= "0110001"; -- C
    when "1101" => HEX5 <= "1000010"; -- d
    when "1110" => HEX5 <= "0110000"; -- E
    when "1111" => HEX5 <= "0111000"; -- F
	 end case;
end process;	 
	 
	 process(LED_BCD6)
begin
	 case LED_BCD6 is
	 when "0000" => HEX6 <= "0000001"; -- "0"     
    when "0001" => HEX6 <= "1001111"; -- "1" 
    when "0010" => HEX6 <= "0010010"; -- "2" 
    when "0011" => HEX6 <= "0000110"; -- "3" 
    when "0100" => HEX6 <= "1001100"; -- "4" 
    when "0101" => HEX6 <= "0100100"; -- "5" 
    when "0110" => HEX6 <= "0100000"; -- "6" 
    when "0111" => HEX6 <= "0001111"; -- "7" 
    when "1000" => HEX6 <= "0000000"; -- "8"     
    when "1001" => HEX6 <= "0000100"; -- "9" 
    when "1010" => HEX6 <= "0000010"; -- a
    when "1011" => HEX6 <= "1100000"; -- b
    when "1100" => HEX6 <= "0110001"; -- C
    when "1101" => HEX6 <= "1000010"; -- d
    when "1110" => HEX6 <= "0110000"; -- E
    when "1111" => HEX6 <= "0111000"; -- F
	 end case;
end process;
	 
	 process(LED_BCD7)
begin
	 case LED_BCD7 is
	 when "0000" => HEX7 <= "0000001"; -- "0"     
    when "0001" => HEX7 <= "1001111"; -- "1" 
    when "0010" => HEX7 <= "0010010"; -- "2" 
    when "0011" => HEX7 <= "0000110"; -- "3" 
    when "0100" => HEX7 <= "1001100"; -- "4" 
    when "0101" => HEX7 <= "0100100"; -- "5" 
    when "0110" => HEX7 <= "0100000"; -- "6" 
    when "0111" => HEX7 <= "0001111"; -- "7" 
    when "1000" => HEX7 <= "0000000"; -- "8"     
    when "1001" => HEX7 <= "0000100"; -- "9" 
    when "1010" => HEX7 <= "0000010"; -- a
    when "1011" => HEX7 <= "1100000"; -- b
    when "1100" => HEX7 <= "0110001"; -- C
    when "1101" => HEX7 <= "1000010"; -- d
    when "1110" => HEX7 <= "0110000"; -- E
    when "1111" => HEX7 <= "0111000"; -- F
	 end case;
end process;
	
		process(rst,clk)
			variable	counter:integer;
			variable	counter2:integer;
			variable	counter3:integer;
			variable	counter4:integer;
			variable	counter5:integer;
			variable	counter6:integer;
			variable	counter7:integer;
			variable	counter8:integer;
			variable	counter9:integer;
			
		begin 
	
		if (rst='0') then
			LED_BCD0<=x"0";
			LED_BCD1<=x"0";
			LED_BCD2<=x"0";
			LED_BCD3<=x"0";
			LED_BCD4<=x"0";
			LED_BCD5<=x"0";
			LED_BCD6<=x"0";
			LED_BCD7<=x"0";
			
			counter:=0;
			counter2:=0;
			counter3:=0;
			counter4:=0;
			counter5:=0;
			counter6:=0;
			counter7:=0;
			counter8:=0;
			counter9:=0;
			
		else if rising_edge(clk) then 
			counter:= counter+1;
			
		if (counter > 1000000) then
			counter:= 0;
			counter2:= counter2+1;
	
		if (counter2 > 9) then  						------------------------------------------------------------------------------
			counter2:=0;
			counter3:= counter3+1;
			
		if (counter3 > 9) then
			counter3:= 0;
			counter4:= counter4+1;
	
		if (counter4 > 9) then
			counter4:= 0;
			counter5:= counter5+1;
	
		if (counter5 > 9) then
			counter5 := 0;
			counter6:= counter6+1;
		
		if (counter6 > 9) then
			counter6 := 0;
			counter7:= counter7+1;
			
		if (counter7 > 9) then
			counter7 := 0;
			counter8 := counter8+1;
			
		if (counter8 > 9) then
			counter8 := 0;
			counter9 := counter9+1;
			
		
		end if;
		end if;
		end if;
		end if;
 		end if;
		end if;
		end if;
		end if;
		end if;
		end if;
		
		LED_BCD0 <= conv_std_logic_vector(counter2,4);
		LED_BCD1 <= conv_std_logic_vector(counter3,4);
		LED_BCD2 <= conv_std_logic_vector(counter4,4);
		LED_BCD3 <= conv_std_logic_vector(counter5,4);
		LED_BCD4 <= conv_std_logic_vector(counter6,4);
		LED_BCD5 <= conv_std_logic_vector(counter7,4);
		LED_BCD6 <= conv_std_logic_vector(counter8,4);
		LED_BCD7 <= conv_std_logic_vector(counter9,4);
		
		end process;
	end behavior;