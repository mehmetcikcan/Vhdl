LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

	entity uygulama6 is
	port(
	
	SW0: in	std_logic_vector(0 to 3);
	SW1: in	std_logic_vector(4 to 7);
	SW2: in	std_logic_vector(8 to 11);
	SW3: in	std_logic_vector(12 to 15);
	
	HEX0: out std_logic_vector(0 to 6);
	HEX1: out std_logic_vector(0 to 6);
	HEX2: out std_logic_vector(0 to 6);
	HEX3: out std_logic_vector(0 to 6);
	HEX4: out std_logic_vector(0 to 6);
	HEX5: out std_logic_vector(0 to 6);
	HEX6: out std_logic_vector(0 to 6);
	HEX7: out std_logic_vector(0 to 6));
	
	end uygulama6;
	
	architecture behavior of uygulama6 is
	
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
	

		LED_BCD0 <= SW0;
		LED_BCD1 <= SW1;
		LED_BCD2 <= SW2;
		LED_BCD3 <= SW3;
		
	end behavior;