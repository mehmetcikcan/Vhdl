------ File parity_gen.vhd (component): -------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------
ENTITY parity_gen IS
GENERIC (n : INTEGER := 0); -- default is 7
PORT ( input: IN BIT_VECTOR (n DOWNTO 0);
		 output: OUT BIT_VECTOR (n+1 DOWNTO 0));
END parity_gen;
-----------------------------------
ARCHITECTURE parity OF parity_gen IS

	signal x1			   : std_logic_vector(31 downto 0) := x"3dcccccd"; --0.1
	signal t1			   : std_logic_vector(31 downto 0) := x"3dcccccd"; --0.1
	signal result			   : std_logic_vector(31 downto 0) := x"00000000"; --0.1
	
	COMPONENT fpadd
			PORT(    clock	:	IN  STD_LOGIC;
						dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );
	END COMPONENT;

	
BEGIN


FOR i IN input'RANGE LOOP

I: fpadd PORT MAP(  clock =>CLOCK_50 , dataa =>x1  , datab =>t1  , result => result );

END LOOP;


END parity;
------------------------------------------------------