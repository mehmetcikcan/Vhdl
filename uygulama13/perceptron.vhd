LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

	entity perceptron is
		port(	CLOCK_50 : in	std_logic;
				SW	   : in  STD_LOGIC_vector(6 downto 0);
				LEDG	   : out  STD_LOGIC_vector(7 downto 0):= x"00";
				LEDR	   : out  STD_LOGIC_vector(17 downto 0):= b"000000000000000000");
	
		end perceptron;
	
	architecture behavior of perceptron is
	
		SIGNAL durum1    : INTEGER RANGE 0 TO 15 := 0;
		SIGNAL durum2    : INTEGER RANGE 0 TO 5 := 0;
		SIGNAL durum3    : INTEGER RANGE 0 TO 55 := 0;
		SIGNAL durum4    : INTEGER RANGE 0 TO 5 := 0;
		SIGNAL durum5    : INTEGER RANGE 0 TO 5 := 0;
		SIGNAL durum6    : INTEGER RANGE 0 TO 5 := 0;
		SIGNAL counter1  : std_logic;
		SIGNAL delay_input  : std_logic;

		constant one  	  : std_logic_vector(31 downto 0) := x"3f800000"; -- 1


		TYPE bias IS ARRAY (0 TO 9) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;						  
		constant bias_all: bias := (x"40000000", x"40000000", x"40000000", x"40000000", x"40000000" , x"40000000", x"40000000", x"40000000", x"40000000", x"40000000"); -- 2


		TYPE xyz IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;						  
		constant inputs: xyz := (x"3f800000", x"3f800000", x"3f800000");		-- 1


		TYPE t1 IS ARRAY (0 TO 14) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal weights_1: t1 := (x"40000000", x"40000000", x"40000000", x"40000000", x"40000000",
										 x"40000000", x"40000000", x"40000000", x"40000000", x"40000000",
										 x"40000000", x"40000000", x"40000000", x"40000000", x"40000000"); -- 2


		TYPE t2 IS ARRAY (0 TO 9) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;						  
		signal weights_2: t2 := (x"3dcccccd", x"3dcccccd", x"3dcccccd", x"3dcccccd", x"3dcccccd", x"3dcccccd", x"3dcccccd", x"3dcccccd", x"3dcccccd", x"3dcccccd");


		TYPE z1 IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal inputs_weights_z1: z1;
		
		TYPE z2 IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal inputs_weights_z2: z2;
		
		TYPE z3 IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal inputs_weights_z3: z3;
		
		TYPE z4 IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal inputs_weights_z4: z4;
		
		TYPE z5 IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal inputs_weights_z5: z5;


		TYPE Z12345 IS ARRAY (0 TO 4) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_all: Z12345;
		
				TYPE Zall12345 IS ARRAY (0 TO 4) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_all2: Zall12345;


		TYPE Zadd IS ARRAY (0 TO 19) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_add: Zadd;
		
		TYPE expz IS ARRAY (0 TO 4) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal exp_z: expz;
	

		signal data_output_a : std_logic_vector(31 downto 0) := x"00000000";
		signal data_output_b : std_logic_vector(31 downto 0) := x"00000000";
		signal data_input_a : std_logic_vector(31 downto 0) := x"00000000";
		signal data_input_b : std_logic_vector(31 downto 0) := x"00000000";

		signal div_input_a : std_logic_vector(31 downto 0) := x"00000000";



		COMPONENT fpmult
			PORT(    clock	:	IN  STD_LOGIC;
						dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result:	OUT STD_LOGIC_VECTOR (31 DOWNTO 0) );
		END COMPONENT;
		
		COMPONENT fpadd
			PORT(    clock	:	IN  STD_LOGIC;
						dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );
		END COMPONENT;	
	

		COMPONENT fpsub
			PORT(    clock	:	IN  STD_LOGIC;
						dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );
		END COMPONENT;


		COMPONENT fpdiv
			PORT(    clock		:	IN  STD_LOGIC;
						dataa		:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						datab		:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );						
		END COMPONENT;
	

		COMPONENT fpexp
			PORT(    clock	:	IN  STD_LOGIC;
						data	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );
		END COMPONENT;
	
	begin
	
	process(CLOCK_50)	
		variable	counter:integer:=0;
		begin			
		
		if rising_edge(CLOCK_50) then
			counter:= counter+1;
			if (counter > 250000) then 
				counter1 <= not counter1;
				counter := 0;
			end if;
		end if;

	end process;
	
	
	process(counter1)
		begin
		
		if rising_edge(counter1) then
			durum1 <= durum1+1;
			durum2 <= durum2+1;
			
			if (durum1 = 2) then
				durum1 <= 0;
			end if;
			
			if (durum2 < 3) then
			inputs_weights_z1(durum1) <= data_output_a;
			
			elsif (durum2 < 6) then
			inputs_weights_z2(durum1) <= data_output_a;
			
			elsif (durum2 < 9) then
			inputs_weights_z3(durum1) <= data_output_a;
			
			elsif (durum2 < 12) then
			inputs_weights_z4(durum1) <= data_output_a;
			
			elsif (durum2 < 15) then
			inputs_weights_z5(durum1) <= data_output_a;
			
			end if;
		end if;

	
	end process;
	LEDR <= Z_add(conv_integer(unsigned(SW(4 downto 0))))(31 downto 14);
	LEDG(7 downto 0) <= conv_std_logic_vector(conv_integer(unsigned(SW)),8);
	
	U1: fpmult PORT MAP(clock => CLOCK_50 , dataa => inputs(durum1) , datab =>  weights_1(durum2)  , result => data_output_a );
--	U2: fpadd  PORT MAP(clock => CLOCK_50 , dataa => data_input_a , datab => data_input_b , result => data_output_b );
--	
--	U3: fpadd  PORT MAP(clock => CLOCK_50 , dataa => data_input_a2 , datab => data_input_b2 , result => data_output_b2 );
--	
--	U4: fpdiv  PORT MAP(clock => CLOCK_50 , dataa => div_input_a , datab => div_input_b  , result => div_result );
--	U5: fpexp  PORT MAP(clock => CLOCK_50 , dataa => exp_input , result => exp_z(durum5) );
--	
--	U3: fpsub  PORT MAP(clock => CLOCK_50 , dataa =>  , datab =>   , result =>  );

	
	end behavior;