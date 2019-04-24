library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity component_example is
     Port ( A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            C : out  STD_LOGIC);
end component_example;



architecture Behavioral of component_example is
COMPONENT and_gate
      PORT(    in1 	 : IN std_logic;
               in2 	 : IN std_logic;          
               output : OUT std_logic    );
					
					
END COMPONENT;
begin
  U: and_gate PORT MAP(  in1 =>A , in2 =>B , output => C );
end Behavioral;