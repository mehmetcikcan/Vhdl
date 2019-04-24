LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

	entity uygulama12 is
		port(	CLOCK_50 : in	std_logic;
				SW	   : in  STD_LOGIC_vector(17 downto 0);
				LEDG	   : out  STD_LOGIC_vector(7 downto 0):= x"00";
				LEDR	   : out  STD_LOGIC_vector(17 downto 0):= b"000000000000000000");
	
		end uygulama12;
	
	architecture behavior of uygulama12 is
	
		SIGNAL durum1    : INTEGER RANGE 0 TO 15 := 0;
		SIGNAL durum2    : INTEGER RANGE 0 TO 21 := 0;
		SIGNAL durum3    : INTEGER RANGE 0 TO 55 := 0;
		SIGNAL durum4    : INTEGER RANGE 0 TO 50 := 0;
		SIGNAL durum5    : INTEGER RANGE 0 TO 50 := 0;
		SIGNAL durum6    : INTEGER RANGE 0 TO 40 := 0;
		SIGNAL durum7    : INTEGER RANGE 0 TO 50 := 0;
		SIGNAL durum8    : INTEGER RANGE 0 TO 50 := 0;
		SIGNAL durum9    : INTEGER RANGE 0 TO 40 := 5;
		SIGNAL durum10    : INTEGER RANGE 0 TO 40 := 0;
		SIGNAL durum11    : INTEGER RANGE 0 TO 40 := 4;
		SIGNAL counter1  : std_logic;

		constant one  	  : std_logic_vector(31 downto 0) := x"3f800000"; -- 1


		TYPE bias IS ARRAY (0 TO 6) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;						  
		constant bias_all: bias := (x"3f800000", x"40000000", x"40400000", x"40800000", x"40a00000" , x"40c00000", x"40e00000"); -- 1-2-3...-7


		TYPE xyz IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;						  
		constant inputs: xyz := (x"3f800000", x"3f800000", x"3f800000");		-- 1


		TYPE t1 IS ARRAY (0 TO 14) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal weights_1: t1 := (x"3f800000", x"3f800000", x"3f800000", x"3f800000", x"3f800000",
										 x"3f800000", x"3f800000", x"3f800000", x"3f800000", x"3f800000",
										 x"3f800000", x"3f800000", x"3f800000", x"3f800000", x"3f800000"); -- 1


		TYPE t2 IS ARRAY (0 TO 9) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;						  
		signal weights_2: t2 := (x"40000000", x"40000000", x"40000000", x"40000000", x"40000000", x"40000000", x"40000000", x"40000000", x"40000000", x"40000000");-- 2


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
		
		TYPE z25 IS ARRAY (0 TO 9) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal inputs_weights2: z25;

		TYPE Z12345 IS ARRAY (0 TO 4) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_all: Z12345;
		
		TYPE Zall12345 IS ARRAY (0 TO 4) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_all2: Zall12345;
		
		TYPE g_z1 IS ARRAY (0 TO 4) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal gz1: g_z1;
		
		TYPE g_z2 IS ARRAY (0 TO 4) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal gz2: g_z2;

		TYPE Zadd1 IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_add1: Zadd1;
		
		TYPE Zadd2 IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_add2: Zadd2;
		
		TYPE Zadd3 IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_add3: Zadd3;
		
		TYPE Zadd4 IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_add4: Zadd4;
		
		TYPE Zadd5 IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_add5: Zadd5;
		
		TYPE Zadd IS ARRAY (0 TO 10) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_add: Zadd;
		
		TYPE Zaddminus1 IS ARRAY (0 TO 10) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal z_addminus1: Zaddminus1;
		
		TYPE Zaddminus2 IS ARRAY (0 TO 10) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal z_addminus2: Zaddminus2;
		
		TYPE Zsub IS ARRAY (0 TO 10) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal Z_sub: Zsub;

		
		TYPE expz1 IS ARRAY (0 TO 4) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal exp_z1: expz1;

		TYPE expz2 IS ARRAY (0 TO 4) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal exp_z2: expz2;
		
		TYPE expinvz1 IS ARRAY (0 TO 4) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal exp_minusz1: expinvz1;
		
		TYPE expinvz2 IS ARRAY (0 TO 4) OF STD_LOGIC_VECTOR(31 DOWNTO 0) ;
		signal exp_minusz2: expinvz2;
	

		signal add_input_a : std_logic_vector(31 downto 0) := x"00000000";
		signal add_input_b : std_logic_vector(31 downto 0) := x"00000000";
		signal add_result : std_logic_vector(31 downto 0) := x"00000000";

		signal sub_input_a : std_logic_vector(31 downto 0) := x"00000000";
		signal sub_input_b : std_logic_vector(31 downto 0) := x"00000000";
		signal sub_result : std_logic_vector(31 downto 0) := x"00000000";

		signal div_input_a : std_logic_vector(31 downto 0) := x"00000000";
		signal div_input_b : std_logic_vector(31 downto 0) := x"00000000";
		signal div_result : std_logic_vector(31 downto 0) := x"00000000";

		signal exp_input1 : std_logic_vector(31 downto 0) := x"00000000";
		signal exp_out1 : std_logic_vector(31 downto 0) := x"00000000";
		
		signal exp_input2 : std_logic_vector(31 downto 0) := x"00000000";
		signal exp_out2 : std_logic_vector(31 downto 0) := x"00000000";

		signal mult_result : std_logic_vector(31 downto 0) := x"00000000";
		
		signal mult_input_a : std_logic_vector(31 downto 0) := x"00000000";
		signal mult_input_b : std_logic_vector(31 downto 0) := x"00000000";
		signal mult_result2 : std_logic_vector(31 downto 0) := x"00000000";



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
			if (counter > 25000) then 
				counter1 <= not counter1;
				counter := 0;
			end if;
		
		end if;

	end process;
	
	
	process(counter1)
		begin
		
		if rising_edge(counter1) then

			if (durum2 < 15) then
				durum1 <= durum1+1;
				durum2 <= durum2+1;

				if (durum1 = 2) then
					durum1 <= 0;
				end if;

				if (durum2 < 3) then
				inputs_weights_z1(durum1) <= mult_result;

				elsif (durum2 < 6) then
				inputs_weights_z2(durum1) <= mult_result;

				elsif (durum2 < 9) then
				inputs_weights_z3(durum1) <= mult_result;

				elsif (durum2 < 12) then
				inputs_weights_z4(durum1) <= mult_result;

				elsif (durum2 < 15) then
				inputs_weights_z5(durum1) <= mult_result;
				durum4 <= 1;
				durum3 <= 0;
				end if;
			end if;
	
			if (durum4 = 1) then
				if (durum3 = 0) then
					add_input_a <= inputs_weights_z1(0);
					add_input_b <= inputs_weights_z1(1);					
					durum3 <= 1;

				elsif (durum3 = 1) then
					z_add1(0)<= add_result;
					durum3 <= 2;

				elsif (durum3 = 2) then					
					add_input_a <= z_add1(0);
					add_input_b <= inputs_weights_z1(2);
					durum3 <= 3;					

				elsif(durum3 = 3) then
					z_add1(1) <= add_result;
					durum3 <= 4;

				elsif (durum3 = 4) then
					add_input_a <= z_add1(1);
					add_input_b <= bias_all(0);
					durum3 <= 5;

				elsif (durum3 = 5) then
					z_add1(2) <= add_result;
					durum3 <= 0;
					durum4 <= 2;

				end if;
			end if;

			if (durum4 = 2) then
				if (durum3 = 0) then
					add_input_a <= inputs_weights_z2(0);
					add_input_b <= inputs_weights_z2(1);					
					durum3 <= 1;

				elsif (durum3 = 1) then
					z_add2(0)<= add_result;
					durum3 <= 2;

				elsif (durum3 = 2) then					
					add_input_a <= z_add2(0);
					add_input_b <= inputs_weights_z2(2);
					durum3 <= 3;					

				elsif(durum3 = 3) then
					z_add2(1) <= add_result;
					durum3 <= 4;

				elsif (durum3 = 4) then
					add_input_a <= z_add2(1);
					add_input_b <= bias_all(1);
					durum3 <= 5;

				elsif (durum3 = 5) then
					z_add2(2) <= add_result;
					durum3 <= 0;
					durum4 <= 3;
				end if;
			end if;

			if (durum4 = 3) then
				if (durum3 = 0) then
					add_input_a <= inputs_weights_z3(0);
					add_input_b <= inputs_weights_z3(1);					
					durum3 <= 1;

				elsif (durum3 = 1) then
					z_add3(0)<= add_result;
					durum3 <= 2;

				elsif (durum3 = 2) then					
					add_input_a <= z_add3(0);
					add_input_b <= inputs_weights_z3(2);
					durum3 <= 3;					

				elsif(durum3 = 3) then
					z_add3(1) <= add_result;
					durum3 <= 4;

				elsif (durum3 = 4) then
					add_input_a <= z_add3(1);
					add_input_b <= bias_all(2);
					durum3 <= 5;

				elsif (durum3 = 5) then
					z_add3(2) <= add_result;
					durum3 <= 0;
					durum4 <= 4;
				end if;
			end if;

			if (durum4 = 4) then
				if (durum3 = 0) then
					add_input_a <= inputs_weights_z4(0);
					add_input_b <= inputs_weights_z4(1);					
					durum3 <= 1;

				elsif (durum3 = 1) then
					z_add4(0)<= add_result;
					durum3 <= 2;

				elsif (durum3 = 2) then					
					add_input_a <= z_add4(0);
					add_input_b <= inputs_weights_z4(2);
					durum3 <= 3;					

				elsif(durum3 = 3) then
					z_add4(1) <= add_result;
					durum3 <= 4;

				elsif (durum3 = 4) then
					add_input_a <= z_add4(1);
					add_input_b <= bias_all(3);
					durum3 <= 5;

				elsif (durum3 = 5) then
					z_add4(2) <= add_result;
					durum3 <= 0;
					durum4 <= 5;
				end if;
			end if;

			if (durum4 = 5) then
				if (durum3 = 0) then
					add_input_a <= inputs_weights_z5(0);
					add_input_b <= inputs_weights_z5(1);					
					durum3 <= 1;

				elsif (durum3 = 1) then
					z_add5(0)<= add_result;
					durum3 <= 2;

				elsif (durum3 = 2) then					
					add_input_a <= z_add5(0);
					add_input_b <= inputs_weights_z5(2);
					durum3 <= 3;					

				elsif(durum3 = 3) then
					z_add5(1) <= add_result;
					durum3 <= 4;

				elsif (durum3 = 4) then
					add_input_a <= z_add5(1);
					add_input_b <= bias_all(4);
					durum3 <= 5;

				elsif (durum3 = 5) then
					z_add5(2) <= add_result;
					durum3 <= 0;
					durum4 <= 6;
				end if;
			end if;
			
			if (durum4 = 6) then
				z_addminus1(0) <= z_add1(2);
				z_addminus1(1) <= z_add2(2);
				z_addminus1(2) <= z_add3(2);
				z_addminus1(3) <= z_add4(2);
				z_addminus1(4) <= z_add5(2);
			
				z_addminus1(0)(31 downto 31) <= not z_add1(2)(31 downto 31);
				z_addminus1(1)(31 downto 31) <= not z_add2(2)(31 downto 31);
				z_addminus1(2)(31 downto 31) <= not z_add3(2)(31 downto 31);
				z_addminus1(3)(31 downto 31) <= not z_add4(2)(31 downto 31);
				z_addminus1(4)(31 downto 31) <= not z_add5(2)(31 downto 31);
				durum4 <= 7;
			end if;
			
			if (durum4 = 7) then
				exp_input1 <= z_add1(2);
				exp_input2 <= z_addminus1(0);
				durum4 <= 8;
			end if;
			
			if (durum4 = 8) then
				exp_z1(0) <= exp_out1;
				exp_minusz1(0) <= exp_out2;
				durum4 <= 9;
			end if;
			
			if (durum4 = 9) then
				exp_input1 <= z_add2(2);
				exp_input2 <= z_addminus1(1);
				durum4 <= 10;
			end if;
			
			if (durum4 = 10) then
				exp_z1(1) <= exp_out1;
				exp_minusz1(1) <= exp_out2;
				durum4 <= 11;
			end if;
			
			if (durum4 = 11) then
				exp_input1 <= z_add3(2);
				exp_input2 <= z_addminus1(2);
				durum4 <= 12;
			end if;
			
			if (durum4 = 12) then
				exp_z1(2) <= exp_out1;
				exp_minusz1(2) <= exp_out2;
				durum4 <= 13;
			end if;
			
			if (durum4 = 13) then
				exp_input1 <= z_add4(2);
				exp_input2 <= z_addminus1(3);
				durum4 <= 14;
			end if;
			
			if (durum4 = 14) then
				exp_z1(3) <= exp_out1;
				exp_minusz1(3) <= exp_out2;
				durum4 <= 15;
			end if;
			
			if (durum4 = 15) then
				exp_input1 <= z_add5(2);
				exp_input2 <= z_addminus1(4);
				durum4 <= 16;
			end if;
			
			if (durum4 = 16) then
				exp_z1(4) <= exp_out1;
				exp_minusz1(4) <= exp_out2;
				durum4 <= 17;
			end if;
			

--------------------------------------------------------------------------------------
	
			if (durum4 = 17) then
				if (SW(6 downto 5) = "00") then
					if (durum6 = 0) then			-- sigmoid
						add_input_a <= one;
						add_input_b <= exp_minusz1(durum5);
						durum6 <= 1;

					elsif (durum6 = 1) then		-- sigmoid
						Z_add(durum5) <= add_result;
						durum6 <= 2;

					elsif (durum6 = 2) then		-- sigmoid
						div_input_a <= one;
						div_input_b <= Z_add(durum5);
						durum6 <= 3;

					elsif (durum6 = 3) then		-- sigmoid
						gz1(durum5) <= div_result;
						durum5 <= durum5 +1;
						durum6 <= 0;
					end if;

					if (durum5 = 5) then			-- sigmoid
						gz1(durum5-1) <= div_result;
						durum4 <= 18;
					end if;
				end if;
				
--------------------------------------------------------------------------------------
				if (SW(6 downto 5) = "01") then
					if (durum6 = 0) then			-- hyperbolic
						sub_input_a <= exp_z1(durum5);
						sub_input_b <= exp_minusz1(durum5);
						add_input_a <= exp_z1(durum5);
						add_input_b <= exp_minusz1(durum5);
						durum6 <= 1;

					elsif (durum6 = 1) then		-- hyperbolic
						Z_sub(durum5) <= sub_result;
						Z_add(durum5) <= add_result;
						durum6 <= 2;
					
					elsif (durum6 = 2) then		-- hyperbolic
						div_input_a <= Z_sub(durum5);
						div_input_b <= Z_add(durum5);
						durum6 <= 3;
					
					elsif (durum6 = 3) then		-- hyperbolic
						gz1(durum5) <= div_result;
						durum5 <= durum5 +1;
						durum6 <= 0;
					end if;
					
					if (durum5 = 5) then			-- hyperbolic
						gz1(durum5-1) <= div_result;
						durum4 <= 18;
					end if;
				end if;
				
--------------------------------------------------------------------------------------

				if (SW(6 downto 5) = "10") then					-- relu
				
					if (z_add1(2)(31 downto 31) = "0") then	-- relu
						gz1(0) <= z_add1(2);
					elsif (z_add1(2)(31 downto 31) = "1") then
						gz1(0) <= x"00000000";
					end if;
					
					if (z_add2(2)(31 downto 31) = "0") then	-- relu
						gz1(1) <= z_add2(2);
					elsif (z_add2(2)(31 downto 31) = "1") then
						gz1(1) <= x"00000000";
					end if;
					
					if (z_add3(2)(31 downto 31) = "0") then	-- relu
						gz1(2) <= z_add3(2);
					elsif (z_add3(2)(31 downto 31) = "1") then
						gz1(2) <= x"00000000";
					end if;
					
					if (z_add4(2)(31 downto 31) = "0") then	-- relu
						gz1(3) <= z_add4(2);
					elsif (z_add4(2)(31 downto 31) = "1") then
						gz1(3) <= x"00000000";
					end if;
					
					if (z_add5(2)(31 downto 31) = "0") then	-- relu
						gz1(4) <= z_add5(2);
					elsif (z_add5(2)(31 downto 31) = "1") then
						gz1(4) <= x"00000000";
					end if;
					durum4 <= 18;
				end if;
--------------------------------------------------------------------------------------
			end if; 	-- if(durum4 = 17) end i
			
			if (durum4 = 18) then
				if (durum7 = 0 and durum8 < 5) then
					mult_input_a <= weights_2(durum8);
					mult_input_b <= gz1(durum8);
					durum7 <= 1;
				elsif (durum7 = 1 and durum8 < 5) then
					inputs_weights2(durum8)	<= mult_result2;
					durum8 <= durum8 +1;
					durum7 <= 0;
				elsif (durum8 = 5) then
					durum8 <= 0;
					durum4 <= 19;
					durum7 <= 0;
				end if;
			end if;
--
--			if (durum4 = 19) then
--				if (durum7 = 0 and durum8 < 5) then
--					mult_input_a <= weights_2(durum9);
--					mult_input_b <= gz1(durum8);
--					durum7 <= 1;
--				elsif (durum7 = 1 and durum8 < 5) then
--					inputs_weights2(durum9)	<= mult_result2;
--					durum8 <= durum8 +1;
--					durum9 <= durum9 +1;
--					durum7 <= 0;
--				elsif (durum8 = 5) then
--
--					durum4 <= 20;
--					durum7 <= 0;
--				end if;
--			end if;
----------------------------------------------------------------------------------------
--
--			if (durum4 = 20) then
--				if (durum7 = 0) then
--					add_input_a <= inputs_weights2(0);
--					add_input_b <= inputs_weights2(1);
--					durum7 <= 1;
--
--				elsif (durum7 = 1) then
--					z_add(durum10)<= add_result;					----------------- z_add(3)
--					durum10 <= durum10 +1;
--					durum7 <= 2;
--					if (durum10 = 3) then
--						durum7 <= 3;
--					end if;
--
--				elsif (durum7 = 2) then
--					add_input_a <= z_add(durum10-1);
--					add_input_b <= inputs_weights2(durum10+1);
--					durum7 <= 1;
--				
--				elsif (durum7 = 3) then
--					durum4 <= 21;
--					durum7 <= 0;
--				end if;
--			end if;
----------------------------------------------------------------------------------------
--			
--			if (durum4 = 21) then
--				if (durum7 = 0) then
--					add_input_a <= inputs_weights2(5);
--					add_input_b <= inputs_weights2(6);
--					durum7 <= 1;
--
--				elsif (durum7 = 1) then
--					z_add(durum11)<= add_result;					----------------- z_add(7)
--					durum11 <= durum11 +1;
--					durum7 <= 2;
--					if (durum11 = 7) then
--						durum7 <= 3;
--					end if;
--
--				elsif (durum7 = 2) then
--					add_input_a <= z_add(durum11-1);
--					add_input_b <= inputs_weights2(durum11+1);
--					durum7 <= 1;
--
--				elsif (durum7 = 3) then
--					add_input_a <= z_add(3);
--					add_input_b <= bias_all(5);
--					durum7 <= 4;
--				
--				elsif (durum7 = 4) then
--					z_add(0)<= add_result;
--					durum7 <= 5;
--				
--				elsif (durum7 = 5) then
--					add_input_a <= z_add(7);
--					add_input_b <= bias_all(6);
--					z_add(1)<= add_result;
--					durum7 <= 6;
--					
--				elsif (durum7 = 6) then
--					z_add(1)<= add_result;
--					durum7 <= 7;
--				
--				elsif (durum7 = 7) then
--					z_addminus2(0) <= z_add(0);
--					z_addminus2(1) <= z_add(1);
--					z_addminus2(0)(31 downto 31) <= not z_add1(0)(31 downto 31);
--					z_addminus2(1)(31 downto 31) <= not z_add2(1)(31 downto 31);
--					durum4 <= 22;
--					durum7 <= 0;
--				end if;
--			end if;
--
--			if (durum4 = 22) then
--				exp_input1 <= z_add(0);				
--				exp_input2 <= z_add(1);				
--				durum4 <= 23;
--			end if;
--			
--			if (durum4 = 23) then
--				exp_z2(0) <= exp_out1;
--				exp_z2(1) <= exp_out2;
--				durum4 <= 24;
--			end if;
--			
--			if (durum4 = 23) then
--				exp_input1 <= z_addminus2(0);
--				exp_minusz2(0) <= exp_out1;
--				exp_input2 <= z_addminus2(1);
--				exp_minusz2(1) <= exp_out2;
--				durum4 <= 24;
--			end if;
--
--			if (durum4 = 24) then
--				if (SW(8 downto 7) = "00") then		-- sigmoid
--					if (durum7 = 0) then
--						add_input_a <= one;
--						add_input_b <= exp_minusz2(0);
--						z_add(2)	<= add_result;
--						durum7 <= 1;
--						
--					elsif (durum7 = 1) then
--						div_input_a <=one;
--						div_input_b <=z_add(2);
--						gz2(0) <= div_result;
--						durum7 <= 2;
--					
--					elsif (durum7 = 2) then
--						add_input_a <= one;
--						add_input_b <= exp_minusz2(1);
--						z_add(3)	<= add_result;
--						durum7 <= 3;
--						
--					elsif (durum7 = 3) then
--						div_input_a <=one;
--						div_input_b <=z_add(3);
--						gz2(1) <= div_result;
--						durum7 <= 0;
--						durum4 <= 25;
--					end if;
--				end if;
--				
----------------------------------------------------------------------------------------
--				if (SW(8 downto 7) = "01") then		-- hyperbolic
--					if (durum7 = 0) then
--						sub_input_a <= exp_z2(0);
--						sub_input_b <= exp_minusz2(0);
--						z_add(2)	<= add_result;
--						durum7 <= 1;
--						
--					elsif (durum7 = 1) then
--						add_input_a <= exp_z2(0);
--						add_input_b <= exp_minusz2(0);
--						z_add(3)	<= add_result;
--						durum7 <= 2;
--						
--					elsif (durum7 = 2) then
--						div_input_a <= z_add(2);
--						div_input_b <= z_add(3);
--						gz2(0) <= div_result;
--						durum7 <= 3;
--						
--					elsif (durum7 = 3) then
--						sub_input_a <= exp_z2(1);
--						sub_input_b <= exp_minusz2(1);
--						z_add(2)	<= add_result;
--						durum7 <= 4;
--						
--					elsif (durum7 = 4) then
--						add_input_a <= exp_z2(1);
--						add_input_b <= exp_minusz2(1);
--						z_add(3)	<= add_result;
--						durum7 <= 5;
--						
--					elsif (durum7 = 5) then
--						div_input_a <= z_add(2);
--						div_input_b <= z_add(3);
--						gz2(1) <= div_result;
--						durum7 <= 0;
--						durum4 <= 25;
--					end if;
--				end if;
--				
----------------------------------------------------------------------------------------
--
--				if (SW(8 downto 7) = "10") then		-- relu
--					if (z_add(0)(31 downto 31) = "0") then	-- relu
--						gz2(0) <= z_add(0);
--					elsif (z_add(0)(31 downto 31) = "1") then
--						gz2(0) <= x"00000000";
--					end if;
--					
--					if (z_add(1)(31 downto 31) = "0") then	-- relu
--						gz2(1) <= z_add(1);
--					elsif (z_add(0)(31 downto 31) = "1") then
--						gz2(1) <= x"00000000";
--					end if;
--					durum4 <= 25;
--				end if;
----------------------------------------------------------------------------------------
--			end if; 	-- if(durum4 =24) end
		end if;
	
	end process;
		process(CLOCK_50)	
 		begin			
		
		if falling_edge(CLOCK_50) then
					
			if (SW(17 downto 14) = "0000") then
				LEDR <= gz1(conv_integer(STD_LOGIC_VECTOR(SW(3 downto 0))))(31 downto 14);
				
			elsif (SW(17 downto 14) = "0001") then
				LEDR <= inputs_weights2(conv_integer(STD_LOGIC_VECTOR(SW(3 downto 0))))(31 downto 14);
				
			elsif (SW(17 downto 14) = "0010") then
				LEDR <= gz2(conv_integer(STD_LOGIC_VECTOR(SW(3 downto 0))))(31 downto 14);
				
--			elsif (SW(17 downto 14) = "0011") then
--				LEDR <= z_add4(conv_integer(STD_LOGIC_VECTOR(SW(3 downto 0))))(31 downto 14);
--				
--			elsif (SW(17 downto 14) = "0100") then
--				LEDR <= z_add5(conv_integer(STD_LOGIC_VECTOR(SW(3 downto 0))))(31 downto 14);
				
			end if;
		end if;
	end process;
	

	LEDG(7 downto 0) <= conv_std_logic_vector(conv_integer(unsigned(SW(6 downto 0))),8);
	
	U1: fpmult PORT MAP(clock => CLOCK_50 , dataa => inputs(durum1) , datab =>  weights_1(durum2)  , result => mult_result);
	U2: fpmult PORT MAP(clock => CLOCK_50 , dataa => mult_input_a , datab =>  mult_input_b  , result => mult_result2);
	U3: fpadd  PORT MAP(clock => CLOCK_50 , dataa => add_input_a , datab => add_input_b , result => add_result );
	U4: fpexp  PORT MAP(clock => CLOCK_50 , data => exp_input1 , result => exp_out1 );
	U5: fpexp  PORT MAP(clock => CLOCK_50 , data => exp_input2 , result => exp_out2 );
	U6: fpdiv  PORT MAP(clock => CLOCK_50 , dataa => div_input_a , datab => div_input_b  , result => div_result );
	U7: fpsub  PORT MAP(clock => CLOCK_50 , dataa => sub_input_a , datab => sub_input_b  , result => sub_result);

	
	end behavior;