LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY uygulama1 IS PORT ( 
SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0));
END uygulama1;
ARCHITECTURE Behavior OF uygulama1 IS
BEGIN
LEDR <= SW;
END Behavior;