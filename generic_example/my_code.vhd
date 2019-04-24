------ File my_code.vhd (actual project): ------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------
ENTITY my_code IS
GENERIC (n : POSITIVE := 16); -- 2 will overwrite 7
PORT ( SW: IN BIT_VECTOR (n DOWNTO 0);
		 LEDR: OUT BIT_VECTOR (n+1 DOWNTO 0));
END my_code;
-----------------------------------
ARCHITECTURE my_arch OF my_code IS
------------------------
COMPONENT parity_gen IS
GENERIC (n : POSITIVE);
PORT (input: IN BIT_VECTOR (n DOWNTO 0);
		output: OUT BIT_VECTOR (n+1 DOWNTO 0));
END COMPONENT;
------------------------
BEGIN
C1: parity_gen GENERIC MAP(n) PORT MAP(SW, LEDR);
END my_arch;
------------------------------------------------------