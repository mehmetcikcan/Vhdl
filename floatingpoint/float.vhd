library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity float is
     Port (    signal a   : std_logic_vector(31 downto 0) := x"136c0000";
					signal b   : std_logic_vector(31 downto 0) := x"130c0000";
					result	  : out  STD_LOGIC_vector(31 downto 0));
end float;



architecture Behavioral of float is
signal clk : std_logic;


COMPONENT f_p
      PORT(    clock	:	IN  STD_LOGIC;
               dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
					datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
					result:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );
					
					
END COMPONENT;


begin

U: f_p PORT MAP(  clock => clk , dataa => a , datab => b , result => result );
		
end Behavioral;