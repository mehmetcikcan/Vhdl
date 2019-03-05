library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

entity uygulama7 is

port ( clk    : in std_logic;                          -- CLOCK

       LCD_RW : out std_logic;                         -- READ WRITE CONTROL

       LCD_EN : out std_logic;                         --ENABLE CONTROL

       LCD_RS : out std_logic;                         --DATA OR COMMAND

       LCD_DATA  : out std_logic_vector(7 downto 0));     -- DATA OUTPUT

end uygulama7;
architecture Behavioral of uygulama7 is constant N: integer :=18; 
type arr is array (1 to N) of std_logic_vector(7 downto 0); 
constant datas : arr := (X"38",X"0c",X"06",X"01",X"C0",X"4D",x"45",x"48",x"4D",x"45",x"54",x"20",x"43",x"49",x"4B",x"43",x"41",x"4E");-- COMMAND DATA
--								 CMN1	 CMN2	 CMN3	 CMN3  CMN4		M		E		H		M		E		T				C		I		K		C		A		N
begin

LCD_RW <= '0';  -- LCD WRITE

process(clk)

variable i : integer := 0;

variable j : integer := 1;

begin

 

if clk'event and clk = '1' then

if i <= 10000000 then

i := i + 1;

LCD_EN <= '1';

LCD_DATA <= datas(j)(7 downto 0);

elsif i > 10000000 and i < 20000000 then

i := i + 1;

LCD_EN <= '0';

elsif i = 20000000 then

j := j + 1;

i := 0;

end if;

if j <= 5  then

LCD_RS <= '0';    -- COMMAND SIGNAL

elsif j > 5   then

LCD_RS <= '1';   -- DATA SIGNAL
end if;

if j = 19 then  -- REPEATED DISPLAY OF DATA

j := 5;

end if;

end if;

 

end process;

end Behavioral;